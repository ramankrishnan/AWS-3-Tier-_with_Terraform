# Generate a random string to ensure global uniqueness
resource "random_string" "suffix" {
  length  = 8
  upper   = false
  number  = true
  special = false
}

# Create the S3 bucket with a valid name
resource "aws_s3_bucket" "data_store" {
  bucket = "weather-data-store-${random_string.suffix.result}"

  tags = {
    Name        = "Weather Data Store"
    Environment = "Dev"
  }
}

# Create a Secrets Manager secret to hold the API key
resource "aws_secretsmanager_secret" "api_key" {
  name = "weather-api-key"
}

# Store the secret value (API key)
resource "aws_secretsmanager_secret_version" "api_key_version" {
  secret_id     = aws_secretsmanager_secret.api_key.id
  secret_string = jsonencode({
    api_key = "75f784a9e6e79d8fab52ebf8ae3073f3" # Replace this with your OpenWeatherMap API key
  })
}
