#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

pip install -r ./requirements.txt 0 > /dev/null 2>&1

sudo rm -rf /usr/local/lib/mysql-file-runner/
sudo rm /usr/local/bin/mysql-file-runner

sudo cp -R ./src /usr/local/lib/mysql-file-runner
sudo ln -s /usr/local/bin/mysql-file-runner /usr/local/lib/mysql-file-runner/main.py > /dev/null 2>&1

echo "mysql-file-runner updated"
