if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

pip uninstall -r ./requirements.txt

sudo rm /usr/local/bin/mysql-file-runner
sudo rm -rf /usr/local/lib/mysql-file-runner

echo "Command mysql-file-runner succesfully uninstalled"