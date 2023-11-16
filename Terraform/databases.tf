# Definição do S3 Bucket do AWS
resource "aws_s3_bucket" "dev4" {
  bucket = "pedropadilhaportella-dev4"
  acl = "private"
  tags = {
    Name = "pedropadilhaportella-dev4"
  }
}

# Definição do DynamoDb do AWS
resource "aws_dynamodb_table" "dynamodb-homolog" {
  provider = "aws.us-east-2"
  name           = "GameScores"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "UserId"
  range_key      = "GameTitle"

  attribute {
    name = "UserId"
    type = "S"
  }

  attribute {
    name = "GameTitle"
    type = "S"
  }
}

# Definição do S3 Bucket do AWS
resource "aws_s3_bucket" "bucket-homolog" {
  bucket = "pedropadilhaportella-homolog"
  acl = "private"
  tags = {
    Name = "pedropadilhaportella-homolog"
  }
}