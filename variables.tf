variable "auth_url" {
  description = "OpenStack Authentication URL"
  type        = string
}

variable "user_name" {
  description = "OpenStack Username"
  type        = string
}

variable "password" {
  description = "OpenStack Password"
  type        = string
  sensitive   = true
}

variable "tenant_name" {
  description = "OpenStack Tenant Name"
  type        = string
}

variable "region" {
  description = "OpenStack Region"
  type        = string
}

variable "network_id" {
  description = "Network ID"
  type        = string
}

variable "image_id" {
  description = "Image ID"
  type        = string
}

variable "key_pair_name" {
  description = "SSH Key Pair Name"
  type        = string
}

variable "security_groups" {
  description = "List of Security Groups"
  type        = list(string)
}

variable "volume_manager_name" {
  description = "Manager Volume Name"
  type        = string
}

variable "volume_manager_size" {
  description = "Manager Volume Size"
  type        = number
}

variable "volume_worker1_name" {
  description = "Worker1 Volume Name"
  type        = string
}

variable "volume_worker1_size" {
  description = "Worker1 Volume Size"
  type        = number
}

variable "volume_worker2_name" {
  description = "Worker2 Volume Name"
  type        = string
}

variable "volume_worker2_size" {
  description = "Worker2 Volume Size"
  type        = number
}

variable "manager_instance_name" {
  description = "Manager Instance Name"
  type        = string
}

variable "manager_flavor_name" {
  description = "Manager Flavor Name"
  type        = string
}

variable "worker1_instance_name" {
  description = "Worker1 Instance Name"
  type        = string
}

variable "worker1_flavor_name" {
  description = "Worker1 Flavor Name"
  type        = string
}

variable "worker2_instance_name" {
  description = "Worker2 Instance Name"
  type        = string
}

variable "worker2_flavor_name" {
  description = "Worker2 Flavor Name"
  type        = string
}