#!/bin/bash

# terraform install
# apt update && apt install -y unzip
# wget https://releases.hashicorp.com/terraform/1.9.5/terraform_1.9.5_linux_amd64.zip
# unzip terraform_1.9.5_linux_amd64.zip
# mv terraform /usr/local/bin/
# rm -f LICENSE.txt
wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform



# yc install
curl -sSL https://storage.yandexcloud.net/yandexcloud-yc/install.sh | bash
