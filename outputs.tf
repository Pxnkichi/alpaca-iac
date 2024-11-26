output "manager_instance_id" {
  value = module.instance_manager.instance_id
}

output "worker1_instance_id" {
  value = module.instance_worker1.instance_id
}

output "worker2_instance_id" {
  value = module.instance_worker2.instance_id
}

output "manager_floating_ip" {
  value = "211.183.3.11"
}

output "worker1_floating_ip" {
  value = "211.183.3.12"
}

output "worker2_floating_ip" {
  value = "211.183.3.13"
}
