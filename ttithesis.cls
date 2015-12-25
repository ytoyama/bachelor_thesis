\ProvidesClass{ttithesis}

\LoadClass[11pt,a4paper]{ltjsarticle}

\RequirePackage{luatexja}
\RequirePackage{setspace}
\setstretch{1.5}
\RequirePackage[font=small]{caption}
\RequirePackage{titlesec}



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
\renewenvironment{table}[1][ht]{%
  \originaltable[#1]\centering}%
  {\endoriginaltable}

\let\originalfigure\figure
\let\endoriginalfigure\endfigure
\renewenvironment{figure}[1][ht]{%
  \originalfigure[#1]\centering}%
  {\endoriginalfigure}


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
  \originaldocument\@titlepage}%
  {\endoriginaldocument}


\endinput
