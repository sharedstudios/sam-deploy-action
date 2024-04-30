FROM ubuntu

LABEL version="1.0.0"

LABEL com.github.actions.name="AWS Cloudformation - SAM Deploy Action"
LABEL com.github.actions.description="AWS Cloudformation - Deploy AWS SAM Stack"
LABEL com.github.actions.icon="cloud-lightning"
LABEL com.github.actions.color="orange"

ENV DEBIAN_FRONTEND=noninteractive

#RUN apt-get update && apt-get install -y awscli
RUN apt-get update && \
       apt-get install -y python3-pip && \
       pip install awscli

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
