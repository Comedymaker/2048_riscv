#pragma once
#include "color.h"
#include <stdint.h>

// Size of the stage
#define STAGE_W 10
#define STAGE_H 22
#define STAGE_TOP_MARGIN 4

#define BLOCK_SIZE 2
#define HALF_BLOCK_SIZE (BLOCK_SIZE >> 1)

#define STAGE_LEFT_MARGIN 15
#define STAGE_RIGHT_MARGIN 15

#define HOLD_LEFT_MARGIN 6
#define HOLD_TOP_MARGIN 13
#define HOLD_WIDTH 5
#define HOLD_HEIGHT 3

#define PREVIEW_LEFT_MARGIN (STAGE_LEFT_MARGIN + STAGE_W + 5)
#define PREVIEW_TOP_MARGIN 8
#define PREVIEW_WIDTH 5
#define PREVIEW_HEIGHT 13

#define APM_LEFT_MARGIN 20
#define APM_TOP_MARGIN 47

#define SCREEN_W                                                               \
  ((STAGE_LEFT_MARGIN + STAGE_W + STAGE_RIGHT_MARGIN) * BLOCK_SIZE)
#define SCREEN_H (STAGE_H * BLOCK_SIZE)

#define MAX_PREVIEW 5

// void draw(struct Field* f, uint32_t garbage_cnt, uint32_t apm);
void draw_start_view();
void draw_start_view2();
void draw_end_view();
void draw_num(uint8_t x, uint8_t y, uint8_t num);
void draw_board(uint8_t board[4][4]);
void draw_none(uint32_t left, uint32_t top);

void draw2(uint32_t left, uint32_t top);

void draw4(uint32_t left, uint32_t top);

void draw8(uint32_t left, uint32_t top);

void draw16(uint32_t left, uint32_t top);

void draw32(uint32_t left, uint32_t top);

void draw64(uint32_t left, uint32_t top);

void draw128(uint32_t left, uint32_t top);


void draw256(uint32_t left, uint32_t top);

void draw512(uint32_t left, uint32_t top);

void draw1024(uint32_t left, uint32_t top);

void draw2048(uint32_t left, uint32_t top);

