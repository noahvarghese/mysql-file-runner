if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

pip uninstall -r ./requirements.txt

sudo rm /usr/local/bin/sql-runner
sudo rm -rf /usr/local/lib/sql-runner

echo "Command sql-runner succesfully uninstalled"