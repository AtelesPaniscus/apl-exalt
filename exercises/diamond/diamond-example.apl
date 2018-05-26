#!/usr/bin/env apl --script

version ← '1.1.0' ⍝ diamond exercise, GNU-APL track, exercism


ALPHABET ← 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'


∆letters ← {((~ ∨\ ⍵ = ALPHABET) / ALPHABET), ⍵}

∆horizontalPattern ← {(⌽⍵), 1 ↓ ⍵}

∆verticalPattern ← {⍵, 1 ↓ ⌽⍵}

op∆compare ← {↑ (⍺ = ⍵) ⌽ ' ', ⍵}

∆diamond ← {(∆verticalPattern ⍵) ∘.op∆compare (∆horizontalPattern ⍵)}


∇ R ← rows B
    R ← ∆diamond ∆letters B
∇
