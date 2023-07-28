#!/bin/bash
#CLIENT SIDE

#install tccli
sudo yum install https://repo.ius.io/ius-release-el$(rpm -E '%{rhel}').rpm
sudo yum update -y
sudo yum install -y python3

cd $HOME
git clone https://github.com/TencentCloud/tencentcloud-cli.git
cd tencentcloud-cli
python3 setup.py install
export TENCENTCLOUD_SECRET_ID=AKIDz8krbsJ5yKBZQpn74WFkmLPx3*******
export TENCENTCLOUD_SECRET_KEY=Gu5t9xGARNpq86cd98joQYCN3*******
export TENCENTCLOUD_REGION=eu-frankfurt

#install coscmd
#yum install -y gcc openssl-devel bzip2-devel libffi-devel zlib-devel xz-devel mv coscli-linux coscli
#cd /usr/src
#wget https://www.python.org/ftp/python/3.7.11/Python-3.7.11.tgz
#tar xzf Python-3.7.11.tgz
#cd Python-3.7.11
#./configure --enable-optimizations
#make altinstall
#rm -rf /usr/src/Python-3.7.11.tgz

#cd $HOME
#pip3.7 install coscmd
#coscmd config -a xxxxxxxxxxxx -s yyyyyyyyyyyy -b tommyxyz-1301327510 -r eu-frankfurt

#install 7-zip
yum --disablerepo=* --enablerepo=epel search p7zip
yum install p7zip.x86_64

#find out instance ID and disk ID
iid=`tccli lighthouse DescribeInstances | grep -B 5 newlh | grep InstanceId | cut -d ":" -f2 | cut -c 3-16` #'newlh' is the temporary instnace name which we use for search
did=`tccli lighthouse DescribeDisks | grep floater -B 3 | grep DiskId |  cut -d ":" -f2 | cut -c 3-17` #'floater' is the floating disk name

#attach and mount the disk
tccli lighthouse AttachDisks --cli-unfold-argument --region eu-frankfurt --DiskIds $did --InstanceId $iid
sudo mkdir /data/vdd
sudo mkdir /data/vdd/vdd1
sudo mount /dev/vdd1 /data/vdd/vdd1

#download latest block DBs

wget https://tommyxyz-1301327510.cos.eu-frankfurt.myqcloud.com/MX/node-0.7z -P /data/vdd/vdd1/
wget https://tommyxyz-1301327510.cos.eu-frankfurt.myqcloud.com/MX/node-1.7z -P /data/vdd/vdd1/
wget https://tommyxyz-1301327510.cos.eu-frankfurt.myqcloud.com/MX/node-2.7z -P /data/vdd/vdd1/
wget https://tommyxyz-1301327510.cos.eu-frankfurt.myqcloud.com/MX/node-metachain.7z -P /data/vdd/vdd1/

#extract to final folders
7za x node-0.7z -o/data/vdc/vdc1/node-0/db
7za x node-1.7z -o/data/vdb/vdb1/node-1/db
7za x node-2.7z -o/root/MyObservingSquad/node-2/db
7za x node-metachain.7z -o/data/vdc/vdc1/node-metachain/db

#clean up

rm -rf  /data/vdd/vdd1/node* #remove old archives
sudo umount /dev/vdd/vdd1 #unmount floating disk
tccli lighthouse DetachDisks --cli-unfold-argument --region eu-frankfurt --DiskIds lhdisk-bpzydb5a #dettach floating disk

##remove Env Vars
unset TENCENTCLOUD_SECRET_ID
unset TENCENTCLOUD_SECRET_KEY
unset REGION