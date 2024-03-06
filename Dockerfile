
# Builder stage
FROM alpine:latest as builder
WORKDIR /.
COPY data.txt /.

# Final stage
FROM fedora:latest
WORKDIR /.
COPY --from=builder ./data.txt /.
