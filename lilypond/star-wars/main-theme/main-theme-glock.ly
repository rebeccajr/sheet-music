%---------------------------------------------------------------------
% DESCRIPTION
% Glockenspiel arrangement for Star Wars Main Theme in G.
% Outputs pdf of sheet music and midi file.
%
% USAGE
% lilypond name-of-file.ly
%
% CREATED BY
% rebecca
% July 2021
%---------------------------------------------------------------------


% replace with version of lilypond
\version "2.20.0"


% little-glock is a variable name, replace with "upper" or anything else
little-glock = \relative c' {
            \clef treble
            \key  g \major
            \numericTimeSignature \time 4/4

   % song starts here
   \partial 4 \tuplet 3/2 { d8[ d d] } |
   
   g4 <d g,> d' <d, b> |
   \tuplet 3/2 { <c' c,>8 b a } g'4 <d, g,> d'
   \tuplet 3/2 { <c  c,>8 b a } g'4 <d, g,> d'
   \tuplet 3/2 { <c  f,>8 b c } <f, a>2

   d8. d8 |
   g4 <d g,> d' <d, b> |
   \tuplet 3/2 { <c' c,>8 b a } g'4 <d, g,> d'
   \tuplet 3/2 { <c  c,>8 b a } g'4 <d, g,> d'
   \tuplet 3/2 { <c  f,>8 b c } <f, a>2


}



\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Glockenspiel  "
    \new Staff = "little-glock" \little-glock
  >>
  \layout { }
  \midi { }
}
