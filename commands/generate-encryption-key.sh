#!/bin/bash
set -e

function generate_random() {
  cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w $1 | head -n 1
}

generate_random 32 | base64
