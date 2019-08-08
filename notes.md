# Notes

## Default Checks

Change into the `docs` dir

```shell
cd docs
```

```shell
docker run --rm --read-only --user $(id -u):$(id -g) -v $PWD:/srv/data lcttd:latest example.md
```

## Own Custom Checks

This uses your own linkcheck config, located in your `docs` dir

```shell
docker run --rm --read-only --user $(id -u):$(id -g) -v $PWD:/srv/data lcttd:latest -c test.json example.md
```

## Things

- Add asciinema
