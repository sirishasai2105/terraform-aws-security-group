resource "aws_security_group" "main" {
    name = local.tags
    description = "mysql-security-group"
    vpc_id = var.vpc_id
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]

    }
    tags = {
        Name = "${local.tags}"

    }
}
# resource "aws_vpc_security_group_ingress_rule" "allow_backend_to_sg" {
#   security_group_id = aws_security_group.mysql_sg.id
#   cidr_ipv4         = aws_vpc.main.cidr_block
#   from_port         = 443
#   ip_protocol       = "tcp"
#   to_port           = 443
# }