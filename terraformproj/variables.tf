variable "ecr_name" {
    description = "The name to give the ECRRR"
    type = string
}

variable "scan_on_push" {
    description = "Scan this repo on push ? True or False"
    type = string
}
variable "image_tag_mutability" {
    description = "MUTABLE or IMMUTABLE image tags?"
    type = string
}
