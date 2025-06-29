resource "aws_ec2_transit_gateway_vpc_attachment" "tgw_attachment" {
  subnet_ids         = slice(var.subnet_ids, 0, 2)
  transit_gateway_id = var.transit_gateway_id
  vpc_id             = var.vpc_id
}

resource "aws_route" "tgw_route" {
  for_each               = toset(var.route_table_ids)
  route_table_id         = each.value
  destination_cidr_block = var.destination_cidr
  transit_gateway_id     = var.transit_gateway_id
}
