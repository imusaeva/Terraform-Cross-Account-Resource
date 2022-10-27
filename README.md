# Terraform-Cross-Account-Resource
This repository is used for creating resources across multiple AWS Accounts. 
We creating SQS
![download](https://user-images.githubusercontent.com/85028974/197710253-e69c602c-1706-4360-bc43-705aa113f854.png)

# SQS 
 - Amazon Simple Queue Service (SQS) lets you send, store, and receive messages between software components at any volume, without losing messages or requiring other services to be available.
Use cases: 
* Increase application reliability and scale
Amazon SQS provides a simple and reliable way for customers to decouple and connect components (microservices) together using queues.
* Decouple microservices and process event-driven applications
Separate frontend from backend systems, such as in a banking application. Customers immediately get a response, but the bill payments are processed in the background.
* Ensure work is completed cost-effectively and on time
Place work in a single queue where multiple workers in an autoscale group scale up and down based on workload and latency requirements.
* Maintain message ordering with deduplication
Process messages at high scale while maintaining the message order, allowing you to deduplicate messages.

# Steps:
1. Create terraform configuration  files: versions.tf , providers.tf , backend.tf
2. Run a code to create SQS in your AWS account
3. When code is succeed destroy resource in your AWS account 
4. In order to create resources in different account use "assume role" option of the "provider" block. It allows you to assume a role in another account and get access to that account:
```
provider "aws" {
    region = "us-east-1"
    assume_role {
        role_arn = "arn:aws:iam::123456789:role" # this is an axemple arn role
    }
}
```

For more information read [AssumeRole](https://developer.hashicorp.com/terraform/tutorials/aws/aws-assumerole#review-ec2-instance-configuration)

* For Naming and Tagging Standards / Common Tags I used ``` locals.tf ``` 

# Locals in Terraform
Terraform local values (or "locals") assign a name to an expression or value. 
Using locals simplifies your Terraform configuration – since you can reference the local multiple times, you reduce duplication in your code.
Read more [Terraform Configuration with Locals](https://developer.hashicorp.com/terraform/tutorials/configuration-language/locals?in=terraform%2Fconfiguration-language)
