# Migrating a Flask Application to GC Images

Sample application showing a migration to Chainguard Images for a Flask application. We start with a simple containerized Flask application based on a default Python image, migrate it to Chainguard Images, then add a Docker Compose file orchestrating the application with a reverse proxy using Chainguard's nginx image.

The below branches show different stages of project development:

- [Pre-migration Flask app](https://github.com/chainguard-dev/cg-images-python-migration/tree/v0)
- [Flask application and Dockerfile only](https://github.com/chainguard-dev/cg-images-python-migration/tree/python-only)
- [Docker Compose with Flask application and nginx](https://github.com/chainguard-dev/cg-images-python-migration/tree/compose-flask-nginx)
