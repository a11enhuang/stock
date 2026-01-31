#!/bin/sh

rm -rf stock
rsync -av --progress ../../stock . --exclude .git --exclude .idea --exclude *.md --exclude *.bat --exclude __pycache__ --exclude .gitignore --exclude stock/cron --exclude stock/img --exclude stock/docker --exclude instock/cache --exclude instock/log --exclude instock/test
rm -rf cron
cp -r ../../stock/cron .

docker build -f Dockerfile -t reopenai/instock:1.0.0 .