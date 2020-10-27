FROM python:3.7-alpine

LABEL author="ZegWe"
LABEL version="0.1.0"

EXPOSE 8080:8080
RUN pip install requests
COPY . .

ENTRYPOINT ["python", "run.py", "-c", "./config.json"]