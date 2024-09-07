.PHONY: all amd64 arm64

all: amd64 arm64

amd64:
	GOOS=linux GOARCH=amd64 go build -ldflags="-s -w -X main.Version=v0.0.1dev" -o build/torrents-blocker_amd64

arm64:
	GOOS=linux GOARCH=arm64 go build -ldflags="-s -w -X main.Version=v0.0.1dev" -o build/torrents-blocker_arm64