#!/usr/bin/env apl --script

version ← '1.0.0' ⍝ variable-length-quantity exercise, GNU-APL track, exercism

domain∆error ← {⍵ ÷ 0} ⍝ may come in handy


thresholds ← 0, 16 * 2 4 6


∆hexDigitCount ← {2 × +/ ⍵ ≥ thresholds}

∆toNumber ← {16 ⊥ ('0123456789abcdef0123456789ABCDEF' ⍳ ⍵) - 1}
∆toHex ← {'0123456789abcdef' [1 + (⍺ ⍴ 16) ⊤ ↑ ⍵]}

∆numberToHex ← {(∆hexDigitCount ⍵) ∆toHex ⍵}
∆byteToHex ← {2 ∆toHex ⍵}


∆encode7bits ← {128 128 128 128 128 ⊤ ⍵}

∆encodeVLO ← {(0 0 0 0 1 ∨ ∨\ ⍵ ≠ 0) / 128 128 128 128 0 + ⍵}

∆encode ← {∆byteToHex¨¨ ∆encodeVLO¨ ∆encode7bits¨ ∆toNumber¨ ⍵}


∆isBlank ← {⍵ ≢ '  '}

∆strip ← {(∆isBlank¨ ⍵) / ⍵}

∆reformat ← {∆strip ,⊃ ⍵}


∇ R ← encode B
    R ← ∆reformat ∆encode B
∇


∆checkBit8 ← {⍵ ⊣ domain∆error ~ ¯1 ↑ ⍵}

∆checkVLO ← {(1 + +\ 0, 1 ↓ ¯1 ⌽ ∆checkBit8 ⍵ < 128) ⊂ ⍵}

∆decodeVLO ← {128 ⊥ 128 | ⍵ ⊣ domain∆error 5 < ⍴ ⍵}


∆decode ← {, ∆numberToHex¨ ∆decodeVLO¨ ∆checkVLO ∆toNumber¨ ⍵}

∇ R ← decode B
    R ← ∆decode B
∇
