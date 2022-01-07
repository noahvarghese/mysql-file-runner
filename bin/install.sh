#!/bin/bash

pip install -r ./requirements.txt

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

sudo cp -R ./src /usr/local/bin/sql-runner

echo "Command can now be run from the CLI as sql-runner"