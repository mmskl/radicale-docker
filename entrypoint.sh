#!/bin/sh

htpasswd -Bbc "/.htpasswd" "$AUTH_USER" "$AUTH_PASS"
radicale --hosts=0.0.0.0:5232 --foreground --storage-filesystem-folder=/data --auth-type=htpasswd --auth-htpasswd-filename="/.htpasswd"
