variable "name" {
  type        = string
  description = "The name of the storage account"
}

variable "location" {
  type        = string
  description = "The location of the storage account"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the storage account"
}

variable "tags_common" {
  type = map(string)
}
