# Data from terraform.tfvars file

variable "tenancy_ocid" {}
#variable "region" {}
variable "compartment_ocid" {}
variable "ssh_public_key" {}

# Choose an Availability Domain
variable "AD" {
  default = "3"
}

# VCN variables
variable "vcn_cidr" {
  default = "10.0.0.0/16"
}

variable "vcn_dns_label" {
  description = "VCN DNS label"
  default     = "vcn01"
}

variable "dns_label" {
  description = "Subnet DNS Label"
  default     = "subnet"
}

# OS Image

variable "image_operating_system" {
  default = "Oracle Linux"
}
variable "image_operating_system_version" {
  default = "7.9"
}

### Compute Shape

variable "instance_shape" {
  description = "Instance Shape"
  default     = "VM.Standard.A1.Flex"
}

variable "instance_flex_shape_ocpus" {
  default = 1
}

variable "instance_flex_shape_memory" {
  default = 1
}

# Load Balancer Shape

variable "load_balancer_min_band" {
  description = "Load Balancer Max Band"
  default     = "10"
}

variable "load_balancer_max_band" {
  description = "Load Balancer Max Band"
  default     = "10"
}
