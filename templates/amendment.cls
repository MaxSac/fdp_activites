\NeedsTeXFormat{LaTeX2e}
\LoadClass{report}

\renewcommand{\normalsize}{\fontsize{10pt}{12pt}\selectfont}
\pagenumbering{arabic}

\setlength{\parindent}{0em}
\setlength{\parskip}{1em}

\RequirePackage{fancyhdr}
\RequirePackage[
    a4paper,
    % headheight=45pt,
    headheight=.05\paperheight,
    textheight=.80\paperheight,
    footskip=0.05\paperheight
]{geometry}

\newcommand{\occasion}[2][Parteitag]{
    \gdef\@occasion{#2}%
    \gdef\@occasionshort{#1}%
}

\newcounter{nthantrag}

%%%%%%%%%%%%%%%%%%%
% HEADER & FOOTER %
%%%%%%%%%%%%%%%%%%%
\fancyhead[L,R]{}
\fancyhead[C]{{\Large\@occasion}\\\@date\\ Seite~\thepage}
\fancyfoot[L,C]{}
\fancyfoot[R]{\bfseries A\num[minimum-integer-digits=3]{\thenthantrag}}
\pagestyle{fancy}

\RequirePackage{lineno}
\RequirePackage{siunitx}
\sisetup{detect-weight=true,detect-inline-weight=text}
\newenvironment{boxed}[2]{%
\refstepcounter{nthantrag}%
{\bfseries%
\hfill{\LARGE Antrag~\num[minimum-integer-digits=3]{\thenthantrag}}\\%
\parbox{0.2\textwidth}{Betr.:\hfill} #1\\%
\parbox{0.2\textwidth}{Antragsteller:} #2\\%
\newline%
Der \@occasionshort~möge beschließen:}\newline%
%
%
\begin{linenumbers*}%
}
{
\end{linenumbers*}%
\clearpage%
}
