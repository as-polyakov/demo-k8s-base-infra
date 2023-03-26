variable "aws_account_id" {}
provider "aws" {
    region = var.region
    #assume_role {
    #    role_arn = "arn:aws:iam::${var.aws_account_id}:role/AssumableAdmin"
    #}
}
