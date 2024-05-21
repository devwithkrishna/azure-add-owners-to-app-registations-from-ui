# Data block to retrieeve azure app registation

data "azuread_application" "applcation" {
    display_name = var.service_principlal_name
}

# Get Obj ID of users to be sp owners

data "azuread_user" "user" {
  for_each = toset(var.service_principlal_owner)
  mail = each.value
}

resource "azuread_application" "sp" {
  display_name = var.service_principlal_name
  owners = [for user in data.azuread_user.user : user.object_id]
}