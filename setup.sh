sudo apt-get update
sudo snap install docker
sudo addgroup --system docker
sudo adduser ubuntu docker
newgrp docker
sudo snap disable docker
sudo snap enable docker

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo apt install unzip
sudo unzip awscliv2.zip
sudo ./aws/install

export AWS_ACCESS_KEY_ID=AKIAYEEX5COWSW5M6JKY
export AWS_SECRET_ACCESS_KEY=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

sudo aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 558664324013.dkr.ecr.us-east-1.amazonaws.com

sudo docker run -d -p80:80 558664324013.dkr.ecr.us-east-1.amazonaws.com/ubuntu-nginx:latest