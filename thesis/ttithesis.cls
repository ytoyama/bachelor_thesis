\ProvidesClass{ttithesis}

\LoadClass[11pt,a4paper]{ltjsarticle}

\RequirePackage{geometry}
\geometry{top=20truemm,bottom=20truemm,left=25truemm,right=25truemm}

\RequirePackage{luatexja}
\RequirePackage{setspace}
\setstretch{1.5}
\RequirePackage[font=small]{caption}
\RequirePackage{titlesec}
\RequirePackage{tocloft}
\RequirePackage{graphicx}



% table of contents

\renewcommand{\cftsecfont}{\normalfont}
\renewcommand{\contentsname}{\normalfont 目次}
%\let\oldl@chapter\l@chapter
%\def\l@chapter#1#2{\l@chapter{#1}{#2}}
%\let\oldl@section\l@section
%\def\l@section#1#2{\l@section{#1}{#2}}
\RequirePackage{tocloft}
%\newcommand{\cftchappagefont}{\normalfont}
\renewcommand{\cftsecpagefont}{\normalfont}
\renewcommand{\cftsubsecpagefont}{\normalfont}
\renewcommand{\cftsubsubsecpagefont}{\normalfont}
\renewcommand{\cftfigpagefont}{\normalfont}
\renewcommand{\cfttabpagefont}{\normalfont}


% list of tables and figures

%\let\tti@listoffigures\listoffigures
%\renewcommand{\listoffigures}{\pagebreak\tti@listoffigures}
%\let\tti@listoftables\listoftables
%\renewcommand{\listoftables}{\pagebreak\tti@listoftables}

\renewcommand{\listtablename}{\normalfont 表目次}
\renewcommand{\listfigurename}{\normalfont 図目次}


% sections

\newcommand{\tti@lineheight}{1.5em}

\titleformat{\part}{%
  \normalfont%
  \fontsize{18pt}{\tti@lineheight}%
  \selectfont%
}{\thepart}{1em}{}

\newcommand{\tti@titleformat}[2]%
  {\titleformat*{#1}{\normalfont\fontsize{#2}{\tti@lineheight}\selectfont}}

\tti@titleformat{\section}{16pt}
\tti@titleformat{\subsection}{14pt}
\tti@titleformat{\subsubsection}{12pt}

\newcommand{\sectionbreak}{\clearpage}


% centralized tabular, table, and figure environments

\let\originaltabular\tabular
\let\endoriginaltabular\endtabular
\renewenvironment{tabular}[1]{%
  \begingroup\centering\originaltabular{#1}}%
  {\endoriginaltabular\endgroup}

\let\originaltable\table
\let\endoriginaltable\endtable
\renewenvironment{table}{%
  \originaltable[b!]\centering}%
  {\endoriginaltable}

\let\originalfigure\figure
\let\endoriginalfigure\endfigure
\renewenvironment{figure}{%
  \originalfigure[t!]\centering}%
  {\endoriginalfigure}

\let\tti@includegraphics\includegraphics
\renewcommand{\includegraphics}[2][0.8]{%
    \tti@includegraphics[width=#1\linewidth]{#2}}


% laboratory command

\newcommand{\laboratory}[1]{\newcommand{\@laboratory}{#1}}


% document environment with title page

\newcommand{\@titlepage}{
  \begin{titlepage}
    \setstretch{1}
    \centering
    {
      \fontsize{20pt}{25pt}\selectfont
      豊田工業大学 課題研究報告書\par
      \vspace{32mm}
      \@title\par
    }
    \vfill
    {
      \fontsize{16pt}{20pt}\selectfont
      \@date\par
      \vspace{16mm}
      工学部 先端工学基礎学科\par
      \@laboratory\par
      \@author\par
    }
  \end{titlepage}
}

\let\originaldocument\document
\let\endoriginaldocument\enddocument
\renewenvironment{document}{%
  \originaldocument\@titlepage
  \pagenumbering{roman}
  \tableofcontents
  \listoftables
  \listoffigures
  \pagebreak
  \pagenumbering{arabic}}%
  {\endoriginaldocument}


\endinput
