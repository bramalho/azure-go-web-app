# Azure Go Web App

## Run application

```bash
cd app
go run main.go
```

## Build

```bash
cd app
env CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o ../build/app
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

The image will be published in your [docker hub](https://hub.docker.com/r/bramalho/azure-go-web-app).

## Infrastructure

```bash
cd terraform

terraform init

terraform plan

terraform apply
```

The application will be running here: [azure-go-web-app.azurewebsites.net](https://azure-go-web-app.azurewebsites.net)

## Troubleshooting

The see the logs and all information here: [azure-go-web-app.scm.azurewebsites.net](https://azure-go-web-app.scm.azurewebsites.net)
