cat repos.txt | xargs -I+ git submodule add --force -b main git@github.com:+.git
