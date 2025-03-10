FROM ubuntu:24.04

RUN export DEBIAN_FRONTEND=noninteractive \
  && apt-get update \
  && apt-get install --no-install-recommends -qy postfix postfix-mysql \
    dovecot-core dovecot-imapd dovecot-lmtpd dovecot-mysql dovecot-pop3d dovecot-sieve libopendbx1-mysql \
    opendkim \
    syslog-ng \
    libswitch-perl libdbi-perl libdbd-mysql-perl \
    ca-certificates \
  && addgroup --gid 1003 --system vemail && adduser --uid 1003 --home /var/dovecot --system vemail
