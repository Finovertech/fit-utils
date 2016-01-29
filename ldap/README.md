#Setup & Config OpenLDAP Servers

*Under Construction*

## General Requirements

- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant](https://www.vagrantup.com/downloads.html)
- [Ansible](http://docs.ansible.com/ansible/intro_installation.html) 

##Architectures

The following architecture can be found in subfolders.

###Setup OpenLDAP Server `/ldap/setup_openldap`

*Under Construction*

Setup your config for OpenLDAP Server.

Specify domain in `/roles/ldap/config/domain`

Specify organization in `/roles/ldap/config/organization`

The 10 digits admin password is random generated and saved as plain text in `*/credentials/admin_password`

###Config Provider `/ldap/config_provider`

*Under Construction*

Config an existing OpenLDAP Server to be provider.

Specify domain in `/roles/ldap/config/domain`

Specify organization in `/roles/ldap/config/organization`

Specify admin password in `/roles/ldap/config/admin_password`

Edit `/config_provider/roles/ldap_provider/files/create_repl_user.ldif` to specify the reader account for consumer.

We should make sure that each consumer has its own reader account.

###Config Consumer `/ldap/config_consumer`

*Under Construction*

Config an existing OpenLDAP Server to be consumer of a provider.

Consumer must have the same domain as its provider.

Specify domain in `/roles/ldap/config/domain`

Specify organization in `/roles/ldap/config/organization`

Specify admin password in `/roles/ldap/config/admin_password`

Specify provider ip address in `/roles/ldap/config/provider_ip`

Edit `/config_consumer/roles/ldap_consumer/files/enable_sync_consumer.ldif` line 52 to specify provider ip address.
