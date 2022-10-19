struct __attribute__((__packed__)) KeyMap {
  unsigned char up;
  unsigned char down;
  unsigned char left;
  unsigned char right;
  unsigned char z;
  unsigned char x;
  unsigned char c;
  unsigned char shift;
  unsigned char space;
  unsigned char enter;
  unsigned char esc;
};

// Update key status.. No blocking.
// If not get any key code, return 0.
// if get any key down, (return_value & 1) == 1.
// if get any key up, (return_value & 2) == 1.
int input_update(struct KeyMap* key);

// Wait any key in kaymap down.
// During waiting, any key code will be ignored.
void wait_any_key_down(struct KeyMap* key);

int my_input_update(struct KeyMap* key);