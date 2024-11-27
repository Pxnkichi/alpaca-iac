output "master_instance_id" {
  value = module.instance_master.instance_id
}

output "worker_instance_id" {
  value = module.instance_worker.instance_id
}

output "jenkins_instance_id" {
  value = module.instance_jenkins.instance_id
}

output "harbor_instance_id" {
  value = module.instance_harbor.instance_id
}


output "master_floating_ip" {
  value = "10.10.0.10"
}

output "worker_floating_ip" {
  value = "10.10.0.20"
}

output "harbor_floating_ip" {
  value = "10.10.0.30"
}

output "jenkins_floating_ip" {
  value = "10.10.0.40"
}
