SHOW SLAVE STATUS \G

```
MariaDB [(none)]> SHOW SLAVE STATUS \G
*************************** 1. row ***************************
               Slave_IO_State: Waiting for master to send event
                  Master_Host: ip-172-31-3-232.eu-west-1.compute.internal
                  Master_User: replica
                  Master_Port: 3306
                Connect_Retry: 60
              Master_Log_File: mysql_binary_log.000008
          Read_Master_Log_Pos: 7012263
               Relay_Log_File: mysqld-relay-bin.000002
                Relay_Log_Pos: 542
        Relay_Master_Log_File: mysql_binary_log.000008
             Slave_IO_Running: Yes
            Slave_SQL_Running: No
              Replicate_Do_DB: 
          Replicate_Ignore_DB: 
           Replicate_Do_Table: 
       Replicate_Ignore_Table: 
      Replicate_Wild_Do_Table: 
  Replicate_Wild_Ignore_Table: 
                   Last_Errno: 1146
                   Last_Error: Error executing row event: 'Table 'scm.CM_VERSION' doesn't exist'
                 Skip_Counter: 0
          Exec_Master_Log_Pos: 19400
              Relay_Log_Space: 6993703
              Until_Condition: None
               Until_Log_File: 
                Until_Log_Pos: 0
           Master_SSL_Allowed: No
           Master_SSL_CA_File: 
           Master_SSL_CA_Path: 
              Master_SSL_Cert: 
            Master_SSL_Cipher: 
               Master_SSL_Key: 
        Seconds_Behind_Master: NULL
Master_SSL_Verify_Server_Cert: No
                Last_IO_Errno: 0
                Last_IO_Error: 
               Last_SQL_Errno: 1146
               Last_SQL_Error: Error executing row event: 'Table 'scm.CM_VERSION' doesn't exist'
  Replicate_Ignore_Server_Ids: 
             Master_Server_Id: 1
               Master_SSL_Crl: 
           Master_SSL_Crlpath: 
                   Using_Gtid: No
                  Gtid_IO_Pos: 
1 row in set (0.00 sec)
```