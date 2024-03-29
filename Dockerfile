FROM python:3.12.1

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY /test /usr/src/app/

# COPY setup.py /usr/src/app/

RUN bash -c 'ls'

RUN pip3 install --no-cache-dir -r requirements.txt

RUN python setup.py install

COPY . /usr/src/app

EXPOSE 8080

ENTRYPOINT ["python3"]

CMD ["-m", "swagger_server"]