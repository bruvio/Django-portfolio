output "db_host" {
  value = module.personal_portfolio.db_host
}
output "bastion_host" {
  value = module.personal_portfolio.bastion_host
}
output "api_endpoint" {
  value = module.personal_portfolio.api_endpoint
}
output "state-bucket" {
value = module.personal_portfolio.state-bucket
}

output "dynamo_db_table" {
value = module.personal_portfolio.dynamo_db_table
}

output "ecr_image_proxy" {
  value = "${data.aws_caller_identity.current.account_id}.dkr.ecr.${data.aws_region.current.name}.amazonaws.com/${local.project}-proxy:latest"
}
output "ecr_image_api" {
  value = "${data.aws_caller_identity.current.account_id}.dkr.ecr.${data.aws_region.current.name}.amazonaws.com/${local.project}:latest"
}

output "access-key-proxy-id" {
  value = module.personal_portfolio.access-key-proxy-id
}
output "access-key-proxy-secret" {
  sensitive = true
  value = module.personal_portfolio.access-key-proxy-secret
}
output "access-key-id" {
  value = module.personal_portfolio.access-key-id
}
output "access-key-secret" {
  sensitive = true
  value = module.personal_portfolio.access-key-secret
}
