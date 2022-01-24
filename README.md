# Terraform Module for Akamai GTM Property Module

This module creates a GTM Property for an already existing domain. The module creates a property for a weighted-balanced balance between two datacenter for a web app.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.1.2 |
| <a name="requirement_akamai"></a> [akamai](#requirement\_akamai) | 1.9.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_akamai"></a> [akamai](#provider\_akamai) | 1.9.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [akamai_gtm_property.gtm_property](https://registry.terraform.io/providers/akamai/akamai/1.9.1/docs/resources/gtm_property) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_datacenter_id_target_A"></a> [datacenter\_id\_target\_A](#input\_datacenter\_id\_target\_A) | ID of datacenter target A | `string` | n/a | yes |
| <a name="input_datacenter_id_target_B"></a> [datacenter\_id\_target\_B](#input\_datacenter\_id\_target\_B) | ID of datacenter target B | `string` | n/a | yes |
| <a name="input_datacenter_name_target_A"></a> [datacenter\_name\_target\_A](#input\_datacenter\_name\_target\_A) | Datacenter Name for target A | `string` | n/a | yes |
| <a name="input_datacenter_name_target_B"></a> [datacenter\_name\_target\_B](#input\_datacenter\_name\_target\_B) | Datacenter Name for target B | `string` | n/a | yes |
| <a name="input_domain_name_target_A"></a> [domain\_name\_target\_A](#input\_domain\_name\_target\_A) | Domain name for target A | `string` | n/a | yes |
| <a name="input_domain_name_target_B"></a> [domain\_name\_target\_B](#input\_domain\_name\_target\_B) | value | `string` | n/a | yes |
| <a name="input_gtm_domain"></a> [gtm\_domain](#input\_gtm\_domain) | gtm domain | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Property name and prefix for resources | `string` | n/a | yes |
| <a name="input_path_test"></a> [path\_test](#input\_path\_test) | Path to probe liveness test | `string` | n/a | yes |
| <a name="input_public_domain_name"></a> [public\_domain\_name](#input\_public\_domain\_name) | Main Domain Name | `string` | n/a | yes |

## Outputs

No outputs.
