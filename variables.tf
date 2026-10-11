variable "route53recoveryreadiness_resource_sets" {
  description = <<EOT
Map of route53recoveryreadiness_resource_sets, attributes below
Required:
    - resource_set_name
    - resource_set_type
    - resources (block):
        - dns_target_resource (optional, block):
            - domain_name (required)
            - hosted_zone_arn (optional)
            - record_set_id (optional)
            - record_type (optional)
            - target_resource (optional, block):
                - nlb_resource (optional, block):
                    - arn (optional)
                - r53_resource (optional, block):
                    - domain_name (optional)
                    - record_set_id (optional)
        - readiness_scopes (optional)
        - resource_arn (optional)
Optional:
    - tags
    - tags_all
EOT

  type = map(object({
    resource_set_name = string
    resource_set_type = string
    tags              = optional(map(string))
    tags_all          = optional(map(string))
    resources = list(object({
      dns_target_resource = optional(object({
        domain_name     = string
        hosted_zone_arn = optional(string)
        record_set_id   = optional(string)
        record_type     = optional(string)
        target_resource = optional(object({
          nlb_resource = optional(object({
            arn = optional(string)
          }))
          r53_resource = optional(object({
            domain_name   = optional(string)
            record_set_id = optional(string)
          }))
        }))
      }))
      readiness_scopes = optional(list(string))
      resource_arn     = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.route53recoveryreadiness_resource_sets : (
        length(v.resources) >= 1
      )
    ])
    error_message = "Each resources list must contain at least 1 items"
  }
}

