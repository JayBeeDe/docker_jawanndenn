FROM python:alpine
LABEL JayBeeDe dev@delon.cloud

ENV JAWANNDENN_ALLOWED_HOSTS="*"

RUN apk --no-cache add supervisor gcc g++ && \
    pip3 install --upgrade pip && \
    pip3 install python-rapidjson jawanndenn

COPY entrypoint.sh /entrypoint.sh
COPY supervisord.conf /etc/supervisord.conf

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/bin/supervisord"]
