# Story-On-Docker
Simple setup guide for running Story Testnet on Docker

# Prerequisites
## Generate a JWT
You can use  a utility like OpenSSL to create the token via command: `openssl rand -hex 32 | tr -d "\n" > "jwtsecret"`.

## Start the node
Just run `docker-compose up -d` to start the containers on detached mode.

## See logs
It's very easy, just run `docker-compose logs -f` to keep watching logs, if you want to see only the latest logs and then keep watching them, you can run `docker-compose logs -f --tail 10`.
