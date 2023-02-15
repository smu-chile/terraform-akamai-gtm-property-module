variable "name" {
  type        = string
  description = "Property name and prefix for resources"
}

variable "gtm_domain" {
  type        = string
  description = "gtm domain"
}

variable "weight_target_A" {
  type        = number
  description = "weight for target A"
  default     = "1"
}


variable "domain_name_target_A" {
  type        = string
  description = "Domain name for target A"
}

variable "datacenter_name_target_A" {
  type        = string
  description = "Datacenter Name for target A"
}

variable "datacenter_id_target_A" {
  type        = string
  description = "ID of datacenter target A"
}

variable "weight_target_B" {
  type        = number
  description = "weight for target B"
  default     = "1"
}


variable "domain_name_target_B" {
  type        = string
  description = "value"
  default     = ""
}

variable "datacenter_name_target_B" {
  type        = string
  description = "Datacenter Name for target B"
  default     = ""
}

variable "datacenter_id_target_B" {
  type        = string
  description = "ID of datacenter target B"
  default     = ""
}

variable "weight_target_C" {
  type        = number
  description = "weight for target C"
  default     = "1"
}


variable "domain_name_target_C" {
  type        = string
  description = "value"
  default     = ""
}

variable "datacenter_name_target_C" {
  type        = string
  description = "Datacenter Name for target C"
  default     = ""
}

variable "datacenter_id_target_C" {
  type        = string
  description = "ID of datacenter target C"
  default     = ""
}


variable "path_test" {
  type        = string
  description = "Path to probe liveness test"
}

variable "public_domain_name" {
  type        = string
  description = "Main Domain Name"
}

variable "certificate_verification" {
  type        = bool
  description = "cerificate verification for https"
  default     = false
}