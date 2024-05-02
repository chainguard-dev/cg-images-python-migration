# Migrating a Flask Application to GC Images

This branch shows a simple Flask application containerized using Chainguard Images and served with Gunicorn.

Build with:

```bash
docker build . -t python-only
```

Run with:

```bash
docker run -it -p 8000:8000 python-only
```
