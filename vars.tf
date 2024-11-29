variable "projectName" {
  default = "snack-tech"
}

variable "dbUserName" {
  default = "sa"
}

variable "dbPassword" {
  default = "Senha12345"
}

variable "regionDefault" {
  default = "us-east-1"
}

variable "policyArn" {
  default = "arn:aws:iam::aws:policy/service-role/AmazonRDSEnhancedMonitoringRole"
}

variable "subnet01" {
   default = "subnet-0e157e4ef24d4a10c" # example: subnet-abcdef1
 }
 
 variable "subnet02" {
   default = "subnet-036d0165d35dc633e" # example: subnet-abcdef1
 }