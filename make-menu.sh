#!/bin/sh

rm src/menu.adoc

cd src
find content -type f | sort | while read -r file; do
  echo "include::$file[]" >> menu.adoc;
  echo "" >> menu.adoc
done;
