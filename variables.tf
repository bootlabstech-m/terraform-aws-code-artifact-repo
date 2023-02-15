variable "region" {
  type        = string
  description = "(optional) describe your region"
}
variable "key_name" {
  type        = string
  description = "key_name for the repo"
}
variable "domain_name" {
  type        = string
  description = "domain_name for the repo"
}
variable "artifacts_repository_name" {
  type        = string
  description = "(optional) for the repo"
}
variable "role_arn" {
 type        = string
 description = "role of the account."
}