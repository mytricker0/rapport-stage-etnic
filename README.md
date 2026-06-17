# Rapport de stage -- ETNIC

Rapport de stage de fin d'etudes (Master en cybersecurite, ULB -- convention STAG-Y-006),
effectue au Centre de Competences Securite de l'ETNIC (operateur ICT de la
Federation Wallonie-Bruxelles) du 2 mars au 29 mai 2026.

## Contenu

- `rapport.tex` -- source LaTeX du rapport
- `rapport.cls` -- classe LaTeX maison (page de garde, marges, table des matieres)
- `rapport.pdf` -- rapport compile
- `slides.html` -- presentation reveal.js du stage

## Missions couvertes

- Veille securite -- moniteur CERT-FR (Node.js/TypeScript, Next.js, PostgreSQL)
- Sensibilisation au phishing -- infrastructure GoPhish (Docker, Cloudflare, NPM)
- Diagnostic reseau -- script PowerShell (PNDS) pour le Service Desk
- Gestion des vulnerabilites -- RapidETNIC, croisement Rapid7 InsightVM / ServiceNow CMDB

## Compiler le rapport

Necessite une distribution TeX Live avec `pdflatex` et les packages
`tcolorbox`, `pgfgantt`, `listings`, `babel`.

```bash
pdflatex -interaction=nonstopmode rapport.tex
pdflatex -interaction=nonstopmode rapport.tex   # 2e passe pour la table des matieres
```

## Voir les slides

Ouvrir `slides.html` dans un navigateur.
