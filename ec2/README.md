# EC2 Instance Module

This Terraform module creates an EC2 instance.

## Usage

```hcl
module "ec2_instance" {
  source = "./ec2-instance"

  region                  = "us-east-1"
  ami                     = "ami-0c55b159cbfafe1f0"
  instance_type           = "t2.micro"
  key_name                = "my-key"
  subnet_id               = "subnet-12345678"
  security_group_ids      = ["sg-12345678"]
  associate_public_ip_address = true
  tags = {
    Name = "MyInstance"
  }
  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World!" > /var/www/html/index.html
              EOF
}

## Inputs

| Name                       | Description                                      | Type        | Default     | Required |
| -------------------------- | ------------------------------------------------ | ----------- | ----------- | -------- |
| region                     | The AWS region to deploy the instance in.        | string      | us-east-1   | no       |
| ami                        | The AMI ID for the instance.                     | string      | -           | yes      |
| instance_type              | The instance type for the instance.              | string      | t2.micro    | no       |
| key_name                   | The key name to use for the instance.            | string      | -           | yes      |
| subnet_id                  | The subnet ID to launch the instance in.         | string      | -           | yes      |
| associate_public_ip_address| Associate a public IP address with the instance. | bool        | true        | no       |
| security_group_ids         | List of security group IDs to assign to the instance. | list(string) | -           | yes      |
| tags                       | A map of tags to assign to the instance.         | map(string) | {}          | no       |
| user_data                  | The user data script to use for the instance.    | string      | ""          | no       |

## Outputs

| Name        | Description                    |
| ----------- | ------------------------------ |
| instance_id | The ID of the instance.        |
| public_ip   | The public IP address of the instance. |
| private_ip  | The private IP address of the instance. |

## Example

```hcl
module "ec2_instance" {
  source = "./ec2-instance"

  region              = "us-east-1"
  ami                 = "ami-0c55b159cbfafe1f0"
  instance_type       = "t2.micro"
  key_name            = "my-key"
  subnet_id           = "subnet-12345678"
  security_group_ids  = ["sg-12345678"]
  associate_public_ip_address = true
  tags = {
    Name = "MyInstance"
  }
  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World!" > /var/www/html/index.html
              EOF
}
