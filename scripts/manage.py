import base64
import os
import secrets
import sys
from urllib.parse import urlparse
import yaml

def interpolate_env_vars(value: str):
  interpolated = value
  for key in os.environ:
    interpolated = interpolated.replace("${{{0}}}".format(key), os.environ[key])
  return interpolated

def get_app_host():
  app_url = os.environ["APP_URL"]
  return urlparse(app_url).hostname

class Commands:
  @staticmethod
  def start(args):
    print("Starting all services...")
    if os.system("docker-compose up -d") != 0:
      return 1
    if "--no-follow" in args:
      print("All services started.")
      return 0
    print("All services started. Viewing output...")
    return os.system("docker-compose logs -f")

  @staticmethod
  def stop(args):
    print("Stopping all services...")
    return os.system("docker-compose down")

  @staticmethod
  def restart(args):
    if args:
      container_name = args[0]
      return os.system(f"docker-compose restart {container_name}")
    else:
      print("Restarting all services...")
      return os.system("docker-compose restart")

  @staticmethod
  def update(args):
    print("Updating all services...")
    with open("./docker-compose.yml", "r") as compose_file:
      compose_info = yaml.load(compose_file, Loader=yaml.FullLoader)
      images = [interpolate_env_vars(s["image"]) for k, s in compose_info["services"].items()]
      for image in images:
        tokens = image.split("/")
        print(f"\tUpdating {tokens[-1]}...")
        if os.system(f"docker pull {image}") != 0:
          print("Interrupted, cancelling remaining updates.")
          return
    print("\nFinished updating all services.")

  @staticmethod
  def setup(args):
    if Commands.runMigrations([]) != 0:
      return 1
    if Commands.start(["--no-follow"]) != 0:
      return 1
    return os.system("docker-compose exec v1-web sh ./scripts/setup.sh")

  @staticmethod
  def reset(args):
    if "-y" not in args:
      print("Please run `./manage reset -y` to confirm.")
      return 1
    return os.system("docker-compose down -v")

  @staticmethod
  def generateEncryptionKey(args):
    encryption_key = base64.b64encode(secrets.token_bytes(32)).decode("utf8")
    print(f"Random encryption key: {encryption_key}")

  @staticmethod
  def generateSSLCertificate(args):
    public_key = "./nginx/certs/main.pub"
    private_key = "./nginx/certs/main.key"
    print("""
We recommend that you place an externally-created certificate in:
  Public key: ./nginx/certs/main.pub
  Private key: ./nginx/certs/main.key
""".strip())
    print("Generating self-signed certificate...")
    os.system(f"""
openssl req -x509
  -nodes
  -newkey rsa:4096
  -keyout "{private_key}"
  -out "{public_key}"
  -days 1024
  -subj "/C=US/ST=DC/L=DC/O=Hyperqube/OU=Engineering/CN={get_app_host()}"
""".replace("\n", "").strip())
    print("Self-signed certificate created. Please run `./manage restart nginx` to use the new certificate.")

  @staticmethod
  def runMigrations(args):
    if os.system("docker-compose run --rm v1-web pipenv run python manage.py flush --noinput") != 0:
      return 1
    return os.system("docker-compose run --rm v1-web pipenv run python manage.py migrate")

  @staticmethod
  def dev(args):
    return os.system(f"docker-compose -f docker-compose.yml -f docker-compose.dev.yml {' '.join(args)}")

commands = {
  "help": lambda args: print("""Usage:
  ./manage <command> [args]
Commands:
  help                     Show this help text.
  start                    Start all services.
  stop                     Stop all services.
  restart [container]      Restarts all (or one) container(s).
  update                   Pull latest versions of all services.
  setup                    Creates initial user.
  reset                    Caution: resets all storage, including databases.
  run:migrations           Runs latest v1 database migrations.
  generate:encryption-key  Generates a random v1 encryption key.
  generate:ssl             Generates a self-signed SSL certificate for the web server.
  db:v1, db:v2             Enters a PostgreSQL shell for the given database
  dev [args]               Runs a docker-compose command against the dev configuration.
"""),
  "start": Commands.start,
  "stop": Commands.stop,
  "restart": Commands.restart,
  "update": Commands.update,
  "setup": Commands.setup,
  "reset": Commands.reset,
  "generate:encryption-key": Commands.generateEncryptionKey,
  "generate:ssl": Commands.generateSSLCertificate,
  "run:migrations": Commands.runMigrations,
  "dev": Commands.dev
}

def main():
  args = sys.argv[1:]
  if not args:
    commands["help"]()
    return 1
  command = args[0].lower()
  if command not in commands:
    print(f"Unknown command {command}")
    return 1
  return commands[command](args[1:])

if __name__ == "__main__":
  sys.exit(main() or 0)
