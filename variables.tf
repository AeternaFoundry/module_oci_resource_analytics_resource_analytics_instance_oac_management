variable "resource_analytics_resource_analytics_instance_oac_managements" {
  description = <<EOT
Map of resource_analytics_resource_analytics_instance_oac_managements, attributes below
Required:
    - enable_oac
    - resource_analytics_instance_id
Optional:
    - attachment_type
    - attachment_details (block):
        - capacity_type (optional)
        - capacity_value (optional)
        - idcs_domain_id (optional)
        - license_model (optional)
        - network_details (optional, block):
            - nsg_ids (optional)
            - subnet_id (optional)
        - nsg_ids (optional)
        - subnet_id (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    enable_oac                     = bool
    resource_analytics_instance_id = string
    attachment_type                = optional(string)
    attachment_details = optional(object({
      capacity_type  = optional(string)
      capacity_value = optional(number)
      idcs_domain_id = optional(string)
      license_model  = optional(string)
      network_details = optional(object({
        nsg_ids   = optional(set(string))
        subnet_id = optional(string)
      }))
      nsg_ids   = optional(set(string))
      subnet_id = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

