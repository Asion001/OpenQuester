### Environment type ("local" | "prod" | "test")

The most noticeable difference in types is that in `"test"` mode you will not see the `"INFO"` and `"WARNING"` logs in console. It is done like that because logs are messed up in async tests

- `ENV`=""

### DB variables

`DB_TYPE`=""

`DB_NAME`=""

`DB_USER`=""

`DB_PASS`=""

`DB_HOST`=""

`DB_PORT`=""

### "all" or boolean or "query" | "schema" | "error" | "warn" | "info" | "log" | "migration"

More about DB logging: [Click me](https://typeorm.io/logging#logging)

`DB_LOGGER`=""

### JWT

`JWT_SCHEME`=""

`JWT_EXPIRES_IN`=""

`JWT_REFRESH_EXPIRES_IN`=""
