# A Simple Example to Deploy Flows onto Prefect 3.x

## Prerequisites

### Install Docker

Have docker installed (refer to official installation guide), and make sure you are in the docker group.
```
newgrp docker
```

Login to the private registry:
```
docker login harbor.szidc
```

### Add CA Certificates

Refer to https://contek.atlassian.net/wiki/spaces/INFRA/pages/415137804. Then:
```
export SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt
```

## Deploy Flows

Configure Prefect API endpoint:
```
prefect config set PREFECT_API_URL=https://contekray.szidc/prefect/api
```

Deploy:
```
prefect deploy --all
```
