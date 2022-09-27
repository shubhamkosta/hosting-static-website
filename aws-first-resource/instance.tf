
# output "print-key-name" {
#     value = "${aws_key_pair.terra-key.key_name}"
# }

output "SecurityGroupDetails" {
  value = aws_security_group.terra_security.id

}

resource "aws_instance" "web" {
  ami                    = var.image_id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.terra-key.key_name
  vpc_security_group_ids = ["${aws_security_group.terra_security.id}"]
  tags = {
    Name = "My-first-tf-instance"
  }
  user_data = file("${path.module}/script.sh")
  }
 

output "ip_address" {
  value= "${aws_instance.web.public_ip}"
}