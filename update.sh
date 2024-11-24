#!/usr/bin/env bash
#git pull -X ours >/dev/null 2>&1
git fetch origin main
git merge -X ours origin/main >/dev/null 2>&1
git submodule foreach --quiet 'echo $path' | xargs -P0 -I{} sh -c 'cd {} && git pull -q origin main'
git commit -am "update submodules" && git push -f
