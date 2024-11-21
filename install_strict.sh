cat pips.txt | xargs -I+ pip install -qe +  --config-settings editable_mode=strict
