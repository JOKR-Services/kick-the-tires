module "dev" {
  source = "../modules"

  # Change 0 to 1 and open a pull request to trigger Terrateam
  null_resource_count = 1
  echo_word = var.echo_word
}
