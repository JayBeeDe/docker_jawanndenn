FROM python:2.7-alpine
MAINTAINER jaybee jbdelon@linagora.com

COPY entrypoint.sh /entrypoint.sh
COPY supervisord.conf /etc/supervisord.conf

RUN wget https://github.com/hartwork/jawanndenn/archive/master.zip -O /tmp/jawanndenn.zip
RUN unzip /tmp/jawanndenn.zip -d /tmp/
RUN mkdir -p /app/ && mv /tmp/jawanndenn-master/README.rst /app/README.rst && mv /tmp/jawanndenn-master/setup.py /app/setup.py && mv /tmp/jawanndenn-master/jawanndenn /app/jawanndenn && rm -fr /tmp/jawanndenn*
#RUN apk --no-cache add gcc && apk add python-dev && apk add build-base
RUN apk --no-cache add nano supervisor && chmod 755 /entrypoint.sh
RUN cd /app/ && python setup.py install --user

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/bin/supervisord"]
