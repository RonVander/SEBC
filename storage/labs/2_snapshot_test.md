```
hdfs dfs -mkdir /precious
hdfs dfs -put /tmp/SEBC.zip /precious/
hdfs dfsadmin -allowSnapshot /precious
hdfs dfs -createSnapshot /precious sebc-hdfs-test
hdfs dfs -rm -R /precious
#rm: Failed to move to trash: hdfs://ip-172-31-11-171.eu-west-1.compute.internal:8020/precious: The directory /precious cannot be deleted since /precious is snapshottable and already has snapshots

hdfs dfs -rm /precious/SEBC.zip
hdfs dfs -cp /precious/.snapshot/sebc-hdfs-test/SEBC.zip /precious/

```

HA
don't forget to make the maps for journals