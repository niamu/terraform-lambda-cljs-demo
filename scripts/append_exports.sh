#!/bin/sh

# This script greps the $TARGET_OUTPUT_DIR for exported
# functions across all namespaces and appends a top-level
# export to make the functions exposed as a NodeJS module.

# IMPORTANT: This script assumes that all exported
# functions across namespaces are uniquely named,
# so there is the possibility for collisions.

TARGET_OUTPUT_DIR="target/app"
TARGET_OUTPUT_TO="target/main.js"

EXPORTS=$(grep -ri "goog.exportSymbol" $TARGET_OUTPUT_DIR | grep -oE "goog.exportSymbol.*" | grep -oE " [aA-zZ\.]+")
EXPORTS=$(echo $EXPORTS | tr " " "\n");

echo "\n" >> target/main.js;

for EXPORT in $EXPORTS
do
    FN_NAME=$(echo $EXPORT | tr "." "\n" | tail -n 1)
    echo "exports.$FN_NAME = $EXPORT;" >> $TARGET_OUTPUT_TO;
done
