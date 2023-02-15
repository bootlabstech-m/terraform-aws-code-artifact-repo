resource "aws_kms_key" "encryption_key" {
  description = var.key_name
}

resource "aws_codeartifact_domain" "domain" {
  domain         = var.domain_name
  encryption_key = aws_kms_key.encryption_key.arn
}

resource "aws_codeartifact_repository" "codeartifact_repo" {
  repository = var.artifacts_repository_name
  domain     = aws_codeartifact_domain.domain.domain
}