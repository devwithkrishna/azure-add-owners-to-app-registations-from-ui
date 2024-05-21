# azure-add-owners-to-app-registations-from-ui
add owners to azure app registrations from github workflow


# Terraform commands and How to run the code locally

1. Clone the repo and switch to the folder
2. cd azure-add-owners-to-app-registations-from-ui
3. Then run `terraform init`
4. run `terraform validate`
5. then `terraform plan`
6. then `terraform apply`


`terraform import azuread_application.sp /applications/<App id of the existing sp>`

`terraform import azuread_application.sp /applications/7e1bb0c4-9d7c-4364-b46a-b1ab5fe7bfaa`