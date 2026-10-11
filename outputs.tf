output "users_lookup_id" {
  description = "Map of id values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.github_users.users_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "users_lookup_emails" {
  description = "Map of emails values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.github_users.users_lookup : k => v.emails if v.emails != null && length(v.emails) > 0 }
}
output "users_lookup_logins" {
  description = "Map of logins values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.github_users.users_lookup : k => v.logins if v.logins != null && length(v.logins) > 0 }
}
output "users_lookup_node_ids" {
  description = "Map of node_ids values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.github_users.users_lookup : k => v.node_ids if v.node_ids != null && length(v.node_ids) > 0 }
}
output "users_lookup_unknown_logins" {
  description = "Map of unknown_logins values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.github_users.users_lookup : k => v.unknown_logins if v.unknown_logins != null && length(v.unknown_logins) > 0 }
}
output "users_lookup_usernames" {
  description = "Map of usernames values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.github_users.users_lookup : k => v.usernames if v.usernames != null && length(v.usernames) > 0 }
}

