# ETC-mempool-whale-watcher

![Screenshot](https://i.ibb.co/Js6fSFC/2021-07-23-011128-903x402-scrot.png)


listen for large ETC movements in the mempool.

This task will monitor pending transactions and report all movements of ETC over a given threshold.
I built this as a way to play around with gETC but it may be useful as a tool for certain MEV strategies
or for analytics.

## Usage
### Docker
create a .env file in the root directory and set ```NODE_URL``` to a websocket enabed gETC node url. (example: wss://api-gETC-at.etc-network.info)

Then run
```
docker-compose up
```

### local
```
NODE_URL=<websocket gETC node url> go run main.go
```

### Setting the threshold

the env var ```MONITOR_ETC_THRESHOLD``` (denominated in ETC) is checked first and used for the reporting threshold if possible. If absent a default value is used.

## Contributing

While this is at the present a very simple tool, please feel free to suggest any changes or improvements, or open a PR.
