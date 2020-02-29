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

## Build Docker image

```bash
docker build -t bramalho/azure-go-web-app .
```

## Run Docker image

```bash
docker run -p 8080:80 --env PORT=80 bramalho/azure-go-web-app
```

## Publish Docker image

```bash
docker login

docker push bramalho/azure-go-web-app
```

The image will be published in [docker hub](https://hub.docker.com/r/bramalho/azure-go-web-app).
