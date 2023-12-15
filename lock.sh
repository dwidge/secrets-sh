#!/bin/bash
passphrase="$(echo "$1")"
echo "${#passphrase}"
cd "${BASH_SOURCE%/*}"
[ ! -d "tmp/encrypt-sh" ] && (mkdir -p tmp && cd tmp && git clone https://github.com/dwidge/encrypt-sh)
rm -rf encrypted
./tmp/encrypt-sh/encrypt-dir.sh "$passphrase" encrypted decrypted
