output "resource_analytics_resource_analytics_instance_oac_managements_id" {
  description = "Map of id values across all resource_analytics_resource_analytics_instance_oac_managements, keyed the same as var.resource_analytics_resource_analytics_instance_oac_managements except keys with no id are omitted"
  value       = { for k, v in oci_resource_analytics_resource_analytics_instance_oac_management.resource_analytics_resource_analytics_instance_oac_managements : k => v.id if v.id != null && length(v.id) > 0 }
}
output "resource_analytics_resource_analytics_instance_oac_managements_attachment_details" {
  description = "Map of attachment_details values across all resource_analytics_resource_analytics_instance_oac_managements, keyed the same as var.resource_analytics_resource_analytics_instance_oac_managements except keys with no attachment_details are omitted"
  value       = { for k, v in oci_resource_analytics_resource_analytics_instance_oac_management.resource_analytics_resource_analytics_instance_oac_managements : k => one(v.attachment_details) if v.attachment_details != null && length(v.attachment_details) > 0 }
}
output "resource_analytics_resource_analytics_instance_oac_managements_attachment_type" {
  description = "Map of attachment_type values across all resource_analytics_resource_analytics_instance_oac_managements, keyed the same as var.resource_analytics_resource_analytics_instance_oac_managements except keys with no attachment_type are omitted"
  value       = { for k, v in oci_resource_analytics_resource_analytics_instance_oac_management.resource_analytics_resource_analytics_instance_oac_managements : k => v.attachment_type if v.attachment_type != null && length(v.attachment_type) > 0 }
}
output "resource_analytics_resource_analytics_instance_oac_managements_enable_oac" {
  description = "Map of enable_oac values across all resource_analytics_resource_analytics_instance_oac_managements, keyed the same as var.resource_analytics_resource_analytics_instance_oac_managements except keys with no enable_oac are omitted"
  value       = { for k, v in oci_resource_analytics_resource_analytics_instance_oac_management.resource_analytics_resource_analytics_instance_oac_managements : k => v.enable_oac if v.enable_oac != null }
}
output "resource_analytics_resource_analytics_instance_oac_managements_resource_analytics_instance_id" {
  description = "Map of resource_analytics_instance_id values across all resource_analytics_resource_analytics_instance_oac_managements, keyed the same as var.resource_analytics_resource_analytics_instance_oac_managements except keys with no resource_analytics_instance_id are omitted"
  value       = { for k, v in oci_resource_analytics_resource_analytics_instance_oac_management.resource_analytics_resource_analytics_instance_oac_managements : k => v.resource_analytics_instance_id if v.resource_analytics_instance_id != null && length(v.resource_analytics_instance_id) > 0 }
}
output "resource_analytics_resource_analytics_instance_oac_managements_state" {
  description = "Map of state values across all resource_analytics_resource_analytics_instance_oac_managements, keyed the same as var.resource_analytics_resource_analytics_instance_oac_managements except keys with no state are omitted"
  value       = { for k, v in oci_resource_analytics_resource_analytics_instance_oac_management.resource_analytics_resource_analytics_instance_oac_managements : k => v.state if v.state != null && length(v.state) > 0 }
}

