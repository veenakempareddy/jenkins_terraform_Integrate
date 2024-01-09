provider "aws" {
    region = "eu-north-1" # Desired region for resource creation
    access_key = 'AKIAQ6PPDBWXFK4LECZS'  #access key of the user
    secret_key = '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'  #secret key of the user
}



# Ec2 Creation
resource "aws_instance" "tefform_instance" {
    ami = "ami-0287a05f0ef0e9d9a" #ami id using this ec2 will be created
    instance_type = "t3.micro"    # instance type
    key_name = "awspemkey"        # Key_name to be used
    tags = {
        "Name" = "Terraform_ec2"  #tag for the ec2 
    }
}
