resource "aws_instance" "gitlab-team-5" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name  = "${aws_key_pair.gitlab-team-5.key_name}"
  subnet_id = "${aws_subnet.gitlab-public-subnet1.id}"
  vpc_security_group_ids = ["${aws_security_group.gitlab-sc.id}"]
  tags = "${var.tags}"
}

