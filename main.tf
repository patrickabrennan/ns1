terraform {
  required_providers {
    ns1 = {
      source = "ns1-terraform/ns1"
      version = "2.6.4"
    }
  }
}

provider "ns1" {
  apikey = var.ns1_api_key
}

resource "ns1_zone" "hashicorp-ns1-domain" {
  zone = "hashicorpns1.com"

  nx_ttl = 3600

  }

resource "ns1_record" "www" {
  zone    = ns1_zone.hashicorpns1.zone
  domain  = "www.hashicorpns1.com"
  type    = "A"
  answers = [
    {
      answer = "192.0.2.1"
    }
  ]
  ttl = 3600
}
