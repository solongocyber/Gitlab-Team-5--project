
resource "aws_internet_gateway" "gitlab-team-5-gateway" {
  vpc_id = "${aws_vpc.gitlab-team-5.id}"
}