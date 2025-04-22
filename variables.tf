variable "content" {
  description = "The content of the DNS record."
  type        = string
}

variable "name" {
  description = "The name of the DNS record to create."
  type        = string

  validation {
    condition     = length(var.name) > 0
    error_message = "The name of the DNS record cannot be empty."
  }
}

variable "priority" {
  description = "The priority of the DNS record, if it is an MX record."
  type        = number
  default     = 0

  validation {
    condition     = var.type != "MX" || var.priority > 0
    error_message = "Priority must be greater than 0 for MX records."
  }
}

variable "proxied" {
  description = "Whether the DNS record should be proxied through Cloudflare."
  type        = bool
  default     = false
}

variable "ttl" {
  description = "The time to live (TTL) for the DNS record."
  type        = number
  default     = 1

  validation {
    condition     = var.ttl >= 1 && var.ttl <= 86400
    error_message = "TTL must be between 1 and 86400 seconds."
  }
}

variable "type" {
  description = "The type of the DNS record."
  type        = string

  validation {
    condition     = contains(["A", "AAAA", "CNAME", "TXT", "MX"], var.type)
    error_message = "Invalid DNS record type specified."
  }
}

variable "zone_name" {
  description = "The name of the zone to create the DNS record in."
  type        = string
}
