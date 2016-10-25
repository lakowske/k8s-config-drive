#!/bin/bash

cp -r /media/configdrive/openstack/latest/etc/* /etc

echo "env variables"
export

case $1 in
    controller) /media/configdrive/openstack/latest/controller-install.sh
                ;;
    worker) /media/configdrive/openstack/latest/worker-install.sh
            ;;
    *) echo "$0 <controller|worker>"
       ;;
esac
