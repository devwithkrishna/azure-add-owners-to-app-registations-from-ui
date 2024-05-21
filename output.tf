output "application_object_id" {
  value = data.azuread_application.applcation.object_id
}

output "application_client_id" {
  value = data.azuread_application.applcation.client_id
}

# output "user_object_id" {
#   value = data.azuread_user.user.object_id
# }
output "user_object_id" {
  value = [for user in data.azuread_user.user : user.object_id]
}