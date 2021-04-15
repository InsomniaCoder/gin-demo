############################
# STEP 1 build executable binary
############################
FROM golang:alpine AS builder
# Install git.
# Git is required for fetching the dependencies.
RUN apk update && apk add --no-cache git
WORKDIR /app
COPY . .
# Fetch dependencies.
# Using go get.
RUN go get -d -v
# Build the binary.
RUN go build -o /go/bin/gin-101
############################
# STEP 2 build a small image
############################
FROM alpine
# Copy our static executable.
COPY --from=builder /go/bin/gin-101 /go/bin/gin-101
# Run the hello binary.
#ENTRYPOINT ["tail", "-f", "/dev/null"]
ENTRYPOINT ["/go/bin/gin-101"]