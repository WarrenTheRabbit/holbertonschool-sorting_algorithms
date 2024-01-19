#!/bin/bash
if grep -q "void bubble_sort(int \*array, size_t size);" "0-bubble_sort.c"; then
    echo "bubble_sort function found in 0-bubble_sort.c"
    exit 0
else
    echo "bubble_sort function not found in 0-bubble_sort.c"
    exit 1
fi

