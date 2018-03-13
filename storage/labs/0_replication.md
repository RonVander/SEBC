gen random 500G data

```
hadoop jar /opt/cloudera/parcels/CDH-5.14.0-1.cdh5.14.0.p0.24/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar teragen 5000000 /user/ronVander
hadoop fs -chmod 777 /ronVander

```

try distcp
```
hadoop distcp hdfs://34.245.68.0:8020/hapination hdfs://ip-172-31-11-171.eu-west-1.compute.internal:8020/hapination
#error
hadoop distcp hftp://34.245.68.0/hapination hdfs://ip-172-31-11-171.eu-west-1.compute.internal:8020/hapination
#still error getting to datanodes
```

BDR
```
add the peer
http://34.245.68.0:7180

add backup sched , HDFS with the correct paths

#ERROR
Same issue, the datanodes are on private adress and are not accesible

only solution would be to reset them on the public ip's or setup cross VPC communication


copying locally with BDR

hdfs fsck /hapination -files -blocks
Connecting to namenode via http://ip-172-31-11-171.eu-west-1.compute.internal:50070/fsck?ugi=hdfs&files=1&blocks=1&path=%2Fhapination
FSCK started by hdfs (auth:SIMPLE) from /172.31.9.65 for path /hapination at Tue Mar 13 10:24:47 UTC 2018
/hapination <dir>
/hapination/.distcp.tmp.attempt_1520879288777_0002_m_000001_0 0 bytes, 0 block(s):  OK

/hapination/.distcp.tmp.attempt_1520879288777_0002_m_000001_1 0 bytes, 0 block(s):  OK

/hapination/hapination <dir>
/hapination/ronvander <dir>
/hapination/ronvander/_SUCCESS 0 bytes, 0 block(s):  OK

/hapination/ronvander/part-m-00000 250000000 bytes, 2 block(s):  OK
0. BP-1897589836-172.31.11.171-1520879242773:blk_1073743535_2711 len=134217728 Live_repl=3
1. BP-1897589836-172.31.11.171-1520879242773:blk_1073743537_2713 len=115782272 Live_repl=3

/hapination/ronvander/part-m-00001 250000000 bytes, 2 block(s):  OK
0. BP-1897589836-172.31.11.171-1520879242773:blk_1073743536_2712 len=134217728 Live_repl=3
1. BP-1897589836-172.31.11.171-1520879242773:blk_1073743538_2714 len=115782272 Live_repl=3

Status: HEALTHY
 Total size:	500000000 B
 Total dirs:	3
 Total files:	5
 Total symlinks:		0 (Files currently being written: 1)
 Total blocks (validated):	4 (avg. block size 125000000 B)
 Minimally replicated blocks:	4 (100.0 %)
 Over-replicated blocks:	0 (0.0 %)
 Under-replicated blocks:	0 (0.0 %)
 Mis-replicated blocks:		0 (0.0 %)
 Default replication factor:	3
 Average block replication:	3.0
 Corrupt blocks:		0
 Missing replicas:		0 (0.0 %)
 Number of data-nodes:		3
 Number of racks:		1
FSCK ended at Tue Mar 13 10:24:47 UTC 2018 in 1 milliseconds


The filesystem under path '/hapination' is HEALTHY

```

