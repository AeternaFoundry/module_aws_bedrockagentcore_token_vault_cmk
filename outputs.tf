output "bedrockagentcore_token_vault_cmks_kms_configuration" {
  description = "Map of kms_configuration values across all bedrockagentcore_token_vault_cmks, keyed the same as var.bedrockagentcore_token_vault_cmks"
  value       = { for k, v in aws_bedrockagentcore_token_vault_cmk.bedrockagentcore_token_vault_cmks : k => v.kms_configuration if v.kms_configuration != null && length(v.kms_configuration) > 0 }
}
output "bedrockagentcore_token_vault_cmks_region" {
  description = "Map of region values across all bedrockagentcore_token_vault_cmks, keyed the same as var.bedrockagentcore_token_vault_cmks"
  value       = { for k, v in aws_bedrockagentcore_token_vault_cmk.bedrockagentcore_token_vault_cmks : k => v.region if v.region != null && length(v.region) > 0 }
}
output "bedrockagentcore_token_vault_cmks_token_vault_id" {
  description = "Map of token_vault_id values across all bedrockagentcore_token_vault_cmks, keyed the same as var.bedrockagentcore_token_vault_cmks"
  value       = { for k, v in aws_bedrockagentcore_token_vault_cmk.bedrockagentcore_token_vault_cmks : k => v.token_vault_id if v.token_vault_id != null && length(v.token_vault_id) > 0 }
}

