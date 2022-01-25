# terraform-aws-helloworld
Learn and use Terraform with AWS and Rust from scratch series.

## Features
  1. Use wasm([yew][yew]) to build a Hello World project
  2. Deploy to multiple [Terraform][terraform] providers.

## Structures
- **helloworld**

  The source code for helloworld wasm website
- **website**

  Contains multiple submodules for different providers. Most of the code in this directory are copied and modified from the repo [terraform-in-action](https://github.com/terraform-in-action/manning-code). Thanks for Scott Winkler writing the amazing book [\<Terraform in Action\>](https://www.manning.com/books/terraform-in-action).

  - awsec2
  
    Run static website by AWS EC2
  - awss3
  
    Run static website by AWS S3
  - azure
  
    Run static website by Azure lambda function. 
  
    **Note:** Free trial account cannot apply Azure successfully.


[yew]: https://github.com/yewstack/yew
[terraform]: https://www.terraform.io