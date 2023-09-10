# Rodar projeto em ambiente de desenvolvimento

Na raiz do projeto rode
```
    docker compose up -d
```

# Build para produção

```
    docker build -f Dockerfile --build-arg SA_PASSWORD=SqlServer2019! -t paulocr.azurecr.io/sqlserver:latest .
    docker push paulocr.azurecr.io/sqlserver:latest
```
