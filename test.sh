#!/usr/bin/env bash

BUILD_PATH="${PWD}/build/beast_giveaway"

# CLEOS="cleos -u https://wax.greymass.com"
# CLEOS="cleos -u https://waxtestnet.greymass.com"
# CLEOS="cleos -u https://testnet.waxsweden.org"
CLEOS="cleos -u https://testnet.wax.pink.gg"

$CLEOS push action driseantest1 withdraw '[
"gaotherice33",
"1.00000000 WAX"
]' -p driseantest1@owner