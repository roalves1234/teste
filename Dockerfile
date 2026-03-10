FROM python:3.12-slim

COPY --from=ghcr.io/astral-sh/uv:latest /uv /usr/local/bin/uv

WORKDIR /app

COPY pyproject.toml .
RUN uv sync --no-dev

COPY . .

ENV PORT=8080
EXPOSE 8080

CMD ["sh", "-c", "uv run gunicorn -k uvicorn.workers.UvicornWorker --bind 0.0.0.0:${PORT} main:app"]