# Single Server Architecture

Intended for use with ansible scripts found in `/ansible/Servers`.

Single VMs are created with enough resources to run the entire F/T stack. Currently it requires up to 2GB of RAM to run.

## Setup Instructions

1. Run command `vagrant up`.
2. Reference the `inventory` file in Ansible scripts.
*This can be done either by using* `/vm/ansible` *VM or directly on host machine with ansible scripts found in* `/ansible/Servers`.