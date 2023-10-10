data "aws_security_group" "selected" {
  name = "allow-all"
}

output "security_group_id" {
  value = data.aws_security_group.selected.id
}

data "aws_ami" "example" {

  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
