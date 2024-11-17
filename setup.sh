#!/usr/bin/env bash
while read repo; do
  [ ! -d "${repo#*/}" ] && git submodule add -b main git@github.com:$repo.git
done < repos.txt
