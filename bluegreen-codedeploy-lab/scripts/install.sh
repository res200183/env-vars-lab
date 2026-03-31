#!/bin/bash
set -e
cp /home/ec2-user/app/index.html /usr/share/nginx/html/index.html
systemctl restart nginx
