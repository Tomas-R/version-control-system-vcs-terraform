terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.49.0"
    }
  }

}

provider "aws" {
  region = "eu-central-1"
}


#You can give any name to the module. What matters is the source = 
module "apache" {
  source = "./terraform-aws-apache-example"
  # vpc_id = "vpc-0778d275e5d9fa03c"
  my_ip_with_cidr = var.my_ip_with_cidr
  # public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC/mUV9tOP4x7DcUkLhLL3vPG38yZehthS31uG01JYrzuYLeOYqydZTgvBKlI0My/9BSIofiH1BbBZdOghgRMvttseB0rMFqndS5lAVD7s1fUwUo5xX4kbwCFOtVfA9mSooNMROJWCBpdVLajzu/f4HXjxzuKZIelkZCFOMNVrJwsy10nKJCtSdCp0NbBZNJGh6rsgFHN6xRJqhX7/xS2W8PrZVavIIaYeH+Wbgnfb5iW4fQlBlFTZOkJcnlddR4/biPwh5231fbTOsLDEXIwEe0O7eqmUcWqik4oYcUYSFTxBtHoZhqhmlQ/08eDUbuZXrr4LVU8NcZIRNKM8sSPlRkI0YmOyfSO9JQTIb2lGx4913LT6h0XttNe79eITL8JxuVm0c1W1tE0SilOsBqKX6028M5iVq7P5uA3+w9Kua4yNUl5JDasgE3R9MinLBVdjBgpCTKVsuIg59MsJDK924DKYovmnuk7lVkKv2XLSLoV0b7Bl+HM1aLGbPKZXnZRM= tomas@ubunt"
  instance_type = var.instance_type
  server_name   = var.server_name
}

output "public_ip" {
  value = module.apache.public_ip
}