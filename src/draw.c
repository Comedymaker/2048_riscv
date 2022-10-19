#include "draw.h"
#include "graphics.h"
#include "stdint.h"
void draw_start_view() {
  graphics_fill_rect(STAGE_LEFT_MARGIN * BLOCK_SIZE,
                     STAGE_TOP_MARGIN * BLOCK_SIZE, STAGE_W * BLOCK_SIZE,
                     STAGE_H * BLOCK_SIZE, Color2);

  // draw character "G"
  graphics_fill_rect(STAGE_LEFT_MARGIN * BLOCK_SIZE,
                     (STAGE_TOP_MARGIN + 7) * BLOCK_SIZE, 4 * BLOCK_SIZE,
                     6 * BLOCK_SIZE, NumColor);
  graphics_fill_rect((STAGE_LEFT_MARGIN + 1) * BLOCK_SIZE,
                     (STAGE_TOP_MARGIN + 8) * BLOCK_SIZE, 2 * BLOCK_SIZE,
                     4 * BLOCK_SIZE, Color2);
  graphics_fill_rect((STAGE_LEFT_MARGIN + 3) * BLOCK_SIZE,
                     (STAGE_TOP_MARGIN + 8) * BLOCK_SIZE, 1 * BLOCK_SIZE,
                     2 * BLOCK_SIZE, Color2);
  graphics_fill_rect((STAGE_LEFT_MARGIN + 2) * BLOCK_SIZE,
                     (STAGE_TOP_MARGIN + 10) * BLOCK_SIZE, 1 * BLOCK_SIZE,
                     1 * BLOCK_SIZE, NumColor);

  // draw character "O"
  graphics_fill_rect((STAGE_LEFT_MARGIN + 6) * BLOCK_SIZE,
                     (STAGE_TOP_MARGIN + 7) * BLOCK_SIZE, 4 * BLOCK_SIZE,
                     6 * BLOCK_SIZE, NumColor);
  graphics_fill_rect((STAGE_LEFT_MARGIN + 7) * BLOCK_SIZE,
                     (STAGE_TOP_MARGIN + 8) * BLOCK_SIZE, 2 * BLOCK_SIZE,
                     4 * BLOCK_SIZE, Color2);
  graphics_flip();
}

void draw_start_view2() {
  graphics_fill_rect(STAGE_LEFT_MARGIN * BLOCK_SIZE,
                     STAGE_TOP_MARGIN * BLOCK_SIZE, STAGE_W * BLOCK_SIZE,
                     STAGE_H * BLOCK_SIZE, Color2);

  // draw character "G"
  graphics_fill_rect(STAGE_LEFT_MARGIN * BLOCK_SIZE,
                     (STAGE_TOP_MARGIN + 7) * BLOCK_SIZE, 5 * BLOCK_SIZE,
                     6 * BLOCK_SIZE, NumColor);
  graphics_fill_rect((STAGE_LEFT_MARGIN + 1) * BLOCK_SIZE,
                     (STAGE_TOP_MARGIN + 5) * BLOCK_SIZE, 2 * BLOCK_SIZE,
                     4 * BLOCK_SIZE, Color2);
  graphics_fill_rect((STAGE_LEFT_MARGIN + 5) * BLOCK_SIZE,
                     (STAGE_TOP_MARGIN + 8) * BLOCK_SIZE, 1 * BLOCK_SIZE,
                     2 * BLOCK_SIZE, Color2);
  graphics_fill_rect((STAGE_LEFT_MARGIN + 7) * BLOCK_SIZE,
                     (STAGE_TOP_MARGIN + 9) * BLOCK_SIZE, 5 * BLOCK_SIZE,
                     1 * BLOCK_SIZE, NumColor);

  // draw character "O"
  graphics_fill_rect((STAGE_LEFT_MARGIN + 6) * BLOCK_SIZE,
                     (STAGE_TOP_MARGIN + 7) * BLOCK_SIZE, 4 * BLOCK_SIZE,
                     6 * BLOCK_SIZE, NumColor);
  graphics_fill_rect((STAGE_LEFT_MARGIN + 7) * BLOCK_SIZE,
                     (STAGE_TOP_MARGIN + 8) * BLOCK_SIZE, 2 * BLOCK_SIZE,
                     4 * BLOCK_SIZE, Color2);
  graphics_flip();
}

void draw_board(uint8_t board[4][4]){
  uint8_t x, y;
  for (x = 0; x < 4; x++)
  {
    for (y = 0; y < 4; y++)
    {
      draw_num(x, y, board[x][y]);
    }

    
  }
  
  graphics_flip();
}

void draw_num(uint8_t x, uint8_t y, uint8_t num){
  switch (num)
  {
  case 0:
    draw_none(10 + x * 15, y * 15);
    break;

  case 1:
    draw2(10 + x * 15, y * 15);
    break;
  
  case 2:
    draw4(10 + x * 15, y * 15);
    break;
  
  case 3:
    draw8(10 + x * 15, y * 15);
    break;

  case 4:
    draw16(10 + x * 15, y * 15);
    break;

  case 5:
    draw32(10 + x * 15, y * 15);
    break;

  case 6:
    draw64(10 + x * 15, y * 15);
    break;

  case 7:
    draw128(10 + x * 15, y * 15);
    break;

  case 8:
    draw256(10 + x * 15, y * 15);
    break;

  case 9:
    draw512(10 + x * 15, y * 15);
    break;

  case 10:
    draw1024(10 + x * 15, y * 15);
    break;

  case 11:
    draw2048(10 + x * 15, y * 15);
    break;

  default:
    break;
  }
}

void draw_none(uint32_t left, uint32_t top)
{
  graphics_fill_rect(left, top, 15, 15, ColorBackground);
  graphics_fill_rect(left + 7, top + 7, 1, 1, NumColor);
}

void draw2(uint32_t left, uint32_t top){
  graphics_fill_rect(left, top, 15, 15, Color2);
  graphics_fill_rect(left + 6, top + 5, 3, 1, NumColor);
  graphics_fill_rect(left + 6, top + 7, 3, 1, NumColor);
  graphics_fill_rect(left + 6, top + 9, 3, 1, NumColor);
  graphics_fill_rect(left + 8, top + 6, 1, 1, NumColor);
  graphics_fill_rect(left + 6, top + 8, 1, 1, NumColor);
  
}

void draw4(uint32_t left, uint32_t top){
  graphics_fill_rect(left, top, 15, 15, Color4);
  graphics_fill_rect(left + 6, top + 5, 1, 3, NumColor);
  graphics_fill_rect(left + 8, top + 5, 1, 5, NumColor);
  graphics_fill_rect(left + 7, top + 7, 1, 1, NumColor);
  
}

void draw8(uint32_t left, uint32_t top){
  graphics_fill_rect(left, top, 15, 15, Color8);
  graphics_fill_rect(left + 6, top + 5, 3, 1, NumColor);
  graphics_fill_rect(left + 6, top + 7, 3, 1, NumColor);
  graphics_fill_rect(left + 6, top + 9, 3, 1, NumColor);
  graphics_fill_rect(left + 6, top + 5, 1, 5, NumColor);
  graphics_fill_rect(left + 8, top + 5, 1, 5, NumColor);
  
}

void draw16(uint32_t left, uint32_t top){
  graphics_fill_rect(left, top, 15, 15, Color16);
  graphics_fill_rect(left + 5, top + 5, 1, 5, NumColor);

  graphics_fill_rect(left + 7, top + 5, 3, 1, NumColor);
  graphics_fill_rect(left + 7, top + 5, 1, 5, NumColor);
  graphics_fill_rect(left + 7, top + 7, 3, 1, NumColor);
  graphics_fill_rect(left + 7, top + 9, 3, 1, NumColor);
  graphics_fill_rect(left + 9, top + 8, 1, 1, NumColor);
  
}

void draw32(uint32_t left, uint32_t top){
  graphics_fill_rect(left, top, 15, 15, Color32);
  graphics_fill_rect(left + 4, top + 5, 3, 1, NumColor);
  graphics_fill_rect(left + 4, top + 7, 3, 1, NumColor);
  graphics_fill_rect(left + 4, top + 9, 3, 1, NumColor);
  graphics_fill_rect(left + 6, top + 6, 1, 1, NumColor);
  graphics_fill_rect(left + 6, top + 8, 1, 1, NumColor);

  graphics_fill_rect(left + 8, top + 5, 3, 1, NumColor);
  graphics_fill_rect(left + 8, top + 7, 3, 1, NumColor);
  graphics_fill_rect(left + 8, top + 9, 3, 1, NumColor);
  graphics_fill_rect(left + 10, top + 6, 1, 1, NumColor);
  graphics_fill_rect(left + 8, top + 8, 1, 1, NumColor);
  
}

void draw64(uint32_t left, uint32_t top){
  graphics_fill_rect(left, top, 15, 15, Color64);
  graphics_fill_rect(left + 4, top + 5, 3, 1, NumColor);
  graphics_fill_rect(left + 4, top + 7, 3, 1, NumColor);
  graphics_fill_rect(left + 4, top + 9, 3, 1, NumColor);
  graphics_fill_rect(left + 4, top + 5, 1, 5, NumColor);
  graphics_fill_rect(left + 6, top + 7, 1, 3, NumColor);

  graphics_fill_rect(left + 8, top + 5, 1, 3, NumColor);
  graphics_fill_rect(left + 10, top + 5, 1, 5, NumColor);
  graphics_fill_rect(left + 9, top + 7, 1, 1, NumColor);
}

void draw128(uint32_t left, uint32_t top){
  graphics_fill_rect(left, top, 15, 15, Color128);
  graphics_fill_rect(left + 3, top + 5, 1, 5, NumColor);

  graphics_fill_rect(left + 5, top + 5, 3, 1, NumColor);
  graphics_fill_rect(left + 5, top + 7, 3, 1, NumColor);
  graphics_fill_rect(left + 5, top + 9, 3, 1, NumColor);
  graphics_fill_rect(left + 7, top + 6, 1, 1, NumColor);
  graphics_fill_rect(left + 5, top + 8, 1, 1, NumColor);

  graphics_fill_rect(left + 9, top + 5, 1, 5, NumColor);
  graphics_fill_rect(left + 11, top + 5, 1, 5, NumColor);
  graphics_fill_rect(left + 9, top + 5, 3, 1, NumColor);
  graphics_fill_rect(left + 9, top + 7, 3, 1, NumColor);
  graphics_fill_rect(left + 9, top + 9, 3, 1, NumColor);
}

void draw256(uint32_t left, uint32_t top){
  graphics_fill_rect(left, top, 15, 15, Color256);
  graphics_fill_rect(left + 2, top + 5, 3, 1, NumColor);
  graphics_fill_rect(left + 2, top + 7, 3, 1, NumColor);
  graphics_fill_rect(left + 2, top + 9, 3, 1, NumColor);
  graphics_fill_rect(left + 4, top + 6, 1, 1, NumColor);
  graphics_fill_rect(left + 2, top + 8, 1, 1, NumColor);

  graphics_fill_rect(left + 6, top + 5, 3, 1, NumColor);
  graphics_fill_rect(left + 6, top + 7, 3, 1, NumColor);
  graphics_fill_rect(left + 6, top + 9, 3, 1, NumColor);
  graphics_fill_rect(left + 6, top + 6, 1, 1, NumColor);
  graphics_fill_rect(left + 8, top + 8, 1, 1, NumColor);

  graphics_fill_rect(left + 10, top + 5, 3, 1, NumColor);
  graphics_fill_rect(left + 10, top + 7, 3, 1, NumColor);
  graphics_fill_rect(left + 10, top + 9, 3, 1, NumColor);
  graphics_fill_rect(left + 10, top + 5, 1, 5, NumColor);
  graphics_fill_rect(left + 12, top + 8, 1, 1, NumColor);
}

void draw512(uint32_t left, uint32_t top){
  graphics_fill_rect(left, top, 15, 15, Color512);
  graphics_fill_rect(left + 3, top + 5, 3, 1, NumColor);
  graphics_fill_rect(left + 3, top + 7, 3, 1, NumColor);
  graphics_fill_rect(left + 3, top + 9, 3, 1, NumColor);
  graphics_fill_rect(left + 3, top + 6, 1, 1, NumColor);
  graphics_fill_rect(left + 5, top + 8, 1, 1, NumColor);

  graphics_fill_rect(left + 7, top + 5, 1, 5, NumColor);

  graphics_fill_rect(left + 9, top + 5, 3, 1, NumColor);
  graphics_fill_rect(left + 9, top + 7, 3, 1, NumColor);
  graphics_fill_rect(left + 9, top + 9, 3, 1, NumColor);
  graphics_fill_rect(left + 11, top + 6, 1, 1, NumColor);
  graphics_fill_rect(left + 9, top + 8, 1, 1, NumColor);
}

void draw1024(uint32_t left, uint32_t top){
  graphics_fill_rect(left, top, 15, 15, Color1024);
  graphics_fill_rect(left + 1, top + 5, 1, 5, NumColor);

  graphics_fill_rect(left + 3, top + 5, 1, 5, NumColor);
  graphics_fill_rect(left + 5, top + 5, 1, 5, NumColor);
  graphics_fill_rect(left + 3, top + 5, 3, 1, NumColor);
  graphics_fill_rect(left + 3, top + 9, 3, 1, NumColor);

  graphics_fill_rect(left + 7, top + 5, 3, 1, NumColor);
  graphics_fill_rect(left + 7, top + 7, 3, 1, NumColor);
  graphics_fill_rect(left + 7, top + 9, 3, 1, NumColor);
  graphics_fill_rect(left + 9, top + 6, 1, 1, NumColor);
  graphics_fill_rect(left + 7, top + 8, 1, 1, NumColor);

  graphics_fill_rect(left + 11, top + 5, 1, 3, NumColor);
  graphics_fill_rect(left + 13, top + 5, 1, 5, NumColor);
  graphics_fill_rect(left + 12, top + 7, 1, 1, NumColor);
}

void draw2048(uint32_t left, uint32_t top){
  graphics_fill_rect(left, top, 15, 15, Color2048);
  graphics_fill_rect(left + 0, top + 5, 3, 1, NumColor);
  graphics_fill_rect(left + 0, top + 7, 3, 1, NumColor);
  graphics_fill_rect(left + 0, top + 9, 3, 1, NumColor);
  graphics_fill_rect(left + 2, top + 6, 1, 1, NumColor);
  graphics_fill_rect(left + 0, top + 8, 1, 1, NumColor);

  graphics_fill_rect(left + 4, top + 5, 1, 5, NumColor);
  graphics_fill_rect(left + 6, top + 5, 1, 5, NumColor);
  graphics_fill_rect(left + 4, top + 5, 3, 1, NumColor);
  graphics_fill_rect(left + 4, top + 9, 3, 1, NumColor);

  graphics_fill_rect(left + 8, top + 5, 1, 3, NumColor);
  graphics_fill_rect(left + 10, top + 5, 1, 5, NumColor);
  graphics_fill_rect(left + 9, top + 7, 1, 1, NumColor);

  graphics_fill_rect(left + 12, top + 5, 1, 5, NumColor);
  graphics_fill_rect(left + 14, top + 5, 1, 5, NumColor);
  graphics_fill_rect(left + 12, top + 5, 3, 1, NumColor);
  graphics_fill_rect(left + 12, top + 7, 3, 1, NumColor);
  graphics_fill_rect(left + 12, top + 9, 3, 1, NumColor);
}