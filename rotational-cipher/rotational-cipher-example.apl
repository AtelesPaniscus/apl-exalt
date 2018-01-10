#!/usr/bin/env apl --script

version ← '1.1.0' ⍝ rotational-cipher exercise, GNU-APL track, exercism


alphabet ← 'abcdefghijklmnopqrstuvwxyz'
ALPHABET ← 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'


rotate∆lower ← {((⍺ ⌽ alphabet), ⍵) [alphabet ⍳ ⍵]}
rotate∆upper ← {((⍺ ⌽ ALPHABET), ⍵) [ALPHABET ⍳ ⍵]}

rotational∆cipher ← {⍺ rotate∆lower (⍺ rotate∆upper ⍵)}


∇ R ← A rotate B
    R ← B rotational∆cipher¨ A
∇
