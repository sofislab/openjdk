FROM centos:7
RUN rm -rf /etc/localtime && touch /etc/localtime && touch /etc/timezone && chown 1001:1001 -R /etc/localtime /etc/timezone && \
yum install java-11-openjdk -y && yum autoremove -y && \
yum clean all && rm -rf /var/cache/yum
USER 1001
COPY run.sh /usr/bin/run.sh
ENTRYPOINT ["/usr/bin/run.sh"]



