resource "null_resource" "null" {}

# if i want to run the above resource 10 times the "count"will come into picture.

resource "null_resource" "null1" {
  count = 10
}