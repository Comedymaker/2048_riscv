#include "draw.h"
void draw_start_view() {
  graphics_fill_rect(STAGE_LEFT_MARGIN * BLOCK_SIZE,
                     STAGE_TOP_MARGIN * BLOCK_SIZE, STAGE_W * BLOCK_SIZE,
                     STAGE_H * BLOCK_SIZE, BlockBackground);

  // draw character "G"
  graphics_fill_rect(STAGE_LEFT_MARGIN * BLOCK_SIZE,
                     (STAGE_TOP_MARGIN + 7) * BLOCK_SIZE, 4 * BLOCK_SIZE,
                     6 * BLOCK_SIZE, BlockS);
  graphics_fill_rect((STAGE_LEFT_MARGIN + 1) * BLOCK_SIZE,
                     (STAGE_TOP_MARGIN + 8) * BLOCK_SIZE, 2 * BLOCK_SIZE,
                     4 * BLOCK_SIZE, BlockBackground);
  graphics_fill_rect((STAGE_LEFT_MARGIN + 3) * BLOCK_SIZE,
                     (STAGE_TOP_MARGIN + 8) * BLOCK_SIZE, 1 * BLOCK_SIZE,
                     2 * BLOCK_SIZE, BlockBackground);
  graphics_fill_rect((STAGE_LEFT_MARGIN + 2) * BLOCK_SIZE,
                     (STAGE_TOP_MARGIN + 10) * BLOCK_SIZE, 1 * BLOCK_SIZE,
                     1 * BLOCK_SIZE, BlockS);

  // draw character "O"
  graphics_fill_rect((STAGE_LEFT_MARGIN + 6) * BLOCK_SIZE,
                     (STAGE_TOP_MARGIN + 7) * BLOCK_SIZE, 4 * BLOCK_SIZE,
                     6 * BLOCK_SIZE, BlockS);
  graphics_fill_rect((STAGE_LEFT_MARGIN + 7) * BLOCK_SIZE,
                     (STAGE_TOP_MARGIN + 8) * BLOCK_SIZE, 2 * BLOCK_SIZE,
                     4 * BLOCK_SIZE, BlockBackground);
  graphics_flip();
}