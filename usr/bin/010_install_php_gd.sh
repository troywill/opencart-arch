#!/bin/bash
sudo pacman --sync php-gd
sudo emacs /etc/php/php.ini
sudo /etc/rc.d/httpd restart
