ui = true

storage "file" {
  path = "/vault/data"
}

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = 1
}

seal "awskms" {
  region       = "eu-west-2"
  kms_key_id   = "bc436485-5092-42b8-92a3-0aa8b93536dc"
  endpoint     = "http://local-kms:8080"

  access_key   = "dummy"
  secret_key   = "dummy"
}
