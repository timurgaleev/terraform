#
# MAINTAINER Vitaliy Natarov "vitaliy.natarov@yahoo.com"
#
terraform {
  required_version = "~> 1.0"
}

module "external_data" {
  source = "../../modules/data"


  external_program = ["bash", "./additional_files/ssh_key_generator.sh"]
  external_query = {
    customer_name        = "ImCustomer"
    customer_group       = "CustomerGroup"
    customer_environment = "Dev"
  }

  external_working_dir = null
}
