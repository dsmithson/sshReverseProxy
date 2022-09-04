FROM ubuntu:latest

#Install SSH Client
RUN apt-get update && apt-get install openssh-client -y && echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

#Run SSH
CMD ssh -i "$PATH_TO_SSH_KEY" -N -T $SSH_HOST -l tunnel -R $SSH_PORT:$CONTAINER_HOST:$CONTAINER_PORT
