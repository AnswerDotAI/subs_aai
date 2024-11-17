#!/usr/bin/env bash
git submodule foreach --quiet 'echo $path' | xargs -P0 -I{} sh -c 'cd {} && git checkout main'

