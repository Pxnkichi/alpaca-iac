module "volume_manager" {
  source      = "./modules/volume"
  volume_name = var.volume_manager_name
  size        = var.volume_manager_size
  image_id    = var.image_id
}

module "volume_worker1" {
  source      = "./modules/volume"
  volume_name = var.volume_worker1_name
  size        = var.volume_worker1_size
  image_id    = var.image_id
}

module "volume_worker2" {
  source      = "./modules/volume"
  volume_name = var.volume_worker2_name
  size        = var.volume_worker2_size
  image_id    = var.image_id
}

module "instance_manager" {
  source          = "./modules/instance"
  instance_name   = var.manager_instance_name
  flavor_name     = var.manager_flavor_name
  key_pair_name   = var.key_pair_name
  network_id      = var.network_id
  volume_id       = module.volume_manager.volume_id
  security_groups = var.security_groups
}

module "instance_worker1" {
  source          = "./modules/instance"
  instance_name   = var.worker1_instance_name
  flavor_name     = var.worker1_flavor_name
  key_pair_name   = var.key_pair_name
  network_id      = var.network_id
  volume_id       = module.volume_worker1.volume_id
  security_groups = var.security_groups
}

module "instance_worker2" {
  source          = "./modules/instance"
  instance_name   = var.worker2_instance_name
  flavor_name     = var.worker2_flavor_name
  key_pair_name   = var.key_pair_name
  network_id      = var.network_id
  volume_id       = module.volume_worker2.volume_id
  security_groups = var.security_groups
}