---
"@common-fate/terraform-aws-common-fate-proxy-ecs": patch
---

Fixes an issue where the Postgres proxy would not correctly report the server Parameter Statuses from the target server back to the client during the initial connection. This would result in some GUI clients failing to connect or interact with the database.
