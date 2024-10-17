locals {
  policy = yamldecode(file("${path.module}/cloud-armor.yaml"))
}

module "security_policy" {
  source   = "https://github.com/omkarm07/tf-cloud-armor.git"

  project_id                           = local.policy["project_id"]
  name                                 = local.policy["name"]
  description                          = local.policy["description"]
  default_rule_action                  = local.policy["default_rule_action"]
  type                                 = local.policy["type"]

  # Pre-configured WAF Rules

  pre_configured_rules = local.policy["pre_configured_rules"]
  # Action against specific IP addresses or IP adress ranges

  security_rules = local.policy["security_rules"]

  # Custom Rules using CEL

  custom_rules = local.policy["custom_rules"]

}
