resource "aws_nat_gateway" "Project-nat-gateway" {
  allocation_id = aws_eip.eip.id
  subnet_id     = element(aws_subnet.public_subnet[*].id, 0)
  depends_on    = [aws_internet_gateway.igw_vpc]
  tags = {
    Name = "Project-Fusion-Nat Gateway"
  }
}