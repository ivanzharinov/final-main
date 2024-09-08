FROM golang:1.23.0

WORKDIR /app

COPY . .

RUN go mod tidy \
    && go build -o final-main .


CMD ["/app/final-main"]