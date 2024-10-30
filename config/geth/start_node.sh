#!/bin/sh

echo "Starting geth binary for Story Testnet"
/story-node/.story/geth/geth --odyssey --syncmode full --config /story-node/.story/geth/config/geth.toml
