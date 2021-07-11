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
   title = "Temple of Time"
   subtitle = "The Legend of Zelda: Ocarina of Time"
   %subsubtitle = "In memory of Rosemary Caldwell Collins"
   composer = "Composed by Koji Kondo"
   arranger = "Arranged by Rebecca Rashkin"
}




% \relative means each successive note is relative to the previous note
% such that the interval made with the previous note is no more than 1/5
% c' is middle c

treb-chord-prog = {\chordmode  { c4 g:7^5/b c} r}
bass-chord-prog = {\chordmode  { c,4 g,:7^5/b c,} r}


main-melody = {
   
   \partial 4 a'4   | 
   d,2 f4  a        |
   d,2 f4  a8  c    |
   b4  g   f8  g a4 |
   d,  c8  e  d2~   | d2.
}

left-hand = {
   \partial 4 r4 | 
   d1 |
   d1 |
   b'2. a4~ |
   a2  <d, a'>2~ |
   <d a'>2. r4   | 
   <f a d>1        |
   <d f>1        |
   <g b>2. <f a>4~|
   <f a>2. <d d'>1

   
}

%left
   

treb-song = {
   \relative c'' {
      \main-melody
      \main-melody
   } 
}

bass-song = {
   \relative c {
      \left-hand
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
         \bass-song

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
