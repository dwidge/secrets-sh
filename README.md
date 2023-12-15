# secrets

Secret files repo encrypted with gpg.

# usage

With key file (drops trailing newlines):

`./lock.sh "$(<tmp/SECRETS_KEY)"`

`./unlock.sh "$(<tmp/SECRETS_KEY)"`

With github secrets (keeps trailing newlines) in worklow yaml:

`./lock.sh "${{ secrets.SECRETS_KEY }}"`

`./unlock.sh "${{ secrets.SECRETS_KEY }}"`

With passphrase:

`./lock.sh "passphrase"`

`./unlock.sh "passphrase"`

Recommend delete trailing newlines from SECRETS_KEY.

# pull

When you pull changes to `encrypted/` use unlock script to update `decrypted/`.

`./unlock.sh passphrase`

# push

When you update anything in `decrypted/` use lock script to update `encrypted/` then push.

`./lock.sh passphrase`

# license

Copyright DWJ 2023.  
Distributed under the Boost Software License, Version 1.0.  
https://www.boost.org/LICENSE_1_0.txt
