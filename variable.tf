# vpc variables

variable "vpc_cidr" {
  default = "10.0.0.0/16"
  description = "vpc cidr block"
  type = string
}

variable "public_subnet_az1_cidr" {
  default = "10.0.0.0/24"
  description = "public subnet az1 cidr block"
  type = string
}

variable "public_subnet_az2_cidr" {
  default = "10.0.1.0/24"
  description = "public subnet az2 cidr block"
  type = string
}

variable "private_app_subnet_az1_cidr" {
  default = "10.0.2.0/24"
  description = "private app subnet az1 cidr block"
  type = string
}

variable "private_app_subnet_az2_cidr" {
  default = "10.0.3.0/24"
  description = "private app subnet az2 cidr block"
  type = string
}

variable "private_data_subnet_az1_cidr" {
  default = "10.0.4.0/24"
  description = "private data subnet az1 cidr block"
  type = string
}

variable "private_data_subnet_az2_cidr" {
  default = "10.0.5.0/24"
  description = "private data subnet az2 cidr block"
  type = string
}

# security group variables

variable "ssh_location" {
  default = "0.0.0.0/0"
  description = "the ip address that can ssh into the ec2 instances"
  type = string
}

# rds variables

variable "database_snapshot_identifier" {
  default = "arn:aws:rds:us-east-1:659497191851:snapshot:snapshot-dev-rds-db"
  description = "the database snapshot arn"
  type = string
}

variable "database_instance_class" {
  default = "db.t2.micro"
  description = "the database instance type"
  type = string
}

variable "database_instance_identifier" {
  default = "dev-rds-db"
  description = "the database instance identifier"
  type = string
}

variable "multi-az-deployment" {
  default = false
  description = "create a standby db instance"
  type = bool
}

# application load balancer variables

variable "ssl_certificate_arn" {
  default = "arn:aws:acm:us-east-1:659497191851:certificate/0a085fa3-cf76-4cd3-aa17-b1ceb2f04e4f"
  description = "ssl certificate arn"
  type = string
}

# sns topic variables

variable "operator-email" {
  default = "liam.lim@gmail.com"
  description = "a valid email address"
  type = string
}

# asg variables

variable "launch_template_name" {
  default = "dev-launch-template"
  description = "name of the launch template"
  type = string
}

variable "ec2_image_id" {
  default = "" # There must be an image previously cteated
  description = "id of the ami"
  type = string
}

variable "ec2_instance_type" {
  default = "t2.micro"
  description = "the ec2 instance type"
  type = string
}

variable "ec2_keypair_name" {
  default = "myec2key"
  description = "name of the ec2 key pair"
  type = string
}

# route 53 variables

variable "domain_name" {
  default = "liam-project.click"
  description = "name of the domain"
  type = string
}


variable "record_name" {
  default = "www" 
  description = "sub domain name"
  type = string
}
