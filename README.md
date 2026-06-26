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

# build + serve (figures execute at build time)
cd tutorials
export PATH="$PWD/../.venv/bin:$PATH"   # so the kernel is found during execution
jupyter-book start --execute            # live dev server with hot reload
# or, static HTML into _build/html:
jupyter-book build --execute --html
```

Then open <http://localhost:3000>.

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
