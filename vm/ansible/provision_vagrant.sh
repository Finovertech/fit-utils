# Setup ssh key if none exists.
[ -f ~/.ssh/id_rsa ] || ssh-keygen -f ~/.ssh/id_rsa -t rsa -b 4096 -N ''

# Clone fit-utils to gain access to ansible scripts.
git clone -b FAC-13_CreateDevServers --single-branch https://github.com/Finovertech/fit-utils.git
ansible-playbook fit-utils/ansible/Servers/download_file_archives.yml
