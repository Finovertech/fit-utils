#!/bin/sh
die () {
    echo >&2 "$@"
    exit 1
}
[ "$#" -eq 1 ] || die "Inventory file required as first parameter"

INVENTORY=$1
[ -f $INVENTORY ] || die "Inventory file $INVENTORY does not exist"
cp $INVENTORY vagrant_share/inventory
vagrant ssh -c "cd /vagrant && ansible-playbook /vagrant/establish_trust.yml --ask-pass"
