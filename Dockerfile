FROM ubuntu

LABEL version="1.0.0"

LABEL com.github.actions.name="(Shared_Studios) SAM Deploy Action"
LABEL com.github.actions.description="(Shared_Studios) Deploy AWS SAM Stack"
LABEL com.github.actions.icon="cloud-lightning"
LABEL com.github.actions.color="orange"

LABEL repository="https://github.com/sharedstudios/sam-deploy-action"
LABEL homepage="https://github.com/sharedstudios/sam-deploy-action"
LABEL maintainer="Shared_Studios <software@sharedstudios.com>"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y awscli

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
