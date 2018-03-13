create user

```
sudo useradd ronVander -m
hadoop fs -mkdir /user/ronVander
hadoop fs -chown ronVander:ronVander /user/ronVander```


<!-- -Ddfs.block.size=536870912 \
    -Dmapred.map.tasks=32 \
    -Dmapred.reduce.tasks=16 \
    -Dmapred.map.tasks.speculative.execution=true \
    -Dmapred.compress.map.output=true \
    1000000 \ -->

`time hadoop jar /opt/cloudera/parcels/CDH-5.14.0-1.cdh5.14.0.p0.24/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar teragen -Dmapred.reduce.tasks=4 -Dmapred.map.tasks=4 -Ddfs.block.size=32000000 100000000 /user/ronVander/tera.data `

File System Counters
	FILE: Number of bytes read=0
	FILE: Number of bytes written=595552
	FILE: Number of read operations=0
	FILE: Number of large read operations=0
	FILE: Number of write operations=0
	HDFS: Number of bytes read=344
	HDFS: Number of bytes written=10000000000
	HDFS: Number of read operations=16
	HDFS: Number of large read operations=0
	HDFS: Number of write operations=8
Job Counters 
	Launched map tasks=4
	Other local map tasks=4
	Total time spent by all maps in occupied slots (ms)=342360
	Total time spent by all reduces in occupied slots (ms)=0
	Total time spent by all map tasks (ms)=342360
	Total vcore-milliseconds taken by all map tasks=342360
	Total megabyte-milliseconds taken by all map tasks=350576640
Map-Reduce Framework
	Map input records=100000000
	Map output records=100000000
	Input split bytes=344
	Spilled Records=0
	Failed Shuffles=0
	Merged Map outputs=0
	GC time elapsed (ms)=2699
	CPU time spent (ms)=124390
	Physical memory (bytes) snapshot=1003798528
	Virtual memory (bytes) snapshot=5448454144
	Total committed heap usage (bytes)=940572672
org.apache.hadoop.examples.terasort.TeraGen$Counters
	CHECKSUM=214760662691937609
File Input Format Counters 
	Bytes Read=0
File Output Format Counters 
	Bytes Written=10000000000

real	1m39.333s
user	0m4.928s
sys	0m0.812s

<!-- ./hadoop jar ../hadoop-examples-1.2.1.jar terasort \
    -Ddfs.block.size=536870912 \
    -Dio.file.buffer.size=32768 \
    -Dmapred.map.tasks=32 \
    -Dmapred.reduce.tasks=16 \
    -Dio.sort.factor=48 \
    -Dio.sort.record.percent=0.138 \
    /Workloads/teragen.data \
    /Workloads/terasort.data -->


###NOTE TO SELF DONT RUN THIS ON MASTER

`time  hadoop jar /opt/cloudera/parcels/CDH-5.14.0-1.cdh5.14.0.p0.24/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar terasort /user/ronVander/tera.data /user/ronVander/terasort.data`

18/03/13 11:07:30 INFO mapreduce.Job: Counters: 50
	File System Counters
		FILE: Number of bytes read=4447521759
		FILE: Number of bytes written=8838615882
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=10000049928
		HDFS: Number of bytes written=10000000000
		HDFS: Number of read operations=966
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=12
	Job Counters 
		Launched map tasks=316
		Launched reduce tasks=6
		Data-local map tasks=314
		Rack-local map tasks=2
		Total time spent by all maps in occupied slots (ms)=2797894
		Total time spent by all reduces in occupied slots (ms)=1570563
		Total time spent by all map tasks (ms)=2797894
		Total time spent by all reduce tasks (ms)=1570563
		Total vcore-milliseconds taken by all map tasks=2797894
		Total vcore-milliseconds taken by all reduce tasks=1570563
		Total megabyte-milliseconds taken by all map tasks=2865043456
		Total megabyte-milliseconds taken by all reduce tasks=1608256512
	Map-Reduce Framework
		Map input records=100000000
		Map output records=100000000
		Map output bytes=10200000000
		Map output materialized bytes=4342614645
		Input split bytes=49928
		Combine input records=0
		Combine output records=0
		Reduce input groups=100000000
		Reduce shuffle bytes=4342614645
		Reduce input records=100000000
		Reduce output records=100000000
		Spilled Records=200000000
		Shuffled Maps =1896
		Failed Shuffles=0
		Merged Map outputs=1896
		GC time elapsed (ms)=47399
		CPU time spent (ms)=1319220
		Physical memory (bytes) snapshot=164527751168
		Virtual memory (bytes) snapshot=440691511296
		Total committed heap usage (bytes)=186794901504
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters 
		Bytes Read=10000000000
	File Output Format Counters 
		Bytes Written=10000000000
18/03/13 11:07:30 INFO terasort.TeraSort: done

real	17m6.341s
user	0m9.260s
sys	0m0.808s

