backend "file" {
 path = "~/data"
 disable_mlock = 0
}

listener "tcp" {
 address = "127.0.0.1:8200"
 tls_disable = 0
}
