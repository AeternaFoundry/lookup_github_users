variable "users_lookup" {
  description = <<EOT
Map of users_lookup, attributes below
Required:
    - usernames
EOT

  type = map(object({
    usernames = list(string)
  }))
}

