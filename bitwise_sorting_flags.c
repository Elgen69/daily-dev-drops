// bitwise_sorting_flags.c
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

#define MAX 16

// Toggle sorting mode: 0 for ascending, 1 for descending
#define SORT_DESCENDING 1

// Helper to print binary representation
void print_binary(uint8_t n) {
    for (int i = 7; i >= 0; i--)
        printf("%d", (n >> i) & 1);
}

// Custom comparator using XOR + bit manipulation
int bitwise_cmp(const void *a, const void *b) {
    uint8_t x = *(uint8_t *)a;
    uint8_t y = *(uint8_t *)b;

    uint8_t mask = SORT_DESCENDING ? 0xFF : 0x00;
    return ((x ^ mask) > (y ^ mask)) - ((x ^ mask) < (y ^ mask));
}

int main() {
    uint8_t data[MAX] = {14, 3, 9, 1, 7, 0, 11, 6, 8, 12, 5, 4, 10, 13, 15, 2};

    printf("Original:\n");
    for (int i = 0; i < MAX; i++) {
        printf("%2d (", data[i]);
        print_binary(data[i]);
        printf(")\n");
    }

    qsort(data, MAX, sizeof(uint8_t), bitwise_cmp);

    printf("\nSorted (%s):\n", SORT_DESCENDING ? "Descending" : "Ascending");
    for (int i = 0; i < MAX; i++) {
        printf("%2d (", data[i]);
        print_binary(data[i]);
        printf(")\n");
    }

    return 0;
}
