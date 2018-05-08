LABEL version="1.1"

FROM fedora:26

ADD install_criterion.sh /root/

RUN dnf -y update && dnf -y install gcc gcc-c++ wget bzip2 tar git openssh make gcovr findutils\
	&& dnf clean all \
	&& /root/install_criterion.sh \
	&& rm -fr /root/*

CMD bash
