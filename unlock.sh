#!/bin/bash
passphrase="$1"
cd "${BASH_SOURCE%/*}"
[ ! -d "tmp/encrypt-sh" ] && (mkdir -p tmp && cd tmp && git clone https://github.com/dwidge/encrypt-sh)
rm -rf decrypted
echo "${#1}"
./tmp/encrypt-sh/decrypt-dir.sh "$passphrase" encrypted decrypted
