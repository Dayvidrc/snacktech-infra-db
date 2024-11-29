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
   default = "<colocar subnetid 1 aqui>" # example: subnet-abcdef1
 }
 
 variable "subnet02" {
   default = "colocar subnetid 2 aqui" # example: subnet-abcdef1
 }