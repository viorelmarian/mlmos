FROM python:3.7

WORKDIR /butterfly

COPY ./pywumpus /pywumpus

RUN pip install butterfly

RUN pip install butterfly[themes]

RUN pip install butterfly[systemd]

USER root

EXPOSE 57575

CMD ["butterfly.server.py", "--host=172.17.0.2", "--port=57575", "--login", "--unsecure"]

