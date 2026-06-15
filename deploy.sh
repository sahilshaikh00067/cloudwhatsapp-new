#!/bin/bash

cd /root/cloudwhatsapp-new

git pull

npm run build

rm -rf /var/www/html/*
cp -r dist/* /var/www/html/

cd backend

pm2 restart django

echo "Deployment Complete"