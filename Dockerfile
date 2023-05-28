FROM ubuntu:latest

RUN set -eux; \
  apt-get update; \
  apt-get install -y --no-install-recommends \
    language-pack-af \
    language-pack-am \
    language-pack-an \
    language-pack-as \
    language-pack-ast \
    language-pack-az \
    language-pack-be \
    language-pack-bg \
    language-pack-bn \
    language-pack-br \
    language-pack-bs \
    language-pack-ca \
    language-pack-ckb \
    language-pack-crh \
    language-pack-cs \
    language-pack-cy \
    language-pack-da \
    language-pack-de \
    language-pack-dz \
    language-pack-el \
    language-pack-en \
    language-pack-eo \
    language-pack-es \
    language-pack-et \
    language-pack-eu \
    language-pack-fa \
    language-pack-fi \
    language-pack-fr \
    language-pack-fur \
    language-pack-ga \
    language-pack-gd \
    language-pack-gl \
    language-pack-gu \
    language-pack-he \
    language-pack-hi \
    language-pack-hr \
    language-pack-hu \
    language-pack-ia \
    language-pack-is \
    language-pack-it \
    language-pack-ja \
    language-pack-ka \
    language-pack-kab \
    language-pack-kk \
    language-pack-km \
    language-pack-kn \
    language-pack-ko \
    language-pack-ku \
    language-pack-lt \
    language-pack-lv \
    language-pack-mk \
    language-pack-ml \
    language-pack-mr \
    language-pack-ms \
    language-pack-my \
    language-pack-nb \
    language-pack-ne \
    language-pack-nl \
    language-pack-nn \
    language-pack-oc \
    language-pack-or \
    language-pack-pa \
    language-pack-pl \
    language-pack-pt \
    language-pack-ro \
    language-pack-ru \
    language-pack-si \
    language-pack-sk \
    language-pack-sl \
    language-pack-sq \
    language-pack-sr \
    language-pack-sv \
    language-pack-szl \
    language-pack-ta \
    language-pack-te \
    language-pack-tg \
    language-pack-th \
    language-pack-tr \
    language-pack-ug \
    language-pack-uk \
    language-pack-vi \
    language-pack-xh \
    language-pack-zh-hans \
    language-pack-zh-hant \
    unzip \
  ; \
  apt-get autoremove; rm -rf /var/lib/apt/lists/*; \
  locale-gen en_US.UTF-8

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
WORKDIR /mnt
ENTRYPOINT ["unzip"]
CMD ["-hh"]
