#!/usr/bin/env apl --script

version ← '1.2.0' ⍝ nucleotide-count exercise, GNU-APL track, exercism

domain∆error ← {⍵ ÷ 0} ⍝ may come in handy


nucleotide∆Counts ← {⍉ 2 4 ⍴ ⍺, +/ ⍺ ∘.= ⍵}


∇ R ← nucleotideCounts B
    R ← 'ACGT' nucleotide∆Counts B

    R ← R ⊢ domain∆error (⍴B) ≠ +/ ∊ 0 1 ↓ R
∇
