/**
 * Copyright 2023 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "cloud_armor_filepath" {
  description = "(Required) YAML File Path"
  type        = string
}

# variable "pre_configured_rules" {
#   description = "Map of pre-configured rules with Sensitivity levels."
#   type = map(any)
#   default = {}
# }

# variable "security_rules" {
#   description = "Map of Security rules with list of IP addresses to block or unblock."
#   type = map(any)
#   default = {}
# }

# variable "custom_rules" {
#   description = "Custome security rules"
#   type = map(any)
#   default = {}
# }

# variable "threat_intelligence_rules" {
#   description = "Map of Threat Intelligence Feed rules"
#   type = map(any)
#   default = {}
# }

# variable "pre_configured_rules" {
#   description = "Map of pre-configured rules with Sensitivity levels."
#   type = map(object({
#     action                  = string
#     priority                = number
#     description             = optional(string)
#     preview                 = optional(bool, false)
#     redirect_type           = optional(string, null)
#     redirect_target         = optional(string, null)
#     target_rule_set         = string
#     sensitivity_level       = optional(number, 4)
#     include_target_rule_ids = optional(list(string), [])
#     exclude_target_rule_ids = optional(list(string), [])
#     rate_limit_options = optional(object({
#       enforce_on_key      = optional(string)
#       enforce_on_key_name = optional(string)
#       enforce_on_key_configs = optional(list(object({
#         enforce_on_key_name = optional(string)
#         enforce_on_key_type = optional(string)
#       })))
#       exceed_action                        = optional(string)
#       rate_limit_http_request_count        = optional(number)
#       rate_limit_http_request_interval_sec = optional(number)
#       ban_duration_sec                     = optional(number)
#       ban_http_request_count               = optional(number)
#       ban_http_request_interval_sec        = optional(number)
#     }), {})

#     header_action = optional(list(object({
#       header_name  = optional(string)
#       header_value = optional(string)
#     })), [])

#     preconfigured_waf_config_exclusions = optional(map(object({
#       target_rule_set = string
#       target_rule_ids = optional(list(string), [])
#       request_header = optional(list(object({
#         operator = string
#         value    = optional(string)
#       })))
#       request_cookie = optional(list(object({
#         operator = string
#         value    = optional(string)
#       })))
#       request_uri = optional(list(object({
#         operator = string
#         value    = optional(string)
#       })))
#       request_query_param = optional(list(object({
#         operator = string
#         value    = optional(string)
#       })))
#     })), null)

#   }))

#   default = {}
# }

# variable "security_rules" {
#   description = "Map of Security rules with list of IP addresses to block or unblock."
#   type = map(object({
#     action          = string
#     priority        = number
#     description     = optional(string)
#     preview         = optional(bool, false)
#     redirect_type   = optional(string, null)
#     redirect_target = optional(string, null)
#     src_ip_ranges   = list(string)
#     rate_limit_options = optional(object({
#       enforce_on_key      = optional(string)
#       enforce_on_key_name = optional(string)
#       enforce_on_key_configs = optional(list(object({
#         enforce_on_key_name = optional(string)
#         enforce_on_key_type = optional(string)
#       })))
#       exceed_action                        = optional(string)
#       rate_limit_http_request_count        = optional(number)
#       rate_limit_http_request_interval_sec = optional(number)
#       ban_duration_sec                     = optional(number)
#       ban_http_request_count               = optional(number)
#       ban_http_request_interval_sec        = optional(number)
#       }),
#     {})
#     header_action = optional(list(object({
#       header_name  = optional(string)
#       header_value = optional(string)
#     })), [])
#   }))

#   default = {}
# }

# variable "custom_rules" {
#   description = "Custome security rules"
#   type = map(object({
#     action          = string
#     priority        = number
#     description     = optional(string)
#     preview         = optional(bool, false)
#     expression      = string
#     redirect_type   = optional(string, null)
#     redirect_target = optional(string, null)
#     rate_limit_options = optional(object({
#       enforce_on_key      = optional(string)
#       enforce_on_key_name = optional(string)
#       enforce_on_key_configs = optional(list(object({
#         enforce_on_key_name = optional(string)
#         enforce_on_key_type = optional(string)
#       })))
#       exceed_action                        = optional(string)
#       rate_limit_http_request_count        = optional(number)
#       rate_limit_http_request_interval_sec = optional(number)
#       ban_duration_sec                     = optional(number)
#       ban_http_request_count               = optional(number)
#       ban_http_request_interval_sec        = optional(number)
#       }),
#     {})
#     header_action = optional(list(object({
#       header_name  = optional(string)
#       header_value = optional(string)
#     })), [])

#     preconfigured_waf_config_exclusions = optional(map(object({
#       target_rule_set = string
#       target_rule_ids = optional(list(string), [])
#       request_header = optional(list(object({
#         operator = string
#         value    = optional(string)
#       })))
#       request_cookie = optional(list(object({
#         operator = string
#         value    = optional(string)
#       })))
#       request_uri = optional(list(object({
#         operator = string
#         value    = optional(string)
#       })))
#       request_query_param = optional(list(object({
#         operator = string
#         value    = optional(string)
#       })))
#     })), null)

#   }))
#   default = {}
# }

# variable "threat_intelligence_rules" {
#   description = "Map of Threat Intelligence Feed rules"
#   type = map(object({
#     action      = string
#     priority    = number
#     description = optional(string)
#     preview     = optional(bool, false)
#     feed        = string
#     exclude_ip  = optional(string)
#     rate_limit_options = optional(object({
#       enforce_on_key      = optional(string)
#       enforce_on_key_name = optional(string)
#       enforce_on_key_configs = optional(list(object({
#         enforce_on_key_name = optional(string)
#         enforce_on_key_type = optional(string)
#       })))
#       exceed_action                        = optional(string)
#       rate_limit_http_request_count        = optional(number)
#       rate_limit_http_request_interval_sec = optional(number)
#       ban_duration_sec                     = optional(number)
#       ban_http_request_count               = optional(number)
#       ban_http_request_interval_sec        = optional(number)
#       }),
#     {})
#     header_action = optional(list(object({
#       header_name  = optional(string)
#       header_value = optional(string)
#     })), [])
#   }))
#   default = {}
# }
