# This file Is the access control list for krb5 administration.
# When this file is edited run /etc/init.d/krb5-admin-server restart to activate
# One common way to set up Kerberos administration is to allow any principal 
# ending in /admin  is given full administrative rights.
# To enable this, uncomment the following line:
*/admin@RONVANDER.INTERNAL *
scm@RONVANDER.INTERNAL admilc