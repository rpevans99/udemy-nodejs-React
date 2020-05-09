# image to use
FROM gitpod/workspace-full

USER root

RUN npm install -g  --unsafe-perm express  \
    && npm install -g cors  \
    && npm install -g axios \
    && npm install -g nodemon 

FROM node:10

# Give back control
USER root


# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && \
#     sudo apt-get install -yq bastet && \
#     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/
