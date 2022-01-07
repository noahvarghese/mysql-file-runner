#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

pip install -r ./requirements.txt

sudo cp -R ./src /usr/local/lib/sql-runner
sudo ln -s /usr/local/lib/sql-runner/main.py /usr/local/bin/sql-runner

echo "Command can now be run from the CLI as sql-runner"