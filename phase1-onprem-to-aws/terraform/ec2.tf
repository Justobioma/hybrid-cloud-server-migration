resource "aws_instance" "web" {
  ami           = "ami-0bc691261a82b32bc" # Ubuntu 18.04
  instance_type = var.instance_type_web
  subnet_id     = aws_subnet.public.id
  tags = {
    Name = "legacy-web-01"
  }
}

resource "aws_instance" "db" {
  ami           = "ami-09b024e886d7bbe74" # Amazon Linux 
  instance_type = var.instance_type_db
  subnet_id     = aws_subnet.public.id
  tags = {
    Name = "legacy-db-01"
  }
}

resource "aws_instance" "app" {
  ami           = "ami-046f288e218c529b1" # Windows Server 2016
  instance_type = var.instance_type_app
  subnet_id     = aws_subnet.public.id
  tags = {
    Name = "legacy-app-01"
  }
}