#!/bin/bash

set -e
set -o pipefail

echo "[create-init-pre-local-el] Setting up init.pre.local.el."
contents=$(cat <<'EOF'
;;; This file is run just before packages are loaded in init.el, so you can
;;; use it to override the package repository configurations and various
;;; other things.
EOF
        )
echo "$contents" > ../../dotfiles-local/init.pre.local.el
echo "[create-init-pre-local-el] Wrote the following to dotfiles-local/init.pre.local.el:"
cat ../../dotfiles-local/init.pre.local.el
