# Public subnet in eu-west-3a
resource "aws_subnet" "public_1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_1_cidr
  availability_zone       = var.availability_zone_1
  map_public_ip_on_launch = true

  tags = {
    Name        = "${var.environment}-leyton-public-subnet-1"
    Environment = var.environment
    Type        = "public"
  }
}

# Public subnet in eu-west-3b
resource "aws_subnet" "public_2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_2_cidr
  availability_zone       = var.availability_zone_2
  map_public_ip_on_launch = true

  tags = {
    Name        = "${var.environment}-leyton-public-subnet-2"
    Environment = var.environment
    Type        = "public"
  }
}

# Private application subnet in eu-west-3a
resource "aws_subnet" "private_app_1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.private_app_subnet_1_cidr
  availability_zone       = var.availability_zone_1
  map_public_ip_on_launch = false

  tags = {
    Name        = "${var.environment}-leyton-private-app-subnet-1"
    Environment = var.environment
    Type        = "private-app"
  }
}

# Private application subnet in eu-west-3b
resource "aws_subnet" "private_app_2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.private_app_subnet_2_cidr
  availability_zone       = var.availability_zone_2
  map_public_ip_on_launch = false

  tags = {
    Name        = "${var.environment}-leyton-private-app-subnet-2"
    Environment = var.environment
    Type        = "private-app"
  }
}

# Private database subnet in eu-west-3a
resource "aws_subnet" "private_db_1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.private_db_subnet_1_cidr
  availability_zone       = var.availability_zone_1
  map_public_ip_on_launch = false

  tags = {
    Name        = "${var.environment}-leyton-private-db-subnet-1"
    Environment = var.environment
    Type        = "private-db"
  }
}

# Private database subnet in eu-west-3b
resource "aws_subnet" "private_db_2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.private_db_subnet_2_cidr
  availability_zone       = var.availability_zone_2
  map_public_ip_on_launch = false

  tags = {
    Name        = "${var.environment}-leyton-private-db-subnet-2"
    Environment = var.environment
    Type        = "private-db"
  }
}