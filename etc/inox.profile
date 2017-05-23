# Persistent global definitions go here
include /etc/firejail/globals.local

# This file is overwritten during software install.
# Persistent customizations should go in a .local file.
include /etc/firejail/inox.local

# Inox browser profile
noblacklist ~/.config/inox
noblacklist ~/.cache/inox
noblacklist ~/.pki
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc

netfilter

whitelist ${DOWNLOADS}
mkdir ~/.config/inox
whitelist ~/.config/inox
mkdir ~/.cache/inox
whitelist ~/.cache/inox
mkdir ~/.pki
whitelist ~/.pki

include /etc/firejail/whitelist-common.inc
