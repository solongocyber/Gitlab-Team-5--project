resource "aws_security_group" "gitlab-sc" {
  name        = "gitlab-sc"
  description = "Allow TLS inbound traffic"
  vpc_id      = "${aws_vpc.gitlab-team-5.id}"

  ingress {
    description = "TLS from VPC"
    from_port   = "${var.httpd}"
    to_port     = "${var.httpd}"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "TLS from VPC"
    from_port   = "${var.httpd2}"
    to_port     = "${var.httpd2}"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "TLS from VPC"
    from_port   = "${var.ssh}"
    to_port     = "${var.ssh}"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Gitlab-Team-5-Project"
  }
}