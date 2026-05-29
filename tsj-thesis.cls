% ex: ts=2 sw=2 sts=2 et filetype=tex
% SPDX-License-Identifier: CC-BY-SA-4.0

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tsj-thesis}[2025/04/23 v1 TSJ Thesis format]

\DeclareOption{openright}{\PassOptionsToClass{openright}{report} }
\DeclareOption{openany}{\PassOptionsToClass{openany}{report} }
\DeclareOption{twoside}{\PassOptionsToClass{twoside}{report} }
\DeclareOption{oneside}{\PassOptionsToClass{oneside}{report} }
\DeclareOption{fleqn}{\PassOptionsToClass{fleqn}{report} }
\DeclareOption{leqno}{\PassOptionsToClass{leqno}{report} }
\DeclareOption{openbib}{\PassOptionsToClass{openbib}{report} }

\PassOptionsToPackage{T1}{fontenc}
\PassOptionsToPackage{utf8}{inputenc}
\PassOptionsToPackage{spanish,english,activeacute}{babel}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax
\LoadClass[letterpaper,onecolumn,openright,12pt]{report}

\RequirePackage{babel}
\RequirePackage{fontenc}
\RequirePackage{graphicx}
\RequirePackage{inputenc}
\RequirePackage{titling}
\RequirePackage{xcolor}

\newcommand{\grado}[1]{\newcommand{\thegrado}{#1}}
\newcommand{\director}[1]{\newcommand{\thedirector}{#1}}
\newcommand{\codirector}[1]{\newcommand{\thecodirector}{#1}\newcommand*{\MYCODIRECTOR}{}}

\renewcommand{\maketitle}{
\begin{titlepage}
\pagenumbering{alph}\thispagestyle{empty}\noindent
%\includegraphics[width=\textwidth]{img/cabecera.pdf}
%\textcolor{orange!50!black}{
%\begin{center}
%\rule{\textwidth}{1pt}\\[-0.6\baselineskip]
%\rule{\textwidth}{3pt}
%\end{center}
%\begin{minipage}{0.1\textwidth}
%\rule{1pt}{0.8\textheight}
%\rule{3pt}{0.8\textheight}\quad
%\rule{1pt}{0.8\textheight}
%\rule{3pt}{0.8\textheight}\quad
%\rule{1pt}{0.8\textheight}
%\rule{3pt}{0.8\textheight}
%\end{minipage}}

\begin{center}
\null\bigskip\bigskip\bigskip
\huge\textbf{\thetitle}
\end{center}
\bigskip\bigskip
\begin{center}
\large{Tesis que presenta}\\[0.5\baselineskip] \Large\textbf{\theauthor}
\end{center}
\bigskip
\begin{center}
\large{para obtener el grado de}\\[0.5\baselineskip]
\Large\textbf{\thegrado}
\end{center}
\bigskip\bigskip\bigskip
\begin{center} \large
\begin{tabular}{rl}
Director de tesis: & \textbf{\thedirector} \\
\@ifundefined{MYCODIRECTOR}{}{Codirector de tesis: & \textbf{\thecodirector} \\}
\end{tabular}
\end{center}
\bigskip\bigskip\bigskip
\begin{center}
Zapopan, Jalisco, México \\[0.5\baselineskip] \thedate
\end{center}
\end{titlepage}}

\newenvironment{dedicatoria}
{\cleardoublepage\null\vfill\thispagestyle{empty}}
{\vfill\null}

\newenvironment{agradecimientos}
{\cleardoublepage\null\vfill\thispagestyle{empty}
\begin{center}\textbf{Agradecimientos}\end{center}}
{\vfill\null}

% page numbering %
\pagenumbering{Roman}
\newcommand{\frontmatter}{\cleardoublepage\pagenumbering{Roman}}
\newcommand{\mainmatter}{\cleardoublepage\pagenumbering{arabic}}
