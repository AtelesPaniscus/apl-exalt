#!/usr/bin/env apl --script

version ← '2.0.0' ⍝ nth-prime exercise, GNU-APL track, exercism

domain∆error ← {⍵ ÷ 0} ⍝ may come in handy


∇ R ← prime B; P; N
    N ← 1 ⊣ P ← 2 ⊣ domain∆error B ≤ 0
    → (0 = B ← B - 1) / break
continue:
    → (∨/ 0 = P | N ← N + 2) / continue
    → (0 ≠ B ← B - 1 ⊣ P ← N, P) / continue
break:
    R ← ↑ P
∇
