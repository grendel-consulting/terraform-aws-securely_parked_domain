variable "domain" {
  type        = string
  description = "Fully-qualified domain to target these changes on"

  validation {
    condition     = can(regex("^([a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,}$", var.domain))
    error_message = "The domain must be a valid fully qualified domain name."
  }
}

variable "zone_id" {
  type        = string
  description = "AWS Route53 Zone ID to target these changes on"

  validation {
    condition     = can(regex("^Z[A-Z0-9]+$", var.zone_id))
    error_message = "The zone_id must be a valid Route 53 hosted zone ID starting with 'Z'."
  }
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
