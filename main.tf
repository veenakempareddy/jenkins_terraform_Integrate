provider "aws" {
    region = "ap-south-1" # Desired region for resource creation
    access_key = "AKIAQ6PPDBWXLPCN7GBB"  #access key of the user
    secret_key = "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"  #secret key of the user
}



# Ec2 Creation
resource "aws_instance" "tefform_instance" {
    ami = "ami-0d3f444bc76de0a79" #ami id using this ec2 will be created
    instance_type = "t2.micro"    # instance type
    key_name = "awskeypair"        # Key_name to be used
    tags = {
        "Name" = "Terraform_ec2"  #tag for the ec2 
    }
}
