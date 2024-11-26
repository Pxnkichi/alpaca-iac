# 플로팅 IP 연결
resource "openstack_compute_floatingip_associate_v2" "floating_ip_master_assoc" {
  floating_ip = "10.10.0.10"
  instance_id = module.instance_master.instance_id
}

resource "openstack_compute_floatingip_associate_v2" "floating_ip_worker_assoc" {
  floating_ip = "10.10.0.20"
  instance_id = module.instance_worker.instance_id
}

resource "openstack_compute_floatingip_associate_v2" "floating_ip_bastion_assoc" {
  floating_ip = "10.10.0.30"
  instance_id = module.instance_bastion.instance_id
}

# Ansible 플레이북 실행 추가
resource "null_resource" "ansible_playbook" {
  provisioner "local-exec" {
    command = <<EOT
      # JSON 파일 경로
      INVENTORY_JSON="./scripts/hosts.json"

      # Ansible 플레이북 실행
      ansible-playbook -i $INVENTORY_JSON ./ansible/playbook.yml
    EOT
  }

  # 플로팅 IP 연결 리소스 완료 후 실행
  depends_on = [
    openstack_compute_floatingip_associate_v2.floating_ip_master_assoc,
    openstack_compute_floatingip_associate_v2.floating_ip_worker_assoc,
    openstack_compute_floatingip_associate_v2.floating_ip_bastion_assoc
  ]
}

