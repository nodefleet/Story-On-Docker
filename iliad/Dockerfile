FROM ubuntu:latest

ENV STORY_BINARY_S3=https://story-network-node.s3.amazonaws.com/release/geth_iliad_20240720_214600_linux_amd64.tar.gz

# Setting dependencies and updating APT repos
RUN apt-get update -y && \
	apt-get upgrade -y && \
	apt-get install -y --no-install-recommends \
	jq curl htop build-essential wget make git vim ca-certificates && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN update-ca-certificates

# Creating workdir and copying file into it
ENV HOME="/story-node"
WORKDIR /story-node

# Downloading binary
RUN wget -O - ${STORY_BINARY_S3} | tar --warning=no-unknown-keyword -xzvf - --strip-components=1 -C /story-node

# Copying config files
COPY config.toml /story-node/iliad/config/config.toml
COPY iliad.toml /story-node/iliad/config/iliad.toml

# Copying entrypoint
COPY start_node.sh /story-node/start_node.sh
RUN chmod +x start_node.sh

EXPOSE 26660
EXPOSE 26657
EXPOSE 26656
EXPOSE 1317
EXPOSE 8551

ENTRYPOINT ["/story-node/start_node.sh"]
