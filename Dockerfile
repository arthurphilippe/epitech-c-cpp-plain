FROM fedora:26

LABEL version="1.2"
ADD install_criterion.sh /root/

RUN dnf -y update && dnf -y install gcc gcc-c++ wget bzip2 tar git openssh make gcovr cmake findutils\
	&& dnf clean all \
	&& /root/install_criterion.sh \
	&& rm -fr /root/*

CMD bash
