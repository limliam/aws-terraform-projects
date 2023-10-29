# terraform-projects
This is a repository for a terraform project - deploying website in aws using Terraform

# Requirement and how-to:

# 1. Install Terraform https://developer.hashicorp.com/terraform/downloads?product_intent=terraform

wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform

# 2. Create Key Pair for SSH, and Add the public SSH Key to GitHub

~$ ssh-keygen -t rsa -b 2048
~/.ssh$ cd /home/<user>/.ssh
~/.ssh$ ls -a
.  ..  id_rsa  id_rsa.pub  known_hosts  known_hosts.old

# 3. Create IAM user - terraform-user, with Access Key.

~$ cd /home/<user>/Downloads
~/Downloads$ cat terraform-user_accessKeys.csv
Access key ID,Secret access key
xxxxxxxxxxxxxxxx,xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

# 4. Create a Named Profile.

~$ asw configure --profile terraform-user

~$ cd /home/<user>/.aws

~/.aws$ ls
config  credentials

~/.aws$ cat config
[default]
region = us-east-1
[profile terraform-user]
region = us-east-1

~/.aws$ cat credentials
[default]
aws_access_key_id = xxxxxxxxxxxxxxxx
aws_secret_access_key = xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
[terraform-user]
aws_access_key_id = xxxxxxxxxxxxxxxx
aws_secret_access_key = xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

# 5. Create a AWS S3 bucket to store Terraform State File.

Bucket name: <uniquename>-terraform-remote-state

# 6. Initialize terraform. main.tf

In VS Code, Terminal > New Terminal
~/Documents/terraform-projects$ terraform init

# 7. Create terraform file and apply to aws.

~/Documents/terraform-projects$ terraform plan
~/Documents/terraform-projects$ terraform apply

# 8. Clean up 

~/Documents/terraform-projects$ terraform destroy


# Previous projects to be done to assume following resource are currently active in aws.

1. rds database snapshot. arn. 

2. ssl certification. arn

3. ami image. ami id.