%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SPDX-License-Identifier: BSD-3-Clause
% Copyright (c) 2020, Salman Ahmad Faris
% https://github.com/salfaris/EasyPS
% Copyright (c) 2024, Daize Dong
% https://github.com/DaizeDong/Easier-PS-and-SoP
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{easier_sop}[2024/10/21 Modified from EasyPS]
\LoadClass[12pt]{article} % Load the base article class with 12pt font size
\pdfgentounicode=1  % Ensure generated PDF is ATS parsable

\RequirePackage{lipsum}         % Generates placeholder text, remove if unnecessary
\RequirePackage{geometry}       % For layout and margin control
\RequirePackage{fancyhdr}       % For headers and footers
\RequirePackage{setspace}       % For controlling line spacing
\RequirePackage{titlesec}       % For section title formatting
\RequirePackage{lmodern}        % Load LM Roman (Latin Modern Roman)
\RequirePackage{xcolor}         % For custom colors
\RequirePackage{hyperref}       % For hyperlinking citations
\RequirePackage[sort,numbers]{natbib}

% BASIC INFO
\def\@StudentName{Student Name Here}
\newcommand*{\SetStudentName}[1]{\def\@StudentName{#1}}
\newcommand*{\GetStudentName}{\@StudentName}
\def\@ProgramName{Program Name Here}
\newcommand*{\SetProgramName}[1]{\def\@ProgramName{#1}}
\newcommand*{\GetProgramName}{\@ProgramName}
\def\@UniversityName{University Name Here}
\newcommand*{\SetUniversityName}[1]{\def\@UniversityName{#1}}
\newcommand*{\GetUniversityName}{\@UniversityName}
\def\@UniversityAbbr{\@UniversityName}
\newcommand*{\SetUniversityAbbr}[1]{\def\@UniversityAbbr{#1}}
\newcommand*{\GetUniversityAbbr}{\@UniversityAbbr}

% CONTENTS INFO
\def\@BaseContentPath{main/content/base}
\newcommand*{\SetBaseContentPath}[1]{\def\@BaseContentPath{#1}}
\newcommand*{\GetBaseContentPath}{\@BaseContentPath}
\def\@UniContentPath{main/content/base}
\newcommand*{\SetUniContentPath}[1]{\def\@UniContentPath{#1}}
\newcommand*{\GetUniContentPath}{\@UniContentPath}

% LAYOUT SETTINGS
\geometry{a4paper, includehead, left=0.6in, right=0.6in, top=0.4in, bottom=0.6in} % Page margins, change as you need
\setlength{\parskip}{0.2em}     % Space between paragraphs
\linespread{1.06}               % Line spacing

% HEADER AND FOOTER SETTINGS
\pagestyle{fancy}               % Use fancy headers/footers
\fancyhf{}                      % Clear default header/footer
\fancyhead[L]{\@StudentName}    % Custom left header: Student Name
\fancyhead[R]{\@UniversityName} % Custom right header: University Name
\fancyfoot[C]{\thepage}         % Add a page number in the footer
\setlength{\headheight}{20pt}   % Adjust the height of the header
\setlength{\headsep}{16pt}      % Space between the header and content

% HEADER EXPANSION FOR FIRST PAGE
\fancypagestyle{firstpageheader}{
    \fancyhf{} % Clear header and footer for first page
    \fancyhead[C]{
        \centering {\LARGE \textsc{Statement of Purpose}} \\ [0.35em] % Larger font for the title
        \makebox[\textwidth][r]{\@UniversityName} \\ % University Name on the right
        \makebox[\textwidth][l]{\@StudentName \hfill \@ProgramName} % Student Name and Program Name aligned
        \vspace{-14pt} % Adjust vertical space between elements
    }
    \fancyfoot[C]{\thepage}       % Add a page number in the footer
    \setlength{\headheight}{60pt} % Increased height for the first page header
    \setlength{\headsep}{16pt}    % Increase space between the header and content
}

% CITATION SETTINGS
\renewcommand{\thefootnote}{\fnsymbol{footnote}}
\renewcommand{\refname}{\begin{center}References\vspace{-40pt}\end{center}}
\AtEndDocument{\footnotetext{* denotes equal contribution.}}
\bibliographystyle{unsrtnat}
\hypersetup{
    colorlinks=true,
    citecolor=[HTML]{EC028D}, % Set citation color to pink
    linkcolor=blue,
    urlcolor=blue
}
