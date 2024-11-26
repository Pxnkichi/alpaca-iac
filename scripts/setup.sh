#!/bin/bash

echo "Terraform 설치를 시작합니다."

TERRAFORM_VERSION="1.5.7"
wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -O /tmp/terraform.zip

unzip /tmp/terraform.zip -d /usr/local/bin/

if terraform --version > /dev/null 2>&1; then
  echo "Terraform 설치가 완료되었습니다."
else
  echo "Terraform 설치에 실패했습니다."
  exit 1
fi

echo "Ansible 설치를 시작합니다."

sudo yum install -y epel-release
sudo yum install -y ansible

if ansible --version > /dev/null 2>&1; then
  echo "Ansible 설치가 완료되었습니다."
else
  echo "Ansible 설치에 실패했습니다."
  exit 1
fi

chmod +x ./scripts/storage.sh
echo "./scripts/storage.sh 실행 권한이 부여되었습니다."