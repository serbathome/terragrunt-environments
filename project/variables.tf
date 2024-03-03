variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "service_plan_name" {
  type = string
}

variable "web_app_name" {
  type = string
}

variable "storage_account_name" {
  type = string
}

variable "enable_storage_account" {
  type    = bool
  default = false
}

variable "enable_webapp" {
  type    = bool
  default = false
}
