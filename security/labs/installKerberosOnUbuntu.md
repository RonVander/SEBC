*KDC*
sudo apt-get install krb5-kdc krb5-admin-server libkrb5-3 krb5-auth-dialog krb5-user ldap-utils

krb5_newrealm
service krb5-kdc enable;service krb5-kdc restart
service krb5-admin-server enable; service krb5-admin-server restart

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

