# Data block to retrieve the existing Azure AD app registration
data "azuread_application" "existing_app" {
  display_name = var.app_registration_name
}

# Get Obj ID of users to be added as owners
data "azuread_user" "user" {
# Splitting the owners received as a strings seperated by commas into a list using split function
  for_each = toset(split(",", var.app_registration_owner))
  mail     = each.value
}

# Assign owners to the existing Azure AD app registration
resource "azuread_application_owner" "app_owner" {
  for_each        = data.azuread_user.user
  application_id  = data.azuread_application.existing_app.id
  owner_object_id = each.value.object_id
}