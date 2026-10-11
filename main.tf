resource "oci_resource_analytics_resource_analytics_instance_oac_management" "resource_analytics_resource_analytics_instance_oac_managements" {
  for_each = var.resource_analytics_resource_analytics_instance_oac_managements

  enable_oac                     = each.value.enable_oac
  resource_analytics_instance_id = each.value.resource_analytics_instance_id
  attachment_type                = each.value.attachment_type

  dynamic "attachment_details" {
    for_each = each.value.attachment_details != null ? [each.value.attachment_details] : []
    content {
      capacity_type  = attachment_details.value.capacity_type
      capacity_value = attachment_details.value.capacity_value
      idcs_domain_id = attachment_details.value.idcs_domain_id
      license_model  = attachment_details.value.license_model
      dynamic "network_details" {
        for_each = attachment_details.value.network_details != null ? [attachment_details.value.network_details] : []
        content {
          nsg_ids   = network_details.value.nsg_ids
          subnet_id = network_details.value.subnet_id
        }
      }
      nsg_ids   = attachment_details.value.nsg_ids
      subnet_id = attachment_details.value.subnet_id
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

