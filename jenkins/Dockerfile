FROM jenkins/jenkins:2.568.1-lts-alpine

COPY --chown=jenkins:root plugins.txt /usr/share/jenkins/ref/plugins.txt

RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt
RUN mkdir -p $HOME/.ssh && ssh-keyscan -t rsa,ecdsa,ed25519 github.com >$HOME/.ssh/known_hosts

# Jenkins configuration as code
ENV CASC_JENKINS_CONFIG="/jcasc/jenkins.yaml"
COPY --chown=jenkins:root jenkins.yaml $CASC_JENKINS_CONFIG
COPY --chown=jenkins:root jobdsl /jcasc/
