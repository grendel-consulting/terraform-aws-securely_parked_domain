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
  description = "Email address for receiving DMARC aggregate reports; this SHOULD be a monitored mailbox or tool"
  validation {
    condition     = can(regex("^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", var.rua_email))
    error_message = "The rua_email value must be a valid email address, per RFC 5322."
  }
}

variable "caa_email" {
  type        = string
  description = "Email address for receiving CAA violation reports; this SHOULD be a monitored mailbox or tool"
  validation {
    condition     = can(regex("^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", var.caa_email))
    error_message = "The caa_email value must be a valid email address, per RFC 5322."
  }
}
