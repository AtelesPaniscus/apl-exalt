#!/usr/bin/env apl --script

version ← '1.2.0' ⍝ acronym exercise, GNU-APL track, exercism


alphabet ← 'abcdefghijklmnopqrstuvwxyz'
ALPHABET ← 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'


∆uppercase ← {(ALPHABET, ⍵) [alphabet ⍳ ⍵]}

∆initials ← {(↑ ⍵), (¯1 ⌽ ⍵ ∊ ' -') / ⍵}


∇ R ← abbreviate B
    R ← ∆uppercase¨ ∆initials B
∇
