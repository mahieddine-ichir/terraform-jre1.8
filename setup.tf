
variable "host" {}
variable "key" {}
variable "user" {
  default = "ec2-user"
}

resource "null_resource" "java8" {

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y && sudo yum install -y java-1.8.0-openjdk.$(arch) && sudo alternatives --set java  /usr/lib/jvm/jre-1.8.0-openjdk.$(arch)/bin/java",
    ]

    connection {
      host = "${var.host}"
      type     = "ssh"
      user     = "${var.user}"
      private_key = "${var.key}"
      agent = "false"
    }
  }
}
