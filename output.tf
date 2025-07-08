output "cloudpanel_instance_id" {
  value = oci_core_instance.cloudpanel_instance.id
}

output "cloudpanel_display_name" {
  value = oci_core_instance.cloudpanel_instance.display_name
}

output "cloudpanel_private_ip" {
  value = oci_core_instance.cloudpanel_instance.private_ip
}

output "cloudpanel_public_ip" {
  value = oci_core_instance.cloudpanel_instance.public_ip
}

output "cloudpanel_shape" {
  value = oci_core_instance.cloudpanel_instance.shape
}

output "cloudpanel_state" {
  value = oci_core_instance.cloudpanel_instance.state
}

output "terraform_run_date" {
  value = timestamp()
}