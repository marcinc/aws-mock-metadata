FROM fedora:20

RUN yum update -y -q; yum clean all
RUN yum install -y -q python-pip; \
    yum clean all; \
    pip install boto

ADD ./ /usr/lib/aws-mock-metadata

EXPOSE 45000

CMD ["/usr/lib/aws-mock-metadata/bin/server"]
