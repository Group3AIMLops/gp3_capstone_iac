# gp3_capstone_iac
This project is created to spin up and destroy the infrastructure created 


# Pre-requisites: Below resources should be present in AWS account
### S3 bucket with name: ```group3-terraform-state-bucket```
### DynamoDB table name: ```terraform-locks``` with Hash key as ```LockID```


# Install Eksctl

```
# for ARM systems, set ARCH to: `arm64`, `armv6` or `armv7`
ARCH=amd64
PLATFORM=$(uname -s)_$ARCH

curl -sLO "https://github.com/eksctl-io/eksctl/releases/latest/download/eksctl_$PLATFORM.tar.gz"

# (Optional) Verify checksum
curl -sL "https://github.com/eksctl-io/eksctl/releases/latest/download/eksctl_checksums.txt" | grep $PLATFORM | sha256sum --check

tar -xzf eksctl_$PLATFORM.tar.gz -C /tmp && rm eksctl_$PLATFORM.tar.gz

sudo mv /tmp/eksctl /usr/local/bin

```

# Create a ```KUBECONFIG``` for ```kubectl```

```aws eks update-kubeconfig --region us-east-2 --name gp3-demo-eks```


# Download Istio:

### Downloading and setting Istio Path:
```
Reference: https://istio.io/latest/docs/setup/getting-started/

$ curl -L https://istio.io/downloadIstio | sh -

$ cd istio-1.22.2  # This may change based on downloaded version

$ export PATH=$PWD/bin:$PATH

```

### Installing Istio

```
Reference: https://istio.io/latest/docs/setup/getting-started/

$ istioctl install --set profile=demo -y

Verify Installation

$ istioctl verify-install

## Add a namespace label to instruct Istio to automatically inject Envoy sidecar proxies when you deploy your application later:

$ kubectl label namespace default istio-injection=enabled

$ istioctl analyze

```