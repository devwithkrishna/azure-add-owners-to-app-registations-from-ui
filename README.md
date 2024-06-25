# azure-add-owners-to-app-registations-from-ui
add owners to azure app registrations from github workflow

# How code works

* This repo uses terraform to add owners to a app registration created in Azure.

# parameters used

| input name | description | type | mandatory |
|------------|------------|-----|-------------|
| app_registration_name | Azure App registration name | string | :heavy_check_mark: |
| app_registration_owner | App registration owners names | list of string | :heavy_check_mark: |

# Terraform commands and How to run the code locally

1. Clone the repo and switch to the folder
2. cd azure-add-owners-to-app-registations-from-ui
3. Then run `terraform init`
4. run `terraform validate`
5. then `terraform plan`
6. then `terraform apply`

## Conditions 

* Need a app registation existing in Azure portal
* We wont be able to add same owner multiple times
* Azure active directory user shuld have a proper mail id available
  
