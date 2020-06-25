resource "null_resource" "gitlab" {
    triggers = {
        always_run = "${timestamp()}"
    }    
  depends_on = ["aws_instance.gitlab-team-5"]
  provisioner   "remote-exec" {
    connection {
        host        = "${aws_instance.gitlab-team-5.public_ip}"
        type        = "ssh"
        user        = "centos"
        private_key = "${file("~/.ssh/id_rsa")}"
    }
    inline = [
      "sudo yum install -y curl policycoreutils-python openssh-server",
      "sudo systemctl enable sshd",
      "sudo systemctl start sshd",
      "sudo yum install firewalld -y",
      "sudo systemctl enable firewalld",
      "sudo systemctl start firewalld",
      "sudo firewall-cmd --permanent --add-service=http",
      "sudo firewall-cmd --permanent --add-service=https",
      "sudo systemctl reload firewalld",
      "sudo yum install postfix -y",
      "sudo systemctl enable postfix",
      "sudo systemctl start postfix",
      "curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.rpm.sh | sudo bash",
      "sudo EXTERNAL_URL=http://gitlab.mydevop.com yum install -y gitlab-ee"
      
    ]
  }
}