resource "aws_key_pair" "gitlab-team-5" {
  key_name   = "gitlab-team-5"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
