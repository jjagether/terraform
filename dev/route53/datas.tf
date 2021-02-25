data "aws_route53_zone" "jjada_io" {
  name         = "jjada.io"
  private_zone = false
}

data "aws_acm_certificate" "jjada_io" {
  domain   = "*.jjada.io"
  types    = ["AMAZON_ISSUED"]
}