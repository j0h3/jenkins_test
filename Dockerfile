FROM hashicorp/terraform:latest 
RUN mkdir ec2
COPY ./ec2/* ./ec2/
WORKDIR ./ec2
ENTRYPOINT ['/bin/sh']
