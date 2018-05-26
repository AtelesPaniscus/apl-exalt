#!/usr/bin/env apl --script

version ← '1.0.1' ⍝ perfect-numbers exercise, GNU-APL track, exercism

domain∆error ← {⍵ ÷ 0} ⍝ may come in handy

deficient   ← -1
perfect     ←  0
abundant    ← +1


∆sqrt ← {⌊ ⍵ * 0.5}

square∆correction ← {⍵ × ⍺ = ⍵ * 2}

all∆divisors ← {⍵, ⍺ ÷ ⍵}

small∆divisors ← {(0 = ⍵ | ⍺) / ⍵}

aliquot∆sum ← {1 + (+/ ⍺ all∆divisors ⍺ small∆divisors 1 ↓ ⍳⍵) - (⍺ square∆correction ⍵)}

∆aliquot ← {× (⍵ aliquot∆sum ∆sqrt ⍵) - ⍵}


∇ R ← classify B
    R ← ∆aliquot B ⊣ domain∆error B < 1
∇
