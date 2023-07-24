resource "null_resource" "fruits" {
   for_each = var.fruits

  provisioner "local-exec" {
    command = " echo Fruit name - ${each.key} - ${each.value}"
  }
}


resource "null_resource" "fruits1" {

 for_each = var.fruits1

  provisioner "local-exec" {
    command = " echo fruit name - ${each.key} - ${each.value["count"]}"
#    command = "echo ${length(var.fruits)}"
  }
}

 variable "fruits1" {
   default = {
     apple = {
       name = "apple"
       count = 100
     }
     orange = {
       name = "orange"
       count = 200
     }
     banana = {
       name = "banana"
       count = 300
     }
  }
}

variable "fruits" {
  default = {
    apple = 100
    banana = 200
    orange = 300
  }
}

// for-each on a list

#variable "vegetables" {
#  default = [ "carrot","onion"]
#}
#
#resource "null_resource" "vegetables" {
#  for_each = toset(var.vegetables)
#
#
#  provisioner "vegetables" {
#    command = "echo VEGIES name -${each.key} "
#  }
#
#}