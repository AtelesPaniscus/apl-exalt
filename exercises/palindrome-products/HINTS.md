# Palindrome Products - Hints

The exercise README suggests a solution return both the palindrome product and its factors.
This is tricky in APL so don't even try.

The test cases expect the results returned to be:

  * just the factors (the product is easy enough to calculate from the factors)
  * an n × 2 array, where n is the number of factors (usually 1)
  * one row per factor pair
  * the first column contains the smaller factor
  * the second column contains the larger factor
  * rows are ordered on the first column.

E.g:

```apl
    1 largest 9
    1 9
    3 3
```
