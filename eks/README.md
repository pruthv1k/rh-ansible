# EKS

This [blueprint](../eks.yaml) and associated Terraform module provides an example of using the [official AWS EKS module](https://registry.terraform.io/modules/terraform-aws-modules/eks/aws/latest) to provision EKS using a blueprint.

For a list of variables, see [variables.tf](./module/variables.tf)

For a full description of all available inputs for the upstream AWS module, see the [official documentation](https://github.com/terraform-aws-modules/terraform-aws-eks).

This blueprint exposes a basic set of inputs to this module, but it can be easily extended as needed.

The blueprint outputs the API endpoint of the EKS cluster.
