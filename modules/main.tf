variable "null_resource_count" {
  type    = number
  default = 0
}

variable "echo_word" {
  description = "Random word for variable testing"
  type        = string
}

resource "null_resource" "this" {
  count = var.null_resource_count

  provisioner "local-exec" {
    command = "echo 'This is a placeholder resource. No real infrastructure is provisioned. Validating ${var.echo_word}'"
  }
}
