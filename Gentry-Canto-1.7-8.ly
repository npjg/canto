\version "2.19.84"

global = {
  \key d \minor
  \time 4/4
  \set melismaBusyProperties = #'(tieMelismaBusy)
  \override Hairpin.to-barline = ##t
}

\header {
  dedication = \markup{\italic{"for Emma"}}
  title = \markup{\caps{"Canto 1:7-8"}}
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

altoVoice = \relative c'' {
  \global
  \dynamicUp
  \partial 4 a4 f e f d e g f e f g a bes a2 r4 bes d c bes a g8( f e f) g4 a8( g) f4. f8 e8( d) cis( e) d2
  r4 f a d c b a g a d,8( e) f( g a bes a g f a g f e) c d2 \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  O thou whom my soul lov -- _ eth,
  Tell me where thou dost feed,
  And where thy flocks at noon -- _ _ _ day
  To _ rest and browse _ dost _ lead.
  For why should I by oth -- ers be
  And _ not __ _ _ _ _ _ _ _ _ _ _ by thee?
}

verseTwo = \lyricmode {
  \set stanza = "2."
  O fair -- est a -- mong wo --  _ men
  Dost thou in -- deed not know?
  The way my lit -- tile flock _ _ _ let 
  The _ way that my _ flocks _- go;
  And be to me, As I to thee
  Sweet _ com -- _ _ _ _ _ _ _ _ _ _ pan -- y.
}

\score {
  \new Staff \with {
    instrumentName = "Alto"
  } { \altoVoice }
  \addlyrics { \verseOne }
  \addlyrics { \verseTwo }
  \layout { }
}