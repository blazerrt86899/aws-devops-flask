FROM python:3.11-slim as builder

WORKDIR /app

COPY requirements.txt ./

RUN pip install --no-cache-dir --prefix=/install -r requirements.txt

COPY . ./

FROM gcr.io/distroless/python3

WORKDIR /app

COPY --from=builder /install /usr/local
COPY --from=builder /app /app

EXPOSE 5000

CMD [ "app.py" ]
