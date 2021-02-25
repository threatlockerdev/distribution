#!/bin/sh
set -e

docker run --rm -it \
  --name hq-minio-client \
  --entrypoint /bin/sh \
  --network hq \
  -e MC_HOST_local="http://$AWS_ACCESS_KEY_ID:$AWS_SECRET_ACCESS_KEY@s3:9000" \
  minio/mc
