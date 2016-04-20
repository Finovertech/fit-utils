#Setup & Config OpenLDAP Servers

**Under Construction**

## General Requirements

- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant](https://www.vagrantup.com/downloads.html)
- [Ansible](http://docs.ansible.com/ansible/intro_installation.html) 

##Architectures

OpenLDAP Server config options are saved in `/config` directory.

The following architecture can be found in subfolders.

###Setup OpenLDAP Server `/ldap/setup_openldap`

**Under Construction**

Setup your OpenLDAP Server.

Specify domain in `/roles/ldap/config/domain`

Specify organization in `/roles/ldap/config/organization`

The 10 digits admin password is random generated and saved as plain text in `/roles/ldap/tasks/credentials/admin_password`

Copy the content within this folder to a directory that you would like to setup your vm and run:
```
vagrant up
```

**Be sure to keep a record of your admin password.**

###Config Provider `/ldap/config_provider`

**Under Construction**

Config an existing OpenLDAP Server to be provider.

Specify domain in `/roles/ldap_provider/config/domain`

Specify organization in `/roles/ldap_provider/config/organization`

Specify admin password in `/roles/ldap_provider/config/admin_password`

Edit `/config_provider/roles/ldap_provider/files/create_repl_user.ldif` to specify the reader account for consumer.

Edit `/config_provider/roles/ldap_provider/files/enable_sync_prov.ldif` line 14 to enable the reader account for replication.

We should make sure that each consumer has its own reader account.

Copy the content within this folder to the directory you setup your vm and run:
```
vagrant provision
```

###Config Consumer `/ldap/config_consumer`

**Under Construction**

Config an existing OpenLDAP Server to be a consumer of a provider.

Consumer must have the same domain as its provider.

Specify domain in `/roles/ldap_consumer/config/domain`

Specify organization in `/roles/ldap_consumer/config/organization`

Specify admin password in `/roles/ldap_consumer/config/admin_password`

Specify provider ip address in `/roles/ldap_consumer/config/provider_ip`

Edit `/config_consumer/roles/ldap_consumer/files/enable_sync_consumer.ldif` line 52 to specify provider ip address and port.

Copy the content within this folder to directory you setup your vm and run:
```
vagrant provision
```
