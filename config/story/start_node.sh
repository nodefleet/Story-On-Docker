#!/bin/sh

echo "Initializing Story's beacon node"
/story-node/story/story init --network iliad --home /story-node/story/ --force


echo "Starting Story's beacon node"
/story-node/story/story run --home="/story-node/story/"
