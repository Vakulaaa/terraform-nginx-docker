# terraform-nginx-docker-demo

A minimal Terraform project that runs an Nginx container via the Docker provider.

## Run

```bash
terraform init
terraform workspace select dev || terraform workspace new dev
terraform apply -var-file=dev.tfvars
```
