FROM almalinux:8
RUN dnf update -y && dnf install -y nodejs npm && dnf clean all
RUN npm install -g yarn
WORKDIR /workspace
CMD ["/bin/bash"]