\ProvidesClass{ttisummary}

\LoadClass[twocolumn,a4paper,11pt]{ltjsarticle}

\RequirePackage{geometry}
\RequirePackage{multicol}
\RequirePackage{setspace}
\RequirePackage{array}
\RequirePackage{titlesec}
\RequirePackage{caption}

\geometry{top=20truemm,bottom=20truemm,left=25truemm,right=25truemm}
\setstretch{1}
\pagenumbering{gobble}

\titleformat*{\section}{\normalsize}
\titleformat*{\subsection}{\normalsize}
\titleformat*{\subsubsection}{\normalsize}

\titlespacing{\section}{0pt}{*0.05}{*0.05}
\titlespacing{\subsection}{0pt}{*0.05}{*0.05}
\titlespacing{\subsubsection}{0pt}{*0.05}{*0.05}
\setlength{\textfloatsep}{0.5em}

\DeclareCaptionFormat{mycaption}{\fontsize{10pt}{0pt}\selectfont#1#2#3}
\captionsetup{format=mycaption}


\newcommand{\tti@tableelem}[1]{{\fontsize{12pt}{0pt}\selectfont#1}}

\let\tti@originaldocument\document
\let\tti@endoriginaldocument\enddocument
\renewenvironment{document}{
  \tti@originaldocument

  \newcolumntype{A}{@{}>{\centering\arraybackslash}p{0.22\linewidth}@{}}
  \newcolumntype{B}{@{}>{\centering\arraybackslash}p{0.26\linewidth}@{}}
  \newcolumntype{C}{@{}>{\centering\arraybackslash}p{0.78\linewidth}@{}}

  \twocolumn[
    \centering

    {\fontsize{18pt}{0pt}\selectfont 豊田工業大学~~~課題研究報告書要旨} \\
    \vspace{0.5em}

    \begin{tabular}{|A|B|B|B|}
      \hline
      \tti@tableelem{学部・学科} &
      \multicolumn{3}{C|}{\tti@tableelem{工学部~~先端工学基礎学科}} \\
      \hline
      \tti@tableelem{学~籍~番~号} & \tti@tableelem{12056} &
      \tti@tableelem{氏~~~~~~~~~名} & \tti@tableelem{\@author} \\
      \hline
      \tti@tableelem{題~~~~~~~~~名} &
      \multicolumn{3}{C|}{\tti@tableelem{\@title}} \\
      \hline
    \end{tabular}
    \vspace{1em}
  ]
}{\tti@endoriginaldocument}


\endinput
