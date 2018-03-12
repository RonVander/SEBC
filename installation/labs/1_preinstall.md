* set root passwd on instances
* setup dns for instances (private dns)
	
`nslookup ec1.private`
Server:		172.31.0.2
Address:	172.31.0.2#53


* add passwoordless integration
on CM (ec.5) create an ssh key  
`ssh-keygen`
copy the pub key

on ec1-4.private add to the /etc/ssh/sshd_config
```PermitRootLogin yes
# Only allow root to run commands over ssh, no shell
#PermitRootLogin forced-commands-only
RSAAuthentication yes
AuthorizedKeysFile     .ssh/authorized_keys```

restart service 
`systemctl restart sshd.service`

add the public key from the cm to 
`vi /root/.ssh/authorized_keys`

