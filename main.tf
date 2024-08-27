variable "AWS_ACCESS_KEY_ID" {
    description = "AWS access key"
    type = string
}

variable "AWS_SECRET_ACCESS_KEY" {
    description = "AWS secret access key"
    type = string
}

provider "aws" {
    region = "us-east-1"
    access_key = var.AWS_ACCESS_KEY_ID
    secret_key = var.AWS_SECRET_ACCESS_KEY
}

resource "aws_instance" "csn" {
    ami = "ami-05134c8ef96964280"   
    instance_type = "t2.micro"
    tags = {
        Name = "YEMMY-DEMO-INSTANCE",
        CreatedBy = "Terraform"
    }
}
