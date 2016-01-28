# Ansible VM

Running Ansible in a VM is a great way to keep it separate from the host environment, that may not effectively support running Ansible. Some of the inspiration for this VM can be found at:
https://sysadmincasts.com/episodes/45-learning-ansible-with-vagrant-part-2-4

## Setup Instructions

1. Run command:
```
vagrant up
```
2. Set the inventory by running `./setup_inventory.sh <inventory>` where *inventory* is provided by the architecture of servers you will be running ansible scripts against. This step will establish a trust through SSH that require you to enter the default vagrant password "vagrant". The Ansible server will now be trusted by the Server cluster, and no further authentication is required. To run this against the Three Server Architecture:
```
./setup_inventory.sh ../threeservers/inventory
```
3. Run desire ansible server script `./ansible-server-playbook.sh <playbook found in /ansible/Servers>`. For a complete server build:
```
./ansible-server-playbook.sh everything.yml
```
4. If the `ansible/Servers` scripts are updated within GitHub, you can update the local copy found within Ansible server and download any additional required binaries by running:
```
./update.sh
```
