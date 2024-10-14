FROM ubuntu:latest
LABEL maintainer="Giang Tran  giangb2205976@student.ctu.edu.vn"
RUN apt update -y
RUN apt install -y python3-pip python3-dev build-essential python3-venv
ADD . /flask_app
WORKDIR /flask_app
# Tạo virtual environment và kích hoạt nó
RUN python3 -m venv venv
RUN . venv/bin/activate
RUN venv/bin/pip install -r requirements.txt
ENTRYPOINT ["/flask_app/venv/bin/python3"]
CMD ["flask_docker.py"]

