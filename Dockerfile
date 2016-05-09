FROM clouder/clouder-base
MAINTAINER Yannick Buron yburon@goclouder.net

RUN touch /tmp/odoo-ssh
RUN apt-get -qq update && DEBIAN_FRONTEND=noninteractive apt-get -y -qq install openssh-server
USER root

CMD ["/usr/sbin/sshd", "-D"]
