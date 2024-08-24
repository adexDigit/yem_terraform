provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "csn" {
    ami = "ami-0ae8f15ae66fe8cda"
    instance_type = "t2.micro"
    tags = {
        Name = "YEMMY-DEMO-INSTANCE",
        CreatedBy = "Terraform"
    }
}
