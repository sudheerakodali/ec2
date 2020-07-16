// For multiple instanecs

variable "instances" {
    type = list(string)
    default = ["webapp1","webapp2","webapp3","webapp4"]
}

// For instance-type

variable "instance-type" {
  description = "please enter instance type"
  type        = string
  default     = "t2.micro"
}