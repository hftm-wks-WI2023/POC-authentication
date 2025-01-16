FROM surnet/alpine-wkhtmltopdf:3.20.0-0.12.6-small AS wkhtmltopdf
FROM python:3.11-alpine

RUN apk update && apk upgrade --no-cache
WORKDIR /opt/app
COPY . /opt/app/
RUN pip install --no-cache-dir -r requirements.txt
# RUN addgroup -S appgroup && adduser -S appuser -G appgroup
#
# USER appuser

WORKDIR /opt/app/session

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
