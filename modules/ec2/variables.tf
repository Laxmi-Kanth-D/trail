variable "amiid" {
  
  type = string
}

variable "subnetid" {
    type = string
  
}

variable "key" {
  type = string
}

variable "ins" {
  type = string
}
variable "user_data" {
  type = string
  default = "null"
  
}
