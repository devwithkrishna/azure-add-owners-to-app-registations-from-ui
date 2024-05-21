variable "service_principlal_name" {
    type        = string
    description = "Azure AD App registration name"
    default = "owner"
}

variable "service_principlal_owner" {
    type = list(string)
    description = "Azure AD App registration owners"
    default = [ "john.doe@devwithkrishna.in" ]
    # default = [ "282a5a72-4991-4e31-88bc-76afb793a049" ]
}

# variable "owner_email" {
#   default = "kavyarajan09@gmail.com"
#   description = "mail id of service principal owner"
# }