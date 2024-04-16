#!/bin/sh

rm -rf /gen
rm -rf /newkeys

besu operator generate-blockchain-config \
  --config-file=/net/genesis-config.json \
  --to=/gen \
  --private-key-file-name=key

mkdir /newkeys

i=0
for dir in /gen/keys/*
do
  mkdir -p /newkeys/$i
  mv $dir/* /newkeys/$i/
  i=$((i+1))
done

rm -rf /keys/*
mv /newkeys/* /keys/
mv -f /gen/genesis.json /net/

