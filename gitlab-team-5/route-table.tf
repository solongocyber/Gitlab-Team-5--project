 # Creating Public -RT #    

resource "aws_route_table" "gitlab-team-5-publicrt" {
  vpc_id = "${aws_vpc.gitlab-team-5.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gitlab-team-5-gateway.id}"          
  }
}

#  Public-Route-Table-Association #

resource "aws_route_table_association" "gitlab-public-assoc-1" {
  subnet_id      = "${aws_subnet.gitlab-public-subnet1.id}"
  route_table_id = "${aws_route_table.gitlab-team-5-publicrt.id}"
  
}

resource "aws_route_table_association" "gitlab-public-assoc-2" {
  subnet_id      = "${aws_subnet.gitlab-public-subnet2.id}"
  route_table_id = "${aws_route_table.gitlab-team-5-publicrt.id}"
}

resource "aws_route_table_association" "gitlab-public-assoc-3" {
  subnet_id      = "${aws_subnet.gitlab-public-subnet3.id}"
  route_table_id = "${aws_route_table.gitlab-team-5-publicrt.id}"
}

# Creating Private -RT #    

resource "aws_route_table" "gitlab-team-5-rt" {
  vpc_id = "${aws_vpc.gitlab-team-5.id}"

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.gitlab-nat.id}"          
  }
}

# PrivaTE-Route-Table-Association #

resource "aws_route_table_association" "gitlab-private-assoc-1" {
  subnet_id      = "${aws_subnet.gitlab-private-subnet1.id}"
  route_table_id = "${aws_route_table.gitlab-team-5-rt.id}"
}
resource "aws_route_table_association" "gitlab-private-assoc-2" {
  subnet_id      = "${aws_subnet.gitlab-private-subnet2.id}"
  route_table_id = "${aws_route_table.gitlab-team-5-rt.id}"
}
resource "aws_route_table_association" "gitlab-private-assoc-3" {
  subnet_id      = "${aws_subnet.gitlab-private-subnet3.id}"
  route_table_id = "${aws_route_table.gitlab-team-5-rt.id}"
}

