#resource "null_resource" "null" {
#  count =10
#}

# if i want to run the above resource 10 times the "count"will come into picture.

resource "null_resource" "fruits" {

 for_each = var.fruits

  provisioner "local-exec" {
    command = "echo fruit name - ${var.fruits[each.key]}"
#    command = "echo ${length(var.fruits)}"
  }
}

 variable "fruits" {
   default = {
     apple = {
       count = 100
     }
     orange = {
       count = 200
     }
     banana = {
       count = 300
     }
  }
}

