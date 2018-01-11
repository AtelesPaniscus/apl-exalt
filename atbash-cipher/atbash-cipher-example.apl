#!/usr/bin/env apl --script

version ← '1.1.0' ⍝ atbash-cipher exercise, GNU-APL track, exercism


ALPHABET ← 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
alphabet ← 'abcdefghijklmnopqrstuvwxyz'
tebahpla ← ⌽ alphabet
digits ← '0123456789'


∆charactersIn  ← alphabet, ALPHABET, digits
∆charactersOut ← tebahpla, tebahpla, digits, ' '

∆removeSpaces ← {(⍵ ≠ ' ') / ⍵}
∆insertSpaces ← {(0 ≠ 6 | ⍳ ⌊ ((⍴⍵) × 6 ÷ 5) - ÷ 5) \ ⍵}

∆atbash ← {∆removeSpaces ∆charactersOut [∆charactersIn ⍳ ⍵]}


∇ R ← encode B
    R ← ∆insertSpaces ∆atbash B
∇

∇ R ← decode B
    R ← ∆atbash B
∇
