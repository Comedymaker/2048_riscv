#include "graphics.h"
#include "devicelib.h"
#include "color.h"

void graphics_flip() {
  commit_vram();
}

void graphics_init(int x, int y) {

  for (int i = 0; i < VRAM_Y; i++) {
    for (int j = 0; j < VRAM_X; j++) {
      set_vram(j, i, ColorBackground);
    }
  }
  graphics_flip();
}

void graphics_fill_rect(int x, int y, int w, int h, unsigned char block_type) {
  for (int i = x; i < x + w; i++) {
    for (int j = y; j < y + h; j++) {

      set_vram(j, i, block_type);

    }
  }
}