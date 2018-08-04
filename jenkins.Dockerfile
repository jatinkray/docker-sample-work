FROM jenkins:2.60.3
USER root
# add password for jenkins user
RUN echo jenkins:jenkins | chpasswd
# install plugins
RUN /usr/local/bin/install-plugins.sh ssh-slaves \
email-ext mailer slack htmlpublisher simple-theme-plugin kubernetes
#install maven
RUN apt-get update && apt-get install -y maven

USER jenkins

