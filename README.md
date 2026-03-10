# App FastAPI simples para EasyPanel

Este projeto sobe um servidor web em Python com FastAPI que responde `Olá mundo` na rota `/`.

## Rodar localmente (sem Docker)

```bash
pip install -r requirements.txt
uvicorn main:app --host 0.0.0.0 --port 5000
```

Acesse: http://localhost:5000

## Rodar com Docker

```bash
docker build -t ola-mundo .
docker run -p 8080:8080 -e PORT=8080 ola-mundo
```

Acesse: http://localhost:8080

## Deploy no EasyPanel

1. Crie um novo serviço no EasyPanel apontando para este repositório/pasta.
2. Selecione deploy por `Dockerfile`.
3. Defina a porta como `8080` (ou mantenha usando a variável `PORT`).
4. Faça deploy.

Ao abrir a URL do serviço, a resposta será: `Olá mundo`.
