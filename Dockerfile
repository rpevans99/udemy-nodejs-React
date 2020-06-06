# image to use - not really necessary as gitpod/workspace-full is the default for Gitpod
FROM gitpod/workspace-full

RUN curl -sLS https://get.inlets.dev | sh && \
    export token=$(head -c 16 /dev/urandom | shasum | cut -d" " -f1) && \
    echo "token:  $token" && \
    echo "remote: $(gp url 4010 | sed -e 's/https/wss/')" && \
    ./inlets server --port 4000 --control-port=4010 --token="$token"

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && \
#     sudo apt-get install -yq bastet && \
#     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/
