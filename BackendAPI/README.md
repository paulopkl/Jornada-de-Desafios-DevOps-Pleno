# Rodar projeto em ambiente de desenvolvimento

Na raiz do projeto rode
```
    docker compose up -d
```

# Build para produção

```
    docker build -f Dockerfile.Prod -t paulocr.azurecr.io/backend-dotnet:latest .
    docker push paulocr.azurecr.io/backend-dotnet:latest
```
