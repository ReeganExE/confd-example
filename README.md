# Example usage of [confd-base](https://github.com/ReeganExE/confd-base) base image


## Template

### `templates/my-app.yml.tmpl`

```yml
spring:
  apps:
    - name: {{getv "/first/name"}}
    - db: "jdbc:mysql://localhost/{{getv "/db/schema"}}?useSSL=true&requireSSL=true"
```

## Run example

```sh
docker build -t confd-example .
docker run --rm -it -e FIRST_NAME=beneficiary-app -e DB_SCHEMA=beneficiary confd-example
```


The output would look like this:

```
2018-08-26T06:33:06Z dac19b291159 confd[7]: INFO Backend set to env
2018-08-26T06:33:06Z dac19b291159 confd[7]: INFO Starting confd
2018-08-26T06:33:06Z dac19b291159 confd[7]: INFO Backend source(s) set to
2018-08-26T06:33:06Z dac19b291159 confd[7]: INFO Target config /etc/my-app.yml out of sync
2018-08-26T06:33:06Z dac19b291159 confd[7]: INFO Target config /etc/my-app.yml has been updated
---------------------------
spring:
  apps:
    - name: beneficiary-app
    - db: "jdbc:mysql://localhost/beneficiary?useSSL=true&requireSSL=true"
```

See: https://github.com/ReeganExE/confd-base
