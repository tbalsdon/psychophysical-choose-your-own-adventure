# Psychophysics & Decision-Making — interactive tutorials

A proof-of-concept built with **Jupyter Book 2** (MyST engine). Pages mix prose,
build-time-rendered figures, and **in-browser editable code** (via JupyterLite /
Pyodide — no install needed for the reader).

## Run it locally

```bash
# one-time setup (from the repo root, one level up)
python3 -m venv .venv
.venv/bin/python -m pip install -r tutorials/requirements.txt
.venv/bin/python -m ipykernel install --sys-prefix --name python3

# build the full static site (prose + figures + embedded editable notebooks)
cd tutorials
export PATH="$PWD/../.venv/bin:$PATH"   # so the kernel is found during execution
jupyter-book build --execute --html                       # 1. prose + figures
jupyter lite build --contents lite_files --output-dir _build/html/lite  # 2. editable notebooks
#  ^ step 2 MUST come after step 1 (the MyST build cleans _build/html)

# preview the built site (the embedded notebooks only work in this full build,
# not in `jupyter-book start`, which doesn't include the JupyterLite app):
( cd _build/html && python3 -m http.server 8000 )
```

Then open <http://localhost:8000>. For quick prose-only editing with hot reload,
`jupyter-book start` is fine — just note the embedded notebooks won't appear there.

## Interactive code

Editable, runnable code is delivered as **JupyterLite notebooks** (real Jupyter
running in the browser via Pyodide), embedded in each module via an `<iframe>`.
The notebooks live in `lite_files/` (pre-executed so figures show on load) and are
bundled into the site under `/lite/` at build time.

> **Live edits in the browser are *not* saved** — they're per-tab and reset on
> reload. That's intentional (a safe sandbox for students). To change the code
> *permanently*, edit the notebook source, below.

## Editing a module's code (permanently)

The code for each module is one notebook in `lite_files/`. To change it:

```bash
# 1. open the notebook in JupyterLab
cd tutorials
../.venv/bin/jupyter lab lite_files/sdt-noisy-continuum.ipynb
#    edit the cell, then Run All (Kernel ▸ Restart & Run All) so the stored
#    figure updates, then Save.

# 2. preview the whole site locally (re-executes notebooks, builds, serves)
./preview.sh                      # open http://localhost:8000

# 3. publish
git add lite_files/sdt-noisy-continuum.ipynb
git commit -m "Tweak the noisy-continuum demo"
git push                          # auto-builds & deploys in ~1 min
```

**Important:** the deploy pipeline does *not* re-run notebooks — it ships them
exactly as committed. So always **Run All + Save** (or run `./preview.sh`, which
re-executes them for you) before committing, otherwise the figure shown on page
load won't match the new code.

To change the surrounding **prose** instead, edit the matching file in
`modules/` (e.g. `modules/sdt-noisy-continuum.md`).

## Structure

| File | Purpose |
|------|---------|
| `myst.yml` | Site config + table of contents + `jupyter.lite: true` (in-browser code) |
| `index.md` | Landing page |
| `modules/sdt-noisy-continuum.md` | The finished POC module (SDT §1c) |
| `sitemap.md` | Hand-drawn module map (mermaid) |
| `references.bib` | Bibliography (BibTeX) |

## Notes

- Source content translated from the MATLAB `.mlx` workbooks in
  `~/Documents/MATLAB/CogMasters`.
- All MATLAB functions used (`normcdf`/`norminv`/`normpdf`, `poissrnd`, plotting)
  map to numpy/scipy/matplotlib, which run in Pyodide — so everything works
  in-browser with no backend.
