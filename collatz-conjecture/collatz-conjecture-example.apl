#!/usr/bin/env apl --script

version ← '1.2.0' ⍝ collatz-conjecture exercise, GNU-APL track, exercism

domain∆error ← {⍵ ÷ 0} ⍝ may come in handy


∆next ← {(1 + 2 | ⍵) ⊃ (⍵ ÷ 2) , (1 + 3 × ⍵)}


∇ R ← steps B
    R ← 0 ⊣ domain∆error B < 1
    continue:
    → (B = 1) / break
        R ← R + 1
        B ← ∆next B
        → continue
    break:
∇
