FROM paperist/texlive-ja:latest

RUN apt-get update \
  && apt-get install -y \
    libfontconfig1 \
  && rm -rf /var/lib/apt/lists/*
RUN tlmgr install amsmath
RUN tlmgr install amsfonts
RUN tlmgr install mathtools
RUN tlmgr install amscls
RUN tlmgr install thmtools
RUN tlmgr install hyperref
RUN tlmgr install cleveref
RUN tlmgr install autonum
RUN tlmgr install caption
RUN tlmgr install booktabs
RUN tlmgr install algorithms
RUN tlmgr install algorithmicx
RUN tlmgr install enumitem
RUN tlmgr install natbib