FROM golang:alpine
RUN apk add --update make build-base
RUN mkdir /app 
COPY . /app
ENV GOBIN=/usr/local/bin
WORKDIR /app
RUN ls -la
RUN make install
ENTRYPOINT ["/app/docker-entrypoint.sh"]
