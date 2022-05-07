#!/bin/bash

KITO_URL=git@github.com:be-accurate/kito.git
NGINX_URL=git@github.com:be-accurate/nginx.git

KITO_DIR=kito
NGINX_DIR=nginx

# order is important, so the loop works as intented
urls=("${KITO_URL}" "${NGINX_URL}")
dirs=("${KITO_DIR}" "${NGINX_DIR}")

for i in "${!urls[@]}"; do
    if [[ ! -d "${dirs[i]}" ]]; then
        git clone "${urls[i]}" "${dirs[i]}"
    fi
done
