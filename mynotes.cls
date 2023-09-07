% ================================= %
% ========= version control ======= %

\def\fileversion{1.0}
\def\filedate{2023/05/22}

% ========= version control ======= %
% ================================= %



% ================================= %
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mynotes}[\filedate\space Version \fileversion\space by
  @mryodo]
% ================================= %


% ================================= %
\RequirePackage{ifthen}
% ================================= %



% ================================= %
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax
\LoadClass{article}
% ================================= %



% ================================= %
% =========== MakeTitle =========== %

      % e-Mail
      \RequirePackage{authblk}
      \newcommand*{\email}[1]{\href{mailto:#1}{\nolinkurl{#1}} } 

      % author and affiliation styling
      \renewcommand*{\Authsep}{ \( \color{black} \bullet \) }
      \renewcommand*{\Authand}{ \( \color{black} \bullet \) }
      \renewcommand*{\Authands}{\( \color{black} \bullet \) }
      \renewcommand*{\Affilfont}{\small\normalfont\it\color{black}}
      \renewcommand*{\Authfont}{\bfseries\color{persimmon}}    % make author names boldface    
      \setlength{\affilsep}{0.2em}  

      % Abstract definition
      \def\@abstract{}
      \renewcommand\abstract[1]{%
      \gdef\@abstract{ #1}}

      \def\@keywords{}
      \newcommand\keywords[1]{%
      \gdef\@keywords{ #1}}


      \def\@maketitle{%
            {\linespread{0.8}
            {\Large\noindent\ignorespaces\bf\@title\par\vspace{10pt}}
            {\noindent\ignorespaces\@author\par}}
            \vspace{10pt}
            {\linespread{0.8} \noindent \footnotesize \textbf{Abstract:} \@abstract\par}
            \vspace{5pt}
            {\linespread{0.8}\noindent \footnotesize \textbf{Keywords:} \@keywords\par}
            \vspace{15pt}
      }

% =========== MakeTitle =========== %
% ================================= %





% ================================= %
\RequirePackage{marginnote,sidenotes,fancyhdr,geometry, setspace}
\RequirePackage{amsfonts, amsmath, amssymb, amsthm}
\RequirePackage{thmtools}
\RequirePackage{titlesec}
%\RequirePackage[onehalfspacing]{setspace}
\RequirePackage[usenames, dvipsnames]{xcolor}
\RequirePackage[many]{tcolorbox}
% ================================= %




% ================================= %
% ========= allow a4paper ========= %
      \setlength{\textwidth}{\paperwidth}
      \addtolength{\textwidth}{-2in}
      \setlength{\oddsidemargin}{0pt}
      \setlength{\evensidemargin}{0pt}

      \setlength{\headheight}{15pt}
      \setlength{\headsep}{15pt}
      \setlength{\topmargin}{0in}
      \addtolength{\topmargin}{-\headheight}
      \addtolength{\topmargin}{-\headsep}
      \setlength{\footskip}{29pt}
      \setlength{\textheight}{\paperheight}
      \addtolength{\textheight}{-2.2in}

      \setlength{\marginparwidth}{.5in}
      \setlength{\marginparsep}{5pt}


      \geometry{paperheight=11.7in,paperwidth=8.3in,                   %fix paperwidth and height.
            marginparsep=.02\paperwidth,marginparwidth=.2\paperwidth,
            inner=.1\paperwidth,voffset=0in,headheight=.02\paperheight,
            headsep=.13\paperheight,footskip=20pt,
            textheight=.9\paperheight,textwidth=.63\paperwidth}
% ========= allow a4paper ========= %
% ================================= %


% ================================= %
% =========== Fonts =============== %
      %\usepackage[T1]{fontenc}     
      %\usepackage{lmodern,mathrsfs}
      \usepackage{cmbright}
      \usepackage{nunito}
      %\usepackage{lato}
      \renewcommand{\mddefault}{l}
      \renewcommand{\bfdefault}{b}
      %\usepackage[normalweight=Light]{mdsymbol}

      \makeatletter
      \DeclareMathSizes{\f@size}{11}{8}{8}
      \makeatother
      
      \definecolor{cadet}{rgb}{0.33, 0.41, 0.47}
      \everymath{\color{jet}}

      %\let\mathcal\undefined
      %\DeclareMathAlphabet{\mathcal}{OMS}{cmsy}{m}{n}
% =========== Fonts =============== %
% ================================= %

% ================================= %
% =========== Colors ============== %
      \definecolor{black4}{rgb}{0.11764705882352941, 0.11764705882352941, 0.1803921568627451}
      \definecolor{newwhite}{rgb}{0.8509803921568627, 0.8784313725490196, 0.9333333333333333}
      \definecolor{newred}{rgb}{0.9098039215686274, 0.6352941176470588, 0.6862745098039216}
      \definecolor{newcerulean}{rgb}{0.5882352941176471, 0.803921568627451, 0.984313725490196}
      \definecolor{newgreen}{rgb}{0.6705882352941176, 0.9137254901960784, 0.7019607843137254}
      \definecolor{newteal}{rgb}{ 0.6039215686274509, 0.8, 0.7686274509803922,}
      \definecolor{newpeach}{rgb}{0.9725490196078431, 0.7411764705882353, 0.5882352941176471}
      \definecolor{newflam}{rgb}{0.9490196078431372, 0.803921568627451, 0.803921568627451}
      \definecolor{persimmon}{HTML}{DE5A02}
      \definecolor{jet}{HTML}{333232}
      \definecolor{peach}{HTML}{FCDE9C}
      \definecolor{cerulean}{HTML}{A7C6DA}
      \definecolor{liberty}{HTML}{5158BB}
      \definecolor{greensheen}{HTML}{68B0AB}
% =========== Colors ============== %
% ================================= %




% ================================= %
% =========== Theorems ============ %

\newlength{\spacelength}
\settowidth{\spacelength}{\normalfont\ }

      \declaretheoremstyle[
      headfont={\color{black4} \small},
      notefont={\normalfont \color{black4} \bfseries},
      bodyfont={\normalfont},
      headpunct={\relax},%\newline,
      headformat={%
            \makebox[0pt][r]{\NAME\ \NUMBER\hspace{\marginparsep}}\hskip-\spacelength{\normalsize\NOTE}},
      ]{theorem}

      \tcolorboxenvironment{theorem}{
      boxrule=0pt,
      boxsep=0pt,
      colback={white!50!newpeach},
      enhanced jigsaw, 
      borderline west={3pt}{0pt}{newpeach},
      sharp corners,
      before skip=10pt,
      after skip=10pt,
      left=5pt,
      right=5pt,
      breakable,
      colupper=black4
      }

      \theoremstyle{theorem}
      \newtheorem{thm}{Thm.}
      \tcolorboxenvironment{thm}{
      boxrule=0pt,
      boxsep=0pt,
      colback={white!70!persimmon},
      enhanced jigsaw, 
      borderline west={3pt}{0pt}{persimmon},
      sharp corners,
      before skip=10pt,
      after skip=10pt,
      left=5pt,
      right=5pt,
      breakable,
      colupper=black4
      }

      \declaretheorem[style=theorem]{theorem}


      \let\proof\relax
      \let\endproof\relax
      \declaretheoremstyle[
      headfont={\color{black4} \small},
      notefont={\normalfont},
      bodyfont={\normalfont},
      headpunct={\relax},
      headformat={%
            \makebox[0pt][r]{\NAME\hspace{\marginparsep}}\hskip-\spacelength{\NOTE}},
      ]{proof}

      \tcolorboxenvironment{proof}{
      boxrule=0pt,
      boxsep=0pt,
      blanker,
      borderline west={3pt}{0pt}{greensheen},
      before skip=10pt,
      after skip=10pt,
      left=5pt,
      right=5pt,
      breakable,
      colupper=black4
      }
      \renewcommand{\qedsymbol}{\textcolor{greensheen}{\ensuremath{\blacksquare}}}


      \declaretheoremstyle[
      headfont={\color{black4} \small},
      notefont={\normalfont},
      bodyfont={\normalfont},
      headpunct={\relax},
      headformat={%
            \makebox[0pt][r]{\NAME\hspace{\marginparsep}}\hskip-\spacelength{\NOTE}},
      ]{corollary}

      \tcolorboxenvironment{corollary}{
      boxrule=0pt,
      boxsep=0pt,
      blanker,
      borderline west={3pt}{0pt}{newteal},
      before skip=10pt,
      after skip=10pt,
      left=5pt,
      right=5pt,
      breakable,
      colupper=black4
      }
      \declaretheorem[style=corollary]{Corollary}

      \declaretheoremstyle[
      headfont={\color{black4} \itshape},
      notefont={\normalfont},
      bodyfont={\normalfont},
      headpunct={\relax},
      headformat={%
            \makebox[0pt][r]{\NAME\hspace{\marginparsep}}\hskip-\spacelength{\NOTE}},
      ]{claim}

      \declaretheorem[
      style=proof,
      qed=\qedsymbol]{proof}

      \declaretheorem[style=claim]{Intuition}

      \theoremstyle{theorem}
      \newtheorem{ques}{QUES}
      \tcolorboxenvironment{ques}{
      boxrule=0pt,
      boxsep=0pt,
      blanker,
      borderline west={3pt}{0pt}{black4},
      sharp corners,
      before skip=10pt,
      after skip=10pt,
      left=5pt,
      right=5pt,
      breakable,
      colupper=black4,
      }

      \theoremstyle{theorem}
      \newtheorem{definition}{Def.}
      \tcolorboxenvironment{definition}{
      boxrule=0pt,
      boxsep=0pt,
      colback={white!70!liberty},
      enhanced jigsaw, 
      borderline west={3pt}{0pt}{liberty},
      sharp corners,
      before skip=10pt,
      after skip=10pt,
      left=5pt,
      right=5pt,
      breakable,
      colupper=black4,
      }

      \theoremstyle{theorem}
      \newtheorem{lemma}{Lemma}
      \tcolorboxenvironment{lemma}{
      boxrule=0pt,
      boxsep=0pt,
      blanker,
      borderline west={3pt}{0pt}{newred},
      before skip=10pt,
      after skip=10pt,
      sharp corners,
      left=5pt,
      right=5pt,
      breakable,
      colupper=black4,
      }

      \theoremstyle{corollary}
      \newtheorem{corollary}{Corollary}

      \theoremstyle{claim}
      \newtheorem{intu}{Intuition}

      \theoremstyle{claim}
      \newtheorem{solu}{Solution}

      \theoremstyle{claim}
      \newtheorem{remark}{Remark}
      \theoremstyle{claim}
      \newtheorem{proposition}{Prop.}

      \theoremstyle{claim}
      \newtheorem{example}{Example}
      \tcolorboxenvironment{example}{
      boxrule=0pt,
      boxsep=0pt,
      blanker,
      borderline west={3pt}{0pt}{newgreen},
      sharp corners,
      before skip=10pt,
      after skip=10pt,
      left=5pt,
      right=5pt,
      breakable,
      colupper=black4,
      }

      \newtheorem{problem}{Problem}
      \tcolorboxenvironment{problem}{
      boxrule=0pt,
      boxsep=0pt,
      blanker,
      borderline west={3pt}{0pt}{jet},
      sharp corners,
      before skip=10pt,
      after skip=10pt,
      left=5pt,
      right=5pt,
      breakable,
      colupper=black4,
      }

% =========== Theorems ============ %
% ================================= %




% ================================= %
% ============ Margins ============ %


\newtcolorbox{story}[1][]{
  width=0.35\textwidth,
  breakable,
  colframe=persimmon,
  colback=persimmon!10
  #1
}

      \renewcommand*{\raggedleftmarginnote}{{\color{black4} \noindent}}
      \renewcommand*{\raggedrightmarginnote}{{\color{black4} \noindent}}
      \newcommand{\mn}[1]{\textsuperscript{\thesidenote}{}\marginnote{\begin{story} \color{black4} \textsuperscript{\thesidenote}{}\itshape{\setstretch{0.5}\footnotesize #1 }\end{story}\refstepcounter{sidenote}}}
      \newcommand{\en}[1]{\marginnote{\footnotesize{#1}}}
      \newcommand{\lec}[2]{{\setlength{\marginparwidth}{.07\paperwidth}\reversemarginpar\marginnote{\centering\footnotesize{\textsf{\bfseries #1}}\\#2}}}
      \newcommand{\sn}[1]{\sidenote{\itshape\footnotesize #1}}
      \newcommand{\mnl}[1]{\textsuperscript{\thesidenote}{}\marginnote{\color{black4} \begin{story}\textsuperscript{\thesidenote}{} #1\end{story}}\refstepcounter{sidenote}}
      \newcommand{\mnln}[1]{\marginnote{\color{black4}  \begin{story}#1\end{story}}\refstepcounter{sidenote}}
% ============ Margins ============ %
% ================================= %




% ================================= %
% ============ Sections =========== %

      \newtcolorbox{mybox}[2][]{%
            width = \textwidth +2.5cm,
            height = 0.75cm,
            enhanced,
            colback=jet,
            colframe=persimmon,
            boxrule=0pt,
            leftrule=2.5cm,
            overlay unbroken and first ={%
            \node[rotate=00,
                  minimum width=2.5cm,
                  %anchor=south,
                  font=\large\bfseries,
                  xshift=2cm,
                  white]
            at (frame.west) {#2};
            }
      }

      \newtcolorbox{mybox2}[2][]{%
      enhanced,
      colback=white,
      colframe=persimmon,
      boxrule=0pt,
      leftrule=0cm,
      enhanced jigsaw, 
      borderline west={3pt}{0pt}{persimmon},
      height=0.75cm, 
}

      \titleformat{name=\section}[block]
      {}
      {}
      {0pt}
      {\colorsection}
      %\titlespacing*{\section}{-2.5cm}{-0.5\baselineskip}{-1.25\baselineskip}
      \titlespacing*{\section}{-0.5cm}{-0.5\baselineskip}{-1.25\baselineskip}

     % \newcommand{\colorsection}[1]{%
     %       \begin{mybox}{\thesection}
     %             \vspace{-2pt}\color{white}\bfseries #1
     %       \end{mybox}
     % }
     \newcommand{\colorsection}[1]{%
     \begin{mybox2}{\thesection}
           \vspace{-2pt}\color{black}\bfseries \thesection.~#1
      \end{mybox2}
      }

      \titleformat{name=\subsection}[block]
      {}
      {}
      {0pt}
      {\colorsubsection}
      \titlespacing*{\subsection}{0cm}{0cm}{0cm}


      \newcommand{\colorsubsection}[1]{%
                  \color{persimmon}\bfseries \thesubsection \; #1
      }

      \titleformat{name=\subsubsection}[block]
      {}
      {}
      {0pt}
      {\colorsubsubsection}
      \titlespacing*{\subsubsection}{0cm}{0cm}{0cm}


      \newcommand{\colorsubsubsection}[1]{%
                  \color{persimmon}\bfseries \thesubsubsection \; #1
      }

      \renewcommand{\thesection}{\Roman{section}} 
      \renewcommand{\thesubsection}{\thesection.\Roman{subsection}}
      \renewcommand{\thesubsubsection}{\thesection.\thesubsection.\Roman{subsection}}


      \RequirePackage[font={small}, figurename=Figure, labelfont={bf,color=persimmon}]{caption}

% ============ Sections =========== %
% ================================= %


\renewcommand{\labelitemi}{$\color{persimmon}\diamondsuit$}
\usepackage{enumitem}
\setlength\itemsep{-1.5em}
\setitemize{itemsep=3pt,topsep=3pt}



\RequirePackage[colorlinks=true
,urlcolor=liberty
,anchorcolor=liberty
,citecolor=liberty
,filecolor=liberty
,linkcolor=liberty
,menucolor=liberty
,linktocpage=true,
      breaklinks,
  linktoc=section,
  linkcolor=liberty,
  linkbordercolor=white,
  citecolor=liberty,
  urlcolor=liberty,
]{hyperref}
\RequirePackage[capitalize, nameinlink]{cleveref}
\crefdefaultlabelformat{\color{liberty}#1#2#3}


\crefname{section}{section}{sections}
\crefname{subsection}{subsection}{subsections}
\Crefname{section}{Section}{Sections}
\Crefname{subsection}{Subsection}{Subsections}
\Crefname{figure}{Figure}{Figures}
\crefformat{equation}{\textup{#2(#1)#3}}
\crefrangeformat{equation}{\textup{#3(#1)#4--#5(#2)#6}}
\crefmultiformat{equation}{\textup{#2(#1)#3}}{ and \textup{#2(#1)#3}}
{, \textup{#2(#1)#3}}{, and \textup{#2(#1)#3}}
\crefrangemultiformat{equation}{\textup{#3(#1)#4--#5(#2)#6}}%
{ and \textup{#3(#1)#4--#5(#2)#6}}{, \textup{#3(#1)#4--#5(#2)#6}}{, and \textup{#3(#1)#4--#5(#2)#6}}

\Crefformat{equation}{#2Equation~\textup{(#1)}#3}
\Crefrangeformat{equation}{Equations~\textup{#3(#1)#4--#5(#2)#6}}
\Crefmultiformat{equation}{Equations~\textup{#2(#1)#3}}{ and \textup{#2(#1)#3}}
{, \textup{#2(#1)#3}}{, and \textup{#2(#1)#3}}
\Crefrangemultiformat{equation}{Equations~\textup{#3(#1)#4--#5(#2)#6}}%
{ and \textup{#3(#1)#4--#5(#2)#6}}{, \textup{#3(#1)#4--#5(#2)#6}}{, and \textup{#3(#1)#4--#5(#2)#6}}

\crefdefaultlabelformat{#2\textup{#1}#3}

\makeatletter
\def\formatout#1{\hbox{\hskip1sp\m@th\llap{%
    \normalcolor\small \color{greensheen}(Eqn.~#1) \hspace{0cm}}}}
\let\oldmaketag@@@\maketag@@@
\def\oldtagform@#1{\oldmaketag@@@{\ignorespaces#1\unskip\@@italiccorr}}
\renewcommand{\eqref}[1]{\textup{\oldtagform@{\ref{#1}}}}
\def\maketag@@@#1{\formatout{#1}}
\renewcommand\tagform@[1]{\maketag@@@{\ignorespaces#1\unskip\@@italiccorr}}
\makeatother

\usepackage{algorithm}% http://ctan.org/pkg/algorithms
\usepackage{algpseudocode}

\usepackage{pgfplots}

\usetikzlibrary{arrows.meta}
\usetikzlibrary{backgrounds}
\usepgfplotslibrary{patchplots}
\usepgfplotslibrary{fillbetween}
\pgfplotsset{%
     layers/standard/.define layer set={%
         background,axis background,axis grid,axis ticks,axis lines,axis tick labels,pre main,main,axis descriptions,axis foreground%
     }{
         grid style={/pgfplots/on layer=axis grid},%
         tick style={/pgfplots/on layer=axis ticks},%
         axis line style={/pgfplots/on layer=axis lines},%
         label style={/pgfplots/on layer=axis descriptions},%
         legend style={/pgfplots/on layer=axis descriptions},%
         title style={/pgfplots/on layer=axis descriptions},%
         colorbar style={/pgfplots/on layer=axis descriptions},%
         ticklabel style={/pgfplots/on layer=axis tick labels},%
         axis background@ style={/pgfplots/on layer=axis background},%
         3d box foreground style={/pgfplots/on layer=axis foreground},%
     },
 }


 \newtcolorbox{tmp}[1][]{
      enhanced,breakable,colframe=jet!50!white,
      colbacktitle=jet!15!white,
      coltitle=jet,
      colback = white,
      borderline={0.5mm}{0mm}{jet!15!white},
      borderline={0.5mm}{0mm}{jet!50!white,dashed},
      attach boxed title to top center={yshift=-2mm},
      boxed title style={boxrule=0.4pt},
      title=TMP,
      code={\singlespacing}
    }


\counterwithin{figure}{section}


\usepackage[
      color=persimmon!10!white,
      bordercolor=persimmon,
      linecolor = persimmon,
      textwidth = 0.3\columnwidth,
]{todonotes}