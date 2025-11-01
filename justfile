# Justfile pour la compilation du rapport LaTeX

# Recette par défaut : affiche les commandes disponibles
default:
    @just --list

# Compile le rapport PDF avec pdflatex (double passage pour la TOC)
build:
    pdflatex -interaction=nonstopmode Rapport.tex
    pdflatex -interaction=nonstopmode Rapport.tex
    @echo "Rapport.pdf généré avec succès!"