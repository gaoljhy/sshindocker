FROM docker:latest

LABEL maintainer "adminhub <gjlove666@hotmail.com>"

RUN apk update && \
    apk add --no-cache openssh-server tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    sed -i "s/#PermitRootLogin.*/PermitRootLogin yes/g" /etc/ssh/sshd_config &&\
    sed -i "s/#PermitEmptyPasswords.*/PermitEmptyPasswords no/g" /etc/ssh/sshd_config && \
    ssh-keygen -t rsa -P "" -f /etc/ssh/ssh_host_rsa_key && \
    ssh-keygen -t ecdsa -P "" -f /etc/ssh/ssh_host_ecdsa_key && \
    ssh-keygen -t ed25519 -P "" -f /etc/ssh/ssh_host_ed25519_key

RUN echo "root:sshindocker" | chpasswd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]