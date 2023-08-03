resource "aws_kms_key" "encryption_key" {
  description = var.key_name
    lifecycle {
    ignore_changes = [tags]
  }
}

resource "aws_codeartifact_domain" "domain" {
  domain         = var.domain_name
  encryption_key = aws_kms_key.encryption_key.arn
    lifecycle {
    ignore_changes = [tags]
  }
}

resource "aws_codeartifact_repository" "codeartifact_repo" {
  repository = var.artifacts_repository_name
  domain     = aws_codeartifact_domain.domain.domain
    lifecycle {
    ignore_changes = [tags]
  }
}