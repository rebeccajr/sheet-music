%---------------------------------------------------------------------
% Created by:  rebecca
%              January 2021
%
% Description: This file scripts an arrangement of the Temple of Time
%              song from the game Legen of Zelda: Ocarina of Time.
%
% Usage:       lilypond temple-of-time.ly
%
% Output:      Generates a pdf of the sheet music.
%
%---------------------------------------------------------------------


% replace with version of lilypond
\version "2.20.0"

\header {
   title = "Mini Scale Exercise"
   arranger = "Arranged by Rebecca Rashkin"
}




% \relative means each successive note is relative to the previous note
% such that the interval made with the previous note is no more than 1/5
% c' is middle c

treb-chord-prog = {\chordmode  { c4 g:7^5/b c} r}
bass-chord-prog = {\chordmode  { c,4 g,:7^5/b c,} r}

main-melody = {
   
   \partial 4 a'4 | 
   d,2 f4 a |
   d,2 f4 a8 c |
   b4 g  f8 g a4 |
   d,  c8 e d2 | d2.


}

   

treb-song = {
   \relative c'' {
      \main-melody
      \main-melody
   } 
}

bass-song = {
   \relative c {
   }
}
 
 
bella = {
   \clef treble
   \numericTimeSignature \time 4/4
   \key  c \major
   
      \treb-song
}

flux = \relative c {
         
      \clef bass
      \key  c \major
      \numericTimeSignature \time 4/4

}


\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "" \bella
    \new Staff = "" \flux
  >>
  \layout { }
  \midi { }
}
