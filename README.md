
## Run

```sh
docker run \
    -p 25:25 \
    -p 80:80 \
    -p 443:443 \
    mailway/mailway
```

### Persist the configuration on the host

```sh
docker run \
    -p 25:25 \
    -p 80:80 \
    -p 443:443 \
    -v /etc/mailway:/etc/mailway \
    mailway/mailway
```
