# Cloudflare DNS record Terraform module

Terraform module to create Cloudflare DNS records.

## Requirements

| Name                  | Version  |
| --------------------- | -------- |
| terraform             | >= 1.3.0 |
| cloudflare/cloudflare | >= 5.0.0 |

## Providers

| Name                  | Version  |
| --------------------- | -------- |
| cloudflare/cloudflare | >= 5.0.0 |

## Modules

No modules.

## Resources

| Name                    | Type     |
| ----------------------- | -------- |
| cloudflare_zone.current | data     |
| cloudflare_record.this  | resource |

## Inputs

| Name      | Description                                                                                               | Type     | Default | Required |
| --------- | --------------------------------------------------------------------------------------------------------- | -------- | ------- | :------: |
| content   | The content of the DNS record                                                                             | `string` | `""`    |   yes    |
| name      | The name of the DNS record to create                                                                      | `string` | `""`    |   yes    |
| priority  | The priority of the DNS record, if it is an MX record                                                     | `number` | `0`     |    no    |
| proxied   | Whether the record is proxied through Cloudflare                                                          | `bool`   | `false` |    no    |
| ttl       | The TTL of the DNS record. It must be between 1 and 86400 seconds                                         | `number` | `1`     |    no    |
| type      | The type of the DNS record to create. Currently supported types are `A`, `AAAA`, `CNAME`, `MX`, and `TXT` | `string` | `""`    |   yes    |
| zone_name | The name of the zone to create the DNS record in                                                          | `string` | `""`    |   yes    |

## Outputs

No outputs.
