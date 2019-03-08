FROM centos:7
RUN rm -rf /etc/localtime && touch /etc/localtime && chown 1001:1001 -R /etc/localtime && \
yum install java-1.8.0-openjdk -y && yum autoremove -y && \
yum clean all && rm -rf /var/cache/yum
USER 1001
COPY run.sh /usr/bin/run.sh
ENTRYPOINT ["/usr/bin/run.sh"]



