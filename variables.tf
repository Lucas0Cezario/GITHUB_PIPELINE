variable "location" {
  description = "Variável que indica a região onde os recursos vão ser criados"
  type        = string
  default     = "Oregon"
}

variable "aws_pub_key" {
  description = "Public key para VM na AWS"
  type        = string
}