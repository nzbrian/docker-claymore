#!/bin/bash
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/cuda:/usr/lib/nvidia

if [[ -z "EWAL" ]]; then
    echo "You must at least set EWAL env var."
    exit 1
fi

echo "POOL: ${EPOOL}, WALLET: ${EWAL}, PSW: ${EPSW}, ESM: ${ESM}, ALLPOOLS: 0" > /claymore/epools.txt

/claymore/Claymore\'s\ Dual\ Ethereum+Decred_Siacoin_Lbry_Pascal\ AMD+NVIDIA\ GPU\ Miner\ v11.0\ -\ LINUX/ethdcrminer64 \
    -mport 0 \
    -mode 1  \
    -epool ${EPOOL} \
    -ewal ${EWAL} \
    -epsw ${EPSW} \
    -ethi ${ETHI} \
    -esm ${ESM} \
    -gser ${GSER} \
    -dbg 0  \
    -allpools 0
