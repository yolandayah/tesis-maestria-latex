% ex: ts=2 sw=2 sts=2 et filetype=tex
% SPDX-License-Identifier: CC-BY-SA-4.0

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tsj-thesis}[2025/04/23 v1 TSJ Thesis format]

\DeclareOption{openright}{\PassOptionsToClass{openright}{report}}
\DeclareOption{openany}{\PassOptionsToClass{openany}{report}}
\DeclareOption{twoside}{\PassOptionsToClass{twoside}{report}}
\DeclareOption{oneside}{\PassOptionsToClass{oneside}{report}}
\DeclareOption{fleqn}{\PassOptionsToClass{fleqn}{report}}
\DeclareOption{leqno}{\PassOptionsToClass{leqno}{report}}
\DeclareOption{openbib}{\PassOptionsToClass{openbib}{report}}
\DeclareOption{notitlepage}{\PassOptionsToClass{notitlepage}{report}}

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
\RequirePackage{hyperref}
\RequirePackage{csquotes}

\newcommand{\grado}[1]{\newcommand{\thegrado}{#1}}
\newcommand{\director}[1]{\newcommand{\thedirector}{#1}}
\newcommand{\codirector}[1]{\newcommand{\thecodirector}{#1}\newcommand*{\MYCODIRECTOR}{}}

\hypersetup{
    colorlinks=true,       % False = boxed links; True = colored text
    linkcolor=black, %blue,   % Color of internal links (sections, figures)
    citecolor=black, %green,  % Color of links to bibliography
    filecolor=black, %magenta,% Color of file links
    urlcolor=black,  %cyan,   % Color of external URLs
    pdftitle={\thetitle},  % PDF metadata title
    pdfauthor={\theauthor},% PDF metadata author
    bookmarks=true,        % Show acrobat bookmarks bar
    linktoc=all            % Links on both text and page number in TOC
}

\renewcommand{\maketitle}{
\begin{titlepage}
\thispagestyle{empty}\noindent
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
{\thispagestyle{empty}
\chapter*{}
\addcontentsline{toc}{chapter}{Dedicatoria}}
{\vfill\null}

\newenvironment{agradecimientos}
{\thispagestyle{empty}
\chapter*{}
\addcontentsline{toc}{chapter}{Agradecimientos}
\begin{center}\Large\textbf{Agradecimientos}\end{center}}
{\vfill\null}

\renewenvironment{abstract}
{\thispagestyle{empty}
\chapter*{}
\addcontentsline{toc}{chapter}{\abstractname}
    \begin{center}
        \bfseries \Large \abstractname
    \end{center}
}{\vfill\null}

% page numbering %
\newcommand{\frontmatter}{\cleardoublepage\pagenumbering{roman}}
\newcommand{\mainmatter}{\cleardoublepage\pagenumbering{arabic}}
\newcommand\backmatter{\cleardoublepage\pagenumbering{alph}}
