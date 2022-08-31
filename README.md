# Example Micro-service


![CI/CD status](https://github.com/pensive-lake-recruiting/example/actions/workflows/services.example.yml/badge.svg)
[API](https://pensive-lake-recruiting.github.io/example/)

## Build

To build a container image and run tests, simply run `make`.
To run in docker, run `docker-compose up`
Then open a different terminal to test it via `curl`, i.e.:

To check service is health, run:

```bash
curl localhost:8080/health
```

Example response:

```json
{"status": "OK", "version": "0.1.0_rev-f12596"}
```

## Test

To test, run `make test` which brings up the service and tests it is alive and with a valid version.
See [scripts/test.sh](./scripts/test.sh) and [scripts/version.sh](./scripts/version.sh)
