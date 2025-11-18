FROM almalinux:8
RUN dnf update -y && dnf install -y rpm-build createrepo dnf-utils && dnf clean all
WORKDIR /workspace
CMD ["/bin/bash"]