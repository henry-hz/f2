#!/bin/bash


# WALLETS
ETH_FROM=0x4828699dcbe7d449ce209af47ed285eba9a555a9

# NETWORKS
FUSE_MAIN=https://rpc.fuse.io
FUSE_ARCHIVE=https://explorer-node.fuse.io
FUSE_TEST=https://rpc.fusespark.io/


export ETH_KEYSTORE=./keys
export ETH_PASSWORD=./keys/PASS-55a9
export ETH_GAS=1000000
export ETH_GAS_PRICE=10100010000

export ETH_RPC_URL=$FUSE_MAIN



# GET BALANCES
function balances {
  declare -a nets=($ETH_RINK $ARB_RINK $FUSE_MAIN $FUSE_TEST $ETH_GOER)
  for net in ${nets[@]}; 
    do 
      balance=$(seth --rpc-url $net balance $WALLET_DISK | seth --from-wei)
    printf "%8.4f  $net\n" "$balance"
  done
  # printf 'balance:   %s\n'      "${balance}"
}
