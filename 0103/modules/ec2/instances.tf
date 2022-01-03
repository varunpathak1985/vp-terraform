# module definition to launch ec2-instances

resource "aws_instance" "tf-ec2" {
  count         = "${var.ec2_count}"
  ami           = "${var.ec2_ami}"
  instance_type = "${var.ec2_type}"
  subnet_id     = "${var.subnet_id}"
 
  tags = {
    Name = "vp-web"
  }
}

