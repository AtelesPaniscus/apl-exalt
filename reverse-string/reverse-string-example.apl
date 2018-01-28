#!/usr/bin/env apl --script

version ← '1.0.1' ⍝ reverse-string exercise, GNU-APL track, exercism


⍝ use the language - too easy
⍝ reverse ← {⌽ ⍵}


⍝ use recursion - too risky
⍝∇ R ← reverse B
⍝    R ← ''
⍝    → (B ≡ '') / exit
⍝    R ← (reverse 1 ↓ B), ↑B
⍝exit:
⍝∇


⍝ use lopp - too traditional
∇ R ← reverse B
    R ← ''
loop:
    → (B ≡ '') / exit
    R ← (↑B), R
    B ← 1 ↓ B
    → loop
exit:
∇
