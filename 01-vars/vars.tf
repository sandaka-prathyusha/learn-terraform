variable "sample_string" {
  default = "Hello World"
}
## shell scripting equivalent sample_string="Hello World"

variable "sample_number" {
  default = 100
}

variable "sample_boolean" {
  default = true
}
 #booleans and numbers does not need to be quoted

## variable types
#so far we have seen is default variable type

#list variable type
variable "sample_list" {
  default = [
  100,
  "Hello",
  true,
  123
   ]
}

#we have a dictionary (or map),meaning single variable will have multiple values, each value is going to have a separate name.

variable "sample_dict" {
  default = {
    number1 = 100
    string  = "hello"
    number2 = 123
    boolean = true
  }
}

# this is the most preferred variable over the list when we declare the data
