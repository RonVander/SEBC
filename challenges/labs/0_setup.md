*Using AWS *
*list
```
ec2-52-17-93-99.eu-west-1.compute.amazonaws.com  -  ip-172-31-6-218.eu-west-1.compute.internal - 172.31.6.218
ec2-52-30-112-88.eu-west-1.compute.amazonaws.com -  ip-172-31-5-14.eu-west-1.compute.internal - 172.31.5.14
ec2-34-251-114-155.eu-west-1.compute.amazonaws.com - ip-172-31-14-142.eu-west-1.compute.internal - 172.31.14.142
ec2-34-244-135-63.eu-west-1.compute.amazonaws.com - ip-172-31-4-118.eu-west-1.compute.internal - 172.31.4.118
ec2-34-245-217-0.eu-west-1.compute.amazonaws.com - ip-172-31-2-139.eu-west-1.compute.internal - 172.31.2.139
```
*Using Ubuntu 16.04
*filesystem
```
 df -h
Filesystem      Size  Used Avail Use% Mounted on
udev            7.7G     0  7.7G   0% /dev
tmpfs           1.6G  8.5M  1.6G   1% /run
/dev/nvme0n1p1   49G 1017M   48G   3% /
tmpfs           7.7G     0  7.7G   0% /dev/shm
tmpfs           5.0M     0  5.0M   0% /run/lock
tmpfs           7.7G     0  7.7G   0% /sys/fs/cgroup
/dev/nvme1n1    985G   72M  935G   1% /data
tmpfs           1.6G     0  1.6G   0% /run/user/1000
```
*apt-get sourcelist
```
ubuntu@ip-172-31-6-218:~$ cat /etc/apt/sources.list
## Note, this file is written by cloud-init on first boot of an instance
## modifications made here will not survive a re-bundle.
## if you wish to make changes you can:
## a.) add 'apt_preserve_sources_list: true' to /etc/cloud/cloud.cfg
##     or do the same in user-data
## b.) add sources in /etc/apt/sources.list.d
## c.) make changes to template file /etc/cloud/templates/sources.list.tmpl

# See http://help.ubuntu.com/community/UpgradeNotes for how to upgrade to
# newer versions of the distribution.
deb http://eu-west-1.ec2.archive.ubuntu.com/ubuntu/ xenial main restricted
deb-src http://eu-west-1.ec2.archive.ubuntu.com/ubuntu/ xenial main restricted

## Major bug fix updates produced after the final release of the
## distribution.
deb http://eu-west-1.ec2.archive.ubuntu.com/ubuntu/ xenial-updates main restricted
deb-src http://eu-west-1.ec2.archive.ubuntu.com/ubuntu/ xenial-updates main restricted

## N.B. software from this repository is ENTIRELY UNSUPPORTED by the Ubuntu
## team. Also, please note that software in universe WILL NOT receive any
## review or updates from the Ubuntu security team.
deb http://eu-west-1.ec2.archive.ubuntu.com/ubuntu/ xenial universe
deb-src http://eu-west-1.ec2.archive.ubuntu.com/ubuntu/ xenial universe
deb http://eu-west-1.ec2.archive.ubuntu.com/ubuntu/ xenial-updates universe
deb-src http://eu-west-1.ec2.archive.ubuntu.com/ubuntu/ xenial-updates universe

## N.B. software from this repository is ENTIRELY UNSUPPORTED by the Ubuntu 
## team, and may not be under a free licence. Please satisfy yourself as to 
## your rights to use the software. Also, please note that software in 
## multiverse WILL NOT receive any review or updates from the Ubuntu
## security team.
deb http://eu-west-1.ec2.archive.ubuntu.com/ubuntu/ xenial multiverse
deb-src http://eu-west-1.ec2.archive.ubuntu.com/ubuntu/ xenial multiverse
deb http://eu-west-1.ec2.archive.ubuntu.com/ubuntu/ xenial-updates multiverse
deb-src http://eu-west-1.ec2.archive.ubuntu.com/ubuntu/ xenial-updates multiverse

## N.B. software from this repository may not have been tested as
## extensively as that contained in the main release, although it includes
## newer versions of some applications which may provide useful features.
## Also, please note that software in backports WILL NOT receive any review
## or updates from the Ubuntu security team.
deb http://eu-west-1.ec2.archive.ubuntu.com/ubuntu/ xenial-backports main restricted universe multiverse
deb-src http://eu-west-1.ec2.archive.ubuntu.com/ubuntu/ xenial-backports main restricted universe multiverse

deb http://security.ubuntu.com/ubuntu xenial-security main restricted
deb-src http://security.ubuntu.com/ubuntu xenial-security main restricted
deb http://security.ubuntu.com/ubuntu xenial-security universe
deb-src http://security.ubuntu.com/ubuntu xenial-security universe
deb http://security.ubuntu.com/ubuntu xenial-security multiverse
deb-src http://security.ubuntu.com/ubuntu xenial-security multiverse

## Uncomment the following two lines to add software from Canonical's
## 'partner' repository.
## This software is not part of Ubuntu, but is offered by Canonical and the
## respective vendors as a service to Ubuntu users.
# deb http://archive.canonical.com/ubuntu xenial partner
# deb-src http://archive.canonical.com/ubuntu xenial partner
```
*List passwd & groups file
```
hilary:x:2800:2800::/home/hilary:
anupam:x:2900:2900::/home/anupam:

analytics:x:2901:2900
datasci:x:2902:2800
```
