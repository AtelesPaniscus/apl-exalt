#!/usr/bin/env apl --script

version ← '1.0.0' ⍝ armstrong-numbers exercise, GNU-APL track, exercism


is∆armstrong ← {⍵ = +/ (((1 + ⍺) ⍴ 10) ⊤ ⍵) * ⍺}


∇ R ← isArmstrongNumber B
    R ← (⍴ ⍕ B) is∆armstrong B
∇
