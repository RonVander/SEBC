*** USing a different DB version because ubuntu***

```
root@ip-172-31-6-218:~# hostname -f
ip-172-31-6-218.eu-west-1.compute.internal
root@ip-172-31-6-218:~# mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 34
Server version: 10.0.34-MariaDB-0ubuntu0.16.04.1 Ubuntu 16.04

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> SELECT VERSION();
+----------------------------------+
| VERSION()                        |
+----------------------------------+
| 10.0.34-MariaDB-0ubuntu0.16.04.1 |
+----------------------------------+
1 row in set (0.00 sec)

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| hive               |
| information_schema |
| mysql              |
| oozie              |
| performance_schema |
| rman               |
| scm                |
+--------------------+
7 rows in set (0.00 sec)
```