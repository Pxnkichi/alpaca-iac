module "volume_master" {
  source      = "./modules/volume"
  volume_name = var.volume_master_name
  size        = var.volume_master_size
  image_id    = var.image_id
}

module "volume_worker" {
  source      = "./modules/volume"
  volume_name = var.volume_worker_name
  size        = var.volume_worker_size
  image_id    = var.image_id
}

module "volume_jenkins" {
  source      = "./modules/volume"
  volume_name = var.volume_jenkins_name
  size        = var.volume_jenkins_size
  image_id    = var.image_id
}

module "instance_master" {
  source           = "./modules/instance"
  instance_name    = var.master_instance_name
  flavor_name      = var.master_flavor_name
  key_pair_name    = var.key_pair_name
  network_id       = var.network_id
  volume_id        = module.volume_master.volume_id
  security_groups  = var.security_groups
  floating_ip_pool = var.floating_ip_pool
}

module "instance_worker" {
  source           = "./modules/instance"
  instance_name    = var.worker_instance_name
  flavor_name      = var.worker_flavor_name
  key_pair_name    = var.key_pair_name
  network_id       = var.network_id
  volume_id        = module.volume_worker.volume_id
  security_groups  = var.security_groups
  floating_ip_pool = var.floating_ip_pool
}

module "instance_jenkins" {
  source           = "./modules/instance"
  instance_name    = var.jenkins_instance_name
  flavor_name      = var.jenkins_flavor_name
  key_pair_name    = var.key_pair_name
  network_id       = var.network_id
  volume_id        = module.volume_jenkins.volume_id
  security_groups  = var.security_groups
  floating_ip_pool = var.floating_ip_pool
}

# Harbor 볼륨 생성
module "volume_harbor" {
  source      = "./modules/volume"
  volume_name = var.volume_harbor_name
  size        = var.volume_harbor_size
  image_id    = var.image_id
}

# Harbor 인스턴스 생성
module "instance_harbor" {
  source           = "./modules/instance"
  instance_name    = var.harbor_instance_name
  flavor_name      = var.harbor_flavor_name
  key_pair_name    = var.key_pair_name
  network_id       = var.network_id
  volume_id        = module.volume_harbor.volume_id
  security_groups  = var.security_groups
  floating_ip_pool = var.floating_ip_pool
}
