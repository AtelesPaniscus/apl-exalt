#!/usr/bin/env apl --script

version ← '1.0.0' ⍝ run-length-encoding exercise, GNU-APL track, exercism


partition∆this ← {(1 + +\ 0, 1 ↓ ⍺) ⊂ ⍵}


∆noLeading1 ← {(1 ≠ ⍴⍵) / ⍕ ⍴⍵}

∆runLengthEncode ← {(∆noLeading1 ⍵), ↑ ⍵}

∆encodePartition ← {(⍵ ≠ ¯1 ⌽ ⍵) partition∆this ⍵}

∆encode ← {∆runLengthEncode¨ ∆encodePartition ⍵}


∇ R ← encode B
    → (0 = ⍴ (R ← B)) / exit
    R ← ∊ ∆encode B
exit:
∇


∆withLeading1 ← {⍎ (¯1 ↓ ⍵), (1 = ⍴⍵) / '1'}

∆runLengthDecode ← {(∆withLeading1 ⍵) ⍴ ¯1 ↑ ⍵}

∆decodePartition ← {(¯1 ⌽ 11 = '1234567890' ⍳ ⍵) partition∆this ⍵}

∆decode ← {∆runLengthDecode¨ ∆decodePartition ⍵}


∇ R ← decode B
    → (0 = ⍴ (R ← B)) / exit
    R ← ∊ ∆decode B
exit:
∇


∇ R ← consistency B
    R ← decode encode B
∇
