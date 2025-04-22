# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to
[Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.3.2] - 2025-04-22

### Changed

- Drop the minimum required Terraform version to `1.2.0`.

### Removed

- Validation for the `priority` input variable.

## [0.3.1] - 2025-04-22

### Fixed

- Fix Terraform version in the documentation.

## [0.3.0] - 2025-04-22

### Added

- **BREAKING**: Modify the final DNS record name so that it always ends with the
  name of the DNS zone so that it matches the value used by the Cloudflare
  provider.
- **BREAKING**: Validate that the record name (`name`) does not end with the DNS
  zone name or a dot.
- Validate that the `content` input variable is not empty.
- Validate that the name of the record (`name`) is not empty.
- Validate that the `priority` input variable is greater than `0` when the
  record type is `MX`.
- Validate that the `zone_name` input variable is not empty.

### Changed

- **BREAKING**: Update minimum required Terraform version to `1.9.0`.

## [0.2.1] - 2025-04-21

### Fixed

- Attribute from the `cloudflare_zone` data source is now correctly set to
  `zone_id` instead of `id` in the `cloudflare_record` resource.

## [0.2.0] - 2025-04-21

### Added

- Type validation for the `type` input variable with the supported types being
  `A`, `AAAA`, `CNAME`, `MX`, and `TXT`.
- Validation for the `ttl` input variable to ensure it is a positive integer.
  Also, ensure it is set to one day at the maximum.

### Changed

- Minimum required Terraform version to 1.0.0.

### Removed

- Automatic quoting of `TXT` records.

### Fixed

- Changelog link for `v0.1.1`.

## [0.1.1] - 2025-04-20

### Fixed

- Wrong input variable name for `zone_name` in the README file.

## [0.1.0] - 2025-04-20

- Initial release of the module for creating Cloudflare records.

[unreleased]:
  https://github.com/visiosto/terraform-cloudflare-record/compare/v0.3.2...HEAD
[0.3.2]:
  https://github.com/visiosto/terraform-cloudflare-record/compare/v0.3.1...v0.3.2
[0.3.1]:
  https://github.com/visiosto/terraform-cloudflare-record/compare/v0.3.0...v0.3.1
[0.3.0]:
  https://github.com/visiosto/terraform-cloudflare-record/compare/v0.2.1...v0.3.0
[0.2.1]:
  https://github.com/visiosto/terraform-cloudflare-record/compare/v0.2.0...v0.2.1
[0.2.0]:
  https://github.com/visiosto/terraform-cloudflare-record/compare/v0.1.1...v0.2.0
[0.1.1]:
  https://github.com/visiosto/terraform-cloudflare-record/compare/v0.1.0...v0.1.1
[0.1.0]:
  https://github.com/visiosto/terraform-cloudflare-record/releases/tag/v0.1.0
