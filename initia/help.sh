docker run -d -e moniker=test2 -v ./data:/root/.initia satealabs/initia

docker run --rm -v ./data:/root/.initia satealabs/initia

curl -s localhost:27657/status | jq .result | jq .sync_info
