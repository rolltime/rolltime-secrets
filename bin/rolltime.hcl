backend "file" {
 path = "~/data"
}

listener "tcp" {
 address = "127.0.0.1:8200"
 tls_disable = 0
}

disable_mlock = 0
