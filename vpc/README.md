# VPC

This [blueprint](../vpc.yaml) and associated Terraform module provides an example of using the [official AWS VPC module](https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest) to provision a VPC using a blueprint.

For a list of variables, see [variables.tf](./module/variables.tf)

For a full description of all available inputs for the upstream AWS module, see the [official documentation](https://github.com/terraform-aws-modules/terraform-aws-vpc).

This blueprint exposes a basic set of inputs to this module, but it can be easily extended as needed.

The blueprint outputs the VPC ID, the subnet IDs of the created public and private subnets, and the public and private route table IDs.
