%===============================================================
% rapport.cls -- minimal class for ETNIC stage report
%===============================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{rapport}[2026/06/17 Rapport de stage ETNIC]

\LoadClass[12pt,a4paper]{article}

% Storage for cover page fields
\newcommand{\@logo}{}
\newcommand{\@titre}{}
\newcommand{\@cours}{}
\newcommand{\@enseignant}{}
\newcommand{\@eleves}{}

\newcommand{\logo}[1]{\renewcommand{\@logo}{#1}}
\newcommand{\titre}[1]{\renewcommand{\@titre}{#1}}
\newcommand{\cours}[1]{\renewcommand{\@cours}{#1}}
\newcommand{\enseignant}[1]{\renewcommand{\@enseignant}{#1}}
\newcommand{\eleves}[1]{\renewcommand{\@eleves}{#1}}

% \fairemarges -- geometry is set via \usepackage{geometry} in the main file
\newcommand{\fairemarges}{}

% \fairepagedegarde -- render the cover page
\newcommand{\fairepagedegarde}{%
  \begin{titlepage}
    \centering
    \vspace*{1cm}
    % Logo (skip silently if file absent)
    \IfFileExists{\@logo}{%
      \includegraphics[width=5cm]{\@logo}\\[1.5cm]
    }{%
      \vspace{1.5cm}
    }
    {\Huge\bfseries\@titre\par}
    \vspace{1.5cm}
    {\large\textbf{Cours :} \@cours\par}
    \vspace{2cm}
    \begin{minipage}[t]{0.45\textwidth}
      \raggedright
      \@enseignant
    \end{minipage}
    \hfill
    \begin{minipage}[t]{0.45\textwidth}
      \raggedleft
      \@eleves
    \end{minipage}
    \vfill
    {\large Annee academique 2025--2026\par}
  \end{titlepage}%
  \setcounter{page}{1}%
}

% \tabledematieres -- TOC with newpage after
\newcommand{\tabledematieres}{%
  \tableofcontents
  \newpage
}
