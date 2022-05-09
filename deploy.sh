#!/usr/bin/env bash

BUILD_PATH="${PWD}/build/test_withdraw"

# CLEOS="cleos -u https://wax.greymass.com"
# CLEOS="cleos -u https://waxtestnet.greymass.com"
# CLEOS="cleos -u https://testnet.waxsweden.org"
CLEOS="cleos -u https://testnet.wax.pink.gg"
$CLEOS set contract driseantest1 $BUILD_PATH test_withdraw.wasm test_withdraw.abi -p driseantest1@owner
