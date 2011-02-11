#!/bin/bash
sudo pacman --sync php-curl
sudo emacs /etc/php/php.ini
sudo /etc/rc.d/httpd restart
