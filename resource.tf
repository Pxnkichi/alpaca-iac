# 플로팅 IP 연결
resource "openstack_compute_floatingip_associate_v2" "floating_ip_manager_assoc" {
  floating_ip = "211.183.3.11"
  instance_id = module.instance_manager.instance_id
}

resource "openstack_compute_floatingip_associate_v2" "floating_ip_worker1_assoc" {
  floating_ip = "211.183.3.12"
  instance_id = module.instance_worker1.instance_id
}

resource "openstack_compute_floatingip_associate_v2" "floating_ip_worker2_assoc" {
  floating_ip = "211.183.3.13"
  instance_id = module.instance_worker2.instance_id
}

# Ansible 인벤토리 파일 생성
resource "local_file" "ansible_inventory" {
  content = <<EOT
[manager]
211.183.3.11 ansible_user=ubuntu ansible_ssh_private_key_file=/root/.ssh/test-inst.pem

[workers]
211.183.3.12 ansible_user=ubuntu ansible_ssh_private_key_file=/root/.ssh/test-inst.pem
211.183.3.13 ansible_user=ubuntu ansible_ssh_private_key_file=/root/.ssh/test-inst.pem
EOT

  filename = "${path.module}/tf-output/ansible_hosts"
}