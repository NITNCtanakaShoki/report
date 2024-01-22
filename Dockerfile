FROM paperist/texlive-ja:latest

# パッケージの更新とインストール
RUN apt-get update && apt-get install -y \
    libfontconfig1 \
    python3-pygments \
    python3-pip \
  && rm -rf /var/lib/apt/lists/*

# TeX Liveのパッケージを更新
RUN tlmgr update --self --all

# 必要なTeX Liveのパッケージをインストール
RUN tlmgr install collection-langjapanese collection-langcjk collection-fontsrecommended

# XeTeX をインストールする場合の例
RUN apt-get update \
  && apt-get install -y \
    libfontconfig1 \
  && rm -rf /var/lib/apt/lists/*
RUN tlmgr install collection-xetex ctex

# PDFの結合
RUN apt-get update && apt-get install -y poppler-utils