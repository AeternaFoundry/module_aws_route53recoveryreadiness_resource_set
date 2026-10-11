output "route53recoveryreadiness_resource_sets_id" {
  description = "Map of id values across all route53recoveryreadiness_resource_sets, keyed the same as var.route53recoveryreadiness_resource_sets"
  value       = { for k, v in aws_route53recoveryreadiness_resource_set.route53recoveryreadiness_resource_sets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "route53recoveryreadiness_resource_sets_arn" {
  description = "Map of arn values across all route53recoveryreadiness_resource_sets, keyed the same as var.route53recoveryreadiness_resource_sets"
  value       = { for k, v in aws_route53recoveryreadiness_resource_set.route53recoveryreadiness_resource_sets : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "route53recoveryreadiness_resource_sets_resource_set_name" {
  description = "Map of resource_set_name values across all route53recoveryreadiness_resource_sets, keyed the same as var.route53recoveryreadiness_resource_sets"
  value       = { for k, v in aws_route53recoveryreadiness_resource_set.route53recoveryreadiness_resource_sets : k => v.resource_set_name if v.resource_set_name != null && length(v.resource_set_name) > 0 }
}
output "route53recoveryreadiness_resource_sets_resource_set_type" {
  description = "Map of resource_set_type values across all route53recoveryreadiness_resource_sets, keyed the same as var.route53recoveryreadiness_resource_sets"
  value       = { for k, v in aws_route53recoveryreadiness_resource_set.route53recoveryreadiness_resource_sets : k => v.resource_set_type if v.resource_set_type != null && length(v.resource_set_type) > 0 }
}
output "route53recoveryreadiness_resource_sets_resources" {
  description = "Map of resources values across all route53recoveryreadiness_resource_sets, keyed the same as var.route53recoveryreadiness_resource_sets"
  value       = { for k, v in aws_route53recoveryreadiness_resource_set.route53recoveryreadiness_resource_sets : k => v.resources if v.resources != null && length(v.resources) > 0 }
}
output "route53recoveryreadiness_resource_sets_tags" {
  description = "Map of tags values across all route53recoveryreadiness_resource_sets, keyed the same as var.route53recoveryreadiness_resource_sets"
  value       = { for k, v in aws_route53recoveryreadiness_resource_set.route53recoveryreadiness_resource_sets : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "route53recoveryreadiness_resource_sets_tags_all" {
  description = "Map of tags_all values across all route53recoveryreadiness_resource_sets, keyed the same as var.route53recoveryreadiness_resource_sets"
  value       = { for k, v in aws_route53recoveryreadiness_resource_set.route53recoveryreadiness_resource_sets : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

