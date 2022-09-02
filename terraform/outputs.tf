output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet_public_id" {
  value = aws_subnet.public.id
}

output "subnet_private_id" {
  value = aws_subnet.private.id
}

output "route_table_public_id" {
  value = aws_route_table.public.id
}

output "route_table_private_id" {
  value = aws_route_table.private.id
}

output "nat_gateway_ngw_id" {
  value = aws_nat_gateway.ngw.id
}

output "eip_ngw_public_ip" {
  value = aws_eip.ngw.public_ip
}

output "internet_gateway_igw_id" {
  value = aws_internet_gateway.igw.id
}
