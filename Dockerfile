FROM fedora:36 as build

RUN dnf install -y gcc-c++-12.0.1-0.16.fc36 \
    cifs-utils nano  && \
    dnf clean all && \
    rm -rf /var/cache/dnf

COPY entrypoint.sh /
RUN chmod +x entrypoint.sh
SHELL ["/bin/bash", "-c"]
ENTRYPOINT ["./entrypoint.sh"]
CMD ["/bin/bash"]
