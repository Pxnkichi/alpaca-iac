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

variable "volume_master_name" {
  description = "Master Volume Name"
  type        = string
}

variable "volume_master_size" {
  description = "Master Volume Size"
  type        = number
}

variable "volume_worker_name" {
  description = "Worker Volume Name"
  type        = string
}

variable "volume_worker_size" {
  description = "Worker Volume Size"
  type        = number
}

variable "volume_jenkins_name" {
  description = "Jenkins Volume Name"
  type        = string
}

variable "volume_jenkins_size" {
  description = "Jenkins Volume Size"
  type        = number
}

variable "master_instance_name" {
  description = "Master Instance Name"
  type        = string
}

variable "master_flavor_name" {
  description = "Master Flavor Name"
  type        = string
}

variable "worker_instance_name" {
  description = "Worker Instance Name"
  type        = string
}

variable "worker_flavor_name" {
  description = "Worker Flavor Name"
  type        = string
}

variable "jenkins_instance_name" {
  description = "Jenkins Instance Name"
  type        = string
}

variable "jenkins_flavor_name" {
  description = "Jenkins Flavor Name"
  type        = string
}

variable "floating_ip_pool" {
  description = "The pool from which to allocate floating IPs"
  type        = string
}

# 추가: Harbor 관련 변수
variable "harbor_instance_name" {
  description = "Harbor Instance Name"
  type        = string
}

variable "harbor_flavor_name" {
  description = "Harbor Flavor Name"
  type        = string
}

variable "volume_harbor_name" {
  description = "Harbor Volume Name"
  type        = string
}

variable "volume_harbor_size" {
  description = "Harbor Volume Size (in GB)"
  type        = number
}
