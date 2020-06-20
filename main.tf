provider "aws" {
  # This is London region. Change this to your own desired region
  region = "eu-west-2"
}

resource "aws_vpc" "myVPC" {
  cidr_block = "10.0.0.0/25"
}