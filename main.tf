terraform {
  required_providers {
    ns1 = {
      source = "ns1-terraform/ns1"
      version = "2.6.4"
    }
  }
}

provider "ns1" {
  # Configuration options
}

provider "ns1" {
  apikey = var.ns1_api_key
}

resource "ns1_zone" "example_zone" {
  zone = "example.com"

  nx_ttl = 3600

  meta = {
    "source" = "terraform"
  }
}
