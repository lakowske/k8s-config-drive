#!/bin/bash

echo "$1 $2"
echo "env variables"
export

cp -r /media/configdrive/openstack/latest/nodes/$2/etc/* /etc

case $1 in
    controller) /media/configdrive/openstack/latest/controller-install.sh
                ;;
    worker) /media/configdrive/openstack/latest/worker-install.sh
            ;;
    *) echo "$0 <controller|worker>"
       ;;
esac
