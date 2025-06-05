terraform {
  required_providers {
    ns1 = {
      source  = "ns1-terraform/ns1"
      version = "1.0.7"  # Check for latest version
    }
  }
}

provider "ns1" {
  api_key = var.ns1_api_key
}

resource "ns1_zone" "example_zone" {
  zone = "example.com"

  nx_ttl = 3600

  meta = {
    "source" = "terraform"
  }
}
