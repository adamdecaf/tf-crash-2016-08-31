variable "hosts" {
  default = "web1.example.com,web2.example.com"
}

module "a" {
  source = "./a/"
  foo = "${element(split(",", var.hosts), 0)}"
}
