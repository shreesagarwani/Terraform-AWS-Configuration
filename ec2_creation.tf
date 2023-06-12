# The below code is used to create EC2 instance in AWS console

provider "aws" {
  region     = "Region as per requirement from the availability"
  access_key = "Generated from AWS console in a service call IAM (IAM user)"
  secret_key = "present along with access key"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0c768662cc797cd75" # Can also use others it differs according to region
  instance_type = "t2.micro"              # other instance type can also be selected as per requirement
  tags          = { Name = "First_Ec2" }  #Name of the Ec2 is given in this way
}
