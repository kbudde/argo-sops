FROM golang:1.17-alpine as sops-builder

# https://github.com/mozilla/sops
ARG SOPS_VERSION="3.7.1" 

WORKDIR /src/
ADD https://github.com/mozilla/sops/archive/refs/tags/v${SOPS_VERSION}.zip ./

RUN unzip /src/v${SOPS_VERSION}.zip 
RUN cd sops-${SOPS_VERSION} && \
    CGO_ENABLED=0 go build -o /bin/sops ./cmd/sops


FROM alpine as final

ENV SOPS_AGE_KEY_FILE /age/key.txt
COPY --from=sops-builder /bin/sops /bin/sops
