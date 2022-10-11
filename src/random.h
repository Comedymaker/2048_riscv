//rewrite the function to get random number
#include <stdint.h>
struct XorShift {
  uint32_t a;
};
uint32_t xorshift32(struct XorShift* state);
uint32_t my_rand();
void srand(uint32_t);
