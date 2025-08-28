resource "null_resource" "name" {
    depends_on = [ aws_eip.bastion_eip ]
  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("C:/Users/bindu sai meka/Desktop/terraform/project2/ec2key.pem")
    host        = aws_eip.bastion_eip.public_ip
  }
  ##file provisioner 
    provisioner "file" {
        source      = "C:/Users/bindu sai meka/Desktop/terraform/project2/ec2key.pem"
        destination = "/home/ec2-user/"
    }
    ##remote-exec provisioner
    provisioner "remote-exec" {
        inline = [
            "chmod 400 /home/ec2-user/ec2key.pem",
        ]
    }
    
}

