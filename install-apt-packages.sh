#!/bin/bash
set -vx

# パッケージの更新
sudo apt update
sudo apt upgrade -y

# 必要なパッケージのインストール
sudo apt install -y \
    git \
    vim \
    curl \
    wget \
    zsh
