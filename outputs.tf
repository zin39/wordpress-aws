
output "wordpress_public_ip" {
  value = aws_instance.wordpress.public_ip
}

output "mysql_private_ip" {
  value = aws_instance.mysql.private_ip
}
