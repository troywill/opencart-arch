#!/bin/bash
EDITOR='emacs'
SUDO='sudo'

${SUDO} pacman --sync apache
${SUDO} ${EDITOR} /etc/http/
${SUDO} /etc/rc.d/httpd start
${SUDO} ${EDITOR} /etc/rc.conf

