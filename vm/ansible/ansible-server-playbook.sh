#!/bin/sh
die () {
    echo >&2 "$@"
    exit 1
}
[ "$#" -eq 1 ] || die "Server playbook required as first parameter"

vagrant ssh -c "ansible-playbook -i /vagrant/inventory fit-utils/ansible/Servers/$1"