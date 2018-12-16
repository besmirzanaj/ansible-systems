## A script to install ansible 1.8 in a Termux environment (arm processors)
export SODIUM_INSTALL=system
export BIN_SH=$PREFIX/bin/sh
export TMPDIR=/data/data/com.termux/files/tmp
export TMP=$TMPDIR
export TEMP=$TMPDIR
export CONFIG_SHELL=$BIN_SH

mkdir $TMPDIR

apt install python2 python2-dev python-dev
apt install libffi-dev
apt install libsodium-dev
apt install openssl-dev
apt install libgmp-dev
apt install libev-dev
apt install clang
apt install make

EMBED=0 pip2 install gevent
pip2 install pycrypto

# only ansible 1.8.x is supported right now (sem_lock errors with >=1.9 and 2.x
pip2 install 'ansible<1.9.0'
