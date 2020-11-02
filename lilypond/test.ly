%---------------------------------------------------------------------
% Created by:  rebecca
%              October 2020
%
% Description: This file scripts a simple piano score in the lilypond
%              musical notation scripting language
%
% Usage:       lilypond test.ly
%              (Generates a pdf of the sheet music saved in test.pdf)
%
%---------------------------------------------------------------------


% replace with version of lilypond
\version "2.20.0"


% bella = piano treble clef
% bella is a variable name, replace with "upper" or anything else
bella = \relative c' {

            \clef treble
            \key  d \minor
            \time 3/4

   % song starts here
   c d e a g e

}

% flux = piano bass clef
% flux is a variable name, replace with "lower" or anything else
flux = \relative c {
         
         \clef bass
         \key  d \minor
         \time 3/4

   % song starts here
   a2 c
}



\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "bella" \bella
    \new Staff = "flux" \flux
  >>
  \layout { }
  \midi { }
}
