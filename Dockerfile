# Use latest Jenkins image from dockerhub.
FROM jenkins/jenkins:latest

# Set environment variables.
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc.yaml

# Install python/pip.
USER root
RUN apt-get update
RUN apt-get install -y python3

# Install Jenkins plugins.
RUN jenkins-plugin-cli \
    --plugins \
    ant:latest \
    antisamy-markup-formatter:latest \
    authorize-project:latest \
    build-timeout:latest \
    cloudbees-folder:latest \
    configuration-as-code:latest \
    credentials-binding:latest \
    email-ext:latest \
    gradle:latest \
    ldap:latest \
    mailer:latest \
    matrix-auth:latest \
    pam-auth:latest \
    pipeline-github-lib:latest \
    pipeline-stage-view:latest \
    ssh-slaves:latest \
    timestamper:latest \
    workflow-aggregator:latest \
    ws-cleanup:latest \
    git:latest \
    git-client:latest \
    github:latest \
    github-api:latest \
    github-branch-source:latest \
    delivery-pipeline-plugin:latest \
    job-dsl
# Ceate CASC configuration file.
COPY casc.yaml /var/jenkins_home/casc.yaml
