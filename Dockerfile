FROM alpine:3.16
RUN apk add --no-cache curl whois bash
COPY dac .
ENTRYPOINT ["/bin/bash"]