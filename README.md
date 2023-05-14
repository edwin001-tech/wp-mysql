# Deploy wordpress on k8s
I used microk8s "low-ops, minimal production” kubernetes distribution for this project

## Microk8s:
Steps to deploy the services:
1. First create the services from the manifests by running `microk8s kubectl apply -f .`.
2. Check if the resources are running by running `microk8s kubectl get all` 
3. Access wordpress installation exposed by nodeport 80 using the cluster IP from wp service


4. If you are running on any cloud based k8s service, Make sure the loadbalancer is created and accessible by exposing it to public.
5. If you want to change the secrets, replace the encoded value with your password. Cmd to encode is `echo -n 'string' | base64` and to decode `echo -n 'bXktc3RyaW5n' | base64 --decode`

Alternatively, you can use the script `deploy.sh` to deploy the resources
Steps:
1. `chmod +x script.sh`
2. run `./deploy.sh`