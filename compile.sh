#!/bin/sh
#-------------------------------------------------------------------------------------------
# This script will compile / strip plutusd.
#-------------------------------------------------------------------------------------------

chmod 755 src/leveldb/build_detect_platform
chmod 755 src/secp256k1/autogen.sh

# Step 1. Level db

cd src/leveldb
make libleveldb.a libmemenv.a

# Step 2. plutus daemon

cd ..
make -f makefile.unix
strip plutusd
