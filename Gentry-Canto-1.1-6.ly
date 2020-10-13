\version "2.19.84"

global = {
  \key d \major
  \time 3/4
  \set melismaBusyProperties = #'(tieMelismaBusy)
  \override Hairpin.to-barline = ##t
}

\header {
  dedication = \markup{\italic{"for Emma"}}
  title = \markup{\caps{"Canto 1:1-6"}}
  subtitle = \markup{"from" \caps{"Hinds’ feet on high places"}}
  composer = "Nathanael Gentry"
  poet = "Hannah Hurnard"
  tagline = ##f
}

\paper {
  top-system-spacing.basic-distance = #10
  score-system-spacing.basic-distance = #10
  system-system-spacing.basic-distance = #25
  last-bottom-spacing.basic-distance = #10
}

altoVoice = \relative c' {
  \global
  \dynamicUp
  \tempo "Childlike"
  \partial 2 r8 a d e | e( fis fis) a b a | fis4 r8 e8 fis e | \time 4/4 b4 d e2 |
  \time 3/4 r8 a, d e e( fis fis) a cis a fis4~ | fis8\noBeam fis g a g fis e2. \bar "||"
  \time 4/4 r4 d d a' a d, d e fis fis8( d) b4~ b8 fis'8 e e d2. \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  The Song of Songs, __ _ _ the love -- liest song,
  The song of Love the King;
  No joy on earth __ _ _ com -- pares with his,
  But seems a bro -- ken thing.
  His name as oint -- ment is poured forth,
  And _ all his lov -- ers sing.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  Draw me, I will __ _ _ run a -- fter thee,
  Thou art my heart's one choice;
  Oh, bring me to __ _ _ thy roy -- al house,
  To dwell there and re -- joice.
  There in thy pres -- ence, O my King, 
  To _ feast and hear thy voice.
}

verseThree = \lyricmode {
  \set stanza = "3."
   Look not up -- on __ _ _ me with con -- tempt
   Though soiled and marred I be;
   The King found me, __ _ _ an out -- cast thing,
   And set his love on me.
   I shall be per -- fect -- ed by Love,
   Made _ fair as day to see.
}

\score {
  \new Staff \with {
    instrumentName = "Alto"
  } { \altoVoice }
  \addlyrics { \verseOne }
  \addlyrics { \verseTwo }
  \addlyrics { \verseThree }
  \layout { }
}