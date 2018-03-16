```
hilary@ip-172-31-14-142:~$ time  hadoop jar /opt/cloudera/parcels/CDH-5.13.2-1.cdh5.13.2.p0.3/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar terasort -Dmapred.reduce.tasks=16 -Dmapred.map.tasks=16 /user/hilary/tgen /user/hilary/tsort
18/03/16 11:03:36 INFO terasort.TeraSort: starting
18/03/16 11:03:37 INFO hdfs.DFSClient: Created token for hilary: HDFS_DELEGATION_TOKEN owner=hilary@RONVANDER.NL, renewer=yarn, realUser=, issueDate=1521198217467, maxDate=1521803017467, sequenceNumber=1, masterKeyId=2 on 172.31.14.142:8020
18/03/16 11:03:37 INFO security.TokenCache: Got dt for hdfs://ip-172-31-14-142.eu-west-1.compute.internal:8020; Kind: HDFS_DELEGATION_TOKEN, Service: 172.31.14.142:8020, Ident: (token for hilary: HDFS_DELEGATION_TOKEN owner=hilary@RONVANDER.NL, renewer=yarn, realUser=, issueDate=1521198217467, maxDate=1521803017467, sequenceNumber=1, masterKeyId=2)
18/03/16 11:03:37 INFO input.FileInputFormat: Total input paths to process : 16
Spent 243ms computing base-splits.
Spent 7ms computing TeraScheduler splits.
Computing input splits took 250ms
Sampling 10 splits of 16
Making 16 from 40960 sampled records
Computing parititions took 537ms
Spent 789ms computing partitions.
18/03/16 11:03:38 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-14-142.eu-west-1.compute.internal/172.31.14.142:8032
18/03/16 11:03:38 INFO mapreduce.JobSubmitter: number of splits:16
18/03/16 11:03:38 INFO Configuration.deprecation: mapred.map.tasks is deprecated. Instead, use mapreduce.job.maps
18/03/16 11:03:38 INFO Configuration.deprecation: mapred.reduce.tasks is deprecated. Instead, use mapreduce.job.reduces
18/03/16 11:03:38 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1521198129835_0001
18/03/16 11:03:38 INFO mapreduce.JobSubmitter: Kind: HDFS_DELEGATION_TOKEN, Service: 172.31.14.142:8020, Ident: (token for hilary: HDFS_DELEGATION_TOKEN owner=hilary@RONVANDER.NL, renewer=yarn, realUser=, issueDate=1521198217467, maxDate=1521803017467, sequenceNumber=1, masterKeyId=2)
18/03/16 11:03:39 INFO impl.YarnClientImpl: Submitted application application_1521198129835_0001
18/03/16 11:03:39 INFO mapreduce.Job: The url to track the job: http://ip-172-31-14-142.eu-west-1.compute.internal:8088/proxy/application_1521198129835_0001/
18/03/16 11:03:39 INFO mapreduce.Job: Running job: job_1521198129835_0001
18/03/16 11:03:47 INFO mapreduce.Job: Job job_1521198129835_0001 running in uber mode : false
18/03/16 11:03:47 INFO mapreduce.Job:  map 0% reduce 0%
18/03/16 11:03:53 INFO mapreduce.Job:  map 6% reduce 0%
18/03/16 11:03:57 INFO mapreduce.Job:  map 50% reduce 0%
18/03/16 11:04:01 INFO mapreduce.Job:  map 56% reduce 0%
18/03/16 11:04:02 INFO mapreduce.Job:  map 94% reduce 0%
18/03/16 11:04:05 INFO mapreduce.Job:  map 100% reduce 0%
18/03/16 11:04:08 INFO mapreduce.Job:  map 100% reduce 25%
18/03/16 11:04:09 INFO mapreduce.Job:  map 100% reduce 44%
18/03/16 11:04:13 INFO mapreduce.Job:  map 100% reduce 75%
18/03/16 11:04:14 INFO mapreduce.Job:  map 100% reduce 88%
18/03/16 11:04:17 INFO mapreduce.Job:  map 100% reduce 100%
18/03/16 11:04:17 INFO mapreduce.Job: Job job_1521198129835_0001 completed successfully
18/03/16 11:04:17 INFO mapreduce.Job: Counters: 49
	File System Counters
		FILE: Number of bytes read=2817079
		FILE: Number of bytes written=10443089
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=6556000
		HDFS: Number of bytes written=6553600
		HDFS: Number of read operations=96
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=32
	Job Counters 
		Launched map tasks=16
		Launched reduce tasks=16
		Data-local map tasks=16
		Total time spent by all maps in occupied slots (ms)=75019
		Total time spent by all reduces in occupied slots (ms)=58262
		Total time spent by all map tasks (ms)=75019
		Total time spent by all reduce tasks (ms)=58262
		Total vcore-milliseconds taken by all map tasks=75019
		Total vcore-milliseconds taken by all reduce tasks=58262
		Total megabyte-milliseconds taken by all map tasks=76819456
		Total megabyte-milliseconds taken by all reduce tasks=59660288
	Map-Reduce Framework
		Map input records=65536
		Map output records=65536
		Map output bytes=6684672
		Map output materialized bytes=2805294
		Input split bytes=2400
		Combine input records=0
		Combine output records=0
		Reduce input groups=65536
		Reduce shuffle bytes=2805294
		Reduce input records=65536
		Reduce output records=65536
		Spilled Records=131072
		Shuffled Maps =256
		Failed Shuffles=0
		Merged Map outputs=256
		GC time elapsed (ms)=1295
		CPU time spent (ms)=40450
		Physical memory (bytes) snapshot=11108491264
		Virtual memory (bytes) snapshot=44159209472
		Total committed heap usage (bytes)=13621526528
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters 
		Bytes Read=6553600
	File Output Format Counters 
		Bytes Written=6553600
18/03/16 11:04:17 INFO terasort.TeraSort: done

real	0m42.353s
user	0m5.700s
sys	0m0.204s
```