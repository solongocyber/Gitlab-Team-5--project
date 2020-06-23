resource "aws_nat_gateway" "gitlab-nat" {
  allocation_id = "${aws_eip.gitlab-elastic-ip.id}"
  subnet_id     = "${aws_subnet.gitlab-public-subnet1.id}"
}
# EL IP

resource "aws_eip" "gitlab-elastic-ip" {
  vpc      = true
}