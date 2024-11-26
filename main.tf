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

module "volume_bastion" {
  source      = "./modules/volume"
  volume_name = var.volume_bastion_name
  size        = var.volume_bastion_size
  image_id    = var.image_id
}
module "instance_master" {
  source          = "./modules/instance"
  instance_name   = var.master_instance_name
  flavor_name     = var.master_flavor_name
  key_pair_name   = var.key_pair_name
  network_id      = var.network_id
  volume_id       = module.volume_master.volume_id
  security_groups = var.security_groups
  floating_ip_pool = var.floating_ip_pool
}

module "instance_worker" {
  source          = "./modules/instance"
  instance_name   = var.worker_instance_name
  flavor_name     = var.worker_flavor_name
  key_pair_name   = var.key_pair_name
  network_id      = var.network_id
  volume_id       = module.volume_worker.volume_id
  security_groups = var.security_groups
  floating_ip_pool = var.floating_ip_pool
}

module "instance_bastion" {
  source          = "./modules/instance"
  instance_name   = var.bastion_instance_name
  flavor_name     = var.bastion_flavor_name
  key_pair_name   = var.key_pair_name
  network_id      = var.network_id
  volume_id       = module.volume_bastion.volume_id
  security_groups = var.security_groups
  floating_ip_pool = var.floating_ip_pool
}
