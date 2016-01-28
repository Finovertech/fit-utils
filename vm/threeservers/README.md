# Three Servers Architecture

Intended for use with ansible scripts found in `/ansible/Servers`.

Three VMs are created with enough resources to run the entire F/T stack. Currently they require up to 6GB of RAM to run.

## Setup Instructions

1. Run command `vagrant up`.
2. Reference the `inventory` file in Ansible scripts.
*This can be done either by using* `/vm/ansible` *VM or directly on host machine with ansible scripts found in* `/ansible/Servers`.