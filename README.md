# kubernets

# Install kind

curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.8.1/kind-linux-amd64  
chmod +x ./kind                                                      
sudo mv ./kind /usr/local/bin                                        

kind create cluster

# Install kubctl

```bash
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"`
curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
echo "$(<kubectl.sha256) kubectl" | sha256sum --check
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
425* chmod +x kubectl
426* kubectl version --client
```

# kubctk

```bash
kubectl cluster-info

kubectl apply -f k8s/pod.yaml

kubectl get pod

kubectl port-forward pod/webserver 8081:8080

kubectl delete pod webserver
```