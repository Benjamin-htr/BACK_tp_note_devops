FROM alpine:latest

WORKDIR /app

RUN apk add nodejs npm
RUN apk add git
RUN git clone https://github.com/Benjamin-htr/BACK_tp_note_devops
RUN cd BACK_tp_note_devops && npm install

EXPOSE 3000

CMD ["npx", "json-server", "BACK_tp_note_devops/db.json"]