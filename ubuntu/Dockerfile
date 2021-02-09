FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y curl gnupg2 python2

RUN curl https://raw.githubusercontent.com/gdraheim/docker-systemctl-replacement/master/files/docker/systemctl.py -o /bin/systemctl
RUN chmod +x /bin/systemctl

RUN curl -s https://apt.mailway.app/ubuntu/KEY.gpg | apt-key add -
RUN curl -s -o /etc/apt/sources.list.d/mailway.list https://apt.mailway.app/ubuntu/mailway.list
RUN apt-get update

COPY ./start.sh /start
RUN chmod +x /start

CMD /start
