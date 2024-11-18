# Migrating a Flask Application to Chainguard Images

Sample application showing a migration to Chainguard Images for a Flask application. We start with a simple containerized Flask application based on a default Python image, migrate it to Chainguard Images, then add a Docker Compose file orchestrating the application with a reverse proxy using Chainguard's nginx image.

To clone and fetch/pull all branches:

```bash
git clone git@github.com:chainguard-dev/cg-images-python-migration.git
cd cg-images-python-migration
git branch -r | grep -v '\->' | sed "s,\x1B\[[0-9;]*[a-zA-Z],,g" | while read remote; do git branch --track "${remote#origin/}" "$remote"; done
git fetch --all
git pull --all
```

The below branches show different stages of project development:

- [Pre-migration Flask app](https://github.com/chainguard-dev/cg-images-python-migration/tree/v0)
- [Flask application and Dockerfile only](https://github.com/chainguard-dev/cg-images-python-migration/tree/python-only)
- [Docker Compose with Flask application and nginx](https://github.com/chainguard-dev/cg-images-python-migration/tree/compose-flask-nginx)

## Resources

- [Migrating to Python Chainguard Images](https://edu.chainguard.dev/chainguard/migration/migrating-python/)
- [Blog Post: Securely Containerize a Python Application with Chainguard Images](https://dev.to/chainguard/securely-containerize-a-python-application-with-chainguard-images-bn8)
- [Video: How to containerize a Python application with a multi-stage build using Chainguard Images](https://www.youtube.com/watch?v=2D0JULd4E5A)
