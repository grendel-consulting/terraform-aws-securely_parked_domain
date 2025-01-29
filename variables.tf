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
}

variable "caa_email" {
  type        = string
  description = "Email address to send CAA violation reports to"
}
