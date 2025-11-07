variable "instance_name"    { type = string }
variable "instance_type"    { type = string }
variable "key_name"         { type = string }
variable "instance_count"   { type = number }
variable "aws_region"       { type = string }
variable "subnet_cidr"      { type = string }
variable "ssh_allowed_ips"  { type = list(string) }
variable "tags"             { 
                                type = map(string)
                                default = {
                                    ManagedBy    = "wireguard-provisioner"
                                } 
                            }
variable "vpc_cidr"         {   
                                type = string  
                                default = "10.0.0.0/16"
                            }