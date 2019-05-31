FROM alpine:3.8
ENV TIMEZONE= TAG_VERSION=
RUN apk --no-cache add --update openjdk8-jre-base tzdata msttcorefonts-installer curl fontconfig && \
    update-ms-fonts && \
    fc-cache -f && mkdir /opt && touch /etc/localtime && chown 1001:1001 -R /opt /etc/localtime
USER 1001
COPY run.sh /usr/bin/run.sh
ENTRYPOINT ["/usr/bin/run.sh"]



