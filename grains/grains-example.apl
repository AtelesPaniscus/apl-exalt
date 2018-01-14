#!/usr/bin/env apl --script

version ← '1.0.0' ⍝ grains exercise, GNU-APL track, exercism

domain∆error ← {⍵ ÷ 0} ⍝ may come in handy


∆square ← {2 * ⍵ - 1}

∆squareTotal ← {(2 * ⍵) - 1}


∇ R ← square B
    R ← ∆square B ⊣ domain∆error 1 0 = B ≤ 0 64
∇

∇ R ← total
    R ← ∆squareTotal 64
∇
