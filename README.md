
PLTNET is a X11 POS/POW + Masternodes Network and offers a masternode-based blockchain ecosystem.
Please visit our official website for more information: http://plutuswork.io

Ticker: PLT
Algorithm: x11
Type: Hybrid POS/POW (50-50)
Block Time: 90 secs per block.
Masternode Collateral: 10 000 PLT
Masternode Rewards: 50% of ALL mining rewards (POS and POW)

License
-------

Plutus is released under the terms of the MIT license. See COPYING for more information or see http://opensource.org/licenses/MIT.

Build Plutus
-------------

Get the source:

    git clone https://github.com/plutuswork/plutus.git

If all dependencies are met (see below), you can run the following command to build plutusd:

    cd plutus && \
    chmod +x src/leveldb/build_detect_platform && \
    chmod +x src/secp256k1/autogen.sh && \
    cd src/leveldb && \
    make libleveldb.a libmemenv.a && \
    cd .. && \
    make -f makefile.unix && strip plutusd
    
Or with script:    
    
    cd plutus && \
    chmod +x compile.sh && \
    ./compile.sh
    
Dependencies
------------

[Check the build documentation for more information](doc/build-unix.md)

Build requirements:

    sudo apt-get install build-essential libtool automake autotools-dev autoconf pkg-config libssl-dev libgmp3-dev libevent-dev bsdmainutils
    
All boost development packages:
    
    sudo apt-get install libboost-all-dev    

BerkeleyDB is required for the wallet. db4.8 packages are available [here](https://launchpad.net/~bitcoin/+archive/bitcoin).
You can add the repository and install using the following commands:

    sudo add-apt-repository ppa:bitcoin/bitcoin
    sudo apt-get update
    sudo apt-get install libdb4.8-dev libdb4.8++-dev
    
 miniupnpc for UPnP Support:

    sudo apt-get install libminiupnpc-dev
    
Trouble shooting
-------------

You may need to export the paths to OPENSSL lib to compile against 1.0.x ([more details here](https://github.com/plutuswork/plutus/issues/3#issuecomment-353893826))

    export OPENSSL_INCLUDE_PATH="your_include_path_to_openssl_1.0.x"
    export OPENSSL_LIB_PATH="your_lib_path_to_openssl_1.0.x"

# plutus1
