resource "aws_instance" "lab1" {
    ami = "ami-03238ca76a3266a07"
    instance_type = "t3.micro"
    for_each = toset(["eu-north-1a", "eu-north-1b", "eu-north-1c"])
    availability_zone = each.key
}
