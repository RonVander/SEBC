```
beeline 
Beeline version 1.1.0-cdh5.14.0 by Apache Hive
beeline> !connect jdbc:hive2://localhost:10000/default;principal=hive/ip-172-31-11-171.eu-west-1.compute.internal@RONVANDER.INTERNAL
scan complete in 1ms
Connecting to jdbc:hive2://localhost:10000/default;principal=hive/ip-172-31-11-171.eu-west-1.compute.internal@RONVANDER.INTERNAL
Connected to: Apache Hive (version 1.1.0-cdh5.14.0)
Driver: Hive JDBC (version 1.1.0-cdh5.14.0)
Transaction isolation: TRANSACTION_REPEATABLE_READ
0: jdbc:hive2://localhost:10000/default> SHOW TABLES;
INFO  : Compiling command(queryId=hive_20180314172727_ab172b74-5a69-4de5-8b17-c4fa93d9cf47): SHOW TABLES
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20180314172727_ab172b74-5a69-4de5-8b17-c4fa93d9cf47); Time taken: 0.531 seconds
INFO  : Executing command(queryId=hive_20180314172727_ab172b74-5a69-4de5-8b17-c4fa93d9cf47): SHOW TABLES
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20180314172727_ab172b74-5a69-4de5-8b17-c4fa93d9cf47); Time taken: 0.273 seconds
INFO  : OK
+-----------+--+
| tab_name  |
+-----------+--+
+-----------+--+
No rows selected (2.099 seconds)
```


```
kinit george
Password for george@RONVANDER.INTERNAL: 
root@ip-172-31-11-171:~# beeline 
Beeline version 1.1.0-cdh5.14.0 by Apache Hive
beeline> !connect jdbc:hive2://localhost:10000/default;principal=hive/ip-172-31-11-171.eu-west-1.compute.internal@RONVANDER.INTERNAL
scan complete in 1ms
Connecting to jdbc:hive2://localhost:10000/default;principal=hive/ip-172-31-11-171.eu-west-1.compute.internal@RONVANDER.INTERNAL
Connected to: Apache Hive (version 1.1.0-cdh5.14.0)
Driver: Hive JDBC (version 1.1.0-cdh5.14.0)
Transaction isolation: TRANSACTION_REPEATABLE_READ
0: jdbc:hive2://localhost:10000/default> SHOW TABLES;
INFO  : Compiling command(queryId=hive_20180314173333_e9d6c365-3a50-40c2-814c-8c9893958bd9): SHOW TABLES
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20180314173333_e9d6c365-3a50-40c2-814c-8c9893958bd9); Time taken: 0.064 seconds
INFO  : Executing command(queryId=hive_20180314173333_e9d6c365-3a50-40c2-814c-8c9893958bd9): SHOW TABLES
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20180314173333_e9d6c365-3a50-40c2-814c-8c9893958bd9); Time taken: 0.091 seconds
INFO  : OK
+------------+--+
|  tab_name  |
+------------+--+
| customers  |
| sample_07  |
| sample_08  |
| web_logs   |
+------------+--+
4 rows selected (0.229 seconds)
0: jdbc:hive2://localhost:10000/default> root@ip-172-31-11-171:~# kinit ferdinand
Password for ferdinand@RONVANDER.INTERNAL: 
root@ip-172-31-11-171:~# beeline 
Beeline version 1.1.0-cdh5.14.0 by Apache Hive
beeline> !connect jdbc:hive2://localhost:10000/default;principal=hive/ip-172-31-11-171.eu-west-1.compute.internal@RONVANDER.INTERNAL
scan complete in 2ms
Connecting to jdbc:hive2://localhost:10000/default;principal=hive/ip-172-31-11-171.eu-west-1.compute.internal@RONVANDER.INTERNAL
Connected to: Apache Hive (version 1.1.0-cdh5.14.0)
Driver: Hive JDBC (version 1.1.0-cdh5.14.0)
Transaction isolation: TRANSACTION_REPEATABLE_READ
0: jdbc:hive2://localhost:10000/default> SHOW TABLES;
INFO  : Compiling command(queryId=hive_20180314173434_73bb9938-2bfb-46f0-9527-f71ef236aae9): SHOW TABLES
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20180314173434_73bb9938-2bfb-46f0-9527-f71ef236aae9); Time taken: 0.064 seconds
INFO  : Executing command(queryId=hive_20180314173434_73bb9938-2bfb-46f0-9527-f71ef236aae9): SHOW TABLES
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20180314173434_73bb9938-2bfb-46f0-9527-f71ef236aae9); Time taken: 0.106 seconds
INFO  : OK
+------------+--+
|  tab_name  |
+------------+--+
| sample_07  |
+------------+--+
1 row selected (0.244 seconds)
```