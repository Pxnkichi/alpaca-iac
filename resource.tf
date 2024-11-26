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

