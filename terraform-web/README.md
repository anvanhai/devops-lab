# Terraform Web Server (AWS)

Dung Terraform tao 1 VM Ubuntu tren AWS, kem VPC, Subnet, Internet Gateway, Route Table, Security Group (SSH 22, HTTP 80) va Public IP.

## Yeu cau
- Terraform >= 1.0
- AWS CLI da dang nhap (aws login)
- SSH key tai ~/.ssh/id_rsa.pub

## Cau truc
- main.tf: tai nguyen ha tang
- variables.tf: khai bao bien
- terraform.tfvars: gia tri cu the
- outputs.tf: thong tin dau ra

## Cac bien
- server_name: ten server
- instance_type: loai may (quyet dinh CPU, RAM)
- disk_size: dung luong o dia (GB)
- public_key_path: duong dan SSH public key
- region, availability_zone: vung AWS
- ami_id: ID cua AMI Ubuntu

## Cach chay

    eval "$(aws configure export-credentials --format env)"
    terraform init
    terraform plan
    terraform apply
    terraform output
    ssh ubuntu@<public_ip>
    terraform destroy
