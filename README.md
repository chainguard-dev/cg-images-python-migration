# Migrating a Flask Application to GC Images

This branch shows a Docker Compose orchestration between a containerized Flask application and the nginx Chainguard Image.

Start with:

```bash
docker compose up
```

The application should be visible at both `0.0.0.0` and `0.0.0.0:80`.