# resource "null_resource" "commands_to_run" {
#   provisioner "remote-exec" {
#     connection {
#         type            = "ssh"
#         user            = "centos"
#         private_key     = "${file("~/.ssh/id_rsa")}"
#         host            = "${aws_instance.centos.public_ip}" ///use this command connect remote machine and perform the task
#     }

#     inline = [
#       "sudo yum install -y curl policycoreutils-python openssh-server"
# "sudo systemctl enable sshd"
# "sudo systemctl start sshd"
# "sudo firewall-cmd --permanent --add-service=http"
# "sudo firewall-cmd --permanent --add-service=https"
# "sudo systemctl reload firewalld"
# "curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.rpm.sh | sudo bash"
# "sudo EXTERNAL_URL="https://gitlab.example.com" yum install -y gitlab-ee"

#     ]
#   }