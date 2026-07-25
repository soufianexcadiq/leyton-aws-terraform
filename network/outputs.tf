output "network_summary" {
  description = "Summary of all network resources"

  value = {
    vpc = {
      name = "${var.environment}-leyton-vpc"
      id   = aws_vpc.main.id
      cidr = aws_vpc.main.cidr_block
    }

    subnets = {
      public_1 = {
        name = "${var.environment}-leyton-public-subnet-1"
        id   = aws_subnet.public_1.id
        cidr = aws_subnet.public_1.cidr_block
        az   = aws_subnet.public_1.availability_zone
      }

      public_2 = {
        name = "${var.environment}-leyton-public-subnet-2"
        id   = aws_subnet.public_2.id
        cidr = aws_subnet.public_2.cidr_block
        az   = aws_subnet.public_2.availability_zone
      }

      private_app_1 = {
        name = "${var.environment}-leyton-private-app-subnet-1"
        id   = aws_subnet.private_app_1.id
        cidr = aws_subnet.private_app_1.cidr_block
        az   = aws_subnet.private_app_1.availability_zone
      }

      private_app_2 = {
        name = "${var.environment}-leyton-private-app-subnet-2"
        id   = aws_subnet.private_app_2.id
        cidr = aws_subnet.private_app_2.cidr_block
        az   = aws_subnet.private_app_2.availability_zone
      }

      private_db_1 = {
        name = "${var.environment}-leyton-private-db-subnet-1"
        id   = aws_subnet.private_db_1.id
        cidr = aws_subnet.private_db_1.cidr_block
        az   = aws_subnet.private_db_1.availability_zone
      }

      private_db_2 = {
        name = "${var.environment}-leyton-private-db-subnet-2"
        id   = aws_subnet.private_db_2.id
        cidr = aws_subnet.private_db_2.cidr_block
        az   = aws_subnet.private_db_2.availability_zone
      }
    }

    internet_gateway = {
      name = "${var.environment}-leyton-igw"
      id   = aws_internet_gateway.main.id
    }

    nat_gateways = {
      nat_gateway_1 = {
        name       = "${var.environment}-leyton-nat-gateway-1"
        id         = aws_nat_gateway.main.id
        elastic_ip = aws_eip.nat.public_ip
        eip_id     = aws_eip.nat.id
        az         = aws_subnet.public_1.availability_zone
      }

      nat_gateway_2 = {
        name       = "${var.environment}-leyton-nat-gateway-2"
        id         = aws_nat_gateway.nat_2.id
        elastic_ip = aws_eip.nat_2.public_ip
        eip_id     = aws_eip.nat_2.id
        az         = aws_subnet.public_2.availability_zone
      }
    }

    route_tables = {
      public = {
        name = "${var.environment}-leyton-public-rt"
        id   = aws_route_table.public.id
      }

      private_app_1 = {
        name        = "${var.environment}-leyton-private-app-rt-1"
        id          = aws_route_table.private_app.id
        nat_gateway = aws_nat_gateway.main.id
      }

      private_app_2 = {
        name        = "${var.environment}-leyton-private-app-rt-2"
        id          = aws_route_table.private_app_2.id
        nat_gateway = aws_nat_gateway.nat_2.id
      }

      private_db = {
        name = "${var.environment}-leyton-private-db-rt"
        id   = aws_route_table.private_db.id
      }
    }
  }
}