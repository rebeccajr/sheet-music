%---------------------------------------------------------------------
% Created by:  rebecca
%              November 2020
%
% Description: This file scripts a scale exercise taught by Emily
%              Baum 
%
% Usage:       lilypond scale_exercise.ly
%
% Output:      Generates a pdf of the sheet music saved in
%              scale_exercise.pdf
%
%---------------------------------------------------------------------


% replace with version of lilypond
\version "2.20.0"

% bella = piano treble clef
% bella is a variable name, replace with "upper" or anything else

% \relative means each successive note is relative to the previous note
% such that the interval made with the previous note is no more than 1/5
% c' is middle c

bella = \relative c' {

            \clef treble
            \key  c \major
            \time 4/4

   % song starts here
   c8\(  d  e  f  g  f   e  d
   c  d  e  f  g4 c,4 

   \chordmode { c4 g:7^5/b c}\) r
   

   r1 r1 r1

   c8\(  d  e  f  g  f   e  d
   c     d  e  f  g4 c,4 

   \chordmode { c4 g:7^5/b c}\) r
 
}

% flux = piano bass clef
% flux is a variable name, replace with "lower" or anything else
flux = \relative c {
         
         \clef bass
         \key  c \major
         \time 4/4

   % song starts here
   r1 r1 r1

   c8\(  d  e  f  g  f   e  d
   c     d  e  f  g4 c,4 

   \chordmode { c,4 g,:7^5/b c,}\) r

   c8\( d  e  f  g  f   e  d
   c    d  e  f  g4 c,4 

   \chordmode { c,4 g,:7^5/b c,}\) r
   

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
