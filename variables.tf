variable "key_name" {
  description = "EC2 Key pair name for ssh"
  type        = string
}

variable "mysql_password" {
  description = "Root password for MySQL"
  type        = string
  sensitive   = true
}

variable "mysql_user" {
  description = "Username for Wordpress DB"
  type        = string
}

variable "mysql_db" {
  description = "Database name for Wordpress"
  type        = string
}


