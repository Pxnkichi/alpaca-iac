output "master_instance_id" {
  value = module.instance_master.instance_id
}

output "worker_instance_id" {
  value = module.instance_worker.instance_id
}

output "bastion_instance_id" {
  value = module.instance_bastion.instance_id
}

output "master_floating_ip" {
  value = "10.10.0.10"
}

output "worker_floating_ip" {
  value = "10.10.0.20"
}

output "bastion_floating_ip" {
  value = "10.10.0.30"
}
