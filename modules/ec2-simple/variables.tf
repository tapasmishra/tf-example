variable "instance_name"    { type = string }
variable "instance_type"    { type = string }
variable "aws_region"       { type = string }
variable "subnet_cidr"      { type = string }
variable "ssh_allowed_ips"  { type = list(string) }