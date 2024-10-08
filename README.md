# tf-aws-infra
In this assignment, we are deploying the AWS infrastructure using the Terraform code.

**Pre-requisite**

```
To deploy the resources on AWS, you have to first install the aws cli on your system.
Then, you have to configure the profile using which you want to interact with AWS.
It will require the Access Key and Secret Key.
command to run: aws configure --profile dev
```

1) We have the file **dev.tfvars** for providing the dev environment values.

2) **demo.tfvars** can be used to define the environment variables for demo or production environemnt.

Use the below commands to run the project with the environment variable values.

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

##### Use the below commands to run the project without the environment variable values and generate with random values.
### Initialize
```bash
terraform init
```

### Plan the deployment
```bash
terraform plan
```

### Apply
```bash
terraform apply
```

### Destroy
```bash
terraform destroy
```
 


