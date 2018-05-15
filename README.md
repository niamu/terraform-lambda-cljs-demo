# terraform-lambda-cljs-demo

A ClojureScript application deployment demo to AWS Lambda using just
the standard ClojureScript compiler and Terraform.

## Dependencies

- [Clojure](https://clojure.org/guides/getting_started)
- [Terraform](https://www.terraform.io/downloads.html)
- [Node](https://nodejs.org/en/download/)

## Usage

Build the application:

```BASH
./scripts/build.sh
```

Use Terraform to deploy the application:

```BASH
terraform apply
```

## TODO

- Possibly use modules to have multiple functions/lambdas per app
- Resolve append_exports.sh name collision issues
- Docker image for zero dependency deployment

## License

Copyright © 2017 Brendon Walsh

Distributed under the Eclipse Public License either version 1.0 or (at
your option) any later version.
