\ProvidesClass{ttisummary}

\LoadClass[twocolumn,a4paper,11pt]{ltjsarticle}

\RequirePackage{geometry}
\geometry{top=20truemm,bottom=20truemm,left=25truemm,right=25truemm}

\RequirePackage{multicol}
\RequirePackage{setspace}
\setstretch{1}
\RequirePackage{array}

\pagenumbering{gobble}



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
