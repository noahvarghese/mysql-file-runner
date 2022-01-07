#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

pip install -r ./requirements.txt

sudo cp -R ./src /usr/local/lib/mysql-file-runner
sudo ln -s /usr/local/lib/mysql-file-runner/main.py /usr/local/bin/mysql-file-runner

echo "Command can now be run from the CLI as mysql-file-runner"