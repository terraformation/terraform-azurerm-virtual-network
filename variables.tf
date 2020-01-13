variable "naming_options" {
  type        = any
  default     = {}
  description = "(Required) The naming options to generate the name of the resource group. Must be unique on your Azure subscription."
}
variable "address_space" {
  type        = list(string)
  description = "(Required) The address space that is used the virtual network. You can supply more than one address space. Changing this forces a new resource to be created."

}
variable "tags" {
  type        = map(string)
  default     = {}
  description = "(Optional) A mapping of tags to assign to the resource."
}

variable "resource_group" {
  type = object({
    name: string,
    location: string,
    tags: map(string)
  })

  description = "(Required) A mapping of tags to assign to the resource."
}
