#include"input.h"
#include"devicelib.h"
#include<stdint.h>
#define K_ARROW_PREFIX 0xe0
#define K_RELEASE_PREFIX 0xf0

#define K_LEFT 0x6b
#define K_RIGHT 0x74
#define K_UP 0x75
#define K_DOWN 0x72
#define K_Z 0x1a
#define K_X 0x22
#define K_C 0x21
#define K_SPACE 0x29

int input_update(struct KeyMap* key) {
  // no block
  if (!keyboard_ready()) {
    return 0;
  }
  int ret = 0;
  enum __attribute__((__packed__)) AutomataStatus {
    Start,
    BeforeReleaseKeys,
    Arrows,
    BeforeReleaseArrows,
  };
  static enum AutomataStatus status = Start;
  while (keyboard_ready()) {
    uint8_t cur = keyboard_data();

    switch (status) {
    case Start:
      switch (cur) {
      case K_ARROW_PREFIX:
        status = Arrows;
        break;
      case K_RELEASE_PREFIX:
        status = BeforeReleaseKeys;
        break;
      case K_Z:
      case K_X:
      case K_C:
      case K_SPACE:
    //  case K_UP:
    //  case K_DOWN:
    //  case K_LEFT:
    //  case K_RIGHT:
        ret |= 1;
        if (cur == K_Z) {
          key->z = 1;
        }
        if (cur == K_X) {
          key->x = 1;
        }
        if (cur == K_C) {
          key->c = 1;
        }
        if (cur == K_SPACE) {
          key->space = 1;
        }
        if (cur == K_UP) {
          key->up = 1;
        }
        if (cur == K_DOWN) {
          key->down = 1;
        }
        if (cur == K_LEFT) {
          key->left  = 1;
          key->right = 0;
        }
        if (cur == K_RIGHT) {
          key->right = 1;
          key->left  = 0;
        }
        status = Start;
        break;
      default:
        status = Start;
        break;
      }
      break;
    case BeforeReleaseKeys:
      switch (cur) {
      case K_Z:
      case K_X:
      case K_C:
      case K_SPACE:
      case K_UP:
      case K_DOWN:
      case K_LEFT:
      case K_RIGHT:
        ret |= 2;
        if (cur == K_Z) {
          key->z = 0;
        }
        if (cur == K_X) {
          key->x = 0;
        }
        if (cur == K_C) {
          key->c = 0;
        }
        if (cur == K_SPACE) {
          key->space = 0;
        }
        if (cur == K_UP) {
          key->up = 0;
        }
        if (cur == K_DOWN) {
          key->down = 0;
        }
        if (cur == K_LEFT) {
          key->left = 0;
        }
        if (cur == K_RIGHT) {
          key->right = 0;
        }
        status = Start;
        break;
      }
      break;
    case Arrows:
      switch (cur) {
      case K_RELEASE_PREFIX:
        status = BeforeReleaseArrows;
        break;
      case K_LEFT:
      case K_RIGHT:
      case K_UP:
      case K_DOWN:
        ret |= 1;
        if (cur == K_UP) {
          key->up = 1;
        }
        if (cur == K_DOWN) {
          key->down = 1;
        }
        if (cur == K_LEFT) {
          key->left  = 1;
          key->right = 0;
        }
        if (cur == K_RIGHT) {
          key->right = 1;
          key->left  = 0;
        }
        status = Start;
        break;
      default:
        status = Start;
        break;
      }
      break;
    case BeforeReleaseArrows:
      switch (cur) {
      case K_LEFT:
      case K_RIGHT:
      case K_UP:
      case K_DOWN:
        ret |= 2;
        if (cur == K_UP) {
          key->up = 0;
        }
        if (cur == K_DOWN) {
          key->down = 0;
        }
        if (cur == K_LEFT) {
          key->left = 0;
        }
        if (cur == K_RIGHT) {
          key->right = 0;
        }
        status = Start;
        break;
      default:
        status = Start;
        break;
      }
      break;
    }
  }
  // uint8_t key_bin = key->down | (key->right << 1) | (key->left << 2) |
  //                   (key->space << 3) | (key->c << 4) | (key->x << 5) |
  //                   (key->z << 6);
  // //  0b10000000
  // //     zxcSlrd
  // send_data(0xff);
  // send_data(key_bin);
  return ret;
}

int my_input_update(struct KeyMap* key){
  if (!keyboard_ready()) {
    return 0;
  }
  int ret = 0;
  enum __attribute__((__packed__)) AutomataStatus {
    Start,
    Arrows,
    BeforeReleaseArrows,
  };
  static enum AutomataStatus status = Start;
  
  while (keyboard_ready())
  {
    /* code */
    uint8_t cur = keyboard_data();
    switch (status)
  {
  case Start:
    switch (cur)
    {
    case K_ARROW_PREFIX :
      /* code */
      status = Arrows;
      break;
    
    default:
      break;
    }
    break;

  case Arrows:
    switch (cur)
    {
    case K_RELEASE_PREFIX:
        status = BeforeReleaseArrows;
        break;
      case K_LEFT:
      case K_RIGHT:
      case K_UP:
      case K_DOWN:
        if (cur == K_UP) {
          key->up = 1;
        }
        if (cur == K_DOWN) {
          key->down = 1;
        }
        if (cur == K_LEFT) {
          key->left  = 1;
        }
        if (cur == K_RIGHT) {
          key->right = 1;
        }
        status = 3;
      break;
    default:
      break;
    }
    break;

  default:
    status = Start;
    break;
  }
  if (status == 3)
  {
    /* code */
    ret = 0;
    break;
  }
  if (status == 2)
  {
    /* code */
    cur = keyboard_data();
    ret = 1;
    break;
  }
  
  }
  return ret;
  
  
}

void wait_any_key_down(struct KeyMap* key) {
  while (1) {
    int res = my_input_update(key);
    memset(key, 0, sizeof(struct KeyMap));
    if ((res & 1) == 1) {
      return;
    }
  }
}