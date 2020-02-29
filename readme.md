# Azure Go Web App

## Run application

```bash
cd app
go run main.go
```

## Build

```bash
cd app
env GOOS=linux GOARCH=arm go build -o ../build/app
```
