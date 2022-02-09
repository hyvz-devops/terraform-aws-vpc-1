resource "aws_route53_record" "www3" {
  zone_id = "Z04189633FOGOFC8O290D"
  name    = "www3.hyavuz.com"
  type    = "A"
  ttl     = "30"
  records = ["${aws_instance.web.public_ip}"]
}


# # Create a rule and assign it to a given VPC
# module "route53-rule-ad-corp" {
#   source            = "git::https://github.com/rhythmictech/terraform-aws-route53-resolver-rule?ref=v0.0.2"
#   associated_vpcs   = ["vpc-1234567"]
#   forward_domain    = "ad.mycompany.com."
#   forward_ips       = ["192.168.100.10", "192.168.100.11"]
#   resolver_endpoint = module.route53-outbound.endpoint_id
# }

# # Create a rule without VPC assignment(and share it via RAM)
# module "route53-rule-ad-corp" {
#   source            = "git::https://github.com/rhythmictech/terraform-aws-route53-resolver-rule?ref=v0.0.2"
#   forward_domain    = "ad.mycompany.com."
#   forward_ips       = ["192.168.100.10", "192.168.100.11"]
#   resolver_endpoint = module.route53-outbound.endpoint_id
# }