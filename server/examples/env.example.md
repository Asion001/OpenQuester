#

```bash
## Environment type ("dev" | "prod" | "test")
ENV=

# "*" will allow all origins. To set specific origin domain use this: "localhost,some-host,another-host"
# Important for custom hosts - Do not set leading dot ".", type only domain itself.
ALLOWED_HOSTS=*

## DB variables
DB_TYPE=
DB_NAME=
DB_USER=
DB_PASS=
DB_HOST=
DB_PORT=

# Redis
REDIS_USERNAME=
REDIS_PASSWORD=
REDIS_HOST=
REDIS_PORT=
REDIS_DB_NUMBER=

# Logs
# info | debug | verbose
LOG_LEVEL=

# "all" or boolean or "query" | "schema" | "error" | "warn" | "info" | "log" | "migration"
# More about DB logging: https://typeorm.io/logging#logging
DB_LOGGER=

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
