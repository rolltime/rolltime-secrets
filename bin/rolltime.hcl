backend "file" {
 path = "~/data"
}

listener "tcp" {
 address = "0.0.0.0:8200"
 tls_disable = 0
}

disable_mlock = true
