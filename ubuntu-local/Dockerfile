FROM mailway/mailway

ENV DEBIAN_FRONTEND=noninteractive
ENV MW_HOSTNAME=
ENV MW_EMAIL=

RUN mkdir /etc/mailway/ /etc/mailway/domain.d/
COPY ./example.com.yaml.sample /etc/mailway/domain.d/

COPY ./start.sh /start
RUN chmod +x /start

CMD /start
