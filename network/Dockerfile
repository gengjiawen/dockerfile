FROM mrchoke/curl-http3 as curl-http3

FROM ubuntu

COPY --from=curl-http3 /etc/ssl/certs/ /etc/ssl/certs/
COPY --from=curl-http3 /usr/bin/curl /usr/bin/curl-http3
