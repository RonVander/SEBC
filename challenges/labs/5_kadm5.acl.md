# This file Is the access control list for krb5 administration.
# When this file is edited run /etc/init.d/krb5-admin-server restart to activate
# One common way to set up Kerberos administration is to allow any principal 
# ending in /admin  is given full administrative rights.
# To enable this, uncomment the following line:
# */admin *
*/admin@RONVANDER.NL *
cloudera-scm@RONVANDER.NL * flume/*@RONVANDER.NL
cloudera-scm@RONVANDER.NL * hbase/*@RONVANDER.NL
cloudera-scm@RONVANDER.NL * hdfs/*@RONVANDER.NL
cloudera-scm@RONVANDER.NL * hive/*@RONVANDER.NL
cloudera-scm@RONVANDER.NL * httpfs/*@RONVANDER.NL
cloudera-scm@RONVANDER.NL * HTTP/*@RONVANDER.NL
cloudera-scm@RONVANDER.NL * hue/*@RONVANDER.NL
cloudera-scm@RONVANDER.NL * impala/*@RONVANDER.NL
cloudera-scm@RONVANDER.NL * mapred/*@RONVANDER.NL
cloudera-scm@RONVANDER.NL * oozie/*@RONVANDER.NL
cloudera-scm@RONVANDER.NL * solr/*@RONVANDER.NL
cloudera-scm@RONVANDER.NL * sqoop/*@RONVANDER.NL
cloudera-scm@RONVANDER.NL * yarn/*@RONVANDER.NL
cloudera-scm@RONVANDER.NL * zookeeper/*@RONVANDER.NL