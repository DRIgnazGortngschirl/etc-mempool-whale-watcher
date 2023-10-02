FROM golang:alpine AS build

RUN apk --no-cache add ca-certificates

WORKDIR /src/
ADD . /src/

RUN CGO_ENABLED=0 go build -o /bin/etc-mempool-whale-watcher

FROM scratch
COPY --from=build /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=build /bin/etc-mempool-whale-watcher /bin/etc-mempool-whale-watcher

ENTRYPOINT ["/bin/etc-mempool-whale-watcher"]
