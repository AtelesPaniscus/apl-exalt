#!/usr/bin/env apl --script

version ← '1.0.0' ⍝ triangle exercise, GNU-APL track, exercism


∆checkPositive  ←  {^/ 0 < ⍵}
∆checkTriangle  ←  {(2 × ⌈/ ⍵) < +/ ⍵}

∆isEquilateral  ←  {3 = +/ ⍵ = 1 ⌽ ⍵}
∆isIsosceles    ←  {0 ≠ +/ ⍵ = 1 ⌽ ⍵}
∆isScalene      ←  {0 = +/ ⍵ = 1 ⌽ ⍵}


∇ R ← equilateral B
    R ← (∆checkPositive B) ∧ (∆checkTriangle B) ∧ (∆isEquilateral B)
∇

∇ R ← isosceles B
    R ← (∆checkPositive B) ∧ (∆checkTriangle B) ∧ (∆isIsosceles B)
∇

∇ R ← scalene B
    R ← (∆checkPositive B) ∧ (∆checkTriangle B) ∧ (∆isScalene B)
∇
