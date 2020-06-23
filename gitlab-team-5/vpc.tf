resource "aws_vpc" "gitlab-team-5" {
  cidr_block = "${var.vpc_cidr}"
}
