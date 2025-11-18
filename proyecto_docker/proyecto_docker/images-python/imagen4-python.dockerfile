FROM almalinux:8
RUN dnf update -y && dnf install -y python3 python3-pip python3-virtualenv && dnf clean all
WORKDIR /workspace
CMD ["/bin/bash"]