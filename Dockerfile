FROM ubuntu:19.04

RUN export DEBIAN_FRONTEND=noninteractive \
  && apt-get update \
  && apt-get install --no-install-recommends -qy postfix postfix-mysql postfix-policyd-spf-perl policyd-weight \
    dovecot-core dovecot-imapd dovecot-lmtpd dovecot-mysql dovecot-pop3d dovecot-sieve libopendbx1-mysql \
    spamassassin spamc \
    amavisd-new \
    opendkim opendmarc \

  && addgroup --gid 1003 --system vemail && adduser --uid 1003 --home /var/dovecot --system vemail
