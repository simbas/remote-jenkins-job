FROM stedolan/jq:master

RUN apt-get update && \
    apt-get install -y curl

COPY remote-job.sh /usr/local/bin/remote-jenkins-job.sh

ENTRYPOINT ["remote-jenkins-job.sh"]
CMD []
