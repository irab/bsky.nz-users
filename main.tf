locals {
  dids = csvdecode(file("dids.csv"))
}


resource "cloudflare_record" "dids" {
  for_each = { for key in local.dids : key.username => key }

  zone_id = var.cloudflare_zone_id
  name    = each.value.username
  value   = each.value.did
  type    = "TXT"
  ttl     = 300
  allow_overwrite = true
}
