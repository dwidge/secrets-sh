#!/bin/bash
passphrase="$1"
cd "${BASH_SOURCE%/*}"
[ ! -d "tmp/encrypt-sh" ] && (mkdir -p tmp && cd tmp && git clone https://github.com/dwidge/encrypt-sh)
rm -rf encrypted
echo "${#1}"
./tmp/encrypt-sh/encrypt-dir.sh "$passphrase" encrypted decrypted
