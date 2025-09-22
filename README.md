# A Simple Example to Deploy Flows onto Prefect 3.x

You will need the following info to deploy your code onto the Prefect server:
* Docker login credential
* Prefect API URL
* Prefect login credential
* K8s namespace
* image name

If you have no idea about these, ask someone for help.

## Prerequisites

### Install Docker

Have docker installed (refer to official installation guide), and make sure you are in the docker group.
```
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
```

Login to the private registry:
```
docker login harbor.szidc
```

## Deploy Flows

Configure Prefect API endpoint:
```
prefect config set PREFECT_API_URL=<Prefect API URL>
prefect config set PREFECT_API_TLS_INSECURE_SKIP_VERIFY=True
prefect config set PREFECT_API_AUTH_STRING=<Prefect login credential>
```

Modify the image name and namespace in your `prefect.yaml`.

Deploy:
```
prefect deploy --all
```
