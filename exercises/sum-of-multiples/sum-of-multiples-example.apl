#!/usr/bin/env apl --script

version ← '1.1.0' ⍝ sum-of-multiples exercise, GNU-APL track, exercism


multiple∆list ← {⍵ × ⍳ ⌊ ⍺ ÷ ⍵}

multiples∆set ← {(∪ ∊ ⍺ multiple∆list¨ ⍵) ~ ⍺}


∇ R ← A sum B
    R ← +/ 0, A multiples∆set B
∇
