variable "ami" {
  description = "aws image"
  type        = string
  default     = "ami-0574da719dca65348"
}

variable "tags" {
  type = map(string)
  default = {
    "terraform" = "TRUE",
    "owner"     = "Andriy"
  }
}