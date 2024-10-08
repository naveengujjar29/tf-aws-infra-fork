# tf-aws-infra
In this assignment, we are deploying the AWS infrastructure using the Terraform code.

1) We have the file **dev.tfvars** for providing the dev environment values.

2) **demo.tfvars** can be used to define the environment variables for demo or production environemnt.

Use the below commands to run the project.

### Initialize
```bash
terraform init
```

### Plan the deployment
```bash
terraform plan -var-file=tfvars/dev.tfvars
```

### Apply
```bash
terraform apply -var-file=tfvars/dev.tfvars
```

### Destroy
```bash
terraform destroy -var-file=tfvars/dev.tfvars
```


