resource "akamai_gtm_property" "gtm_property" {
  domain                 = var.gtm_domain
  name                   = var.name
  type                   = "weighted-round-robin"
  score_aggregation_type = "worst"
  handout_limit          = 8
  handout_mode           = "normal"
  failover_delay         = 0
  failback_delay         = 0
  dynamic_ttl            = 60


  traffic_target {
    datacenter_id = var.datacenter_id_target_A
    enabled       = true
    weight        = 1
    servers = [var.domain_name_target_A]
    name = var.datacenter_name_target_A
    handout_cname = var.domain_name_target_A
  }
  traffic_target {
    datacenter_id = var.datacenter_id_target_B
    enabled       = true
    weight        = 1
    servers = [var.domain_name_target_B]
    name = var.datacenter_name_target_B
    handout_cname = var.domain_name_target_B
  }

  liveness_test {
    name                             = "Liveness Test-${var.name}"
    test_interval                    = 60
    test_object_protocol             = "HTTPS"
    test_timeout                     = 10
    disable_nonstandard_port_warning = false
    error_penalty                    = 0
    http_error3xx                    = true
    http_error4xx                    = true
    http_error5xx                    = true
    disabled                         = false
    peer_certificate_verification    = false
    recursion_requested              = false
    request_string                   = ""
    resource_type                    = ""
    response_string                  = ""
    ssl_client_certificate           = ""
    ssl_client_private_key           = ""
    # test_object                      = "/"
    test_object          = var.path_test
    test_object_password = ""
    test_object_port     = 443
    test_object_username = ""
    timeout_penalty      = 0
    http_header {
      name = "Host"
      value = var.public_domain_name
    }
  }
}