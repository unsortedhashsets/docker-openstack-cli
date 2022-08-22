# docker-openstack-cli
A lightweight container with openstack CLI client installed

# How to start

## 1. Launch docker image with Credentials:

### Provide env. variables (communication only with one cloud)

```
docker run -it \
    -e  OS_AUTH_URL=  \
    -e  OS_PROJECT_ID=  \
    -e  OS_PROJECT_NAME=  \
    -e  OS_USER_DOMAIN_NAME=  \
    -e  OS_PROJECT_DOMAIN_ID=  \
    -e  OS_USERNAME=  \
    -e  OS_PASSWORD=  \
    -e  OS_REGION_NAME=  \
    -e  OS_INTERFACE=public  \
    -e  OS_IDENTITY_API_VERSION=3  \
unsortedhashsets/docker-openstack-cli
```

### Provide cloud.yaml (communication with multiple clouds defined in cloud.yaml)

```
docker run -it -v ${HOME}/.config/openstack:/etc/openstack unsortedhashsets/docker-openstack-cli
```