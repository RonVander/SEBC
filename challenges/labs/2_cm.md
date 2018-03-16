**list apt sources**
```
ls /etc/apt/sources.list.d/
clouderacm.list

```

**setup scm db**
```

root@ip-172-31-5-14:~# /usr/share/cmf/schema/scm_prepare_database.sh -h ip-172-31-6-218.eu-west-1.compute.internal mysql scm scm password
JAVA_HOME=/usr/java/jdk1.7.0_80
Verifying that we can write to /etc/cloudera-scm-server
Creating SCM configuration file in /etc/cloudera-scm-server
Executing:  /usr/java/jdk1.7.0_80/bin/java -cp /usr/share/java/mysql-connector-java.jar:/usr/share/java/oracle-connector-java.jar:/usr/share/cmf/schema/../lib/* com.cloudera.enterprise.dbutil.DbCommandExecutor /etc/cloudera-scm-server/db.properties com.cloudera.cmf.db.
2018-03-16 08:56:34,561 [main] INFO  com.cloudera.enterprise.dbutil.DbCommandExecutor  - Successfully connected to database.
All done, your SCM database is configured correctly!
```