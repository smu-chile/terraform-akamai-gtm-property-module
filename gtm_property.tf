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
    weight        = var.weight_target_A
    servers       = [var.domain_name_target_A]
    name          = var.datacenter_name_target_A
    handout_cname = var.domain_name_target_A
  }

  
  dynamic "traffic_target" {
    for_each = var.domain_name_target_B != "" ? [1] : []
    content {
      datacenter_id = var.datacenter_id_target_B
      enabled       = true
      weight        = var.weight_target_B
      servers       = [var.domain_name_target_B]
      name          = var.datacenter_name_target_B
      handout_cname = var.domain_name_target_B
    }
  }

  dynamic "traffic_target" {
    for_each = var.domain_name_target_C != "" ? [2] : []
    content {
      datacenter_id = var.datacenter_id_target_C
      enabled       = true
      weight        = var.weight_target_C
      servers       = [var.domain_name_target_C]
      name          = var.datacenter_name_target_C
      handout_cname = var.domain_name_target_C
    }
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
    peer_certificate_verification    = var.certificate_verification
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
      name  = "Host"
      value = var.public_domain_name
    }
  }
}