#!/bin/env bash
set -eux
set -o pipefail

# install spacemacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

# install lein and boot
mkdir ~/bin
cd ~/bin

curl -fsSLo lein https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein \
    && chmod 755 lein
curl -fsSLo boot https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh \
    && chmod 755 boot
