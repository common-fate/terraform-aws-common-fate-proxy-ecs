---
"@common-fate/terraform-aws-common-fate-proxy-ecs": patch
---

Fixes an issue where the mysql proxy would not report the correct server version, causing some clients to fail to connect due to using unsupported features. The proxy now correctly reports the version and charset of the target server.
