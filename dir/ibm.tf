# VPC with one subnet, one VSI and a floating IP
variable ibm_region {
  default = "us-south"
}
provider ibm {
  region           = "${var.ibm_region}"
  generation       = 1                         # vpc on classic
}
output local {
  value = "${file("localfile")}"
}
output child {
  value = "${file("app/app.js")}"
}
