
# Terraform Modules Repository

This repository contains reusable Terraform modules for creating and managing AWS infrastructure. Each module is designed to be easily configurable and reusable across different projects.

## Modules

### EC2 Instance Module

This module creates an EC2 instance with configurable parameters.

#### Directory Structure

```
├── README.md
├── main.tf
├── outputs.tf
└── variables.tf
```

#### Usage


```
Name	Description	Type	Default	Required
region	The AWS region to deploy the instance in.	string	"us-east-1"	no
ami	The AMI ID for the instance.	string	""	yes
instance_type	The instance type for the instance.	string	"t2.micro"	no
key_name	The key name to use for the instance.	string	""	yes
subnet_id	The subnet ID to launch the instance in.	string	""	yes
associate_public_ip_address	Associate a public IP address with the instance.	bool	true	no
security_group_ids	List of security group IDs to assign to the instance.	list(string)	[]	yes
tags	A map of tags to assign to the instance.	map(string)	{}	no
user_data	The user data script to use for the instance.	string	""	no
```
```
