FROM python:3.7-slim


RUN apt update && apt install -y apache2-utils && \
    pip install --no-cache-dir radicale passlib bcrypt

EXPOSE 5232
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

