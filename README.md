> Every time you re-generate keys, you have to manually set new value into bootnodes property in net/config.toml file

Get last block number:
```shell
curl -X POST http://127.0.0.1:21004 --data '{"jsonrpc":"2.0","method":"eth_blockNumber","params":["latest"],"id":1}'
```

Get number of peers:
```shell
curl -X POST http://127.0.0.1:21004 --data '{"jsonrpc":"2.0","method":"net_peerCount","params":[],"id":1}'
```
