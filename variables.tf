variable "tenancy_ocid" {
  description = "The OCID of your tenancy"
  type        = string
}

variable "user_ocid" {
  description = "The OCID of your user account"
  type        = string
}

variable "fingerprint" {
  description = "The fingerprint of your API key"
  type        = string
}

variable "private_key" {
  description = "The contents of your private API key in PEM format"
  type        = string
  sensitive   = true
}

variable "region" {
  description = "The OCI region where resources will be created"
  type        = string
}

variable "availability_domain" {
  description = "The availability domain to launch the instance in"
  type        = string
}

variable "compartment_id" {
  description = "The compartment OCID where resources will be created"
  type        = string
}

variable "instance_display_name" {
  description = "Display name for the compute instance"
  type        = string
}

variable "shape" {
  description = "Shape of the instance (e.g., VM.Standard.A1.Flex)"
  type        = string
}

variable "image_id" {
  description = "OCID of the custom or Oracle-provided image to use"
  type        = string
}

variable "boot_volume_size_in_gbs" {
  description = "Size of the boot volume in GBs"
  type        = number
}

variable "vpus_per_gb_uhp" {
  description = "Number of volume performance units per GB for Ultra High Performance (UHP) boot volume"
  type        = number
}

variable "memory_in_gbs" {
  description = "Amount of memory in GBs for the instance"
  type        = number
}

variable "ocpus" {
  description = "Number of OCPUs for the instance"
  type        = number
}

variable "ssh_public_key" {
  description = "SSH public key to access the instance"
  type        = string
}

variable "public_subnet_id" {
  description = "OCID of the public subnet where the instance will be launched"
  type        = string
}
