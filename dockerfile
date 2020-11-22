FROM python:alpine
MAINTAINER jaybee jbdelon@linagora.com

COPY entrypoint.sh /entrypoint.sh
COPY supervisord.conf /etc/supervisord.conf

ENV JAWANNDENN_ALLOWED_HOSTS="*"
RUN chmod 755 /entrypoint.sh && apk --no-cache add nano supervisor gcc g++ && pip3 install python-rapidjson jawanndenn

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/bin/supervisord"]
