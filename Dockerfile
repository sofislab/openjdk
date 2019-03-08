FROM debian:9
RUN apt update && apt install openjdk-8-jre  --no-install-recommends -y  && \
apt autoremove -y && apt clean
USER 1001
COPY run.sh /usr/bin/run.sh
ENTRYPOINT ["/usr/bin/run.sh"]


