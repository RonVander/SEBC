anupam@ip-172-31-4-118:~$ kinit anupam
Password for anupam@RONVANDER.NL: 
anupam@ip-172-31-4-118:~$ hadoop jar /opt/cloudera/parcels/CDH-5.13.2-1.cdh5.13.2.p0.3/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar pi 50 100 
Number of Maps  = 50
Samples per Map = 100
Wrote input for Map #0
Wrote input for Map #1
Wrote input for Map #2
Wrote input for Map #3
Wrote input for Map #4
Wrote input for Map #5
Wrote input for Map #6
Wrote input for Map #7
Wrote input for Map #8
Wrote input for Map #9
Wrote input for Map #10
Wrote input for Map #11
Wrote input for Map #12
Wrote input for Map #13
Wrote input for Map #14
Wrote input for Map #15
Wrote input for Map #16
Wrote input for Map #17
Wrote input for Map #18
Wrote input for Map #19
Wrote input for Map #20
Wrote input for Map #21
Wrote input for Map #22
Wrote input for Map #23
Wrote input for Map #24
Wrote input for Map #25
Wrote input for Map #26
Wrote input for Map #27
Wrote input for Map #28
Wrote input for Map #29
Wrote input for Map #30
Wrote input for Map #31
Wrote input for Map #32
Wrote input for Map #33
Wrote input for Map #34
Wrote input for Map #35
Wrote input for Map #36
Wrote input for Map #37
Wrote input for Map #38
Wrote input for Map #39
Wrote input for Map #40
Wrote input for Map #41
Wrote input for Map #42
Wrote input for Map #43
Wrote input for Map #44
Wrote input for Map #45
Wrote input for Map #46
Wrote input for Map #47
Wrote input for Map #48
Wrote input for Map #49
Starting Job
18/03/16 11:06:16 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-14-142.eu-west-1.compute.internal/172.31.14.142:8032
18/03/16 11:06:16 INFO hdfs.DFSClient: Created token for anupam: HDFS_DELEGATION_TOKEN owner=anupam@RONVANDER.NL, renewer=yarn, realUser=, issueDate=1521198376666, maxDate=1521803176666, sequenceNumber=2, masterKeyId=2 on 172.31.14.142:8020
18/03/16 11:06:16 INFO security.TokenCache: Got dt for hdfs://ip-172-31-14-142.eu-west-1.compute.internal:8020; Kind: HDFS_DELEGATION_TOKEN, Service: 172.31.14.142:8020, Ident: (token for anupam: HDFS_DELEGATION_TOKEN owner=anupam@RONVANDER.NL, renewer=yarn, realUser=, issueDate=1521198376666, maxDate=1521803176666, sequenceNumber=2, masterKeyId=2)
18/03/16 11:06:16 INFO input.FileInputFormat: Total input paths to process : 50
18/03/16 11:06:16 INFO mapreduce.JobSubmitter: number of splits:50
18/03/16 11:06:16 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1521198129835_0002
18/03/16 11:06:16 INFO mapreduce.JobSubmitter: Kind: HDFS_DELEGATION_TOKEN, Service: 172.31.14.142:8020, Ident: (token for anupam: HDFS_DELEGATION_TOKEN owner=anupam@RONVANDER.NL, renewer=yarn, realUser=, issueDate=1521198376666, maxDate=1521803176666, sequenceNumber=2, masterKeyId=2)
18/03/16 11:06:17 INFO impl.YarnClientImpl: Submitted application application_1521198129835_0002
18/03/16 11:06:17 INFO mapreduce.Job: The url to track the job: http://ip-172-31-14-142.eu-west-1.compute.internal:8088/proxy/application_1521198129835_0002/
18/03/16 11:06:17 INFO mapreduce.Job: Running job: job_1521198129835_0002
18/03/16 11:06:24 INFO mapreduce.Job: Job job_1521198129835_0002 running in uber mode : false
18/03/16 11:06:24 INFO mapreduce.Job:  map 0% reduce 0%
18/03/16 11:06:28 INFO mapreduce.Job:  map 2% reduce 0%
18/03/16 11:06:32 INFO mapreduce.Job:  map 12% reduce 0%
18/03/16 11:06:33 INFO mapreduce.Job:  map 16% reduce 0%
18/03/16 11:06:36 INFO mapreduce.Job:  map 18% reduce 0%
18/03/16 11:06:37 INFO mapreduce.Job:  map 30% reduce 0%
18/03/16 11:06:39 INFO mapreduce.Job:  map 32% reduce 0%
18/03/16 11:06:41 INFO mapreduce.Job:  map 34% reduce 0%
18/03/16 11:06:42 INFO mapreduce.Job:  map 46% reduce 0%
18/03/16 11:06:45 INFO mapreduce.Job:  map 48% reduce 0%
18/03/16 11:06:46 INFO mapreduce.Job:  map 54% reduce 0%
18/03/16 11:06:47 INFO mapreduce.Job:  map 60% reduce 0%
18/03/16 11:06:49 INFO mapreduce.Job:  map 64% reduce 0%
18/03/16 11:06:50 INFO mapreduce.Job:  map 68% reduce 0%
18/03/16 11:06:51 INFO mapreduce.Job:  map 70% reduce 0%
18/03/16 11:06:52 INFO mapreduce.Job:  map 74% reduce 0%
18/03/16 11:06:53 INFO mapreduce.Job:  map 78% reduce 0%
18/03/16 11:06:54 INFO mapreduce.Job:  map 82% reduce 0%
18/03/16 11:06:55 INFO mapreduce.Job:  map 84% reduce 0%
18/03/16 11:06:57 INFO mapreduce.Job:  map 92% reduce 0%
18/03/16 11:06:58 INFO mapreduce.Job:  map 96% reduce 0%
18/03/16 11:06:59 INFO mapreduce.Job:  map 98% reduce 0%
18/03/16 11:07:00 INFO mapreduce.Job:  map 100% reduce 0%
18/03/16 11:07:01 INFO mapreduce.Job:  map 100% reduce 100%
18/03/16 11:07:02 INFO mapreduce.Job: Job job_1521198129835_0002 completed successfully
18/03/16 11:07:02 INFO mapreduce.Job: Counters: 49
	File System Counters
		FILE: Number of bytes read=259
		FILE: Number of bytes written=7639194
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=14990
		HDFS: Number of bytes written=215
		HDFS: Number of read operations=203
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=3
	Job Counters 
		Launched map tasks=50
		Launched reduce tasks=1
		Data-local map tasks=50
		Total time spent by all maps in occupied slots (ms)=175248
		Total time spent by all reduces in occupied slots (ms)=2664
		Total time spent by all map tasks (ms)=175248
		Total time spent by all reduce tasks (ms)=2664
		Total vcore-milliseconds taken by all map tasks=175248
		Total vcore-milliseconds taken by all reduce tasks=2664
		Total megabyte-milliseconds taken by all map tasks=179453952
		Total megabyte-milliseconds taken by all reduce tasks=2727936
	Map-Reduce Framework
		Map input records=50
		Map output records=100
		Map output bytes=900
		Map output materialized bytes=1700
		Input split bytes=9090
		Combine input records=0
		Combine output records=0
		Reduce input groups=2
		Reduce shuffle bytes=1700
		Reduce input records=100
		Reduce output records=0
		Spilled Records=200
		Shuffled Maps =50
		Failed Shuffles=0
		Merged Map outputs=50
		GC time elapsed (ms)=1486
		CPU time spent (ms)=28600
		Physical memory (bytes) snapshot=24087777280
		Virtual memory (bytes) snapshot=69970931712
		Total committed heap usage (bytes)=27418165248
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters 
		Bytes Read=5900
	File Output Format Counters 
		Bytes Written=97
Job Finished in 46.304 seconds
Estimated value of Pi is 3.14160000000000000000
