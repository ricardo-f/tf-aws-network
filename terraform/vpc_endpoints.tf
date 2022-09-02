# resource "aws_vpc_endpoint" "ssm" {
#   vpc_id              = aws_vpc.main.id
#   service_name        = "com.amazonaws.us-east-1.ssm"
#   vpc_endpoint_type   = "Interface"
#   private_dns_enabled = true
#   security_group_ids = [
#     aws_security_group.vpce.id,
#   ]
# }

# resource "aws_vpc_endpoint_subnet_association" "ssm" {
#   vpc_endpoint_id = aws_vpc_endpoint.ssm.id
#   subnet_id       = aws_subnet.private.id

# }

# resource "aws_vpc_endpoint" "ec2messages" {
#   vpc_id              = aws_vpc.main.id
#   service_name        = "com.amazonaws.us-east-1.ec2messages"
#   vpc_endpoint_type   = "Interface"
#   private_dns_enabled = true
#   security_group_ids = [
#     aws_security_group.vpce.id,
#   ]
# }

# resource "aws_vpc_endpoint_subnet_association" "ec2messages" {
#   vpc_endpoint_id = aws_vpc_endpoint.ec2messages.id
#   subnet_id       = aws_subnet.private.id
# }

# resource "aws_vpc_endpoint" "ssmmessages" {
#   vpc_id              = aws_vpc.main.id
#   service_name        = "com.amazonaws.us-east-1.ssmmessages"
#   vpc_endpoint_type   = "Interface"
#   private_dns_enabled = true
#   security_group_ids = [
#     aws_security_group.vpce.id,
#   ]
# }

# resource "aws_vpc_endpoint_subnet_association" "ssmmessages" {
#   vpc_endpoint_id = aws_vpc_endpoint.ssmmessages.id
#   subnet_id       = aws_subnet.private.id
# }

# resource "aws_security_group" "vpce" {
#   name        = "vpc-endpoints"
#   description = "Allow HTTP and HTTPS connections to VPC endpoints"
#   vpc_id      = aws_vpc.main.id
#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["192.168.0.0/24"]
#   }
#   ingress {
#     from_port   = 443
#     to_port     = 443
#     protocol    = "tcp"
#     cidr_blocks = ["192.168.0.0/24"]
#   }
#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }