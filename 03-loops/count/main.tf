resource "null_resource" "null" {
  count = 10
}

# if i want to run the above resource 10 times the "count"will come into picture.

resource "null_resource" "fruits" {
  count = length(var.fruits)

  provisioner "local-exec" {
  command = "echo fruit name - ${var.fruits[count.index]}"
  }
}
variable "fruits" {
   default = ["apple","banana","orange"]
}