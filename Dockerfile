FROM python:3.7-alpine

RUN pip install --no-cache-dir --upgrade radicale

EXPOSE 5232

ENTRYPOINT [ "radicale", "--hosts=0.0.0.0:5232", "--foreground", "--storage-filesystem-folder=/data", "--auth-type=None" ]
