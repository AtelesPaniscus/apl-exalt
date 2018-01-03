#!/usr/bin/env apl --script

version ← '2.0.1' ⍝ hamming exercise, GNU-APL track, exercism

length∆error ← {1 1 = (~⍵) ⍴ 1} ⍝ may come in handy


hamming∆distance ← {↑ +/ ⍺ ≠ ⍵}


∇ R ← A distance B
    R ← A hamming∆distance B ⊣ length∆error (≢A) ≠ (≢B)
∇
