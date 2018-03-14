Stop the Cloudera Management Service:

    Select Clusters > Cloudera Management Service.
    Select Actions > Stop.


mkdir /data/backups/
mysqldump scm > /data/backups/backup-scm.sql
mysqldump amon > /data/backups/backup-amon.sql
mysqldump metastore > /data/backups/backup-metastore.sql
mysqldump rman > /data/backups/backup-rman.sql
mysqldump nav > /data/backups/backup-nav.sql
mysqldump navms > /data/backups/backup-navms.sql
mysqldump sentry > /data/backups/backup-sentry.sql


Java ?

stop all services 

service cloudera-scm-server stop
service cloudera-scm-server-db stop

cp /etc/cloudera-scm-server /data/backups/
cp /etc/cloudera-scm-agent /data/backups/

sudo wget 'https://archive.cloudera.com/cm5/ubuntu/xenial/amd64/cm/cloudera.list' -O /etc/apt/sources.list.d/clouderacm.list
deb https://archive.cloudera.com/cm5/ubuntu/lucid/amd64/cm lucid-cm5 contrib

to:

deb https://archive.cloudera.com/cm5/ubuntu/lucid/amd64/cm lucid-cm5.9.10 contrib

sudo apt-get clean
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get install cloudera-manager-server cloudera-manager-daemons cloudera-manager-agent
awnser N to all options

dpkg-query -l 'cloudera-manager-*'


sudo service cloudera-scm-server-db start
sudo service cloudera-scm-server start

upgrade agents if wanted