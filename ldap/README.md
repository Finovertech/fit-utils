#Setup & Config OpenLDAP Servers

## General Requirements

- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant](https://www.vagrantup.com/downloads.html)

##Architectures

The following architecture can be found in subfolders.

###Setup OpenLDAP Server `/ldap/setup_openldap`

*Under Construction*

Setup your config for OpenLDAP Server:

Copy the script to where you wanna setup your vm and run:

```
vagrant up
```

###Config Provider `/ldap/config_provider`

*Under Construction*

Config an existing OpenLDAP Server to be provider.

Edit `/config_provider/roles/ldap_provider/files/create_repl_user.ldif` to specify the reader account for consumer.

We should make sure that each consumer has its own reader account.

###Config Consumer `/ldap/config_consumer`

*Under Construction*

Config an existing OpenLDAP Server to be consumer of a provider.

Consumer should have the same dc as its provider.

Edit `/config_consumer/roles/ldap_consumer/files/enable_sync_consumer.ldif` line 52 to specify provider.
