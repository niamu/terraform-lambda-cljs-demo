#!/bin/sh

clojure scripts/build.clj
./scripts/append_exports.sh
zip -r target/main.zip target/
