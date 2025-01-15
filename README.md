# VPC_Terraform_Deployment
Creating VPC using Terraform &amp; Deploy via GitHub Actions.

clone Branch 
git clone https://github.com/Gaurav1517/VPC_Terraform_Deployment.git
cd VPC_Terraform_Deployment

Create new branch 
git checkout -b feature
Check current branch
git branch

Install aws cli in windows 
Ref: https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

Download and run the AWS CLI MSI installer for Windows (64-bit):
https://awscli.amazonaws.com/AWSCLIV2.msi

Verify
aws --version

Create IAM User in AWS console
username
Permissions: Programmatic access
Create access key
download csv file


Configure AWS CLI Credentails 
aws configure with particular user profile
aws configure --profile <profile_name>
[Acess-Key]
[Secret-Key]
[AWS-Region]
[Output-Fomat]

Verify user
aws configure list --profile <profile_name>


