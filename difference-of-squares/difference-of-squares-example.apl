#!/usr/bin/env apl --script

version ← '1.2.0' ⍝ difference-of-squares exercise, GNU-APL track, exercism


∆sum ← {(⍵ ÷ 2) × (⍵ + 1)}

∆squareOfSum ← {(∆sum ⍵) * 2}

∆sumOfSquares ← {((∆sum ⍵) × 1 + 2 × ⍵) ÷ 3}


∇ R ← squareOfSum B
    R ← ∆squareOfSum B
∇

∇ R ← sumOfSquares B
    R ← ∆sumOfSquares B
∇

∇ R ← differenceOfSquares B
    R ← (∆squareOfSum B) - (∆sumOfSquares B)
∇
