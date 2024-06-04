data "aws_availability_zones" "available_zones" {
    all_availability_zones = true
     }
data "aws_vpc" "defaultvpc" {
    tags = {
      Name = "Default VPC"
    }
}
