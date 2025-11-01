## macOS setup quickstart
The project relies on `pdflatex` to build `Rapport.tex` and on the `just` task runner to use the `justfile`. On macOS you can install both with Homebrew:

```bash
# 1. Make sure Homebrew is available (https://brew.sh)

# 2. Install a minimal TeX distribution that provides pdflatex
brew install --cask basictex

# 3. Update the TeX installation and expose the binaries to your PATH
sudo /Library/TeX/texbin/tlmgr update --self
sudo /Library/TeX/texbin/tlmgr install latexmk
sudo /Library/TeX/texbin/tlmgr path add

# 4. Install the just task runner
brew install just
```

After these steps, restart your terminal (or run `exec "$SHELL"`) so the TeX binaries are picked up, then verify the setup:

```bash
pdflatex --version
just --version
```

You can now run the recipe of the justfile with ```just build```
