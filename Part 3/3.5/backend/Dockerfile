FROM golang:1.16-alpine

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

RUN go build

RUN adduser -S appuser

USER appuser

CMD ["./server"]
