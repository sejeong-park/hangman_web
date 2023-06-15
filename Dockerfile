FROM python:3.8-slim-buster
LABEL maintainer="tpwjd29@gmail.com"
WORKDIR /app
COPY * ./
RUN pip3 install -r requirements.txt
EXPOSE 4000
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0", "--port=4000"]