variable "config_config_rules" {
  description = <<EOT
Map of config_config_rules, attributes below
Required:
    - name
    - source (block):
        - custom_policy_details (optional, block):
            - enable_debug_log_delivery (optional)
            - policy_runtime (required)
            - policy_text (required)
        - owner (required)
        - source_detail (optional, block):
            - event_source (optional)
            - maximum_execution_frequency (optional)
            - message_type (optional)
        - source_identifier (optional)
Optional:
    - description
    - input_parameters
    - maximum_execution_frequency
    - region
    - tags
    - tags_all
    - evaluation_mode (block):
        - mode (optional)
    - scope (block):
        - compliance_resource_id (optional)
        - compliance_resource_types (optional)
        - tag_key (optional)
        - tag_value (optional)
EOT

  type = map(object({
    name                        = string
    description                 = optional(string)
    input_parameters            = optional(string)
    maximum_execution_frequency = optional(string)
    region                      = optional(string)
    tags                        = optional(map(string))
    tags_all                    = optional(map(string))
    source = object({
      custom_policy_details = optional(object({
        enable_debug_log_delivery = optional(bool)
        policy_runtime            = string
        policy_text               = string
      }))
      owner = string
      source_detail = optional(list(object({
        event_source                = optional(string)
        maximum_execution_frequency = optional(string)
        message_type                = optional(string)
      })))
      source_identifier = optional(string)
    })
    evaluation_mode = optional(list(object({
      mode = optional(string)
    })))
    scope = optional(object({
      compliance_resource_id    = optional(string)
      compliance_resource_types = optional(set(string))
      tag_key                   = optional(string)
      tag_value                 = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.config_config_rules : (
        v.source.source_detail == null || (length(v.source.source_detail) <= 25)
      )
    ])
    error_message = "Each source_detail list must contain at most 25 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.config_config_rules : (
        v.input_parameters == null || (can(jsondecode(v.input_parameters)))
      )
    ])
    error_message = "must be valid JSON"
  }
  # Note: 15 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

