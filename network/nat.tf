# Elastic IP for NAT Gateway 1
resource "aws_eip" "nat" {
  domain = "vpc"

  tags = {
    Name        = "${var.environment}-leyton-nat-eip-1"
    Environment = var.environment
  }
}

# NAT Gateway in eu-west-3a
resource "aws_nat_gateway" "main" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public_1.id

  depends_on = [aws_internet_gateway.main]

  tags = {
    Name        = "${var.environment}-leyton-nat-gateway-1"
    Environment = var.environment
  }
}

# Elastic IP for NAT Gateway 2
resource "aws_eip" "nat_2" {
  domain = "vpc"

  tags = {
    Name        = "${var.environment}-leyton-nat-eip-2"
    Environment = var.environment
  }
}

# NAT Gateway in eu-west-3b
resource "aws_nat_gateway" "nat_2" {
  allocation_id = aws_eip.nat_2.id
  subnet_id     = aws_subnet.public_2.id

  depends_on = [aws_internet_gateway.main]

  tags = {
    Name        = "${var.environment}-leyton-nat-gateway-2"
    Environment = var.environment
  }
}