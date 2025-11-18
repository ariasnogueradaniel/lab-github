FROM almalinux:8
RUN dnf update -y && dnf install -y \
    # Imagen 1 RPM
    rpm-build createrepo dnf-utils \
    # Imagen 2 Ruby
    ruby ruby-devel \
    # Imagen 3 Node.js
    nodejs npm \
    # Imagen 4 Python
    python3 python3-pip python3-virtualenv \
    && dnf clean all
RUN npm install -g yarn
WORKDIR /workspace
CMD ["/bin/bash"]