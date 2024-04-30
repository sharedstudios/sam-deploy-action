FROM ubuntu

LABEL version="1.0.0"

LABEL com.github.actions.name="AWS Cloudformation - SAM Deploy Action"
LABEL com.github.actions.description="AWS Cloudformation - Deploy AWS SAM Stack"
LABEL com.github.actions.icon="cloud-lightning"
LABEL com.github.actions.color="orange"

ENV DEBIAN_FRONTEND=noninteractive

#RUN apt-get update && apt-get install -y awscli

# Install Python3 and required tools
RUN apt-get update && \
    apt-get install -y python3 python3-pip python3-setuptools && \
    pip3 install --upgrade pip setuptools

# Install AWS CLI
RUN pip3 install awscli

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
