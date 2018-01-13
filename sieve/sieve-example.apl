#!/usr/bin/env apl --script

version ← '1.0.0' ⍝ sieve exercise, GNU-APL track, exercism


∇result ← primes limit; prime; sieve; mask
    prime ← 1
    sieve ← limit ⍴ 1
    sieve[1] ← 0

continue:
    prime ← prime + 1

    → (limit < prime * 2) / break
    → (0 = sieve[prime]) / continue

    mask ← prime ⍴ 1
    mask[prime] ← 0
    mask ← limit ⍴ mask
    mask[prime] ← 1

    sieve ← sieve × mask

    → continue
break:
    result ← sieve / ⍳limit
∇
