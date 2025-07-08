provider "oci" {
  tenancy_ocid  = var.tenancy_ocid
  user_ocid     = var.user_ocid
  fingerprint   = var.fingerprint
  private_key   = var.private_key  # ✅ FIXED: Use content, not file path
  region        = var.region
}

resource "oci_core_instance" "cloudpanel_instance" {
  availability_domain = var.availability_domain
  compartment_id      = var.compartment_id
  display_name        = var.instance_display_name
  shape               = var.shape

  create_vnic_details {
    subnet_id         = var.public_subnet_id
    assign_public_ip  = true
    hostname_label    = var.instance_display_name
  }

  source_details {
    source_type              = "image"
    source_id                = var.image_id
    boot_volume_size_in_gbs = var.boot_volume_size_in_gbs
    boot_volume_vpus_per_gb = var.vpus_per_gb_uhp
  }

  metadata = {
    ssh_authorized_keys = var.ssh_public_key
  }

  shape_config {
    memory_in_gbs = var.memory_in_gbs
    ocpus         = var.ocpus
  }

  availability_config {
    recovery_action = "RESTORE_INSTANCE"
  }

  agent_config {
    is_monitoring_disabled = false
  }
}
