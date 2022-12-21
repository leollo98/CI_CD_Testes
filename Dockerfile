FROM ubuntu:latest

EXPOSE 8000

WORKDIR /app

ENV HOST=localhost DBPORT=5432 PORT=8000

ENV USER=root PASSWORD=root DBNAME=root

COPY ./main main

COPY ./templates/ templates/

RUN chmod +x main

CMD [ "./main" ]
