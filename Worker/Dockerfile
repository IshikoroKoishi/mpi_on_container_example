FROM alpine:3.16.2
ENV LANG=en_US.UTF-8

COPY src /tmp/src
COPY startup.sh /tmp/startup.sh
COPY .ssh /root/.ssh

WORKDIR /tmp/src
RUN apk update && \
    apk --no-cache add openmpi openmpi-dev gcc musl-dev linux-headers openssh && \
    chmod 744 /tmp/startup.sh && \
    chmod 700 /root/.ssh && \
    chmod 600 /root/.ssh/id_rsa && \
    wget http://www.open-mpi.org/community/lists/devel/att-0116/mpi-ping.c && \
    mpicc -o mpi-ping.exe mpi-ping.c

CMD ["/tmp/startup.sh"]
