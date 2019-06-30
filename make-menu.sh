#!/bin/sh

rm src/menu.adoc

ls -1 src/content | while read -r file; do
  echo "include::content/$file[]" >> src/menu.adoc;
  echo "" >> src/menu.adoc
done;
