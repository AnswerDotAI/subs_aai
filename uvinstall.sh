cat pips.txt | xargs -I+ sh -c 'echo "Installing +"; uv pip install -qe +'
