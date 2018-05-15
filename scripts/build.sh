#!/bin/sh

clj scripts/build.clj
./scripts/append_exports.sh
zip -r target/main.zip target/
