variable "server_name" {
  description = "Ten server"
  type        = string
}

variable "instance_type" {
  description = "Loai may (quyet dinh CPU + RAM)"
  type        = string
}

variable "disk_size" {
  description = "Dung luong o dia (GB)"
  type        = number
}

variable "public_key_path" {
  description = "Duong dan SSH public key"
  type        = string
}

variable "region" {
  description = "AWS Region"
  type        = string
}

variable "availability_zone" {
  description = "Zone"
  type        = string
}

variable "ami_id" {
  description = "AMI ID cua Ubuntu"
  type        = string
}

variable "allowed_ssh_cidr" {
  description = "Dai IP duoc phep SSH"
  type        = string
  default     = "0.0.0.0/0"
}
