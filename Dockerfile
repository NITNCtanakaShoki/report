FROM paperist/texlive-ja:latest

# パッケージの更新とインストール
RUN apt-get update && apt-get install -y \
    libfontconfig1 \
    python3-pygments \
    python3-pip \
  && rm -rf /var/lib/apt/lists/*

# XeTeX をインストールする場合の例
RUN apt-get update \
  && apt-get install -y \
    libfontconfig1 \
  && rm -rf /var/lib/apt/lists/*
RUN tlmgr install collection-xetex ctex