#!usr/bin/env bash

pver=$1

yum -y groupinstall "Development Tools"
yum -y install gcc openssl-devel bzip2-devel libffi-devel


if [[ ! -f "Python-$pver.tgz" ]]
then
  wget "https://www.python.org/ftp/python/$pver/Python-$pver.tgz"
fi

if [[ ! -f "Python-$pver.tgz" ]]
then
  exit 1
fi

tar zxf "Python-$pver.tgz"
rm "Python-$pver.tgz"
cd Python-$pver/
./configure
make
sudo make altinstall

python3.9 --version

echo "$(tput setaf 2)Python is installed successfully!$(tput sgr0)"