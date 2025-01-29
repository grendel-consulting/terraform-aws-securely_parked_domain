resource "aws_route53_record" "parking" {
  for_each = local.records
  zone_id  = data.aws_route53_zone.existing.zone_id
  name     = each.value.on
  records  = each.value.records
  type     = each.value.type
  ttl      = local.ttl.forty_eight_hours
}
