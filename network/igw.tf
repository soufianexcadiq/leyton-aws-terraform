# Internet Gateway resources.
resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name        = "${var.environment}-leyton-igw"
    Environment = var.environment
  }
}
