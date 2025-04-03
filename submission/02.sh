#!/bin/bash

# Create a native segwit address and get the public key from the address.
#wallet name
#WALLET_NAME="btrustwallet"

#Wallet loading
#bitcoin-cli -regtest loadwallet "$WALLET_NAME" >/dev/null 2>&1

# generating a bech32 address
#ADDRESS=$(bitcoin-cli -regtest getnewaddress "" bech32)

# Extracting the public key for  address
#PUBKEY=$(bitcoin-cli -regtest getaddressinfo "$ADDRESS" | jq -r '.pubkey')

#####
#Gen a native Segwit (Bech32)
ADDRESS=$(bitcoin-cli -regtest getnewaddress "" bech32)

#Get pub key assoc with the address
PUBKEY=$(bitcoin-cli -regtest getaddressinfo "$ADDRESS" | jq -r '.pubkey')

#Println Pubkey
echo "$PUBKEY"
