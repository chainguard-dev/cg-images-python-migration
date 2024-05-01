# syntax=docker/dockerfile:1

FROM cgr.dev/chainguard/python:latest-dev as dev

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

EXPOSE 5000


ENTRYPOINT ["python"]
CMD ["-m", "gunicorn", "-b", "0.0.0.0:5000", "app:app"]


