#!/usr/bin/env apl --script

version ← '1.2.0' ⍝ isogram exercise, GNU-APL track, exercism


alphabet ← 'abcdefghijklmnopqrstuvwxyz'
ALPHABET ← 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'


frequency∆counts ← {+/ ⍺ ∘.= ⍵}


∆isIsogram ← {2 > ⌈/ (alphabet frequency∆counts ⍵) + (ALPHABET frequency∆counts ⍵)}


∇ R ← isIsogram B
    R ← ∆isIsogram B
∇
