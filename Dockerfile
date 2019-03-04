FROM python:3-alpine

COPY redirect.py /
ENV REDIRECT_URL="http://localhost"
EXPOSE 8080

ENTRYPOINT /redirect.py --ip 0.0.0.0 --port 8080 ${REDIRECT_URL}
