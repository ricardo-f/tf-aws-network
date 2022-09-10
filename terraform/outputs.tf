output "vpc_id" {
  value       = aws_vpc.main.id
  description = "Shows the VPC id"
}

output "subnet_public_id" {
  value       = aws_subnet.public.id
  description = "Shows the public subnet id"
}

output "subnet_private_id" {
  value       = aws_subnet.private.id
  description = "Shows the private subnet id"
}

output "route_table_public_id" {
  value       = aws_route_table.public.id
  description = "Shows the public RT id"
}

output "route_table_private_id" {
  value       = aws_route_table.private.id
  description = "Shows the private RT id"
}

output "nat_gateway_ngw_id" {
  value       = aws_nat_gateway.ngw.id
  description = "Shows the Nat gateway id"
}

output "eip_ngw_public_ip" {
  value       = aws_eip.ngw.public_ip
  description = "Shows the public elastic IP of Nat gateway"
}

output "internet_gateway_igw_id" {
  value       = aws_internet_gateway.igw.id
  description = "Shows the internet gateway id"
}
