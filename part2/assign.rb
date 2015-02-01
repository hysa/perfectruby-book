# coding: utf-8

array = [1, 2, 3]
# 配列分割
a1, a2 = array
print a1, a2 , "\n"

b1, *b2 = array
print b1, b2, "\n"


# swap
b2, b1 = b1, b2
print b1, b2, "\n"
