```
curl  -u 'ronVander:cloudera' localhost:7180/api/version
v19
```

```
curl  -u 'ronVander:cloudera' localhost:7180/api/v19/cm/version
{
  "version" : "5.14.1",
  "buildUser" : "jenkins",
  "buildTimestamp" : "20180207-1722",
  "gitHash" : "f253d8e2b9cf5cb61a2f1ba1bf71de6fb603add0",
  "snapshot" : false
}
```l

```


```
curl  -u 'ronVander:cloudera' localhost:7180/api/v19/users/
{
  "items" : [ {
    "name" : "admin",
    "roles" : [ "ROLE_LIMITED" ]
  }, {
    "name" : "minotaur",
    "roles" : [ "ROLE_CONFIGURATOR" ]
  }, {
    "name" : "ronVander",
    "roles" : [ "ROLE_ADMIN" ]
  } ]
}

```


```
curl  -u 'ronVander:cloudera' localhost:7180/api/v19/cm/scmDbInfo
{
  "scmDbType" : "MYSQL",
  "embeddedDbUsed" : false
}
```