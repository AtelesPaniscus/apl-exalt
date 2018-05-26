#!/usr/bin/env apl --script

version ← '1.1.0' ⍝ pig-latin exercise, GNU-APL track, exercism


∇ R ← ∆translate B
    R ← B

    → (6 ≠ 'aeiou' ⍳ ↑ R) / exit

    → (∧/ 'yt' = 2 ↑ B) / exit
    → (∧/ 'xray' = 4 ↑ B) / exit

repeat:
    R ← (∧/ 'qu' = 2 ↑ R) ⌽ R
    R ← 1 ⌽ R

    → (7 = 'aeiouy' ⍳ ↑ R) / repeat

exit:
    R ← R, 'ay'
∇


∇ R ← translate B
    B ← (1 + +\ B = ' ') ⊂ B

    R ← ∊ ∆translate ↑ B

    R ← R, ∊ ' ',¨ ∆translate¨ 1 ↓¨ 1 ↓ B
∇
