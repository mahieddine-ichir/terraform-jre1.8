# terraform-jre1.8
Terraform for installing on Linux Centos distribution


# Usage
```
terraform init && terraform apply -var host=<node ip to install java 1.8 on> -var key=<path to ssh private key> -var user=<connection user - default to ec2-user>
```

*Notes* provider (AWS for example) should be provided with appropriate access credentials.

