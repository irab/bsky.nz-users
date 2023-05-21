# Add a record to the domain
resource "cloudflare_record" "test" {
  zone_id = var.cloudflare_zone_id
  name    = "test"
  value   = "did=did:plc:iqk7tmzyrrczk7rnhqds63l3"
  type    = "TXT"
  ttl     = 300
}
