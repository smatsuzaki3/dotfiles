#!/bin/bash
set -vx

# パッケージの更新
sudo apt update
sudo apt upgrade -y

# 必要なパッケージのインストール
sudo apt install -y \
    bat \
    curl \
    git \
    ripgrep \
    vim \
    wget \
    wslu \
    zsh
