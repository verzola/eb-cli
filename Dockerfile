FROM ubuntu:18.04
RUN apt update && apt install -y build-essential zlib1g-dev libssl-dev libncurses-dev libffi-dev libsqlite3-dev libreadline-dev libbz2-dev git curl && rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/aws/aws-elastic-beanstalk-cli-setup.git
RUN ./aws-elastic-beanstalk-cli-setup/scripts/bundled_installer
