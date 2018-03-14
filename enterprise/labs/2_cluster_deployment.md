```
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<title>Error 401 Full authentication is required to access this resource</title>
</head>
<body><h2>HTTP ERROR 401</h2>
<p>Problem accessing /api/v2/cm/deployment. Reason:
<pre>    Full authentication is required to access this resource</pre></p><hr /><i><small>Powered by Jetty://</small></i><br/>                                                
<br/>                                                
<br/>                                                
<br/>                                                
<br/>                                                
<br/>                                                
<br/>                                                
<br/>                                                
<br/>                                                
<br/>                                                
<br/>                                                
<br/>                                                
<br/>                                                
<br/>                                                
<br/>                                                
<br/>                                                
<br/>                                                
<br/>                                                
<br/>                                                
<br/>                                                

</body>
</html>
```


**now with user **
```
{
  "timestamp" : "2018-03-14T09:18:37.012Z",
  "clusters" : [ {
    "name" : "RonVander",
    "version" : "CDH5",
    "services" : [ {
      "name" : "hive",
      "type" : "HIVE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "HIVEMETASTORE",
          "items" : [ {
            "name" : "hive_metastore_java_heapsize",
            "value" : "605028352"
          } ]
        }, {
          "roleType" : "HIVESERVER2",
          "items" : [ {
            "name" : "hiveserver2_java_heapsize",
            "value" : "605028352"
          }, {
            "name" : "hiveserver2_spark_driver_memory",
            "value" : "966367641"
          }, {
            "name" : "hiveserver2_spark_executor_cores",
            "value" : "4"
          }, {
            "name" : "hiveserver2_spark_executor_memory",
            "value" : "3627548672"
          }, {
            "name" : "hiveserver2_spark_yarn_driver_memory_overhead",
            "value" : "102"
          }, {
            "name" : "hiveserver2_spark_yarn_executor_memory_overhead",
            "value" : "610"
          } ]
        } ],
        "items" : [ {
          "name" : "hive_metastore_database_host",
          "value" : "ip-172-31-3-232.eu-west-1.compute.internal"
        }, {
          "name" : "hive_metastore_database_password",
          "value" : "password"
        }, {
          "name" : "hive_metastore_database_user",
          "value" : "metastore"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hive-GATEWAY-0a2c64b76ee6b319041eb5d14c002696",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "08018c5a-5e49-4e16-a3ff-1a90f9b4cb79"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-2efd633e81b1b8f53ee36eab76d46c82",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "08edd9d6-e29d-47a1-a149-c25092e0a5e1"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-5551ac026078ef59eaf660957be95330",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "4ba19b40-a0a6-4378-9313-30696ae20d84"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-5f2b084cf5d4792a445b0d0475f782ec",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "bfb7103e-23bb-4564-b84a-d06b70b8dceb"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-HIVEMETASTORE-5f2b084cf5d4792a445b0d0475f782ec",
        "type" : "HIVEMETASTORE",
        "hostRef" : {
          "hostId" : "bfb7103e-23bb-4564-b84a-d06b70b8dceb"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "6vn2juf7bhckzm5cvnn0w3ppr"
          } ]
        }
      }, {
        "name" : "hive-HIVESERVER2-5f2b084cf5d4792a445b0d0475f782ec",
        "type" : "HIVESERVER2",
        "hostRef" : {
          "hostId" : "bfb7103e-23bb-4564-b84a-d06b70b8dceb"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "6spbq9ljwaz4l24o2covs4e63"
          } ]
        }
      }, {
        "name" : "hive-WEBHCAT-5f2b084cf5d4792a445b0d0475f782ec",
        "type" : "WEBHCAT",
        "hostRef" : {
          "hostId" : "bfb7103e-23bb-4564-b84a-d06b70b8dceb"
        },
        "config" : {
          "items" : [ {
            "name" : "hive_webhcat_secret_key",
            "value" : "fFILbrC7ODTxaV5lihuW7K3PM9kd3C"
          }, {
            "name" : "role_jceks_password",
            "value" : "bkdobiwbndnfnz9wbd6mmowi2"
          } ]
        }
      } ],
      "displayName" : "Hive"
    }, {
      "name" : "zookeeper",
      "type" : "ZOOKEEPER",
      "config" : {
        "roleTypeConfigs" : [ ],
        "items" : [ ]
      },
      "roles" : [ {
        "name" : "zookeeper-SERVER-0a2c64b76ee6b319041eb5d14c002696",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "08018c5a-5e49-4e16-a3ff-1a90f9b4cb79"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "lawfii7pw4ot33tllzek3d6h"
          }, {
            "name" : "serverId",
            "value" : "1"
          } ]
        }
      }, {
        "name" : "zookeeper-SERVER-2efd633e81b1b8f53ee36eab76d46c82",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "08edd9d6-e29d-47a1-a149-c25092e0a5e1"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "beno5o1yl6u51s10vf2mrm3q3"
          }, {
            "name" : "serverId",
            "value" : "2"
          } ]
        }
      }, {
        "name" : "zookeeper-SERVER-5551ac026078ef59eaf660957be95330",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "4ba19b40-a0a6-4378-9313-30696ae20d84"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "b57796lt2xnzyf3n4x1papuyg"
          }, {
            "name" : "serverId",
            "value" : "3"
          } ]
        }
      } ],
      "displayName" : "ZooKeeper"
    }, {
      "name" : "hue",
      "type" : "HUE",
      "config" : {
        "roleTypeConfigs" : [ ],
        "items" : [ {
          "name" : "database_host",
          "value" : "ip-172-31-3-232.eu-west-1.compute.internal"
        }, {
          "name" : "database_password",
          "value" : "hue"
        }, {
          "name" : "database_type",
          "value" : "mysql"
        }, {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "hue_webhdfs",
          "value" : "hdfs-NAMENODE-5f2b084cf5d4792a445b0d0475f782ec"
        }, {
          "name" : "oozie_service",
          "value" : "oozie"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hue-HUE_LOAD_BALANCER-5f2b084cf5d4792a445b0d0475f782ec",
        "type" : "HUE_LOAD_BALANCER",
        "hostRef" : {
          "hostId" : "bfb7103e-23bb-4564-b84a-d06b70b8dceb"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "ehayjg07z5p66oxowptwno10f"
          } ]
        }
      }, {
        "name" : "hue-HUE_SERVER-5f2b084cf5d4792a445b0d0475f782ec",
        "type" : "HUE_SERVER",
        "hostRef" : {
          "hostId" : "bfb7103e-23bb-4564-b84a-d06b70b8dceb"
        },
        "config" : {
          "items" : [ {
            "name" : "navmetadataserver_cmdb_password",
            "value" : "304fba87-fee6-4beb-b371-02d3e014e940"
          }, {
            "name" : "role_jceks_password",
            "value" : "8mvjse8ky5nc67wmvostwry6"
          }, {
            "name" : "secret_key",
            "value" : "67lgyBcmT0wLv4N9RjnX4FfBtudWgH"
          } ]
        }
      } ],
      "displayName" : "Hue"
    }, {
      "name" : "oozie",
      "type" : "OOZIE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "OOZIE_SERVER",
          "items" : [ {
            "name" : "oozie_database_host",
            "value" : "ip-172-31-3-232.eu-west-1.compute.internal"
          }, {
            "name" : "oozie_database_password",
            "value" : "oozie"
          }, {
            "name" : "oozie_database_type",
            "value" : "mysql"
          }, {
            "name" : "oozie_database_user",
            "value" : "oozie"
          }, {
            "name" : "oozie_java_heapsize",
            "value" : "605028352"
          } ]
        } ],
        "items" : [ {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "oozie-OOZIE_SERVER-5f2b084cf5d4792a445b0d0475f782ec",
        "type" : "OOZIE_SERVER",
        "hostRef" : {
          "hostId" : "bfb7103e-23bb-4564-b84a-d06b70b8dceb"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "89pisiucep3gmlvglv5q94dza"
          } ]
        }
      } ],
      "displayName" : "Oozie"
    }, {
      "name" : "yarn",
      "type" : "YARN",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "GATEWAY",
          "items" : [ {
            "name" : "mapred_reduce_tasks",
            "value" : "6"
          }, {
            "name" : "mapred_submit_replication",
            "value" : "3"
          } ]
        }, {
          "roleType" : "JOBHISTORY",
          "items" : [ {
            "name" : "mr2_jobhistory_java_heapsize",
            "value" : "605028352"
          } ]
        }, {
          "roleType" : "NODEMANAGER",
          "items" : [ {
            "name" : "rm_cpu_shares",
            "value" : "1600"
          }, {
            "name" : "rm_io_weight",
            "value" : "800"
          }, {
            "name" : "yarn_nodemanager_heartbeat_interval_ms",
            "value" : "100"
          }, {
            "name" : "yarn_nodemanager_local_dirs",
            "value" : "/data/yarn/nm"
          }, {
            "name" : "yarn_nodemanager_log_dirs",
            "value" : "/data/yarn/container-logs"
          }, {
            "name" : "yarn_nodemanager_resource_cpu_vcores",
            "value" : "3"
          }, {
            "name" : "yarn_nodemanager_resource_memory_mb",
            "value" : "3711"
          } ]
        }, {
          "roleType" : "RESOURCEMANAGER",
          "items" : [ {
            "name" : "resource_manager_java_heapsize",
            "value" : "605028352"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_mb",
            "value" : "3711"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_vcores",
            "value" : "3"
          } ]
        } ],
        "items" : [ {
          "name" : "hdfs_service",
          "value" : "hdfs"
        }, {
          "name" : "rm_dirty",
          "value" : "false"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "80"
        }, {
          "name" : "yarn_service_cgroups",
          "value" : "false"
        }, {
          "name" : "yarn_service_lce_always",
          "value" : "false"
        }, {
          "name" : "zk_authorization_secret_key",
          "value" : "ZaaByC79AAWNeyAyn7tL3D5sQmBCCT"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "yarn-JOBHISTORY-5f2b084cf5d4792a445b0d0475f782ec",
        "type" : "JOBHISTORY",
        "hostRef" : {
          "hostId" : "bfb7103e-23bb-4564-b84a-d06b70b8dceb"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "9v4kzcg7p630794t8i78u14je"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-0a2c64b76ee6b319041eb5d14c002696",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "08018c5a-5e49-4e16-a3ff-1a90f9b4cb79"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "3sjamsp74e1hmcxl91pfq7gwn"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-2efd633e81b1b8f53ee36eab76d46c82",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "08edd9d6-e29d-47a1-a149-c25092e0a5e1"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "5yumneynrw49z59xt77tb5qq0"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-5551ac026078ef59eaf660957be95330",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "4ba19b40-a0a6-4378-9313-30696ae20d84"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "70od7fcbk1rjo2nnxr91g9zzx"
          } ]
        }
      }, {
        "name" : "yarn-RESOURCEMANAGER-5f2b084cf5d4792a445b0d0475f782ec",
        "type" : "RESOURCEMANAGER",
        "hostRef" : {
          "hostId" : "bfb7103e-23bb-4564-b84a-d06b70b8dceb"
        },
        "config" : {
          "items" : [ {
            "name" : "rm_id",
            "value" : "55"
          }, {
            "name" : "role_jceks_password",
            "value" : "79wpug3okq5hrqhkzxtld5752"
          } ]
        }
      } ],
      "displayName" : "YARN (MR2 Included)"
    }, {
      "name" : "hdfs",
      "type" : "HDFS",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "BALANCER",
          "items" : [ {
            "name" : "balancer_java_heapsize",
            "value" : "605028352"
          } ]
        }, {
          "roleType" : "DATANODE",
          "items" : [ {
            "name" : "datanode_java_heapsize",
            "value" : "1073741824"
          }, {
            "name" : "dfs_data_dir_list",
            "value" : "/data/dfs/dn"
          }, {
            "name" : "dfs_datanode_max_locked_memory",
            "value" : "4294967296"
          }, {
            "name" : "rm_cpu_shares",
            "value" : "400"
          }, {
            "name" : "rm_io_weight",
            "value" : "200"
          } ]
        }, {
          "roleType" : "GATEWAY",
          "items" : [ {
            "name" : "dfs_client_use_trash",
            "value" : "true"
          } ]
        }, {
          "roleType" : "JOURNALNODE",
          "items" : [ {
            "name" : "dfs_journalnode_edits_dir",
            "value" : "/journal"
          } ]
        }, {
          "roleType" : "NAMENODE",
          "items" : [ {
            "name" : "dfs_name_dir_list",
            "value" : "/data/dfs/nn"
          }, {
            "name" : "dfs_namenode_servicerpc_address",
            "value" : "8022"
          }, {
            "name" : "namenode_java_heapsize",
            "value" : "605028352"
          } ]
        }, {
          "roleType" : "SECONDARYNAMENODE",
          "items" : [ {
            "name" : "fs_checkpoint_dir_list",
            "value" : "/data/dfs/snn"
          }, {
            "name" : "secondary_namenode_java_heapsize",
            "value" : "605028352"
          } ]
        } ],
        "items" : [ {
          "name" : "dfs_ha_fencing_cloudera_manager_secret_key",
          "value" : "9DV8pKaxYMWvZBRdQNX7nDIWvwKTvl"
        }, {
          "name" : "fc_authorization_secret_key",
          "value" : "OdNY5eDM2sxqDekLcdECDcj5YHyAZT"
        }, {
          "name" : "http_auth_signature_secret",
          "value" : "5WffwAqOL3pyczZnC5z5a64bGeMQdU"
        }, {
          "name" : "rm_dirty",
          "value" : "false"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "20"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hdfs-BALANCER-5f2b084cf5d4792a445b0d0475f782ec",
        "type" : "BALANCER",
        "hostRef" : {
          "hostId" : "bfb7103e-23bb-4564-b84a-d06b70b8dceb"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hdfs-DATANODE-0a2c64b76ee6b319041eb5d14c002696",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "08018c5a-5e49-4e16-a3ff-1a90f9b4cb79"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "d2rumof8ujqjjtdvw32vn1njm"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-2efd633e81b1b8f53ee36eab76d46c82",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "08edd9d6-e29d-47a1-a149-c25092e0a5e1"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "dxybnr0k8dnthx6sdhdl301qx"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-5551ac026078ef59eaf660957be95330",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "4ba19b40-a0a6-4378-9313-30696ae20d84"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "22cdfjneq4g3hi1ak5rb4zwnc"
          } ]
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-0a2c64b76ee6b319041eb5d14c002696",
        "type" : "FAILOVERCONTROLLER",
        "hostRef" : {
          "hostId" : "08018c5a-5e49-4e16-a3ff-1a90f9b4cb79"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "7b7zoo0chhkb1c5knlolsa5x4"
          } ]
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-5f2b084cf5d4792a445b0d0475f782ec",
        "type" : "FAILOVERCONTROLLER",
        "hostRef" : {
          "hostId" : "bfb7103e-23bb-4564-b84a-d06b70b8dceb"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "bxr3bipclrbzj8xue23w3teou"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-0a2c64b76ee6b319041eb5d14c002696",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "08018c5a-5e49-4e16-a3ff-1a90f9b4cb79"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "71ib5sgedq3blinwswbaowhqi"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-2efd633e81b1b8f53ee36eab76d46c82",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "08edd9d6-e29d-47a1-a149-c25092e0a5e1"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "7yqo77pbxxaejybu94neqsa3m"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-5551ac026078ef59eaf660957be95330",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "4ba19b40-a0a6-4378-9313-30696ae20d84"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "dnb8ugxztkwx44728tcl0jlyv"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-0a2c64b76ee6b319041eb5d14c002696",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "08018c5a-5e49-4e16-a3ff-1a90f9b4cb79"
        },
        "config" : {
          "items" : [ {
            "name" : "autofailover_enabled",
            "value" : "true"
          }, {
            "name" : "dfs_federation_namenode_nameservice",
            "value" : "ronVandername"
          }, {
            "name" : "dfs_namenode_quorum_journal_name",
            "value" : "ronVandername"
          }, {
            "name" : "namenode_id",
            "value" : "63"
          }, {
            "name" : "role_jceks_password",
            "value" : "6mwlpocsgcmzkdtshi21amliq"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-5f2b084cf5d4792a445b0d0475f782ec",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "bfb7103e-23bb-4564-b84a-d06b70b8dceb"
        },
        "config" : {
          "items" : [ {
            "name" : "autofailover_enabled",
            "value" : "true"
          }, {
            "name" : "dfs_federation_namenode_nameservice",
            "value" : "ronVandername"
          }, {
            "name" : "dfs_namenode_quorum_journal_name",
            "value" : "ronVandername"
          }, {
            "name" : "namenode_id",
            "value" : "58"
          }, {
            "name" : "role_jceks_password",
            "value" : "94xymryjq30y2okz67gbv6y9q"
          } ]
        }
      }, {
        "name" : "hdfs-NFSGATEWAY-5551ac026078ef59eaf660957be95330",
        "type" : "NFSGATEWAY",
        "hostRef" : {
          "hostId" : "4ba19b40-a0a6-4378-9313-30696ae20d84"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "3vfa5q08ysneksflgphyd8j79"
          } ]
        }
      } ],
      "displayName" : "HDFS"
    } ]
  } ],
  "hosts" : [ {
    "hostId" : "bfb7103e-23bb-4564-b84a-d06b70b8dceb",
    "ipAddress" : "172.31.11.171",
    "hostname" : "ip-172-31-11-171.eu-west-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "08edd9d6-e29d-47a1-a149-c25092e0a5e1",
    "ipAddress" : "172.31.14.44",
    "hostname" : "ip-172-31-14-44.eu-west-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "08018c5a-5e49-4e16-a3ff-1a90f9b4cb79",
    "ipAddress" : "172.31.3.252",
    "hostname" : "ip-172-31-3-252.eu-west-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "4ba19b40-a0a6-4378-9313-30696ae20d84",
    "ipAddress" : "172.31.9.65",
    "hostname" : "ip-172-31-9-65.eu-west-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  } ],
  "users" : [ {
    "name" : "__cloudera_internal_user__8a21d0c4-a2f1-46bb-8205-79108090fdbf",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "aee583a54474766624aa1f0737d0f91b3ac36a9e614b6af871effb13a9a1b34d",
    "pwSalt" : -7604873501309109847,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__hue-HUE_SERVER-5f2b084cf5d4792a445b0d0475f782ec",
    "roles" : [ "ROLE_NAVIGATOR_ADMIN" ],
    "pwHash" : "2d715229d6c79a103ecac549c2fccff25f828f242ae50740af6b21f4123bcff8",
    "pwSalt" : 4292365562348630339,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-ACTIVITYMONITOR-5f2b084cf5d4792a445b0d0475f782ec",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "3a9c0743135960f68bec194fbaef06fa043f5f514dd52ed5cb79771e3ce178b5",
    "pwSalt" : 2731080535826363035,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-EVENTSERVER-5f2b084cf5d4792a445b0d0475f782ec",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "144eea31a3a71c4e089a95e9dcaf5ee2100441a1de7ae3a69579412b1deecc80",
    "pwSalt" : -772690710732252616,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-HOSTMONITOR-5f2b084cf5d4792a445b0d0475f782ec",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "ad49e0a9c7520b68aa84ab44e309d7d08ed7edb990d2ed2306a3b811e1cec9cf",
    "pwSalt" : -8183331859976898143,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-REPORTSMANAGER-5f2b084cf5d4792a445b0d0475f782ec",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "c61104484793debfa18b096fa78082ab1f7b2fe93779a9a886ad2e7f08240a24",
    "pwSalt" : 3605938292660332645,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-SERVICEMONITOR-5f2b084cf5d4792a445b0d0475f782ec",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "087e8c4e5ea31aa8f8dbf2dac92756476d84e192459b6146283c99a488b6b5e5",
    "pwSalt" : 314451318818423946,
    "pwLogin" : true
  }, {
    "name" : "admin",
    "roles" : [ "ROLE_LIMITED" ],
    "pwHash" : "dd60b8fbc886208b31b960edc1fbe4153c963acdf81ff5c410d52e21722f25e2",
    "pwSalt" : -8658577617317882762,
    "pwLogin" : true
  }, {
    "name" : "minotaur",
    "roles" : [ "ROLE_CONFIGURATOR" ],
    "pwHash" : "a6284060ddc215d59499ccf533bcfe9c1d9246fa9dfb4982530e88ef1a4ee4d1",
    "pwSalt" : -7291017681573573676,
    "pwLogin" : true
  }, {
    "name" : "ronVander",
    "roles" : [ "ROLE_ADMIN" ],
    "pwHash" : "d942d8cb22c9807a7529e0a65c3eb4261ac1c6a83364af94873ef467919275b6",
    "pwSalt" : 6336601614242887690,
    "pwLogin" : true
  } ],
  "versionInfo" : {
    "version" : "5.14.1",
    "buildUser" : "jenkins",
    "buildTimestamp" : "20180207-1722",
    "gitHash" : "f253d8e2b9cf5cb61a2f1ba1bf71de6fb603add0",
    "snapshot" : false
  },
  "managementService" : {
    "name" : "mgmt",
    "type" : "MGMT",
    "config" : {
      "roleTypeConfigs" : [ {
        "roleType" : "ACTIVITYMONITOR",
        "items" : [ {
          "name" : "firehose_database_host",
          "value" : "ip-172-31-3-232.eu-west-1.compute.internal"
        }, {
          "name" : "firehose_database_name",
          "value" : "amon"
        }, {
          "name" : "firehose_database_password",
          "value" : "password"
        }, {
          "name" : "firehose_database_user",
          "value" : "amon"
        }, {
          "name" : "firehose_heapsize",
          "value" : "605028352"
        } ]
      }, {
        "roleType" : "EVENTSERVER",
        "items" : [ {
          "name" : "event_server_heapsize",
          "value" : "605028352"
        } ]
      }, {
        "roleType" : "HOSTMONITOR",
        "items" : [ {
          "name" : "firehose_heapsize",
          "value" : "605028352"
        }, {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "805306368"
        } ]
      }, {
        "roleType" : "REPORTSMANAGER",
        "items" : [ {
          "name" : "headlamp_database_host",
          "value" : "ip-172-31-3-232.eu-west-1.compute.internal"
        }, {
          "name" : "headlamp_database_name",
          "value" : "rman"
        }, {
          "name" : "headlamp_database_password",
          "value" : "password"
        }, {
          "name" : "headlamp_database_user",
          "value" : "rman"
        }, {
          "name" : "headlamp_heapsize",
          "value" : "605028352"
        } ]
      }, {
        "roleType" : "SERVICEMONITOR",
        "items" : [ {
          "name" : "firehose_heapsize",
          "value" : "605028352"
        }, {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "805306368"
        } ]
      } ],
      "items" : [ ]
    },
    "roles" : [ {
      "name" : "mgmt-ACTIVITYMONITOR-5f2b084cf5d4792a445b0d0475f782ec",
      "type" : "ACTIVITYMONITOR",
      "hostRef" : {
        "hostId" : "bfb7103e-23bb-4564-b84a-d06b70b8dceb"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "3okdi6aktrcvqn1qgzky24avz"
        } ]
      }
    }, {
      "name" : "mgmt-ALERTPUBLISHER-5f2b084cf5d4792a445b0d0475f782ec",
      "type" : "ALERTPUBLISHER",
      "hostRef" : {
        "hostId" : "bfb7103e-23bb-4564-b84a-d06b70b8dceb"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "2w7a5fgbx15yd1b2qlmfj3nqy"
        } ]
      }
    }, {
      "name" : "mgmt-EVENTSERVER-5f2b084cf5d4792a445b0d0475f782ec",
      "type" : "EVENTSERVER",
      "hostRef" : {
        "hostId" : "bfb7103e-23bb-4564-b84a-d06b70b8dceb"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "67z1dt0foaa3npk2yrbzwm2le"
        } ]
      }
    }, {
      "name" : "mgmt-HOSTMONITOR-5f2b084cf5d4792a445b0d0475f782ec",
      "type" : "HOSTMONITOR",
      "hostRef" : {
        "hostId" : "bfb7103e-23bb-4564-b84a-d06b70b8dceb"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "f5bmf6dx2x83qfsz1yebudcy4"
        } ]
      }
    }, {
      "name" : "mgmt-REPORTSMANAGER-5f2b084cf5d4792a445b0d0475f782ec",
      "type" : "REPORTSMANAGER",
      "hostRef" : {
        "hostId" : "bfb7103e-23bb-4564-b84a-d06b70b8dceb"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "cibe8pu0qbrzqzkw13o4hsayk"
        } ]
      }
    }, {
      "name" : "mgmt-SERVICEMONITOR-5f2b084cf5d4792a445b0d0475f782ec",
      "type" : "SERVICEMONITOR",
      "hostRef" : {
        "hostId" : "bfb7103e-23bb-4564-b84a-d06b70b8dceb"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "6n8w5h2l0ujykjkder49ubx79"
        } ]
      }
    } ],
    "displayName" : "Cloudera Management Service"
  },
  "managerSettings" : {
    "items" : [ {
      "name" : "CLUSTER_STATS_START",
      "value" : "10/24/2012 10:00"
    }, {
      "name" : "PUBLIC_CLOUD_STATUS",
      "value" : "ON_PUBLIC_CLOUD"
    }, {
      "name" : "REMOTE_PARCEL_REPO_URLS",
      "value" : "https://archive.cloudera.com/cdh5/parcels/{latest_supported}/,https://archive.cloudera.com/cdh4/parcels/latest/,https://archive.cloudera.com/impala/parcels/latest/,https://archive.cloudera.com/search/parcels/latest/,https://archive.cloudera.com/accumulo/parcels/1.4/,https://archive.cloudera.com/accumulo-c5/parcels/latest/,https://archive.cloudera.com/kafka/parcels/latest/,http://archive.cloudera.com/kudu/parcels/latest/,https://archive.cloudera.com/spark/parcels/latest/,https://archive.cloudera.com/sqoop-connectors/parcels/latest/"
    } ]
  }
}
```
