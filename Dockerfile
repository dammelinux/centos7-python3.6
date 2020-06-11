FROM centos:7

LABEL maintainer="KAI VO"

RUN yum update -y

RUN yum install openssh-server -y && \
	ssh-keygen -A && \
	echo "PermitRootLogin yes" >> /etc/ssh/sshd_config && \
    echo "root:123456" | chpasswd

RUN yum -y install centos-release-scl-rh centos-release-scl \
&&  yum --enablerepo=centos-sclo-rh -y install rh-python36 \
&&  scl enable rh-python36 bash

EXPOSE 22
ENTRYPOINT ["/usr/sbin/sshd", "-D"]