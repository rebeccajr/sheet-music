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


% \relative means each successive note is relative to the previous note
% such that the interval made with the previous note is no more than 1/5
% c' is middle c

treb-chord-prog = {\chordmode  { c4 g:7^5/b c} r}
bass-chord-prog = {\chordmode  { c,4 g,:7^5/b c,} r}

mini-scale = {
   c8  d  e  f  g  f   e  d  |
   c   d  e  f  g4     c,    |
}

treb-song = {
   \mini-scale
   \treb-chord-prog
}

bass-song = {
   \mini-scale
   \bass-chord-prog
}
 
 
bella = {
   \clef treble
   \numericTimeSignature \time 4/4
   \key  c \major
   
   \relative c' {

      \treb-song \break
      \key d \major
      \transpose c d' { \treb-song } \break
      \key e \major
      \transpose c e' { \treb-song } \break
      \key f \major
      \transpose c f' { \treb-song } \break
      \key g \major
      \transpose c g' { \treb-song } \break
      \key a \major
      \transpose c a' { \treb-song } \break
      \key b \major
      \transpose c b' { \treb-song } \break
   }
}

flux = \relative c {
         
      \clef bass
      \key  c \major
      \numericTimeSignature \time 4/4

      \bass-song \break
      \key d \major
      \transpose c d { \bass-song } \break 
      \key e \major
      \transpose c e { \bass-song } \break 
      \key f \major
      \transpose c f { \bass-song } \break 
      \key g \major
      \transpose c g { \bass-song } \break 
      \key a \major
      \transpose c a { \bass-song } \break 
      \key b \major
      \transpose c b { \bass-song } \break 
}


\header {
   title = "Mini Scale Exercise"
   arranger = "Arranged by Rebecca Rashkin"
}

\score {
  \new PianoStaff <<
    %\set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "" \bella
    \new Staff = "" \flux
  >>
  \layout { }
  \midi { }
}
