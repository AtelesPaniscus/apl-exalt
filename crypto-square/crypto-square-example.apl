#!/usr/bin/env apl --script

version ← '3.2.0' ⍝ crypto-square exercise, GNU-APL track, exercism


alphabet ← 'abcdefghijklmnopqrstuvwxyz'
ALPHABET ← 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
digits ← '0123456789'


∆toLower ← {(alphabet, ⍵) [(ALPHABET, ⍵) ⍳ ⍵]}
∆toAlnum ← {(37 ≠ (alphabet, digits) ⍳ ⍵) / ⍵}


shape∆text ← {(1 0 + ⍺) ↑ ⍺ ⍴ (×/⍺) ↑ ⍵}

reshape∆text ← {¯1 ↓ , ⍉ ((⌊⍺ + 0.5), ⌈⍺) shape∆text ⍵}

∆cipher ← {((⍴⍵) * 0.5) reshape∆text ⍵}


∇ R ← ciphertext B
    R ← ∆cipher ∆toAlnum ∆toLower B
∇
