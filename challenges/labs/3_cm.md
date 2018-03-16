```
hdfs@ip-172-31-14-142:~$ hdfs dfs -ls /user
Found 7 items
drwxr-xr-x   - anupam anupam          0 2018-03-16 09:35 /user/anupam
drwxr-xr-x   - hilary hilary          0 2018-03-16 09:34 /user/hilary
drwxrwxrwx   - mapred hadoop          0 2018-03-16 09:33 /user/history
drwxrwxr-t   - hive   hive            0 2018-03-16 09:33 /user/hive
drwxrwxr-x   - hue    hue             0 2018-03-16 09:34 /user/hue
drwxrwxr-x   - impala impala          0 2018-03-16 09:34 /user/impala
drwxrwxr-x   - oozie  oozie           0 2018-03-16 09:34 /user/oozie
```

```
root@ip-172-31-5-14:~# curl  -u 'admin:admin' localhost:7180/api/v14/hosts
{
  "items" : [ {
    "hostId" : "55cd7996-a951-46bc-bcb0-2a5e66750a22",
    "ipAddress" : "172.31.14.142",
    "hostname" : "ip-172-31-14-142.eu-west-1.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-5-14.eu-west-1.compute.internal:7180/cmf/hostRedirect/55cd7996-a951-46bc-bcb0-2a5e66750a22",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 16340713472
  }, {
    "hostId" : "471f0432-c826-472e-970b-841ba2084bda",
    "ipAddress" : "172.31.2.139",
    "hostname" : "ip-172-31-2-139.eu-west-1.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-5-14.eu-west-1.compute.internal:7180/cmf/hostRedirect/471f0432-c826-472e-970b-841ba2084bda",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 16340713472
  }, {
    "hostId" : "ce529c0d-748d-4702-9f2a-42e8df07c05a",
    "ipAddress" : "172.31.4.118",
    "hostname" : "ip-172-31-4-118.eu-west-1.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-5-14.eu-west-1.compute.internal:7180/cmf/hostRedirect/ce529c0d-748d-4702-9f2a-42e8df07c05a",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 16340713472
  }, {
    "hostId" : "b16fd703-60be-42ef-a34a-c8e85f5a44f0",
    "ipAddress" : "172.31.5.14",
    "hostname" : "ip-172-31-5-14.eu-west-1.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-5-14.eu-west-1.compute.internal:7180/cmf/hostRedirect/b16fd703-60be-42ef-a34a-c8e85f5a44f0",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 16340713472
  }, {
    "hostId" : "1e3c9453-c70f-43f2-9802-4b3758611b83",
    "ipAddress" : "172.31.6.218",
    "hostname" : "ip-172-31-6-218.eu-west-1.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-5-14.eu-west-1.compute.internal:7180/cmf/hostRedirect/1e3c9453-c70f-43f2-9802-4b3758611b83",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 16340713472
  } ]
}
```

```
root@ip-172-31-5-14:~# curl  -u 'admin:admin' localhost:7180/api/v8/clusters
{
  "items" : [ {
    "name" : "cluster",
    "displayName" : "ronvander",
    "version" : "CDH5",
    "fullVersion" : "5.13.2",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ]
  } ]
}
```

```
root@ip-172-31-5-14:~# curl  -u 'admin:admin' localhost:7180/api/v8/clusters/ronvander/services
{
  "items" : [ {
    "name" : "hive",
    "type" : "HIVE",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://ip-172-31-5-14.eu-west-1.compute.internal:7180/cmf/serviceRedirect/hive",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "HIVE_HIVEMETASTORES_HEALTHY",
      "summary" : "GOOD"
    }, {
      "name" : "HIVE_HIVESERVER2S_HEALTHY",
      "summary" : "GOOD"
    }, {
      "name" : "HIVE_WEBHCATS_HEALTHY",
      "summary" : "GOOD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "Hive"
  }, {
    "name" : "zookeeper",
    "type" : "ZOOKEEPER",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://ip-172-31-5-14.eu-west-1.compute.internal:7180/cmf/serviceRedirect/zookeeper",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "ZOOKEEPER_CANARY_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "ZOOKEEPER_SERVERS_HEALTHY",
      "summary" : "GOOD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "ZooKeeper"
  }, {
    "name" : "hue",
    "type" : "HUE",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://ip-172-31-5-14.eu-west-1.compute.internal:7180/cmf/serviceRedirect/hue",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "HUE_HUE_SERVERS_HEALTHY",
      "summary" : "GOOD"
    }, {
      "name" : "HUE_LOAD_BALANCER_HEALTHY",
      "summary" : "GOOD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "Hue"
  }, {
    "name" : "oozie",
    "type" : "OOZIE",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://ip-172-31-5-14.eu-west-1.compute.internal:7180/cmf/serviceRedirect/oozie",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "OOZIE_OOZIE_SERVERS_HEALTHY",
      "summary" : "GOOD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "Oozie"
  }, {
    "name" : "impala",
    "type" : "IMPALA",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://ip-172-31-5-14.eu-west-1.compute.internal:7180/cmf/serviceRedirect/impala",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "IMPALA_ASSIGNMENT_LOCALITY",
      "summary" : "DISABLED"
    }, {
      "name" : "IMPALA_CATALOGSERVER_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "IMPALA_IMPALADS_HEALTHY",
      "summary" : "GOOD"
    }, {
      "name" : "IMPALA_STATESTORE_HEALTH",
      "summary" : "GOOD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "Impala"
  }, {
    "name" : "yarn",
    "type" : "YARN",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://ip-172-31-5-14.eu-west-1.compute.internal:7180/cmf/serviceRedirect/yarn",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "YARN_JOBHISTORY_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "YARN_NODE_MANAGERS_HEALTHY",
      "summary" : "GOOD"
    }, {
      "name" : "YARN_RESOURCEMANAGERS_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "YARN_USAGE_AGGREGATION_HEALTH",
      "summary" : "DISABLED"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "YARN (MR2 Included)"
  }, {
    "name" : "hdfs",
    "type" : "HDFS",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://ip-172-31-5-14.eu-west-1.compute.internal:7180/cmf/serviceRedirect/hdfs",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "HDFS_BLOCKS_WITH_CORRUPT_REPLICAS",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_CANARY_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_DATA_NODES_HEALTHY",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_FREE_SPACE_REMAINING",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_HA_NAMENODE_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_MISSING_BLOCKS",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_UNDER_REPLICATED_BLOCKS",
      "summary" : "GOOD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "HDFS"
  } ]
}
```