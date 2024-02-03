FROM ubuntu:23.04

RUN export DEBIAN_FRONTEND=noninteractive \
  && apt-get update \
  && apt-get install --no-install-recommends -qy postfix postfix-mysql postfix-policyd-spf-python policyd-weight \
    dovecot-core dovecot-imapd dovecot-lmtpd dovecot-mysql dovecot-pop3d dovecot-sieve libopendbx1-mysql \
    spamassassin spamc \
    amavisd-new \
    opendkim opendmarc \
    syslog-ng \
    libswitch-perl libdbi-perl libdbd-mysql-perl \
    ca-certificates \
  && addgroup --gid 1003 --system vemail && adduser --uid 1003 --home /var/dovecot --system vemail
