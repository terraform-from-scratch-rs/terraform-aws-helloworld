terraform {
  required_version = ">= 0.15.0"
}

data "archive_file" "code_package" {
  type        = "zip"
  source_dir  = "${path.module}/helloworld/dist"
  output_path = "${path.module}/helloworld/web/helloworld.zip"
}

output "output_path" {
  value = data.archive_file.code_package.output_path
}