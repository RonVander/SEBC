*KDC*
sudo apt-get install krb5-kdc krb5-admin-server libkrb5-3 krb5-auth-dialog krb5-user ldap-utils

krb5_newrealm
service krb5-kdc enable;service krb5-kdc restart
service krb5-admin-server enable; service krb5-admin-server restart

vi kdc.conf
```
[kdcdefaults]
    kdc_ports = 88
    kdc_tcp_ports = 88

[realms]
    RONVANDER.INTERNAL = {
        database_name = /var/lib/krb5kdc/principal
        admin_keytab = FILE:/etc/krb5kdc/kadm5.keytab
        acl_file = /etc/krb5kdc/kadm5.acl
        key_stash_file = /etc/krb5kdc/stash
        kdc_ports = 88
        max_life = 1d
        max_renewable_life = 7d 0h 0m 0s
        master_key_type = des3-hmac-sha1
        supported_enctypes = aes256-cts:normal arcfour-hmac:normal des3-hmac-sha1:normal des-cbc-crc:normal des:normal des:v4 des:norealm des:onlyrealm des:afs3
        default_principal_flags = +preauth
    }
```


systemctl enable krb5-kdc; systemctl start krb5-kdc;
systemctl enable krb5-admin-server; systemctl start krb5-admin-server;
 
 kadmin.local -q "addprinc scm@RONVANDER.INTERNAL"
 vi /etc/krb5kdc/kadm5.acl
```*/admin@RONVANDER.INTERNAL *
scm@RONVANDER.INTERNAL admilc```

```
kadmin.local -q  "addpol admin"
kadmin.local -q  "addpol users"
kadmin.local -q  "addpol hosts"
#Don't this caused errors
#kadmin.local -q "xst -k cmf.keytab scm@RONVANDER.INTERNAL"
#cp cmf.keytab /etc/cloudera-scm-server/
#chown cloudera-scm:cloudera-scm /etc/cloudera-scm-server/cmf.keytab 
#chmod 600 /etc/cloudera-scm-server/cmf.keytab
echo "scm@RONVANDER.INTERNALM" > /etc/cloudera-scm-server/cmf.principal
chown cloudera-scm:cloudera-scm /etc/cloudera-scm-server/cmf.principal 
chmod 600 /etc/cloudera-scm-server/cmf.principal

service krb5-admin-server restart; service krb5-kdc restart;
```

vi /etc/krb5.conf
```
[logging]
 default = FILE:/var/log/krb5libs.log
 kdc = FILE:/var/log/krb5kdc.log
 admin_server = FILE:/var/log/kadmind.log

[libdefaults]
 default_realm = RONVANDER.INTERNAL
 dns_lookup_realm = false
 dns_lookup_kdc = false
 ticket_lifetime = 24h
 renew_lifetime = 7d
 forwardable = true
 udp_preference_limit = 1
 default_tgs_enctypes = arcfour-hmac
 default_tkt_enctypes = arcfour-hmac 

[realms] 
  RONVANDER.INTERNAL = {
  kdc = ip-172-31-3-232.eu-west-1.compute.internal
  admin_server = ip-172-31-3-232.eu-west-1.compute.internal
 }

[domain_realm]
   .example.com = RONVANDER.INTERNAL
   example.com = RONVANDER.INTERNAL
```

add scloudera-scm to syslog group
chmod 777 /var/log/kadmind.log

*KR clients*

sudo apt-get install -y krb5-user krb5-config libkrb5-3 krb5-auth-dialog ldap-utils

*KDC*

scp /etc/krb5.conf root@ec1.private:/etc/krb5.conf
scp /etc/krb5.conf root@ec2.private:/etc/krb5.conf
scp /etc/krb5.conf root@ec3.private:/etc/krb5.conf
scp /etc/krb5.conf root@ec4.private:/etc/krb5.conf

test kinits

**enable kerberos on cluster**



***install sentry***
 hdfs dfs -chmod -R 771 /user/hive/warehouse
 hdfs dfs -chown -R hive:hive /user/hive/warehouse

#if not added allready
create database sentry DEFAULT CHARACTER SET utf8;
grant all on sentry.* TO 'sentry'@'%' IDENTIFIED BY 'sentry';

install the sentry service


 hive 
 	disable impersonation
 	proxyuser.hive.groups add 
 	hive
    hue
    sentry

 Yarn set 
 	Minimum User ID for Job Submission property to zero (the default is 1000).
	Allowed System User must have hive in it



 YARN Allowed System Users property includes the hive user. If not, add hive.


HIVE Select Category > Main.
Locate the Sentry Service property and select Sentry.
Locate the Enable Stored Notifications in Database property and select it.
Click Save Changes to commit the changes.

HUE Select Scope > Hue (Service-Wide).
Select Category > Main.
Locate the Sentry Service property and select Sentry.
Click Save Changes to commit the changes.

Sentry
Select Scope > Sentry (Service-Wide).
Select Category > Main.
Locate the Admin Groups property and add the hive, impala and hue groups to the list. If an end user is in one of these admin groups, that user has administrative privileges on the Sentry Server.
Click Save Changes to commit the changes.


Create user on all the hosts