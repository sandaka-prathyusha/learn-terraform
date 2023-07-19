variable "sample_string" {
  default = "Hello World"
}
## shell scripting equivalent sample_string="Hello World"
# To print in shell scripting we use echo , following is the syntax used in shell
# echo $sample_string

output "sample_string" {
  value = var.sample_string
}

## in above case we are just printing variable,if the variable is a combination of some strings then following is the syntax.${} is mandatory if we include the variable inside a string.

output "sample_string1" {
  value = "value of sample_string = ${var.sample_string}"
}
