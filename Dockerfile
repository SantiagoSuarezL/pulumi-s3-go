FROM pulumi/pulumi-go:latest

WORKDIR /app

COPY . .

RUN go mod download

CMD ["pulumi", "up"]