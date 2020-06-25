
data "aws_ami" "centos" {
  most_recent = true
  owners      = ["679593333241"]
  filter {
    name   = "state"
    values = ["available"]
  }
  filter {
    name   = "name"
    values = ["CentOS Linux 7 x86_64 HVM EBS *"]
  }
}

resource "aws_instance" "gitlab-team-5" {
  ami           = "${data.aws_ami.centos.id}"
  instance_type = "${var.instance_type}"
  key_name  = "${aws_key_pair.gitlab-team-5.key_name}"
  subnet_id = "${aws_subnet.gitlab-public-subnet1.id}"
  vpc_security_group_ids = ["${aws_security_group.gitlab-sc.id}"]
  tags = "${var.tags}"
  provisioner   "remote-exec" {
    connection {
        host        = "${self.public_ip}"
        type        = "ssh"
        user        = "centos"
        private_key = "${file("~/.ssh/id_rsa")}"
    }

  }

}

