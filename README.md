

External Service in kubectl works bit different. It will show External IP as <pending>
Need to use
minikube service <service_name> to assign a public IP to external service.
It will give a URL.
If you update service, you need to apply minikube service <service_name> command again.
