#!/usr/bin/env bash
# Re-execute the embedded notebooks, build the full site, and serve it locally.
# Usage:  ./preview.sh        (then open http://localhost:8000)
set -e
HERE="$(cd "$(dirname "$0")" && pwd)"

# find the virtualenv (./.venv or ../.venv)
if   [ -d "$HERE/.venv" ];    then VENV="$HERE/.venv"
elif [ -d "$HERE/../.venv" ]; then VENV="$HERE/../.venv"
else echo "Could not find .venv — see README.md for setup."; exit 1
fi
export PATH="$VENV/bin:$PATH"
cd "$HERE"

echo "1/3  Re-executing notebooks in lite_files/ (so stored figures are fresh)…"
for nb in lite_files/*.ipynb; do
  jupyter nbconvert --to notebook --execute --inplace \
    --ExecutePreprocessor.kernel_name=python3 "$nb"
done

echo "2/3  Building site + JupyterLite…"
jupyter-book build --execute --html
jupyter lite build --contents lite_files --output-dir _build/html/lite >/dev/null

echo "3/3  Serving at http://localhost:8000  (Ctrl+C to stop)"
cd _build/html && python3 -m http.server 8000
