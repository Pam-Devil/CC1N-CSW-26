FROM archlinux:latest

ENV PACMAN_NOCONFIRM=1

RUN pacman -Syu --noconfirm && pacman -S --noconfirm \
    base-devel \
    git \
    curl \
    wget \
    unzip \
    tar \
    sudo \
    cmake \
    stow \
    python \
    nodejs \
    npm \
    ripgrep \
    fd \
    clang \
    lldb \
    zsh \
    tmux \
    lua \
    luarocks\
    && pacman -Scc --noconfirm

RUN useradd -m -s /bin/zsh vscode && \
    echo "vscode ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER vscode
WORKDIR /home/vscode

    
