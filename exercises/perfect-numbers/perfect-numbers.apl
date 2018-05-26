#!/usr/bin/env apl --script

version ← '1.0.1' ⍝ perfect-numbers exercise, GNU-APL track, exercism

domain∆error ← {⍵ ÷ 0} ⍝ may come in handy

deficient   ← ¯1
perfect     ←  0
abundant    ←  1

∇result ← classify integer
    result ← 'Implement me and return deficient, perfect or abundant'
∇
