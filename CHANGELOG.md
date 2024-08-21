# @common-fate/terraform-aws-common-fate-proxy-ecs

## 1.4.1

### Patch Changes

- 8156834: Fixes an issue where the Postgres proxy would not return an error to the database client when it tried to connect to an database or user that does not match the grant for the session. The previous behaviour was for the connection to be accepted however the underlying connection to the target database matched the grant but not what the user was expecting. The Proxy now correctly rejects the connection attempt and states clearly that the client can only connect to the target database and user on the grant for the session.
- 8156834: Fix version number not being included in container logs.

## 1.4.0

### Minor Changes

- d713921: Improved logging.
- d713921: The Proxy service now handles SIGINT and closes active connections when being shutdown by ECS.

## 1.3.0

### Minor Changes

- 8552f75: Publish ARM64 Container images

### Patch Changes

- 8552f75: Fixes an issue where the Postgres proxy would not correctly report the server Parameter Statuses from the target server back to the client during the initial connection. This would result in some GUI clients failing to connect or interact with the database.

## 1.2.2

### Patch Changes

- 945479c: Fix documentation on ecs_cluster_id and ecs_cluster_name variables

## 1.2.1

### Patch Changes

- 495cf2c: Add id back in to variables

## 1.2.0

### Minor Changes

- f7d6db4: Use a generated ID for the proxy and related resources

## 1.1.2

### Patch Changes

- e9125c9: Fix ecs read role resource
- 29b60bd: Add cluster name variable to fix permissions issue

## 1.1.1

### Patch Changes

- 5f3302f: bump proxy version to v0.1.1

## 1.1.0

### Minor Changes

- caca35f: Bump proxy to v0.1.0

## 1.0.0

### Major Changes

- 3314350: Initial release
