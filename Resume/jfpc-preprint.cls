
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jfpc}[2006/11/24 v1.1 style class for jfpc proceedings]

\LoadClass[twoside,twocolumn,a4paper]{article}
\RequirePackage[latin9]{inputenc}
\RequirePackage[frenchb]{babel}
%%\RequirePackage[T1]{fontenc}
% \RequirePackage{lmodern} % Mieux mais moins disponible :(
% le package lmodern.sty est disponible dans tetex, miktex ou sur CTAN:
% http://www.tug.org/tex-archive/help/Catalogue/entries/lm.html
\RequirePackage{ae,aecompl}
%\RequirePackage{graphics}
\RequirePackage{calc}

\setlength{\topmargin}{0mm}       
\setlength{\headheight}{00mm}
\setlength{\headsep}{10mm}
\setlength{\textwidth}{170mm}
\setlength{\textheight}{230mm}
\setlength{\oddsidemargin}{1.5mm}
\setlength{\evensidemargin}{-9.5mm}

\pagestyle{empty}

\makeatletter

\def\@lannee{\the\year}
\newcommand{\annee}[1]{\def\@lannee{#1}}

\def\@letitre{d{\'e}finir le titre}
%\def\letitrecourt{\letitre}
\newcommand{\titre}[1]{\def\@letitre{#1}}
\renewcommand{\title}[1]{\titre{#1}}

\def\@lesauteurs{donner les auteurs}
\newcommand{\auteurs}[1]{\def\@lesauteurs{#1}}
\renewcommand{\author}[1]{\auteurs{#1}}

\def\@lesinstitutions{pr{\'e}ciser les institutions}
\newcommand{\institutions}[1]{\def\@lesinstitutions{#1}}

\def\@lesmels{pr{\'e}ciser les mails}
\newcommand{\mels}[1]{\def\@lesmels{#1}}

\date{}
\renewcommand\date[1]{}

\setlength\columnsep{15\p@}
\setlength\columnseprule{0\p@}

\renewcommand\and{\hfil}


\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\normalfont\sffamily\large\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\sffamily\normalsize\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\sffamily\normalsize\bfseries}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\normalfont\sffamily\normalsize\bfseries}}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\normalfont\sffamily\normalsize\bfseries}}

\newenvironment{resumeenv}
               {\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \leftmargin 1em
                        \rightmargin   1em %\leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist}

\newenvironment{resume}{\hfil \sffamily \textbf{R{\'e}sum{\'e}} \hfil \begin{resumeenv}\small}{\end{resumeenv}}
\renewenvironment{abstract}{\hfil \sffamily\textbf{Abstract} \hfil \begin{resumeenv}\small}{\end{resumeenv}}

\def\@title{
  {\footnotesize\it\sffamily ED STIM \@lannee}
  \hfill
  \rule[0.5ex]{\textwidth-25mm}{0.3mm}\\
  \vspace{3mm}
  {\huge\bf\sffamily
    \@letitre
  }
  \rule{\textwidth}{0.3mm}
}


\def\@author{
  \textbf{\@lesauteurs }\vspace{1ex} \\
  \@lesinstitutions \\
  \texttt{\@lesmels}
}

\newcommand\creationEntete{\maketitle
                           \thispagestyle{empty}}

\bibliographystyle{plain}

