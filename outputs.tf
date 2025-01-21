output "PublicIp" {
  value = "${aws_instance.firstinstance.public_ip}"
}

output "PrivateIp" {
  value = "${aws_instance.firstinstance.private_ip}"
}