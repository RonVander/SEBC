sysconfig check commands

 turln off SELINUX and firewall if needed.


    Check vm.swappiness on all your nodes
    ```
    sudo sysctl -w vm.swappiness=1
    cat /proc/sys/vm/swappiness
    vi /etc/sysctl.conf
    vm.swappiness=1
    ```


    Show the mount attributes of your volume(s)
    `df -h; ls -al`

    If you have ext-based volumes, list the reserve space setting
    
    Disable transparent hugepage support
    disbale it:
    ```
    echo never > /sys/kernel/mm/transparent_hugepage/defrag
	echo never > /sys/kernel/mm/transparent_hugepage/enabled
    cat /sys/kernel/mm/transparent_hugepage/defrag
	[always] madvise never
	cat /sys/kernel/mm/transparent_hugepage/enabled
	[always] madvise never
    ```

    List your network interface configuration
    `ifconfig -a`

    Show that forward and reverse host lookups are correctly resolved
    `nslookup `

    Show the nscd service is running
    `sudo apt-get update;sudo apt-get install -y nscd;systemctl status nscd; systemctl enable nscd`
    Show the ntpd service is running
    `sudo apt-get update;sudo apt-get install -y ntp;systemctl status ntp.service; systemctl enable ntp.service; `

* set root passwd on instances
* setup dns for instances (private dns)
	
`nslookup ec1.private`
Server:		172.31.0.2
Address:	172.31.0.2#53

* add passwoordless integration
on CM (ec.5) create an ssh key  
`ssh-keygen`  
do NOT use a password when using pem it seems to fail

on ec1-4.private add to the /etc/ssh/sshd_config
```
PermitRootLogin yes
# Only allow root to run commands over ssh, no shell
#PermitRootLogin forced-commands-only
RSAAuthentication yes
AuthorizedKeysFile     .ssh/authorized_keys
```

restart service 
`systemctl restart sshd.service`

add the public key from the cm to 
`vi /root/.ssh/authorized_keys`


* Add CDH repos

```
sudo wget 'https://archive.cloudera.com/cm5/ubuntu/xenial/amd64/cm/cloudera.list' -O /etc/apt/sources.list.d/clouderacm.list
deb https://archive.cloudera.com/cm5/ubuntu/lucid/amd64/cm lucid-cm5 contrib

to:

deb https://archive.cloudera.com/cm5/ubuntu/lucid/amd64/cm lucid-cm5.0.1 contrib

sudo wget 'https://archive.cloudera.com/cdh5/ubuntu/xenial/amd64/cdh/cloudera.list' -O /etc/apt/sources.list.d/cloudera.list
sudo wget 'https://archive.cloudera.com/cdh5/ubuntu/xenial/amd64/cdh/archive.key' -O archive.key
sudo apt-key add archive.key
sudo apt-get update```

* add DB server

```
on slave and master
sudo apt-get install mariadb-server
sudo mysql_secure_installation
sudo service mysql stop
```
vi /etc/mysql/my.cnf
```
[mysqld]
transaction-isolation = READ-COMMITTED
# Disabling symbolic-links is recommended to prevent assorted security risks;
# to do so, uncomment this line:
# symbolic-links = 0
key_buffer = 16M
key_buffer_size = 32M
max_allowed_packet = 32M
thread_stack = 256K
thread_cache_size = 64
query_cache_limit = 8M
query_cache_size = 64M
query_cache_type = 1
max_connections = 550
#expire_logs_days = 10
#max_binlog_size = 100M
#log_bin should be on a disk with enough free space. Replace 
#and chown the specified folder to the mysql user.
log_bin=/var/lib/mysql/mysql_binary_log
binlog_format = mixed
read_buffer_size = 2M
read_rnd_buffer_size = 16M
sort_buffer_size = 8M
join_buffer_size = 8M
# InnoDB settings
innodb_file_per_table = 1
innodb_flush_log_at_trx_commit  = 2
innodb_log_buffer_size = 64M
innodb_buffer_pool_size = 4G
innodb_thread_concurrency = 8
innodb_flush_method = O_DIRECT
innodb_log_file_size = 512M
bind-address = theIP
server-id  = UQID

sudo service mysql start
sudo apt-get install libmysql-java
```

setup replica
```
on master
GRANT REPLICATION SLAVE ON *.* TO 'user'@'FQDN' IDENTIFIED BY 'password';
SET GLOBAL binlog_format = 'ROW';
FLUSH TABLES WITH READ LOCK;

SHOW MASTER STATUS;
UNLOCK TABLES;

on slave
CHANGE MASTER TO MASTER_HOST='ip-172-31-3-232.eu-west-1.compute.internal', MASTER_USER='replica', MASTER_PASSWORD='replica', MASTER_LOG_FILE='mysql_binary_log.000007', MASTER_LOG_POS=11531613;
start slave
SHOW SLAVE STATUS \G

```
setup cloudera dbs
```
mysql -u root -p

create database amon DEFAULT CHARACTER SET utf8;
create database rman DEFAULT CHARACTER SET utf8;
create database metastore DEFAULT CHARACTER SET utf8;
create database sentry DEFAULT CHARACTER SET utf8;
create database nav DEFAULT CHARACTER SET utf8;
create database navms DEFAULT CHARACTER SET utf8;
create database hive DEFAULT CHARACTER SET utf8;
create database scm DEFAULT CHARACTER SET utf8;
create database oozie DEFAULT CHARACTER SET utf8;



grant all on amon.* TO 'amon'@'%' IDENTIFIED BY 'password';
grant all on rman.* TO 'rman'@'%' IDENTIFIED BY 'password';
grant all on metastore.* TO 'metastore'@'%' IDENTIFIED BY 'password';
grant all on sentry.* TO 'sentry'@'%' IDENTIFIED BY 'password';
grant all on nav.* TO 'nav'@'%' IDENTIFIED BY 'password';
grant all on navms.* TO 'navms'@'%' IDENTIFIED BY 'password';
grant all on hive.* TO 'hive'@'%' IDENTIFIED BY 'password';
grant all on scm.* TO 'scm'@'%' IDENTIFIED BY 'password';
grant all on oozie.* TO 'oozie'@'%' IDENTIFIED BY 'password';
```

install jdk
```
Download JDK7 off website
put it on the server and extract it under /usr/java
vi /etc/enviroment and ass
JAVA_HOME="/usr/java/jdk1.7.0_80"
```


* install manager
`sudo apt-get install cloudera-manager-daemons cloudera-manager-server `

setup cm db
```mysal -u root -p
grant all on *.* to 'temp'@'%' identified by 'temp' with grant option;
/usr/share/cmf/schema/scm_prepare_database.sh mysql -utemp -ptemp scm scm scm
mysal -u root -p
drop user 'temp'@'%';```


start it
`sudo service cloudera-scm-server start`

```
go to servername:7180
search for hosts ec[1-4].private
give it the private key to connect with ssh
``` 