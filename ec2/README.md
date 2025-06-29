# EC2

This [blueprint](../ec2.yaml) and associated Terraform module provides an example of using the [official AWS VPC module](https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/latest) to provision an EC2 instance using a blueprint.

For a list of variables, see [variables.tf](./module/variables.tf)

For a full description of all available inputs for the upstream AWS module, see the [official documentation](https://github.com/terraform-aws-modules/terraform-aws-ec2-instance).

This blueprint exposes a basic set of inputs to this module, but it can be easily extended as needed.

The blueprint outputs the EC2 instance ID.
