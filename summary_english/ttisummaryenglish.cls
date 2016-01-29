\ProvidesClass{ttisummaryenglish}

\LoadClass[a4paper,11pt]{article}

\RequirePackage{geometry}
\RequirePackage{multicol}
\RequirePackage{setspace}
\RequirePackage{array}
\RequirePackage{times}

\geometry{top=20truemm,bottom=20truemm,left=25truemm,right=25truemm}
\setstretch{1.25}
\pagenumbering{gobble}

\newcommand{\studentid}[1]{\newcommand{\tti@studentid}{#1}}

\newcommand{\tti@tableelem}[1]{{\fontsize{12pt}{0pt}\selectfont#1}}

\let\tti@originaldocument\document
\let\tti@endoriginaldocument\enddocument
\renewenvironment{document}{
  \tti@originaldocument

  \newcolumntype{A}{@{}>{\centering\arraybackslash}p{0.25\linewidth}@{}}
  \newcolumntype{B}{@{}>{\centering\arraybackslash}p{0.75\linewidth}@{}}

  {
    \centering
    {\fontsize{14pt}{0pt}\selectfont
     Introductory Research Report for Graduate School} \\
    \vspace{0.5em}

    \begin{tabular}{|A|A|A|A|}
      \hline
      \tti@tableelem{Student ID} & \tti@tableelem{\tti@studentid} &
      \tti@tableelem{Name} & \tti@tableelem{\@author} \\
      \hline
      \tti@tableelem{Title} & \multicolumn{3}{B|}{\tti@tableelem{\@title}} \\
      \hline
    \end{tabular}
    \vspace{1em}
  }
}{\tti@endoriginaldocument}


\endinput
