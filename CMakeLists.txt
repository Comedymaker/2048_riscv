cmake_minimum_required(VERSION 3.13)
project(2048_rv)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_executable(2048_rv 
src/2048.c
src/color.h
src/draw.h
src/draw.c
src/random.c
src/random.h
src/graphics.h
src/graphics.c
src/input.c
src/input.h
src/devicelib.h
src/devicelib.c
)

target_compile_definitions(2048_rv PUBLIC RISCV)
set(LINKER_SCRIPT "rv_linker.lds")

target_compile_options(2048_rv PUBLIC --target=riscv32-unknown-unknown -march=rv32im -ffreestanding -fno-builtin -nostdlib  -mno-relax -fno-PIE -G=0 -Oz -flto)
target_link_options(2048_rv PUBLIC -T ${CMAKE_SOURCE_DIR}/${LINKER_SCRIPT} --target=riscv32-unknown-unknown -march=rv32im -ffreestanding -fno-builtin -nostdlib  -mno-relax -fno-PIE -G=0 -Oz -flto)
add_custom_command(TARGET 2048_rv POST_BUILD
    COMMAND llvm-objcopy ./2048_rv --dump-section .text=rom.bin --dump-section .data=ram.bin
    COMMAND od -w4 -An --endian little -v -t x4 ./rom.bin > rom.mem
    COMMAND od -w4 -An --endian little -v -t x4 ./ram.bin > ram.mem
    COMMAND llvm-objdump -S 2048_rv > 2048.asm
    WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
    COMMENT "Generating rom and ram files..."
)

