FROM golang:1.16
COPY . .
RUN go build -o server main.go
CMD ["./server"]