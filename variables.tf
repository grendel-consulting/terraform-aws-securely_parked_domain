variable "domain" {
  type        = string
  description = "Domain to target these changes on"
}

variable "zone_id" {
  type        = string
  description = "Zone ID to target these changes on"
}

variable "rua_email" {
  type        = string
  description = "Email address to send DMARC aggregate reports to"
  validation {
    condition     = can(regex("^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$", var.rua_email))
    error_message = "The rua_email value must be a valid email address."
  }
}

variable "caa_email" {
  type        = string
  description = "Email address to send CAA violation reports to"
  validation {
    condition     = can(regex("^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$", var.caa_email))
    error_message = "The caa_email value must be a valid email address."
  }
}
