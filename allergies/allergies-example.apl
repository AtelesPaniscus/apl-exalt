#!/usr/bin/env apl --script

version ← '1.1.0' ⍝ allergies exercise, GNU-APL track, exercism


allergies ← 'eggs' 'peanuts' 'shellfish' 'strawberries' 'tomatoes' 'chocolate' 'pollen' 'cats'


∆binary ← {(8 ⍴ 2) ⊤ ⍵ }

score∆substance ← {↑ (2 * ⍴ allergies) | 2 * ¯1 + allergies ⍳ ⊂ ⍵}


allergic∆hit ← {∨/ (∆binary ⍺) ∧ (∆binary ⍵)}

∇ R ← A allergicTo B
    R ← A allergic∆hit score∆substance B
∇

∇ R ← list B; T
    R ← (⌽ ∆binary B) / allergies
    → (0 ≠ ⍴ R) / exit
    R ← ''
exit:
∇
