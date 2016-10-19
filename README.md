# k8s-config-drive

Create a Kubernetes coreos config drive

``` bash
# The gist of the call.
docker run -v $(pwd):/iso -e HOSTNAME=c1 lakowske/k8s-config-drive
```
This is the basis, but requires some additional environment variables.

name                        |   value
--------------------------- | -----------------------
HOSTNAME                    | hostname of coreos node
SSHKEY                      | a public key used to login to node -e SSHKEY=$(cat ~/.ssh/id_rsa.pub)
NAME                        | name of node in etcd cluster
ADVERTISE_CLIENT_URLS       | http://192.168.11.100:2379
INITIAL_ADVERTISE_PEER_URLS | http://192.168.11.100:2380
TOKEN                       | discovery token (see token url at https://discovery.etcd.io/new?size=3)
LISTEN_PEER_URLS            | http://192.168.11.100:2380
LISTEN_CLIENT_URLS          | http://0.0.0.0:2379
