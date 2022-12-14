#include "devicelib.h"
#include <stdint.h>
// top of stack
extern unsigned __stacktop;
// initial stack pointer is first address of program
__attribute__((section(".stack"), used)) unsigned* __stack_init = &__stacktop;

extern int main();

__attribute__((section(".text.start"))) __attribute__((naked)) void _start() {
  asm("mv sp, %0\n\t" ::"r"(&__stacktop));
  asm("j %0\n\t" ::"i"(&main));
}


uint32_t time() { return *CLOCK_ADDR; }

void sleep(uint32_t us) {
  uint32_t start = *CLOCK_ADDR;
  while (1) {
    if (*CLOCK_ADDR >= start + us) {
      break;
    }
  }
}

//void set_led(uint32_t val) { *LED_ADDR = val; }

void set_vram(int x, int y, uint8_t pixel) {
  VRAM_ADDR[x * VRAM_Y + y] = pixel;
}
void commit_vram() { *VRAM_COMMIT_ADDR = 1; }
uint8_t keyboard_ready() { return *KBD_READY_ADDR; }

uint8_t keyboard_data() { return *KBD_DATA_ADDR; }
void* memset(void* dest, int c, unsigned long n) {
  char* s = dest;
  for (uint32_t i = 0; i < n; ++i) {
    s[i] = c;
  }
  return dest;
}

void* memcpy(void* dest, const void* src, unsigned long n) {
  const char* s = src;
  char* d       = dest;
  for (unsigned long i = 0; i < n; ++i) {
    d[i] = s[i];
  }
  return dest;
}

// uint8_t uart_recv_ready() { return *UART_RECV_READY_ADDR; }
// uint8_t uart_send_ready() { return *UART_SEND_READY_ADDR; }
// uint8_t uart_recv() { return *UART_RECV_DATA_ADDR; }
// void uart_send(uint8_t data) { *UART_SEND_DATA_ADDR = data; }
