FROM almalinux:8
RUN dnf update -y && dnf install -y ruby ruby-devel && dnf clean all
WORKDIR /workspace
CMD ["/bin/bash"]