#

```bash
## Environment type ("local" | "prod" | "test")
ENV=

## DB variables
DB_TYPE=
DB_NAME=
DB_USER=
DB_PASS=
DB_HOST=
DB_PORT=

# Logs
# info | debug | verbose
LOG_LEVEL=

# "all" or boolean or "query" | "schema" | "error" | "warn" | "info" | "log" | "migration"
# More about DB logging: https://typeorm.io/logging#logging
DB_LOGGER=

## JWT
JWT_SCHEME=
JWT_EXPIRES_IN=
JWT_REFRESH_EXPIRES_IN=

## Storage
# e.g. "s3"
STORAGE_TYPE=
# e.g. "minio"
STORAGE_NAME=

# S3
S3_HOST=
S3_USE_SSL=
S3_PORT=
S3_BUCKET=
S3_ACCESS_KEY=
S3_SECRET_KEY=
```
