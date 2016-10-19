# k8s-config-drive

Create a Kubernetes coreos config drive

``` bash
docker run -v /path/to/output:/iso lakowske/k8s-config-drive
```
This is the basis, but requires some additional configuration
environment variables.

name                        |   value
--------------------------- | -----------------------
HOSTNAME                    | hostname of coreos node
SSHKEY                      | a public key used to login to node -e SSHKEY=$(cat ~/.ssh/id_rsa.pub)
NAME                        | name of node in etcd cluster
ADVERTISE_CLIENT_URLS       | http://192.168.11.100:2379
INITIAL_ADVERTISE_PEER_URLS | http://192.168.11.100:2380
TOKEN                       | discovery token (default: https://discovery.etcd.io/new?size=3)
LISTEN_PEER_URLS            | http://192.168.11.100:2380
LISTEN_CLIENT_URLS          | http://0.0.0.0:2379
