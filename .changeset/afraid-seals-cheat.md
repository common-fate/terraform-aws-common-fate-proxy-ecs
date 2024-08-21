---
"@common-fate/terraform-aws-common-fate-proxy-ecs": patch
---

Fixes an issue where the Postgres proxy would not return an error to the database client when it tried to connect to an database or user that does not match the grant for the session. The previous behaviour was for the connection to be accepted however the underlying connection to the target database matched the grant but not what the user was expecting. The Proxy now correctly rejects the connection attempt and states clearly that the client can only connect to the target database and user on the grant for the session.
