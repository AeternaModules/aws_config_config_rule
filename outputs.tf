output "config_config_rules_id" {
  description = "Map of id values across all config_config_rules, keyed the same as var.config_config_rules"
  value       = { for k, v in aws_config_config_rule.config_config_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "config_config_rules_arn" {
  description = "Map of arn values across all config_config_rules, keyed the same as var.config_config_rules"
  value       = { for k, v in aws_config_config_rule.config_config_rules : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "config_config_rules_description" {
  description = "Map of description values across all config_config_rules, keyed the same as var.config_config_rules"
  value       = { for k, v in aws_config_config_rule.config_config_rules : k => v.description if v.description != null && length(v.description) > 0 }
}
output "config_config_rules_evaluation_mode" {
  description = "Map of evaluation_mode values across all config_config_rules, keyed the same as var.config_config_rules"
  value       = { for k, v in aws_config_config_rule.config_config_rules : k => v.evaluation_mode if v.evaluation_mode != null && length(v.evaluation_mode) > 0 }
}
output "config_config_rules_input_parameters" {
  description = "Map of input_parameters values across all config_config_rules, keyed the same as var.config_config_rules"
  value       = { for k, v in aws_config_config_rule.config_config_rules : k => v.input_parameters if v.input_parameters != null && length(v.input_parameters) > 0 }
}
output "config_config_rules_maximum_execution_frequency" {
  description = "Map of maximum_execution_frequency values across all config_config_rules, keyed the same as var.config_config_rules"
  value       = { for k, v in aws_config_config_rule.config_config_rules : k => v.maximum_execution_frequency if v.maximum_execution_frequency != null && length(v.maximum_execution_frequency) > 0 }
}
output "config_config_rules_name" {
  description = "Map of name values across all config_config_rules, keyed the same as var.config_config_rules"
  value       = { for k, v in aws_config_config_rule.config_config_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "config_config_rules_region" {
  description = "Map of region values across all config_config_rules, keyed the same as var.config_config_rules"
  value       = { for k, v in aws_config_config_rule.config_config_rules : k => v.region if v.region != null && length(v.region) > 0 }
}
output "config_config_rules_rule_id" {
  description = "Map of rule_id values across all config_config_rules, keyed the same as var.config_config_rules"
  value       = { for k, v in aws_config_config_rule.config_config_rules : k => v.rule_id if v.rule_id != null && length(v.rule_id) > 0 }
}
output "config_config_rules_scope" {
  description = "Map of scope values across all config_config_rules, keyed the same as var.config_config_rules"
  value       = { for k, v in aws_config_config_rule.config_config_rules : k => one(v.scope) if v.scope != null && length(v.scope) > 0 }
}
output "config_config_rules_source" {
  description = "Map of source values across all config_config_rules, keyed the same as var.config_config_rules"
  value       = { for k, v in aws_config_config_rule.config_config_rules : k => one(v.source) if v.source != null && length(v.source) > 0 }
}
output "config_config_rules_tags" {
  description = "Map of tags values across all config_config_rules, keyed the same as var.config_config_rules"
  value       = { for k, v in aws_config_config_rule.config_config_rules : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "config_config_rules_tags_all" {
  description = "Map of tags_all values across all config_config_rules, keyed the same as var.config_config_rules"
  value       = { for k, v in aws_config_config_rule.config_config_rules : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

