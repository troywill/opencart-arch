#!/bin/bash
sudo pacman --sync php-gd
emacs /etc/php/php.ini
sudo /etc/rc.d/httpd restart

