terraform {
  required_version = ">= 0.15.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

}


module "helloworld" {
  source  = "terraform-from-scratch-rs/helloworld/aws"
  version = "0.0.1"
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_iam_role" "iam_for_lambda" {
  name = "iam_for_lambda"

  assume_role_policy = <<EOF
  {
    "Version": "2012-10-17",
    "Statement": [
      {
        "Action": "sts:AssumeRole",
        "Principal": {
          "Service": "lambda.amazonaws.com"
        },
        "Effect": "Allow",
        "Sid": ""
      }
    ]
  }
  EOF
}

resource "aws_lambda_function" "terraform-from-scratch-rs-helloworld" {
  function_name = helloworld
  role          = aws_iam_role.iam_for_lambda.arn
}