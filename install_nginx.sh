       #! /bin/bash
         # Install Nginx
        sudo dnf update -y
         sudo dnf install nginx -y
         sudo systemctl start nginx
         sudo systemctl enable nginx
         