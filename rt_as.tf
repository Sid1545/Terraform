resource "aws_route_table_association" "t" {
  route_table_id = aws_route_table.terraform.id
  for_each = toset([aws_subnet.terraform1.id, aws_subnet.terraform2.id])
  subnet_id = each.key
}
