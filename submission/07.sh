# What is the receiver's address in this partially signed transaction?
# transaction=cHNidP8BAHsCAAAAAhuVpgVRdOxkuC7wW2rvw4800OVxl+QCgezYKHtCYN7GAQAAAAD/////HPTH9wFgyf4iQ2xw4DIDP8t9IjCePWDjhqgs8fXvSIcAAAAAAP////8BigIAAAAAAAAWABTHctb5VULhHvEejvx8emmDCtOKBQAAAAAAAAAA

# PSBT  == Partially Signed Bitcoin Transaction
psbt="cHNidP8BAHsCAAAAAhuVpgVRdOxkuC7wW2rvw4800OVxl+QCgezYKHtCYN7GAQAAAAD/////HPTH9wFgyf4iQ2xw4DIDP8t9IjCePWDjhqgs8fXvSIcAAAAAAP////8BigIAAAAAAAAWABTHctb5VULhHvEejvx8emmDCtOKBQAAAAAAAAAA"

# Decode  using bitcoin-cli and store it
decoded_tx=$(bitcoin-cli -regtest -named decodepsbt psbt=$psbt)

# echo "$decoded_tx"

# Get receiver's address using jq
receiver_address=$(echo "$decoded_tx" | jq -r '.tx.vout[0].scriptPubKey.address')

#printout receivers address
echo "$receiver_address"
