# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

provider "aws" {
  region = var.region
}

resource "aws_instance" "ubuntu" {
  ami           = "ami-0e86e20dae9224db8"
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
