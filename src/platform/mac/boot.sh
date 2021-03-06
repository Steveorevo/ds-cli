#!/bin/bash
#
# Boot native CLI with homebrew extensions
#
unset HISTFILE;
export DS_PLATFORM="Darwin"
export DS_CLI="/Applications/XAMPP/ds-plugins/ds-cli"
export PHPRC="$DS_CLI/platform/mac/pre"
export SSL_CERT_FILE="$DS_CLI/platform/mac/homebrew/etc/openssl/cert.pem"
export GIT_EXEC_PATH="$DS_CLI/platform/mac/homebrew/Cellar/git/2.19.0_1/libexec/git-core"
export GIT_TEMPLATE_DIR="$DS_CLI/platform/mac/homebrew/Cellar/git/2.19.0_1/share/git-core/templates"
export npm_config_cache="$DS_CLI/platform/mac/npm-cache"
export npm_config_prefix="$DS_CLI/platform/mac/npm"
export COMPOSER_HOME="$DS_CLI/platform/mac/composer"
export DYLD_FALLBACK_LIBRARY_PATH="$DS_CLI/platform/mac/homebrew/lib:/Applications/XAMPP/xamppfiles/lib:/usr/lib"
export PATH="$DS_CLI/platform/all/pre:$DS_CLI/platform/mac/pre:$DS_CLI/vendor/bin:$DS_CLI/platform/mac/homebrew/bin:$DS_CLI/platform/mac/nodejs/bin:$DS_CLI/platform/mac/npm/bin:/Applications/XAMPP/xamppfiles/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:$PATH"
unset DYLD_LIBRARY_PATH
"$@"
