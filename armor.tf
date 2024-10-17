locals {
  policy = fileexists(var.cloud_armor_filepath) ? yamldecode(file("${var.cloud_armor_filepath}")) : tomap({})
  
}

module "security_policy" {
  source   = "github.com/omkarm07/tf-cloud-armor.git?ref=main"

  project_id                           = lookup(local.policy,"project_id","")
  name                                 = lookup(local.policy,"name","baselinepolicy")
  description                          = lookup(local.policy,"description","Cloud Armor Policy")
  default_rule_action                  = lookup(local.policy,"default_rule_action", "allow")
  type                                 = lookup(local.policy,"type", "CLOUD_ARMOR")

  # Pre-configured WAF Rules

  pre_configured_rules = lookup(local.policy,"pre_configured_rules", tomap({}))
  # Action against specific IP addresses or IP adress ranges

  security_rules = lookup(local.policy,"security_rules", tomap({}))

  # Custom Rules using CEL

  custom_rules = lookup(local.policy,"custom_rules", tomap({}))
}