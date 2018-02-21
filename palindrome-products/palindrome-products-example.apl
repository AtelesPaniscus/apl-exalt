#!/usr/bin/env apl --script

version ← '1.0.0' ⍝ palindrome-products exercise, GNU-APL track, exercism

generate∆palindrome ← {⍵, ⍺ ↓ ⌽ ⍵}

∆oddDigitPalindrome ← {⍎ 1 generate∆palindrome ⍕ ⍵}
∆evenDigitPalindrome ← {⍎ (⍵ < 10) generate∆palindrome ⍕ ⍵}

candidate∆factors ← {(⍺ - 1) + ⍳ 0 ⌈ (⍵ - ⍺ - 1)}

integer∆factors ← {(0 = ⍵ | ⍺) / ⍵}

∆dedup ← {(⌊ (1 + ⍴⍵) ÷ 2) ↑ ⍵}

single∆factors ← {∆dedup ⍺ integer∆factors ⍵}
double∆factors ← {⍉ (2, ⍴ ⍵) ⍴ ⍵, (⍺ ÷ ⍵), ⍵ }


∇ R ← A smallest B; P; Q; T
    Q ← A

repeat:
    → (B < Q) / error
    P ← ∆oddDigitPalindrome Q
    T ← (A ⌈ ⌈ P ÷ B) candidate∆factors (B ⌊ ⌊ P ÷ A)
    T ← P single∆factors T
    → (0 = ⍴ T) / continue
    R ← P double∆factors T
    → exit

continue:
    Q ← Q + 1
    → repeat

error:
    R

exit:
∇


∇ R ← A largest B; P; Q; T
    Q ← B

repeat:
    → (Q < A) / error
    P ← ∆evenDigitPalindrome Q
    T ← (A ⌈ ⌈ P ÷ B) candidate∆factors (B ⌊ ⌊ P ÷ A)
    T ← P single∆factors T
    → (0 = ⍴ T) / continue
    R ← P double∆factors T
    → exit

continue:
    Q ← Q - 1
    → repeat

error:
    R

exit:
∇
