# Securely Parked Domains on AWS
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/grendel-consulting/terraform-aws-securely_parked_domain/badge)](https://scorecard.dev/viewer/?uri=github.com/grendel-consulting/terraform-aws-securely_parked_domain)

Creates sensible DNS entries in AWS Route53 for inactive or parked domains, based on the recommendations of the Messaging, Malware and Mobile Anti-Abuse Working Group (M3AAWG) [Parked Domains Best Common Practices](https://www.m3aawg.org/sites/default/files/m3aawg_parked_domains_bcp-2022-06.pdf).

## Usage

```hcl
module "parked_domain" {
  source = "grendel-consulting/securely_parked_domain/aws"

  domain     = "example.com"
  zone_id    = "Z1234567890ABC"
  rua_email  = "dmarc-reports@example.com"
  caa_email  = "security@example.com"
}

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.0 |

## Implementation

When provided with a target domain and AWS Route53 Zone ID, this module creates the following DNS records with a 48-hour TTL:

- SPF records for both apex and subdomains
- MX records for apex and subdomains
- DMARC record
- CAA records

It assumes that SOA records will have been created and continue to be managed by AWS.
