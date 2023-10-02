# ETC-mempool-whale-watcher

![Screenshot]()


Listen for ETC movements in the mempool.

This container will monitor pending transactions from the mem pool and report all movements of ETC over 
a given threshold.

## Usage
### Docker
Set ```NODE_URL``` to a websocket (WS) enabed ETC node url. (example: wss://api-geth-at.etc-network.info)

Then run
```
docker-compose up -d
```

### local
```
NODE_URL=<websocket ETC node url> go run main.go
```

### Setting the threshold

The env var ```MONITOR_ETC_THRESHOLD``` (denominated in ETC) is checked first and used for the reporting threshold if possible. If absent a default of 50 is used.

## Contributing

While this is at the present a very simple tool, please feel free to suggest any changes or improvements, or open a PR.
