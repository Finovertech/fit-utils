# Virtual Machines

## General Requirements

- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant](https://www.vagrantup.com/downloads.html)

## Architectures

The following architecture can be found in subfolders.

### Ansible `/vm/ansible`

Linux VM preconfigured with Ansible scripts found in Fit-Utils. If you are running Windows or simply want to isolate your host environment, you can use this to run Ansible script against your servers.

### Single Server `/vm/singleserver`

Unless you have good reason, use the `/vm/threeservers` architecture. The `/vm/singleserver` architecture is intended for resource contrained environments. However, all our applications should be designed for horizontal scaling. A single server development environment can allow you to develop code that does not scale horizontally. Problems with eventual consitency, concurrency and node failure are not possible to test in this environment.


### Three Servers `/vm/threeservers`

Local development with some redundancy to better simulate technical challenges horizontal scaling. This will place greater memory and CPU demands on the development machine. If you want to save resources and your development is not impacted by horizontal scaling, you should consider the single server architecture.