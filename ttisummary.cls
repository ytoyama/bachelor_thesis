\ProvidesClass{ttisummary}

\LoadClass[a4paper,11pt]{ltjsarticle}

\RequirePackage{geometry}
\geometry{top=20mm,bottom=20mm,left=25mm,right=25mm}

\RequirePackage{multicol}
\RequirePackage{setspace}
\RequirePackage{tabularx}
%\usepackage{nidanfloat}
%\usepackage{booktabs}
%\usepackage{multirow}

%\renewcommand{\section}{
%  \@startsection{section}
%   {1}
%   {\z@}
%   {-0.1ex \@plus -1ex \@minus -.2ex}
%   {0.1ex \@plus.2ex}
%   {\normalfont\normalsize\bfseries}
%}
%\renewcommand{\subsection}{
%  \@startsection{subsection}
%   {1}
%   {\z@}
%   {-0.1ex \@plus -1ex \@minus -.2ex}
%   {0.1ex \@plus.2ex}
%   {\normalfont\normalsize\bfseries}
%}

\let\tti@originaldocument\document
\let\tti@endoriginaldocument\enddocument
\renewenvironment{document}{
  \tti@originaldocument

  \pagestyle{empty}
  \setstretch{1.1}
  \newcolumntype{A}{>{\centering\arraybackslash}p{32mm}}
  \newcolumntype{B}{>{\centering\arraybackslash}p{42mm}}
  \newcolumntype{C}{>{\centering\arraybackslash}p{42mm}}
  \newcolumntype{D}{>{\centering\arraybackslash}p{42mm}}

  \begin{table*}[ht]
    \centering
    \fontsize{17.5pt}{0pt}\selectfont
    豊田工業大学~~~卒業研究報告書要旨 \\%[8pt]
    \setstretch{1.05}
    \begin{tabular}[b]{|A|B|C|D|}
    \hline
    \raisebox{-0.3ex}{\fontsize{11.5pt}{0pt}\selectfont 学部・学科} &
    \multicolumn{3}{c|}{\raisebox{-0.3ex}{
        \fontsize{11.5pt}{0pt}\selectfont 工学部~~先端工学基礎学科}} \\
    \hline
    \raisebox{-0.3ex}{\fontsize{11.5pt}{0pt}\selectfont 学~籍~番~号} &
    \raisebox{-0.3ex}{\fontsize{11.5pt}{0pt}\selectfont 12056} &
    \raisebox{-0.3ex}{\fontsize{11.5pt}{0pt}\selectfont 氏~~~~~~~~~名} &
    \raisebox{-0.3ex}{\fontsize{11.5pt}{0pt}\selectfont \@author} \\
    \hline
    \raisebox{-0.3ex}{\fontsize{11.5pt}{0pt}\selectfont 題~~~~~~~~~名}　&
    \multicolumn{3}{c|}{\raisebox{-0.3ex}{
        \fontsize{11.5pt}{0pt}\selectfont\@title}} \\
    \hline
    \end{tabular}
  \end{table*}

  \begin{multicols}{2}
}{\end{multicols}\tti@endoriginaldocument}


\endinput
