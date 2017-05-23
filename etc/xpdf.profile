# Persistent global definitions go here
include /etc/firejail/globals.local

# This file is overwritten during software install.
# Persistent customizations should go in a .local file.
include /etc/firejail/xpdf.local

################################
# xpdf application profile
################################
noblacklist ${HOME}/.xpdfrc
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc

caps.drop all
net none
nonewprivs
noroot
protocol unix
shell none
seccomp

private-dev
private-tmp
