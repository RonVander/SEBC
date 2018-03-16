```
[logging]
 default = FILE:/var/log/krb5libs.log
 kdc = FILE:/var/log/krb5kdc.log
 admin_server = FILE:/var/log/kadmind.log

[libdefaults]
 default_realm = RONVANDER.NL
 dns_lookup_realm = false
 dns_lookup_kdc = false
 ticket_lifetime = 24h
 renew_lifetime = 7d
 forwardable = true
 udp_preference_limit = 1
 default_tgs_enctypes = arcfour-hmac
 default_tkt_enctypes = arcfour-hmac

[realms]
  RONVANDER.NL = {
  kdc = ip-172-31-5-14.eu-west-1.compute.internal
  admin_server = ip-172-31-5-14.eu-west-1.compute.internal
 }

[domain_realm]
   .example.com = RONVANDER.NL
   example.com = RONVANDER.NL
```