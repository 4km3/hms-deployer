FROM rawmind/hms-jre8:1.8.112
MAINTAINER Rodrigo de la Fuente <rodrigo@delafuente.email>

LABEL Description="HMS Maven Publisher"                                        \
      Vendor="ACME Products"                                                   \
      Version="1.0"

# Install rancher cli, remove Docker when done
RUN set -ex;                                                                   \
    apk add --update --no-cache docker;                                        \

# Copy and set entrypoint
COPY entrypoint /usr/local/bin

ENTRYPOINT [ "/usr/local/bin/entrypoint" ]

