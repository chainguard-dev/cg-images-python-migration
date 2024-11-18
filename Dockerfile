# syntax=docker/dockerfile:1

FROM cgr.dev/chainguard/python:latest-dev AS dev

WORKDIR /flask-app

RUN python -m venv venv
ENV PATH="/flask-app/venv/bin":$PATH
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

FROM cgr.dev/chainguard/python:latest

WORKDIR /flask-app

COPY app.py app.py
COPY --from=dev /flask-app/venv /flask-app/venv
ENV PATH="/flask-app/venv/bin:$PATH"

EXPOSE 8000

ENTRYPOINT ["python", "-m", "gunicorn", "-b", "0.0.0.0:8000", "app:app"]


