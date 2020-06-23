 # Creating Private subnet #


resource "aws_subnet" "gitlab-private-subnet1" {
  vpc_id     = "${aws_vpc.gitlab-team-5.id}"
  cidr_block = "${var.private1_cidr}"
  availability_zone = "${var.availability_zone1}"

  tags = {
    Name = "private-subnet1"
  }
}

resource "aws_subnet" "gitlab-private-subnet2" {
  vpc_id     = "${aws_vpc.gitlab-team-5.id}"
  cidr_block = "${var.private2_cidr}"
  availability_zone = "${var.availability_zone2}"

  tags = {
    Name = "private-subnet2"
  }
}

resource "aws_subnet" "gitlab-private-subnet3" {
  vpc_id     = "${aws_vpc.gitlab-team-5.id}"
  cidr_block = "${var.private3_cidr}"
  availability_zone = "${var.availability_zone3}"
  tags = {
    Name = "private-subnet3"
  }
}

# Creating Public subnet #


resource "aws_subnet" "gitlab-public-subnet1" {
  vpc_id     = "${aws_vpc.gitlab-team-5.id}"
  cidr_block = "${var.public1_cidr}"
  map_public_ip_on_launch = true
  availability_zone = "${var.availability_zone1}"
  tags = {
    Name = "public-subnet1"
  }
}

resource "aws_subnet" "gitlab-public-subnet2" {
  vpc_id     = "${aws_vpc.gitlab-team-5.id}"
  cidr_block = "${var.public2_cidr}"
  map_public_ip_on_launch = true
  availability_zone = "${var.availability_zone2}"
  tags = {
    Name = "public-subnet2"
  }
}

resource "aws_subnet" "gitlab-public-subnet3" {
  vpc_id     = "${aws_vpc.gitlab-team-5.id}"
  cidr_block = "${var.public3_cidr}"
  map_public_ip_on_launch = true
  availability_zone = "${var.availability_zone3}"
  tags = {
    Name = "public-subnet3"
  }
}
