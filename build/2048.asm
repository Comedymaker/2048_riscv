
2048_rv:	file format elf32-littleriscv

Disassembly of section .text:

00000000 <_start>:
       0: 37 15 00 20  	lui	a0, 131073
       4: 13 05 c5 53  	addi	a0, a0, 1340
       8: 13 01 05 00  	mv	sp, a0
       c: 6f 00 c0 2d  	j	0x2e8 <main>

00000010 <rotateBoard>:
      10: 93 05 00 00  	li	a1, 0
      14: 13 06 35 00  	addi	a2, a0, 3
      18: 93 06 c5 00  	addi	a3, a0, 12
      1c: 13 07 f5 00  	addi	a4, a0, 15
      20: 93 07 20 00  	li	a5, 2
      24: 13 08 30 00  	li	a6, 3
      28: 63 8a f5 06  	beq	a1, a5, 0x9c <rotateBoard+0x8c>
      2c: 93 08 00 00  	li	a7, 0
      30: b3 02 b8 40  	sub	t0, a6, a1
      34: 93 f2 f2 0f  	andi	t0, t0, 255
      38: 13 03 07 00  	mv	t1, a4
      3c: 93 83 06 00  	mv	t2, a3
      40: 13 0e 06 00  	mv	t3, a2
      44: b3 8e 15 01  	add	t4, a1, a7
      48: 63 fe 5e 02  	bgeu	t4, t0, 0x84 <rotateBoard+0x74>
      4c: 83 0e 0e 00  	lb	t4, 0(t3)
      50: 33 0f 15 01  	add	t5, a0, a7
      54: 83 0f 0f 00  	lb	t6, 0(t5)
      58: 23 00 df 01  	sb	t4, 0(t5)
      5c: 83 0e 03 00  	lb	t4, 0(t1)
      60: 23 00 de 01  	sb	t4, 0(t3)
      64: 83 8e 03 00  	lb	t4, 0(t2)
      68: 23 00 d3 01  	sb	t4, 0(t1)
      6c: 23 80 f3 01  	sb	t6, 0(t2)
      70: 93 88 18 00  	addi	a7, a7, 1
      74: 13 0e 4e 00  	addi	t3, t3, 4
      78: 93 83 c3 ff  	addi	t2, t2, -4
      7c: 13 03 f3 ff  	addi	t1, t1, -1
      80: 6f f0 5f fc  	j	0x44 <rotateBoard+0x34>
      84: 93 85 15 00  	addi	a1, a1, 1
      88: 13 05 55 00  	addi	a0, a0, 5
      8c: 13 06 36 00  	addi	a2, a2, 3
      90: 93 86 d6 ff  	addi	a3, a3, -3
      94: 13 07 b7 ff  	addi	a4, a4, -5
      98: e3 9a f5 f8  	bne	a1, a5, 0x2c <rotateBoard+0x1c>
      9c: 67 80 00 00  	ret

000000a0 <moveUp>:
      a0: 13 01 01 ff  	addi	sp, sp, -16
      a4: 23 26 81 00  	sw	s0, 12(sp)
      a8: 23 24 91 00  	sw	s1, 8(sp)
      ac: 37 06 00 20  	lui	a2, 131072
      b0: 83 26 46 03  	lw	a3, 52(a2)
      b4: 13 07 00 00  	li	a4, 0
      b8: 93 05 00 00  	li	a1, 0
      bc: 93 07 40 00  	li	a5, 4
      c0: 13 08 10 00  	li	a6, 1
      c4: 63 02 f7 0c  	beq	a4, a5, 0x188 <moveUp+0xe8>
      c8: 93 08 00 00  	li	a7, 0
      cc: 13 03 00 00  	li	t1, 0
      d0: 93 02 00 00  	li	t0, 0
      d4: 63 84 f8 0a  	beq	a7, a5, 0x17c <moveUp+0xdc>
      d8: 93 13 27 00  	slli	t2, a4, 2
      dc: b3 0e 75 00  	add	t4, a0, t2
      e0: b3 83 1e 01  	add	t2, t4, a7
      e4: 03 ce 03 00  	lbu	t3, 0(t2)
      e8: 63 06 0e 08  	beqz	t3, 0x174 <moveUp+0xd4>
      ec: 13 ff f8 0f  	andi	t5, a7, 255
      f0: 63 08 0f 02  	beqz	t5, 0x120 <moveUp+0x80>
      f4: 93 8f 08 00  	mv	t6, a7
      f8: 13 8f ff ff  	addi	t5, t6, -1
      fc: 13 74 ff 0f  	andi	s0, t5, 255
     100: b3 84 8e 00  	add	s1, t4, s0
     104: 83 c4 04 00  	lbu	s1, 0(s1)
     108: 63 90 04 02  	bnez	s1, 0x128 <moveUp+0x88>
     10c: 93 f4 f2 0f  	andi	s1, t0, 255
     110: 93 0f 0f 00  	mv	t6, t5
     114: e3 12 94 fe  	bne	s0, s1, 0xf8 <moveUp+0x58>
     118: 13 8f 02 00  	mv	t5, t0
     11c: 6f 00 80 01  	j	0x134 <moveUp+0x94>
     120: 13 0f 00 00  	li	t5, 0
     124: 6f 00 00 01  	j	0x134 <moveUp+0x94>
     128: 03 c4 03 00  	lbu	s0, 0(t2)
     12c: 63 84 84 00  	beq	s1, s0, 0x134 <moveUp+0x94>
     130: 13 8f 0f 00  	mv	t5, t6
     134: 93 7f ff 0f  	andi	t6, t5, 255
     138: 63 8e f8 03  	beq	a7, t6, 0x174 <moveUp+0xd4>
     13c: 33 83 fe 01  	add	t1, t4, t6
     140: 83 4e 03 00  	lbu	t4, 0(t1)
     144: 63 82 0e 02  	beqz	t4, 0x168 <moveUp+0xc8>
     148: 63 92 ce 03  	bne	t4, t3, 0x16c <moveUp+0xcc>
     14c: 93 02 1e 00  	addi	t0, t3, 1
     150: 23 00 53 00  	sb	t0, 0(t1)
     154: b3 12 58 00  	sll	t0, a6, t0
     158: b3 86 56 00  	add	a3, a3, t0
     15c: 23 2a d6 02  	sw	a3, 52(a2)
     160: 93 02 1f 00  	addi	t0, t5, 1
     164: 6f 00 80 00  	j	0x16c <moveUp+0xcc>
     168: 23 00 c3 01  	sb	t3, 0(t1)
     16c: 23 80 03 00  	sb	zero, 0(t2)
     170: 13 03 10 00  	li	t1, 1
     174: 93 88 18 00  	addi	a7, a7, 1
     178: e3 90 f8 f6  	bne	a7, a5, 0xd8 <moveUp+0x38>
     17c: b3 65 b3 00  	or	a1, t1, a1
     180: 13 07 17 00  	addi	a4, a4, 1
     184: e3 12 f7 f4  	bne	a4, a5, 0xc8 <moveUp+0x28>
     188: 13 85 05 00  	mv	a0, a1
     18c: 03 24 c1 00  	lw	s0, 12(sp)
     190: 83 24 81 00  	lw	s1, 8(sp)
     194: 13 01 01 01  	addi	sp, sp, 16
     198: 67 80 00 00  	ret

0000019c <findPairDown>:
     19c: 93 05 00 00  	li	a1, 0
     1a0: 13 06 40 00  	li	a2, 4
     1a4: 93 06 30 00  	li	a3, 3
     1a8: 63 88 c5 02  	beq	a1, a2, 0x1d8 <findPairDown+0x3c>
     1ac: 13 07 00 00  	li	a4, 0
     1b0: 63 0e d7 00  	beq	a4, a3, 0x1cc <findPairDown+0x30>
     1b4: b3 07 e5 00  	add	a5, a0, a4
     1b8: 03 c8 07 00  	lbu	a6, 0(a5)
     1bc: 83 c7 17 00  	lbu	a5, 1(a5)
     1c0: 13 07 17 00  	addi	a4, a4, 1
     1c4: e3 16 f8 fe  	bne	a6, a5, 0x1b0 <findPairDown+0x14>
     1c8: 6f 00 80 01  	j	0x1e0 <findPairDown+0x44>
     1cc: 93 85 15 00  	addi	a1, a1, 1
     1d0: 13 05 45 00  	addi	a0, a0, 4
     1d4: e3 9c c5 fc  	bne	a1, a2, 0x1ac <findPairDown+0x10>
     1d8: 13 05 00 00  	li	a0, 0
     1dc: 67 80 00 00  	ret
     1e0: 13 05 10 00  	li	a0, 1
     1e4: 67 80 00 00  	ret

000001e8 <addRandom>:
     1e8: 13 01 01 fd  	addi	sp, sp, -48
     1ec: 23 26 11 02  	sw	ra, 44(sp)
     1f0: 23 24 81 02  	sw	s0, 40(sp)
     1f4: 23 22 91 02  	sw	s1, 36(sp)
     1f8: 23 20 21 03  	sw	s2, 32(sp)
     1fc: b7 05 00 20  	lui	a1, 131072
     200: 03 c6 85 03  	lbu	a2, 56(a1)
     204: 13 04 05 00  	mv	s0, a0
     208: 63 1e 06 00  	bnez	a2, 0x224 <addRandom+0x3c>
     20c: 37 c5 ad fb  	lui	a0, 1030876
     210: 03 25 f5 ed  	lw	a0, -289(a0)
     214: 37 06 00 20  	lui	a2, 131072
     218: 23 20 a6 00  	sw	a0, 0(a2)
     21c: 13 05 10 00  	li	a0, 1
     220: 23 8c a5 02  	sb	a0, 56(a1)
     224: 93 05 00 00  	li	a1, 0
     228: 13 05 00 00  	li	a0, 0
     22c: 13 06 40 00  	li	a2, 4
     230: 93 06 01 00  	mv	a3, sp
     234: 13 07 04 00  	mv	a4, s0
     238: 63 82 c5 04  	beq	a1, a2, 0x27c <addRandom+0x94>
     23c: 93 07 00 00  	li	a5, 0
     240: 63 88 c7 02  	beq	a5, a2, 0x270 <addRandom+0x88>
     244: 33 08 f7 00  	add	a6, a4, a5
     248: 03 48 08 00  	lbu	a6, 0(a6)
     24c: 63 1e 08 00  	bnez	a6, 0x268 <addRandom+0x80>
     250: 13 78 f5 0f  	andi	a6, a0, 255
     254: 13 18 18 00  	slli	a6, a6, 1
     258: 33 88 06 01  	add	a6, a3, a6
     25c: 23 00 b8 00  	sb	a1, 0(a6)
     260: a3 00 f8 00  	sb	a5, 1(a6)
     264: 13 05 15 00  	addi	a0, a0, 1
     268: 93 87 17 00  	addi	a5, a5, 1
     26c: e3 9c c7 fc  	bne	a5, a2, 0x244 <addRandom+0x5c>
     270: 93 85 15 00  	addi	a1, a1, 1
     274: 13 07 47 00  	addi	a4, a4, 4
     278: e3 92 c5 fc  	bne	a1, a2, 0x23c <addRandom+0x54>
     27c: 93 74 f5 0f  	andi	s1, a0, 255
     280: 63 88 04 04  	beqz	s1, 0x2d0 <addRandom+0xe8>
     284: 97 10 00 00  	auipc	ra, 1
     288: e7 80 40 33  	jalr	820(ra)
     28c: 33 75 95 02  	<unknown>
     290: 13 15 15 00  	slli	a0, a0, 1
     294: 93 05 01 00  	mv	a1, sp
     298: 33 85 a5 00  	add	a0, a1, a0
     29c: 83 44 05 00  	lbu	s1, 0(a0)
     2a0: 03 49 15 00  	lbu	s2, 1(a0)
     2a4: 97 10 00 00  	auipc	ra, 1
     2a8: e7 80 40 31  	jalr	788(ra)
     2ac: 93 05 a0 00  	li	a1, 10
     2b0: 33 75 b5 02  	<unknown>
     2b4: 93 05 90 00  	li	a1, 9
     2b8: 33 55 b5 02  	<unknown>
     2bc: 13 05 15 00  	addi	a0, a0, 1
     2c0: 93 95 24 00  	slli	a1, s1, 2
     2c4: b3 05 b4 00  	add	a1, s0, a1
     2c8: b3 85 25 01  	add	a1, a1, s2
     2cc: 23 80 a5 00  	sb	a0, 0(a1)
     2d0: 83 20 c1 02  	lw	ra, 44(sp)
     2d4: 03 24 81 02  	lw	s0, 40(sp)
     2d8: 83 24 41 02  	lw	s1, 36(sp)
     2dc: 03 29 01 02  	lw	s2, 32(sp)
     2e0: 13 01 01 03  	addi	sp, sp, 48
     2e4: 67 80 00 00  	ret

000002e8 <main>:
     2e8: 13 01 01 f6  	addi	sp, sp, -160
     2ec: 23 2e 11 08  	sw	ra, 156(sp)
     2f0: 23 2c 81 08  	sw	s0, 152(sp)
     2f4: 23 2a 91 08  	sw	s1, 148(sp)
     2f8: 23 28 21 09  	sw	s2, 144(sp)
     2fc: 23 26 31 09  	sw	s3, 140(sp)
     300: 23 24 41 09  	sw	s4, 136(sp)
     304: 23 22 51 09  	sw	s5, 132(sp)
     308: 23 20 61 09  	sw	s6, 128(sp)
     30c: 23 2e 71 07  	sw	s7, 124(sp)
     310: 23 2c 81 07  	sw	s8, 120(sp)
     314: 23 2a 91 07  	sw	s9, 116(sp)
     318: 23 28 a1 07  	sw	s10, 112(sp)
     31c: 23 26 b1 07  	sw	s11, 108(sp)
     320: 13 05 e0 01  	li	a0, 30
     324: 93 05 80 00  	li	a1, 8
     328: 13 06 40 01  	li	a2, 20
     32c: 93 06 c0 02  	li	a3, 44
     330: 13 07 10 00  	li	a4, 1
     334: 93 04 10 00  	li	s1, 1
     338: 97 10 00 00  	auipc	ra, 1
     33c: e7 80 80 2a  	jalr	680(ra)
     340: 13 05 e0 01  	li	a0, 30
     344: 93 05 60 01  	li	a1, 22
     348: 13 06 80 00  	li	a2, 8
     34c: 93 06 c0 00  	li	a3, 12
     350: 13 07 c0 00  	li	a4, 12
     354: 97 10 00 00  	auipc	ra, 1
     358: e7 80 c0 28  	jalr	652(ra)
     35c: 13 05 00 02  	li	a0, 32
     360: 93 05 80 01  	li	a1, 24
     364: 13 06 40 00  	li	a2, 4
     368: 93 06 80 00  	li	a3, 8
     36c: 13 07 10 00  	li	a4, 1
     370: 13 04 40 00  	li	s0, 4
     374: 97 10 00 00  	auipc	ra, 1
     378: e7 80 c0 26  	jalr	620(ra)
     37c: 13 05 40 02  	li	a0, 36
     380: 93 05 80 01  	li	a1, 24
     384: 13 06 20 00  	li	a2, 2
     388: 93 06 40 00  	li	a3, 4
     38c: 13 07 10 00  	li	a4, 1
     390: 97 10 00 00  	auipc	ra, 1
     394: e7 80 00 25  	jalr	592(ra)
     398: 13 05 20 02  	li	a0, 34
     39c: 93 05 c0 01  	li	a1, 28
     3a0: 13 06 20 00  	li	a2, 2
     3a4: 93 06 20 00  	li	a3, 2
     3a8: 13 07 c0 00  	li	a4, 12
     3ac: 97 10 00 00  	auipc	ra, 1
     3b0: e7 80 40 23  	jalr	564(ra)
     3b4: 13 05 a0 02  	li	a0, 42
     3b8: 93 05 60 01  	li	a1, 22
     3bc: 13 06 80 00  	li	a2, 8
     3c0: 93 06 c0 00  	li	a3, 12
     3c4: 13 07 c0 00  	li	a4, 12
     3c8: 97 10 00 00  	auipc	ra, 1
     3cc: e7 80 80 21  	jalr	536(ra)
     3d0: 13 05 c0 02  	li	a0, 44
     3d4: 93 05 80 01  	li	a1, 24
     3d8: 13 06 40 00  	li	a2, 4
     3dc: 93 06 80 00  	li	a3, 8
     3e0: 13 07 10 00  	li	a4, 1
     3e4: 97 10 00 00  	auipc	ra, 1
     3e8: e7 80 c0 1f  	jalr	508(ra)
     3ec: 37 f9 ad fb  	lui	s2, 1030879
     3f0: 23 00 99 00  	sb	s1, 0(s2)
     3f4: 13 05 01 05  	addi	a0, sp, 80
     3f8: 13 06 b0 00  	li	a2, 11
     3fc: 93 05 00 00  	li	a1, 0
     400: 97 10 00 00  	auipc	ra, 1
     404: e7 80 80 36  	jalr	872(ra)
     408: 13 05 51 04  	addi	a0, sp, 69
     40c: 13 06 b0 00  	li	a2, 11
     410: 93 05 00 00  	li	a1, 0
     414: 97 10 00 00  	auipc	ra, 1
     418: e7 80 40 35  	jalr	852(ra)
     41c: 13 05 01 05  	addi	a0, sp, 80
     420: 97 10 00 00  	auipc	ra, 1
     424: e7 80 40 2f  	jalr	756(ra)
     428: 13 05 e0 01  	li	a0, 30
     42c: 93 05 80 00  	li	a1, 8
     430: 13 06 40 01  	li	a2, 20
     434: 93 06 c0 02  	li	a3, 44
     438: 13 07 10 00  	li	a4, 1
     43c: 97 10 00 00  	auipc	ra, 1
     440: e7 80 40 1a  	jalr	420(ra)
     444: 13 05 e0 01  	li	a0, 30
     448: 93 05 60 01  	li	a1, 22
     44c: 13 06 a0 00  	li	a2, 10
     450: 93 06 c0 00  	li	a3, 12
     454: 13 07 c0 00  	li	a4, 12
     458: 97 10 00 00  	auipc	ra, 1
     45c: e7 80 80 18  	jalr	392(ra)
     460: 13 05 00 02  	li	a0, 32
     464: 93 05 20 01  	li	a1, 18
     468: 13 06 40 00  	li	a2, 4
     46c: 93 06 80 00  	li	a3, 8
     470: 13 07 10 00  	li	a4, 1
     474: 97 10 00 00  	auipc	ra, 1
     478: e7 80 c0 16  	jalr	364(ra)
     47c: 13 05 80 02  	li	a0, 40
     480: 93 05 80 01  	li	a1, 24
     484: 13 06 20 00  	li	a2, 2
     488: 93 06 40 00  	li	a3, 4
     48c: 13 07 10 00  	li	a4, 1
     490: 97 10 00 00  	auipc	ra, 1
     494: e7 80 00 15  	jalr	336(ra)
     498: 13 05 c0 02  	li	a0, 44
     49c: 93 05 a0 01  	li	a1, 26
     4a0: 13 06 a0 00  	li	a2, 10
     4a4: 93 06 20 00  	li	a3, 2
     4a8: 13 07 c0 00  	li	a4, 12
     4ac: 97 10 00 00  	auipc	ra, 1
     4b0: e7 80 40 13  	jalr	308(ra)
     4b4: 13 05 a0 02  	li	a0, 42
     4b8: 93 05 60 01  	li	a1, 22
     4bc: 13 06 80 00  	li	a2, 8
     4c0: 93 06 c0 00  	li	a3, 12
     4c4: 13 07 c0 00  	li	a4, 12
     4c8: 97 10 00 00  	auipc	ra, 1
     4cc: e7 80 80 11  	jalr	280(ra)
     4d0: 13 05 c0 02  	li	a0, 44
     4d4: 93 05 80 01  	li	a1, 24
     4d8: 13 06 40 00  	li	a2, 4
     4dc: 93 06 80 00  	li	a3, 8
     4e0: 13 07 10 00  	li	a4, 1
     4e4: 97 10 00 00  	auipc	ra, 1
     4e8: e7 80 c0 0f  	jalr	252(ra)
     4ec: 23 00 99 00  	sb	s1, 0(s2)
     4f0: 13 05 01 05  	addi	a0, sp, 80
     4f4: 97 10 00 00  	auipc	ra, 1
     4f8: e7 80 00 22  	jalr	544(ra)
     4fc: 37 c5 ad fb  	lui	a0, 1030876
     500: 03 25 f5 ed  	lw	a0, -289(a0)
     504: 13 05 00 00  	li	a0, 0
     508: 93 05 c1 05  	addi	a1, sp, 92
     50c: 63 04 85 02  	beq	a0, s0, 0x534 <main+0x24c>
     510: 13 06 00 00  	li	a2, 0
     514: 63 0a 86 00  	beq	a2, s0, 0x528 <main+0x240>
     518: b3 86 c5 00  	add	a3, a1, a2
     51c: 23 80 06 00  	sb	zero, 0(a3)
     520: 13 06 16 00  	addi	a2, a2, 1
     524: e3 1a 86 fe  	bne	a2, s0, 0x518 <main+0x230>
     528: 13 05 15 00  	addi	a0, a0, 1
     52c: 93 85 45 00  	addi	a1, a1, 4
     530: e3 10 85 fe  	bne	a0, s0, 0x510 <main+0x228>
     534: 13 05 c1 05  	addi	a0, sp, 92
     538: 97 00 00 00  	auipc	ra, 0
     53c: e7 80 00 cb  	jalr	-848(ra)
     540: 13 05 c1 05  	addi	a0, sp, 92
     544: 97 00 00 00  	auipc	ra, 0
     548: e7 80 40 ca  	jalr	-860(ra)
     54c: 37 05 00 20  	lui	a0, 131072
     550: 23 2a 05 02  	sw	zero, 52(a0)
     554: 93 0c b0 00  	li	s9, 11
     558: 37 55 02 00  	lui	a0, 37
     55c: 13 05 05 9f  	addi	a0, a0, -1552
     560: 23 20 a1 00  	sw	a0, 0(sp)
     564: 93 04 40 00  	li	s1, 4
     568: 93 0d c0 03  	li	s11, 60
     56c: 37 05 00 20  	lui	a0, 131072
     570: 13 0c 45 00  	addi	s8, a0, 4
     574: 23 2e 81 03  	sw	s8, 60(sp)
     578: 13 05 01 05  	addi	a0, sp, 80
     57c: 13 06 b0 00  	li	a2, 11
     580: 93 05 00 00  	li	a1, 0
     584: 97 10 00 00  	auipc	ra, 1
     588: e7 80 40 1e  	jalr	484(ra)
     58c: 13 05 01 05  	addi	a0, sp, 80
     590: 97 10 00 00  	auipc	ra, 1
     594: e7 80 80 0b  	jalr	184(ra)
     598: 03 45 11 05  	lbu	a0, 81(sp)
     59c: 63 04 05 04  	beqz	a0, 0x5e4 <main+0x2fc>
     5a0: 13 05 c1 05  	addi	a0, sp, 92
     5a4: 97 00 00 00  	auipc	ra, 0
     5a8: e7 80 c0 a6  	jalr	-1428(ra)
     5ac: 13 05 c1 05  	addi	a0, sp, 92
     5b0: 97 00 00 00  	auipc	ra, 0
     5b4: e7 80 00 a6  	jalr	-1440(ra)
     5b8: 13 05 c1 05  	addi	a0, sp, 92
     5bc: 97 00 00 00  	auipc	ra, 0
     5c0: e7 80 40 ae  	jalr	-1308(ra)
     5c4: 13 04 05 00  	mv	s0, a0
     5c8: 13 05 c1 05  	addi	a0, sp, 92
     5cc: 97 00 00 00  	auipc	ra, 0
     5d0: e7 80 40 a4  	jalr	-1468(ra)
     5d4: 13 05 c1 05  	addi	a0, sp, 92
     5d8: 97 00 00 00  	auipc	ra, 0
     5dc: e7 80 80 a3  	jalr	-1480(ra)
     5e0: 6f 00 80 00  	j	0x5e8 <main+0x300>
     5e4: 13 04 00 00  	li	s0, 0
     5e8: 03 45 01 05  	lbu	a0, 80(sp)
     5ec: 63 0a 05 00  	beqz	a0, 0x600 <main+0x318>
     5f0: 13 05 c1 05  	addi	a0, sp, 92
     5f4: 97 00 00 00  	auipc	ra, 0
     5f8: e7 80 c0 aa  	jalr	-1364(ra)
     5fc: 13 04 05 00  	mv	s0, a0
     600: 03 45 21 05  	lbu	a0, 82(sp)
     604: 63 02 05 04  	beqz	a0, 0x648 <main+0x360>
     608: 13 05 c1 05  	addi	a0, sp, 92
     60c: 97 00 00 00  	auipc	ra, 0
     610: e7 80 40 a0  	jalr	-1532(ra)
     614: 13 05 c1 05  	addi	a0, sp, 92
     618: 97 00 00 00  	auipc	ra, 0
     61c: e7 80 80 a8  	jalr	-1400(ra)
     620: 13 04 05 00  	mv	s0, a0
     624: 13 05 c1 05  	addi	a0, sp, 92
     628: 97 00 00 00  	auipc	ra, 0
     62c: e7 80 80 9e  	jalr	-1560(ra)
     630: 13 05 c1 05  	addi	a0, sp, 92
     634: 97 00 00 00  	auipc	ra, 0
     638: e7 80 c0 9d  	jalr	-1572(ra)
     63c: 13 05 c1 05  	addi	a0, sp, 92
     640: 97 00 00 00  	auipc	ra, 0
     644: e7 80 00 9d  	jalr	-1584(ra)
     648: 03 45 31 05  	lbu	a0, 83(sp)
     64c: 63 02 05 04  	beqz	a0, 0x690 <main+0x3a8>
     650: 13 05 c1 05  	addi	a0, sp, 92
     654: 97 00 00 00  	auipc	ra, 0
     658: e7 80 c0 9b  	jalr	-1604(ra)
     65c: 13 05 c1 05  	addi	a0, sp, 92
     660: 97 00 00 00  	auipc	ra, 0
     664: e7 80 00 9b  	jalr	-1616(ra)
     668: 13 05 c1 05  	addi	a0, sp, 92
     66c: 97 00 00 00  	auipc	ra, 0
     670: e7 80 40 9a  	jalr	-1628(ra)
     674: 13 05 c1 05  	addi	a0, sp, 92
     678: 97 00 00 00  	auipc	ra, 0
     67c: e7 80 80 a2  	jalr	-1496(ra)
     680: 13 04 05 00  	mv	s0, a0
     684: 13 05 c1 05  	addi	a0, sp, 92
     688: 97 00 00 00  	auipc	ra, 0
     68c: e7 80 80 98  	jalr	-1656(ra)
     690: e3 04 04 ee  	beqz	s0, 0x578 <main+0x290>
     694: 37 c6 ad fb  	lui	a2, 1030876
     698: 03 25 f6 ed  	lw	a0, -289(a2)
     69c: 83 25 01 00  	lw	a1, 0(sp)
     6a0: 33 05 b5 00  	add	a0, a0, a1
     6a4: 83 25 f6 ed  	lw	a1, -289(a2)
     6a8: e3 ee a5 fe  	bltu	a1, a0, 0x6a4 <main+0x3bc>
     6ac: 13 05 c1 05  	addi	a0, sp, 92
     6b0: 93 0a c1 05  	addi	s5, sp, 92
     6b4: 97 00 00 00  	auipc	ra, 0
     6b8: e7 80 40 b3  	jalr	-1228(ra)
     6bc: 93 05 00 00  	li	a1, 0
     6c0: e3 8a 95 60  	beq	a1, s1, 0x14d4 <.LBB4_35+0x238>
     6c4: 13 04 00 00  	li	s0, 0
     6c8: 13 95 45 00  	slli	a0, a1, 4
     6cc: 23 22 b1 00  	sw	a1, 4(sp)
     6d0: 33 05 b5 40  	sub	a0, a0, a1
     6d4: 93 04 a5 00  	addi	s1, a0, 10
     6d8: 93 05 c5 00  	addi	a1, a0, 12
     6dc: 23 20 b1 02  	sw	a1, 32(sp)
     6e0: 93 05 e5 00  	addi	a1, a0, 14
     6e4: 23 28 b1 02  	sw	a1, 48(sp)
     6e8: 13 0a 05 01  	addi	s4, a0, 16
     6ec: 93 0b 25 01  	addi	s7, a0, 18
     6f0: 93 05 45 01  	addi	a1, a0, 20
     6f4: 23 2c b1 02  	sw	a1, 56(sp)
     6f8: 13 0d 35 01  	addi	s10, a0, 19
     6fc: 93 05 65 01  	addi	a1, a0, 22
     700: 23 26 b1 02  	sw	a1, 44(sp)
     704: 93 05 85 01  	addi	a1, a0, 24
     708: 23 2a b1 00  	sw	a1, 20(sp)
     70c: 93 05 b5 00  	addi	a1, a0, 11
     710: 23 28 b1 00  	sw	a1, 16(sp)
     714: 93 05 d5 00  	addi	a1, a0, 13
     718: 23 24 b1 02  	sw	a1, 40(sp)
     71c: 93 05 f5 00  	addi	a1, a0, 15
     720: 23 2a b1 02  	sw	a1, 52(sp)
     724: 93 05 15 01  	addi	a1, a0, 17
     728: 23 20 b1 04  	sw	a1, 64(sp)
     72c: 93 05 55 01  	addi	a1, a0, 21
     730: 23 22 b1 02  	sw	a1, 36(sp)
     734: 13 05 75 01  	addi	a0, a0, 23
     738: 23 26 a1 00  	sw	a0, 12(sp)
     73c: 23 24 51 01  	sw	s5, 8(sp)
     740: 23 2e a1 01  	sw	s10, 28(sp)
     744: 23 2c 41 01  	sw	s4, 24(sp)
     748: e3 0a b4 57  	beq	s0, s11, 0x14bc <.LBB4_35+0x220>
     74c: 03 c5 0a 00  	lbu	a0, 0(s5)
     750: e3 e0 ac 56  	bltu	s9, a0, 0x14b0 <.LBB4_35+0x214>
     754: 13 15 25 00  	slli	a0, a0, 2
     758: 33 05 85 01  	add	a0, a0, s8
     75c: 03 25 05 00  	lw	a0, 0(a0)
     760: 67 00 05 00  	jr	a0

00000764 <.LBB4_21>:
     764: 13 06 f0 00  	li	a2, 15
     768: 93 06 f0 00  	li	a3, 15
     76c: 13 85 04 00  	mv	a0, s1
     770: 93 05 04 00  	mv	a1, s0
     774: 13 07 00 00  	li	a4, 0
     778: 6f 00 80 0f  	j	0x870 <.LBB4_23+0x50>

0000077c <.LBB4_22>:
     77c: 13 06 f0 00  	li	a2, 15
     780: 93 06 f0 00  	li	a3, 15
     784: 13 07 10 00  	li	a4, 1
     788: 13 85 04 00  	mv	a0, s1
     78c: 93 05 04 00  	mv	a1, s0
     790: 97 10 00 00  	auipc	ra, 1
     794: e7 80 00 e5  	jalr	-432(ra)
     798: 93 05 54 00  	addi	a1, s0, 5
     79c: 13 06 30 00  	li	a2, 3
     7a0: 93 06 10 00  	li	a3, 1
     7a4: 13 07 c0 00  	li	a4, 12
     7a8: 13 05 0a 00  	mv	a0, s4
     7ac: 97 10 00 00  	auipc	ra, 1
     7b0: e7 80 40 e3  	jalr	-460(ra)
     7b4: 93 05 74 00  	addi	a1, s0, 7
     7b8: 13 06 30 00  	li	a2, 3
     7bc: 93 06 10 00  	li	a3, 1
     7c0: 13 07 c0 00  	li	a4, 12
     7c4: 13 05 0a 00  	mv	a0, s4
     7c8: 97 10 00 00  	auipc	ra, 1
     7cc: e7 80 80 e1  	jalr	-488(ra)
     7d0: 93 05 94 00  	addi	a1, s0, 9
     7d4: 13 06 30 00  	li	a2, 3
     7d8: 93 06 10 00  	li	a3, 1
     7dc: 13 07 c0 00  	li	a4, 12
     7e0: 13 05 0a 00  	mv	a0, s4
     7e4: 97 10 00 00  	auipc	ra, 1
     7e8: e7 80 c0 df  	jalr	-516(ra)
     7ec: 93 05 64 00  	addi	a1, s0, 6
     7f0: 13 06 10 00  	li	a2, 1
     7f4: 93 06 10 00  	li	a3, 1
     7f8: 13 07 c0 00  	li	a4, 12
     7fc: 13 85 0b 00  	mv	a0, s7
     800: 97 10 00 00  	auipc	ra, 1
     804: e7 80 00 de  	jalr	-544(ra)
     808: 93 05 84 00  	addi	a1, s0, 8
     80c: 13 06 10 00  	li	a2, 1
     810: 93 06 10 00  	li	a3, 1
     814: 13 07 c0 00  	li	a4, 12
     818: 13 05 0a 00  	mv	a0, s4
     81c: 6f 00 d0 48  	j	0x14a8 <.LBB4_35+0x20c>

00000820 <.LBB4_23>:
     820: 13 06 f0 00  	li	a2, 15
     824: 93 06 f0 00  	li	a3, 15
     828: 13 07 20 00  	li	a4, 2
     82c: 13 85 04 00  	mv	a0, s1
     830: 93 05 04 00  	mv	a1, s0
     834: 97 10 00 00  	auipc	ra, 1
     838: e7 80 c0 da  	jalr	-596(ra)
     83c: 13 09 54 00  	addi	s2, s0, 5
     840: 13 06 10 00  	li	a2, 1
     844: 93 06 30 00  	li	a3, 3
     848: 13 07 c0 00  	li	a4, 12
     84c: 13 05 0a 00  	mv	a0, s4
     850: 93 05 09 00  	mv	a1, s2
     854: 97 10 00 00  	auipc	ra, 1
     858: e7 80 c0 d8  	jalr	-628(ra)
     85c: 13 06 10 00  	li	a2, 1
     860: 93 06 50 00  	li	a3, 5
     864: 13 07 c0 00  	li	a4, 12
     868: 13 85 0b 00  	mv	a0, s7
     86c: 93 05 09 00  	mv	a1, s2
     870: 97 10 00 00  	auipc	ra, 1
     874: e7 80 00 d7  	jalr	-656(ra)
     878: 93 05 74 00  	addi	a1, s0, 7
     87c: 13 06 10 00  	li	a2, 1
     880: 93 06 10 00  	li	a3, 1
     884: 13 07 c0 00  	li	a4, 12
     888: 03 25 01 04  	lw	a0, 64(sp)
     88c: 6f 00 d0 41  	j	0x14a8 <.LBB4_35+0x20c>

00000890 <.LBB4_25>:
     890: 13 06 f0 00  	li	a2, 15
     894: 93 06 f0 00  	li	a3, 15
     898: 13 07 30 00  	li	a4, 3
     89c: 13 85 04 00  	mv	a0, s1
     8a0: 93 05 04 00  	mv	a1, s0
     8a4: 97 10 00 00  	auipc	ra, 1
     8a8: e7 80 c0 d3  	jalr	-708(ra)
     8ac: 13 09 54 00  	addi	s2, s0, 5
     8b0: 13 06 30 00  	li	a2, 3
     8b4: 93 06 10 00  	li	a3, 1
     8b8: 13 07 c0 00  	li	a4, 12
     8bc: 13 05 0a 00  	mv	a0, s4
     8c0: 93 05 09 00  	mv	a1, s2
     8c4: 97 10 00 00  	auipc	ra, 1
     8c8: e7 80 c0 d1  	jalr	-740(ra)
     8cc: 93 05 74 00  	addi	a1, s0, 7
     8d0: 13 06 30 00  	li	a2, 3
     8d4: 93 06 10 00  	li	a3, 1
     8d8: 13 07 c0 00  	li	a4, 12
     8dc: 13 05 0a 00  	mv	a0, s4
     8e0: 97 10 00 00  	auipc	ra, 1
     8e4: e7 80 00 d0  	jalr	-768(ra)
     8e8: 93 05 94 00  	addi	a1, s0, 9
     8ec: 13 06 30 00  	li	a2, 3
     8f0: 93 06 10 00  	li	a3, 1
     8f4: 13 07 c0 00  	li	a4, 12
     8f8: 13 05 0a 00  	mv	a0, s4
     8fc: 97 10 00 00  	auipc	ra, 1
     900: e7 80 40 ce  	jalr	-796(ra)
     904: 13 06 10 00  	li	a2, 1
     908: 93 06 50 00  	li	a3, 5
     90c: 13 07 c0 00  	li	a4, 12
     910: 13 05 0a 00  	mv	a0, s4
     914: 93 05 09 00  	mv	a1, s2
     918: 97 10 00 00  	auipc	ra, 1
     91c: e7 80 80 cc  	jalr	-824(ra)
     920: 13 06 10 00  	li	a2, 1
     924: 93 06 50 00  	li	a3, 5
     928: 13 07 c0 00  	li	a4, 12
     92c: 13 85 0b 00  	mv	a0, s7
     930: 93 05 09 00  	mv	a1, s2
     934: 6f 00 50 37  	j	0x14a8 <.LBB4_35+0x20c>

00000938 <.LBB4_26>:
     938: 13 06 f0 00  	li	a2, 15
     93c: 93 06 f0 00  	li	a3, 15
     940: 13 07 40 00  	li	a4, 4
     944: 13 85 04 00  	mv	a0, s1
     948: 93 05 04 00  	mv	a1, s0
     94c: 97 10 00 00  	auipc	ra, 1
     950: e7 80 40 c9  	jalr	-876(ra)
     954: 13 09 54 00  	addi	s2, s0, 5
     958: 13 06 10 00  	li	a2, 1
     95c: 93 06 50 00  	li	a3, 5
     960: 13 07 c0 00  	li	a4, 12
     964: 03 25 41 03  	lw	a0, 52(sp)
     968: 93 05 09 00  	mv	a1, s2
     96c: 97 10 00 00  	auipc	ra, 1
     970: e7 80 40 c7  	jalr	-908(ra)
     974: 13 06 30 00  	li	a2, 3
     978: 93 06 10 00  	li	a3, 1
     97c: 13 07 c0 00  	li	a4, 12
     980: 83 29 01 04  	lw	s3, 64(sp)
     984: 13 85 09 00  	mv	a0, s3
     988: 93 05 09 00  	mv	a1, s2
     98c: 97 10 00 00  	auipc	ra, 1
     990: e7 80 40 c5  	jalr	-940(ra)
     994: 13 06 10 00  	li	a2, 1
     998: 93 06 50 00  	li	a3, 5
     99c: 13 07 c0 00  	li	a4, 12
     9a0: 13 85 09 00  	mv	a0, s3
     9a4: 93 05 09 00  	mv	a1, s2
     9a8: 97 10 00 00  	auipc	ra, 1
     9ac: e7 80 80 c3  	jalr	-968(ra)
     9b0: 93 05 74 00  	addi	a1, s0, 7
     9b4: 13 06 30 00  	li	a2, 3
     9b8: 93 06 10 00  	li	a3, 1
     9bc: 13 07 c0 00  	li	a4, 12
     9c0: 13 85 09 00  	mv	a0, s3
     9c4: 97 10 00 00  	auipc	ra, 1
     9c8: e7 80 c0 c1  	jalr	-996(ra)
     9cc: 93 05 94 00  	addi	a1, s0, 9
     9d0: 13 06 30 00  	li	a2, 3
     9d4: 93 06 10 00  	li	a3, 1
     9d8: 13 07 c0 00  	li	a4, 12
     9dc: 13 85 09 00  	mv	a0, s3
     9e0: 97 10 00 00  	auipc	ra, 1
     9e4: e7 80 00 c0  	jalr	-1024(ra)
     9e8: 93 05 84 00  	addi	a1, s0, 8
     9ec: 13 06 10 00  	li	a2, 1
     9f0: 93 06 10 00  	li	a3, 1
     9f4: 13 07 c0 00  	li	a4, 12
     9f8: 13 05 0d 00  	mv	a0, s10
     9fc: 6f 00 d0 2a  	j	0x14a8 <.LBB4_35+0x20c>

00000a00 <.LBB4_27>:
     a00: 13 06 f0 00  	li	a2, 15
     a04: 93 06 f0 00  	li	a3, 15
     a08: 13 07 50 00  	li	a4, 5
     a0c: 13 85 04 00  	mv	a0, s1
     a10: 93 05 04 00  	mv	a1, s0
     a14: 97 10 00 00  	auipc	ra, 1
     a18: e7 80 c0 bc  	jalr	-1076(ra)
     a1c: 13 09 54 00  	addi	s2, s0, 5
     a20: 13 06 30 00  	li	a2, 3
     a24: 93 06 10 00  	li	a3, 1
     a28: 13 07 c0 00  	li	a4, 12
     a2c: 83 29 01 03  	lw	s3, 48(sp)
     a30: 13 85 09 00  	mv	a0, s3
     a34: 93 05 09 00  	mv	a1, s2
     a38: 97 10 00 00  	auipc	ra, 1
     a3c: e7 80 80 ba  	jalr	-1112(ra)
     a40: 13 0b 74 00  	addi	s6, s0, 7
     a44: 13 06 30 00  	li	a2, 3
     a48: 93 06 10 00  	li	a3, 1
     a4c: 13 07 c0 00  	li	a4, 12
     a50: 13 85 09 00  	mv	a0, s3
     a54: 93 05 0b 00  	mv	a1, s6
     a58: 97 10 00 00  	auipc	ra, 1
     a5c: e7 80 80 b8  	jalr	-1144(ra)
     a60: 13 0c 94 00  	addi	s8, s0, 9
     a64: 13 06 30 00  	li	a2, 3
     a68: 93 06 10 00  	li	a3, 1
     a6c: 13 07 c0 00  	li	a4, 12
     a70: 13 85 09 00  	mv	a0, s3
     a74: 93 05 0c 00  	mv	a1, s8
     a78: 97 10 00 00  	auipc	ra, 1
     a7c: e7 80 80 b6  	jalr	-1176(ra)
     a80: 93 0c 64 00  	addi	s9, s0, 6
     a84: 13 06 10 00  	li	a2, 1
     a88: 93 06 10 00  	li	a3, 1
     a8c: 13 07 c0 00  	li	a4, 12
     a90: 13 05 0a 00  	mv	a0, s4
     a94: 93 85 0c 00  	mv	a1, s9
     a98: 97 10 00 00  	auipc	ra, 1
     a9c: e7 80 80 b4  	jalr	-1208(ra)
     aa0: 93 0d 84 00  	addi	s11, s0, 8
     aa4: 13 06 10 00  	li	a2, 1
     aa8: 93 06 10 00  	li	a3, 1
     aac: 13 07 c0 00  	li	a4, 12
     ab0: 13 05 0a 00  	mv	a0, s4
     ab4: 93 85 0d 00  	mv	a1, s11
     ab8: 97 10 00 00  	auipc	ra, 1
     abc: e7 80 80 b2  	jalr	-1240(ra)
     ac0: 13 06 30 00  	li	a2, 3
     ac4: 93 06 10 00  	li	a3, 1
     ac8: 13 07 c0 00  	li	a4, 12
     acc: 13 85 0b 00  	mv	a0, s7
     ad0: 93 05 09 00  	mv	a1, s2
     ad4: 97 10 00 00  	auipc	ra, 1
     ad8: e7 80 c0 b0  	jalr	-1268(ra)
     adc: 13 06 30 00  	li	a2, 3
     ae0: 93 06 10 00  	li	a3, 1
     ae4: 13 07 c0 00  	li	a4, 12
     ae8: 13 85 0b 00  	mv	a0, s7
     aec: 93 05 0b 00  	mv	a1, s6
     af0: 97 10 00 00  	auipc	ra, 1
     af4: e7 80 00 af  	jalr	-1296(ra)
     af8: 13 06 30 00  	li	a2, 3
     afc: 93 06 10 00  	li	a3, 1
     b00: 13 07 c0 00  	li	a4, 12
     b04: 13 85 0b 00  	mv	a0, s7
     b08: 93 05 0c 00  	mv	a1, s8
     b0c: 03 2c c1 03  	lw	s8, 60(sp)
     b10: 97 10 00 00  	auipc	ra, 1
     b14: e7 80 00 ad  	jalr	-1328(ra)
     b18: 13 06 10 00  	li	a2, 1
     b1c: 93 06 10 00  	li	a3, 1
     b20: 13 07 c0 00  	li	a4, 12
     b24: 03 25 81 03  	lw	a0, 56(sp)
     b28: 93 85 0c 00  	mv	a1, s9
     b2c: 93 0c b0 00  	li	s9, 11
     b30: 97 10 00 00  	auipc	ra, 1
     b34: e7 80 00 ab  	jalr	-1360(ra)
     b38: 13 06 10 00  	li	a2, 1
     b3c: 93 06 10 00  	li	a3, 1
     b40: 13 07 c0 00  	li	a4, 12
     b44: 13 85 0b 00  	mv	a0, s7
     b48: 6f 00 c0 5a  	j	0x10f4 <.LBB4_31+0x164>

00000b4c <.LBB4_28>:
     b4c: 13 06 f0 00  	li	a2, 15
     b50: 93 06 f0 00  	li	a3, 15
     b54: 13 07 60 00  	li	a4, 6
     b58: 13 85 04 00  	mv	a0, s1
     b5c: 93 05 04 00  	mv	a1, s0
     b60: 97 10 00 00  	auipc	ra, 1
     b64: e7 80 00 a8  	jalr	-1408(ra)
     b68: 13 09 54 00  	addi	s2, s0, 5
     b6c: 13 06 30 00  	li	a2, 3
     b70: 93 06 10 00  	li	a3, 1
     b74: 13 07 c0 00  	li	a4, 12
     b78: 83 29 01 03  	lw	s3, 48(sp)
     b7c: 13 85 09 00  	mv	a0, s3
     b80: 93 05 09 00  	mv	a1, s2
     b84: 97 10 00 00  	auipc	ra, 1
     b88: e7 80 c0 a5  	jalr	-1444(ra)
     b8c: 13 0b 74 00  	addi	s6, s0, 7
     b90: 13 06 30 00  	li	a2, 3
     b94: 93 06 10 00  	li	a3, 1
     b98: 13 07 c0 00  	li	a4, 12
     b9c: 13 85 09 00  	mv	a0, s3
     ba0: 93 05 0b 00  	mv	a1, s6
     ba4: 97 10 00 00  	auipc	ra, 1
     ba8: e7 80 c0 a3  	jalr	-1476(ra)
     bac: 93 05 94 00  	addi	a1, s0, 9
     bb0: 13 06 30 00  	li	a2, 3
     bb4: 93 06 10 00  	li	a3, 1
     bb8: 13 07 c0 00  	li	a4, 12
     bbc: 13 85 09 00  	mv	a0, s3
     bc0: 97 10 00 00  	auipc	ra, 1
     bc4: e7 80 00 a2  	jalr	-1504(ra)
     bc8: 13 06 10 00  	li	a2, 1
     bcc: 93 06 50 00  	li	a3, 5
     bd0: 13 07 c0 00  	li	a4, 12
     bd4: 13 85 09 00  	mv	a0, s3
     bd8: 93 05 09 00  	mv	a1, s2
     bdc: 97 10 00 00  	auipc	ra, 1
     be0: e7 80 40 a0  	jalr	-1532(ra)
     be4: 13 06 10 00  	li	a2, 1
     be8: 93 06 30 00  	li	a3, 3
     bec: 13 07 c0 00  	li	a4, 12
     bf0: 13 05 0a 00  	mv	a0, s4
     bf4: 93 05 0b 00  	mv	a1, s6
     bf8: 97 10 00 00  	auipc	ra, 1
     bfc: e7 80 80 9e  	jalr	-1560(ra)
     c00: 13 06 10 00  	li	a2, 1
     c04: 93 06 30 00  	li	a3, 3
     c08: 13 07 c0 00  	li	a4, 12
     c0c: 13 85 0b 00  	mv	a0, s7
     c10: 93 05 09 00  	mv	a1, s2
     c14: 97 10 00 00  	auipc	ra, 1
     c18: e7 80 c0 9c  	jalr	-1588(ra)
     c1c: 13 06 10 00  	li	a2, 1
     c20: 93 06 50 00  	li	a3, 5
     c24: 13 07 c0 00  	li	a4, 12
     c28: 03 25 81 03  	lw	a0, 56(sp)
     c2c: 93 05 09 00  	mv	a1, s2
     c30: 97 10 00 00  	auipc	ra, 1
     c34: e7 80 00 9b  	jalr	-1616(ra)
     c38: 13 06 10 00  	li	a2, 1
     c3c: 93 06 10 00  	li	a3, 1
     c40: 13 07 c0 00  	li	a4, 12
     c44: 13 05 0d 00  	mv	a0, s10
     c48: 6f 00 d0 05  	j	0x14a4 <.LBB4_35+0x208>

00000c4c <.LBB4_29>:
     c4c: 13 06 f0 00  	li	a2, 15
     c50: 93 06 f0 00  	li	a3, 15
     c54: 13 07 70 00  	li	a4, 7
     c58: 13 85 04 00  	mv	a0, s1
     c5c: 93 05 04 00  	mv	a1, s0
     c60: 97 10 00 00  	auipc	ra, 1
     c64: e7 80 00 98  	jalr	-1664(ra)
     c68: 13 09 54 00  	addi	s2, s0, 5
     c6c: 13 06 10 00  	li	a2, 1
     c70: 93 06 50 00  	li	a3, 5
     c74: 13 07 c0 00  	li	a4, 12
     c78: 03 25 81 02  	lw	a0, 40(sp)
     c7c: 93 05 09 00  	mv	a1, s2
     c80: 97 10 00 00  	auipc	ra, 1
     c84: e7 80 00 96  	jalr	-1696(ra)
     c88: 13 06 30 00  	li	a2, 3
     c8c: 93 06 10 00  	li	a3, 1
     c90: 13 07 c0 00  	li	a4, 12
     c94: 83 29 41 03  	lw	s3, 52(sp)
     c98: 13 85 09 00  	mv	a0, s3
     c9c: 93 05 09 00  	mv	a1, s2
     ca0: 97 10 00 00  	auipc	ra, 1
     ca4: e7 80 00 94  	jalr	-1728(ra)
     ca8: 13 0b 74 00  	addi	s6, s0, 7
     cac: 13 06 30 00  	li	a2, 3
     cb0: 93 06 10 00  	li	a3, 1
     cb4: 13 07 c0 00  	li	a4, 12
     cb8: 13 85 09 00  	mv	a0, s3
     cbc: 93 05 0b 00  	mv	a1, s6
     cc0: 97 10 00 00  	auipc	ra, 1
     cc4: e7 80 00 92  	jalr	-1760(ra)
     cc8: 13 0c 94 00  	addi	s8, s0, 9
     ccc: 13 06 30 00  	li	a2, 3
     cd0: 93 06 10 00  	li	a3, 1
     cd4: 13 07 c0 00  	li	a4, 12
     cd8: 13 85 09 00  	mv	a0, s3
     cdc: 93 05 0c 00  	mv	a1, s8
     ce0: 97 10 00 00  	auipc	ra, 1
     ce4: e7 80 00 90  	jalr	-1792(ra)
     ce8: 93 05 64 00  	addi	a1, s0, 6
     cec: 13 06 10 00  	li	a2, 1
     cf0: 93 06 10 00  	li	a3, 1
     cf4: 13 07 c0 00  	li	a4, 12
     cf8: 03 25 01 04  	lw	a0, 64(sp)
     cfc: 97 10 00 00  	auipc	ra, 1
     d00: e7 80 40 8e  	jalr	-1820(ra)
     d04: 93 05 84 00  	addi	a1, s0, 8
     d08: 13 06 10 00  	li	a2, 1
     d0c: 93 06 10 00  	li	a3, 1
     d10: 13 07 c0 00  	li	a4, 12
     d14: 13 85 09 00  	mv	a0, s3
     d18: 97 10 00 00  	auipc	ra, 1
     d1c: e7 80 80 8c  	jalr	-1848(ra)
     d20: 13 06 10 00  	li	a2, 1
     d24: 93 06 50 00  	li	a3, 5
     d28: 13 07 c0 00  	li	a4, 12
     d2c: 13 05 0d 00  	mv	a0, s10
     d30: 93 05 09 00  	mv	a1, s2
     d34: 97 10 00 00  	auipc	ra, 1
     d38: e7 80 c0 8a  	jalr	-1876(ra)
     d3c: 13 06 10 00  	li	a2, 1
     d40: 93 06 50 00  	li	a3, 5
     d44: 13 07 c0 00  	li	a4, 12
     d48: 03 25 41 02  	lw	a0, 36(sp)
     d4c: 93 05 09 00  	mv	a1, s2
     d50: 97 10 00 00  	auipc	ra, 1
     d54: e7 80 00 89  	jalr	-1904(ra)
     d58: 13 06 30 00  	li	a2, 3
     d5c: 93 06 10 00  	li	a3, 1
     d60: 13 07 c0 00  	li	a4, 12
     d64: 13 05 0d 00  	mv	a0, s10
     d68: 93 05 09 00  	mv	a1, s2
     d6c: 97 10 00 00  	auipc	ra, 1
     d70: e7 80 40 87  	jalr	-1932(ra)
     d74: 13 06 30 00  	li	a2, 3
     d78: 93 06 10 00  	li	a3, 1
     d7c: 13 07 c0 00  	li	a4, 12
     d80: 13 05 0d 00  	mv	a0, s10
     d84: 93 05 0b 00  	mv	a1, s6
     d88: 97 10 00 00  	auipc	ra, 1
     d8c: e7 80 80 85  	jalr	-1960(ra)
     d90: 13 06 30 00  	li	a2, 3
     d94: 93 06 10 00  	li	a3, 1
     d98: 13 07 c0 00  	li	a4, 12
     d9c: 13 05 0d 00  	mv	a0, s10
     da0: 6f 00 00 4f  	j	0x1290 <.LBB4_33+0x190>

00000da4 <.LBB4_30>:
     da4: 13 06 f0 00  	li	a2, 15
     da8: 93 06 f0 00  	li	a3, 15
     dac: 13 07 80 00  	li	a4, 8
     db0: 13 85 04 00  	mv	a0, s1
     db4: 93 05 04 00  	mv	a1, s0
     db8: 97 10 00 00  	auipc	ra, 1
     dbc: e7 80 80 82  	jalr	-2008(ra)
     dc0: 13 09 54 00  	addi	s2, s0, 5
     dc4: 13 06 30 00  	li	a2, 3
     dc8: 93 06 10 00  	li	a3, 1
     dcc: 13 07 c0 00  	li	a4, 12
     dd0: 83 29 01 02  	lw	s3, 32(sp)
     dd4: 13 85 09 00  	mv	a0, s3
     dd8: 93 05 09 00  	mv	a1, s2
     ddc: 97 10 00 00  	auipc	ra, 1
     de0: e7 80 40 80  	jalr	-2044(ra)
     de4: 13 0b 74 00  	addi	s6, s0, 7
     de8: 13 06 30 00  	li	a2, 3
     dec: 93 06 10 00  	li	a3, 1
     df0: 13 07 c0 00  	li	a4, 12
     df4: 13 85 09 00  	mv	a0, s3
     df8: 93 05 0b 00  	mv	a1, s6
     dfc: 97 00 00 00  	auipc	ra, 0
     e00: e7 80 40 7e  	jalr	2020(ra)
     e04: 13 0c 94 00  	addi	s8, s0, 9
     e08: 13 06 30 00  	li	a2, 3
     e0c: 93 06 10 00  	li	a3, 1
     e10: 13 07 c0 00  	li	a4, 12
     e14: 13 85 09 00  	mv	a0, s3
     e18: 93 05 0c 00  	mv	a1, s8
     e1c: 97 00 00 00  	auipc	ra, 0
     e20: e7 80 40 7c  	jalr	1988(ra)
     e24: 93 0d 64 00  	addi	s11, s0, 6
     e28: 13 06 10 00  	li	a2, 1
     e2c: 93 06 10 00  	li	a3, 1
     e30: 13 07 c0 00  	li	a4, 12
     e34: 03 25 01 03  	lw	a0, 48(sp)
     e38: 93 85 0d 00  	mv	a1, s11
     e3c: 97 00 00 00  	auipc	ra, 0
     e40: e7 80 40 7a  	jalr	1956(ra)
     e44: 93 0c 84 00  	addi	s9, s0, 8
     e48: 13 06 10 00  	li	a2, 1
     e4c: 93 06 10 00  	li	a3, 1
     e50: 13 07 c0 00  	li	a4, 12
     e54: 13 85 09 00  	mv	a0, s3
     e58: 03 2d 81 03  	lw	s10, 56(sp)
     e5c: 03 2a 81 01  	lw	s4, 24(sp)
     e60: 93 85 0c 00  	mv	a1, s9
     e64: 97 00 00 00  	auipc	ra, 0
     e68: e7 80 c0 77  	jalr	1916(ra)
     e6c: 13 06 30 00  	li	a2, 3
     e70: 93 06 10 00  	li	a3, 1
     e74: 13 07 c0 00  	li	a4, 12
     e78: 13 05 0a 00  	mv	a0, s4
     e7c: 93 05 09 00  	mv	a1, s2
     e80: 97 00 00 00  	auipc	ra, 0
     e84: e7 80 00 76  	jalr	1888(ra)
     e88: 13 06 30 00  	li	a2, 3
     e8c: 93 06 10 00  	li	a3, 1
     e90: 13 07 c0 00  	li	a4, 12
     e94: 13 05 0a 00  	mv	a0, s4
     e98: 93 05 0b 00  	mv	a1, s6
     e9c: 97 00 00 00  	auipc	ra, 0
     ea0: e7 80 40 74  	jalr	1860(ra)
     ea4: 13 06 30 00  	li	a2, 3
     ea8: 93 06 10 00  	li	a3, 1
     eac: 13 07 c0 00  	li	a4, 12
     eb0: 13 05 0a 00  	mv	a0, s4
     eb4: 93 05 0c 00  	mv	a1, s8
     eb8: 97 00 00 00  	auipc	ra, 0
     ebc: e7 80 80 72  	jalr	1832(ra)
     ec0: 13 06 10 00  	li	a2, 1
     ec4: 93 06 10 00  	li	a3, 1
     ec8: 13 07 c0 00  	li	a4, 12
     ecc: 13 05 0a 00  	mv	a0, s4
     ed0: 93 85 0d 00  	mv	a1, s11
     ed4: 93 0d c0 03  	li	s11, 60
     ed8: 97 00 00 00  	auipc	ra, 0
     edc: e7 80 80 70  	jalr	1800(ra)
     ee0: 13 06 10 00  	li	a2, 1
     ee4: 93 06 10 00  	li	a3, 1
     ee8: 13 07 c0 00  	li	a4, 12
     eec: 13 85 0b 00  	mv	a0, s7
     ef0: 93 85 0c 00  	mv	a1, s9
     ef4: 97 00 00 00  	auipc	ra, 0
     ef8: e7 80 c0 6e  	jalr	1772(ra)
     efc: 13 06 30 00  	li	a2, 3
     f00: 93 06 10 00  	li	a3, 1
     f04: 13 07 c0 00  	li	a4, 12
     f08: 13 05 0d 00  	mv	a0, s10
     f0c: 93 05 09 00  	mv	a1, s2
     f10: 97 00 00 00  	auipc	ra, 0
     f14: e7 80 00 6d  	jalr	1744(ra)
     f18: 13 06 30 00  	li	a2, 3
     f1c: 93 06 10 00  	li	a3, 1
     f20: 13 07 c0 00  	li	a4, 12
     f24: 13 05 0d 00  	mv	a0, s10
     f28: 93 05 0b 00  	mv	a1, s6
     f2c: 97 00 00 00  	auipc	ra, 0
     f30: e7 80 40 6b  	jalr	1716(ra)
     f34: 13 06 30 00  	li	a2, 3
     f38: 93 06 10 00  	li	a3, 1
     f3c: 13 07 c0 00  	li	a4, 12
     f40: 13 05 0d 00  	mv	a0, s10
     f44: 93 05 0c 00  	mv	a1, s8
     f48: 03 2c c1 03  	lw	s8, 60(sp)
     f4c: 97 00 00 00  	auipc	ra, 0
     f50: e7 80 40 69  	jalr	1684(ra)
     f54: 13 06 10 00  	li	a2, 1
     f58: 93 06 50 00  	li	a3, 5
     f5c: 13 07 c0 00  	li	a4, 12
     f60: 13 05 0d 00  	mv	a0, s10
     f64: 03 2d c1 01  	lw	s10, 28(sp)
     f68: 93 05 09 00  	mv	a1, s2
     f6c: 97 00 00 00  	auipc	ra, 0
     f70: e7 80 40 67  	jalr	1652(ra)
     f74: 13 06 10 00  	li	a2, 1
     f78: 93 06 10 00  	li	a3, 1
     f7c: 13 07 c0 00  	li	a4, 12
     f80: 03 25 c1 02  	lw	a0, 44(sp)
     f84: 93 85 0c 00  	mv	a1, s9
     f88: 93 0c b0 00  	li	s9, 11
     f8c: 6f 00 c0 51  	j	0x14a8 <.LBB4_35+0x20c>

00000f90 <.LBB4_31>:
     f90: 13 06 f0 00  	li	a2, 15
     f94: 93 06 f0 00  	li	a3, 15
     f98: 13 07 90 00  	li	a4, 9
     f9c: 13 85 04 00  	mv	a0, s1
     fa0: 93 05 04 00  	mv	a1, s0
     fa4: 97 00 00 00  	auipc	ra, 0
     fa8: e7 80 c0 63  	jalr	1596(ra)
     fac: 13 09 54 00  	addi	s2, s0, 5
     fb0: 13 06 30 00  	li	a2, 3
     fb4: 93 06 10 00  	li	a3, 1
     fb8: 13 07 c0 00  	li	a4, 12
     fbc: 83 2d 81 02  	lw	s11, 40(sp)
     fc0: 13 85 0d 00  	mv	a0, s11
     fc4: 93 05 09 00  	mv	a1, s2
     fc8: 97 00 00 00  	auipc	ra, 0
     fcc: e7 80 80 61  	jalr	1560(ra)
     fd0: 13 0b 74 00  	addi	s6, s0, 7
     fd4: 13 06 30 00  	li	a2, 3
     fd8: 93 06 10 00  	li	a3, 1
     fdc: 13 07 c0 00  	li	a4, 12
     fe0: 13 85 0d 00  	mv	a0, s11
     fe4: 93 05 0b 00  	mv	a1, s6
     fe8: 97 00 00 00  	auipc	ra, 0
     fec: e7 80 80 5f  	jalr	1528(ra)
     ff0: 13 0c 94 00  	addi	s8, s0, 9
     ff4: 13 06 30 00  	li	a2, 3
     ff8: 93 06 10 00  	li	a3, 1
     ffc: 13 07 c0 00  	li	a4, 12
    1000: 13 85 0d 00  	mv	a0, s11
    1004: 93 05 0c 00  	mv	a1, s8
    1008: 97 00 00 00  	auipc	ra, 0
    100c: e7 80 80 5d  	jalr	1496(ra)
    1010: 93 0c 64 00  	addi	s9, s0, 6
    1014: 13 06 10 00  	li	a2, 1
    1018: 93 06 10 00  	li	a3, 1
    101c: 13 07 c0 00  	li	a4, 12
    1020: 13 85 0d 00  	mv	a0, s11
    1024: 93 85 0c 00  	mv	a1, s9
    1028: 97 00 00 00  	auipc	ra, 0
    102c: e7 80 80 5b  	jalr	1464(ra)
    1030: 93 0d 84 00  	addi	s11, s0, 8
    1034: 13 06 10 00  	li	a2, 1
    1038: 93 06 10 00  	li	a3, 1
    103c: 13 07 c0 00  	li	a4, 12
    1040: 03 25 41 03  	lw	a0, 52(sp)
    1044: 93 85 0d 00  	mv	a1, s11
    1048: 97 00 00 00  	auipc	ra, 0
    104c: e7 80 80 59  	jalr	1432(ra)
    1050: 13 06 10 00  	li	a2, 1
    1054: 93 06 50 00  	li	a3, 5
    1058: 13 07 c0 00  	li	a4, 12
    105c: 03 25 01 04  	lw	a0, 64(sp)
    1060: 93 05 09 00  	mv	a1, s2
    1064: 97 00 00 00  	auipc	ra, 0
    1068: e7 80 c0 57  	jalr	1404(ra)
    106c: 13 06 30 00  	li	a2, 3
    1070: 93 06 10 00  	li	a3, 1
    1074: 13 07 c0 00  	li	a4, 12
    1078: 13 05 0d 00  	mv	a0, s10
    107c: 93 05 09 00  	mv	a1, s2
    1080: 97 00 00 00  	auipc	ra, 0
    1084: e7 80 00 56  	jalr	1376(ra)
    1088: 13 06 30 00  	li	a2, 3
    108c: 93 06 10 00  	li	a3, 1
    1090: 13 07 c0 00  	li	a4, 12
    1094: 13 05 0d 00  	mv	a0, s10
    1098: 93 05 0b 00  	mv	a1, s6
    109c: 97 00 00 00  	auipc	ra, 0
    10a0: e7 80 40 54  	jalr	1348(ra)
    10a4: 13 06 30 00  	li	a2, 3
    10a8: 93 06 10 00  	li	a3, 1
    10ac: 13 07 c0 00  	li	a4, 12
    10b0: 13 05 0d 00  	mv	a0, s10
    10b4: 93 05 0c 00  	mv	a1, s8
    10b8: 03 2c c1 03  	lw	s8, 60(sp)
    10bc: 97 00 00 00  	auipc	ra, 0
    10c0: e7 80 40 52  	jalr	1316(ra)
    10c4: 13 06 10 00  	li	a2, 1
    10c8: 93 06 10 00  	li	a3, 1
    10cc: 13 07 c0 00  	li	a4, 12
    10d0: 03 25 41 02  	lw	a0, 36(sp)
    10d4: 93 85 0c 00  	mv	a1, s9
    10d8: 93 0c b0 00  	li	s9, 11
    10dc: 97 00 00 00  	auipc	ra, 0
    10e0: e7 80 40 50  	jalr	1284(ra)
    10e4: 13 06 10 00  	li	a2, 1
    10e8: 93 06 10 00  	li	a3, 1
    10ec: 13 07 c0 00  	li	a4, 12
    10f0: 13 05 0d 00  	mv	a0, s10
    10f4: 93 85 0d 00  	mv	a1, s11
    10f8: 93 0d c0 03  	li	s11, 60
    10fc: 6f 00 c0 3a  	j	0x14a8 <.LBB4_35+0x20c>

00001100 <.LBB4_33>:
    1100: 13 06 f0 00  	li	a2, 15
    1104: 93 06 f0 00  	li	a3, 15
    1108: 13 07 a0 00  	li	a4, 10
    110c: 13 85 04 00  	mv	a0, s1
    1110: 93 05 04 00  	mv	a1, s0
    1114: 97 00 00 00  	auipc	ra, 0
    1118: e7 80 c0 4c  	jalr	1228(ra)
    111c: 13 09 54 00  	addi	s2, s0, 5
    1120: 13 06 10 00  	li	a2, 1
    1124: 93 06 50 00  	li	a3, 5
    1128: 13 07 c0 00  	li	a4, 12
    112c: 03 25 01 01  	lw	a0, 16(sp)
    1130: 93 05 09 00  	mv	a1, s2
    1134: 97 00 00 00  	auipc	ra, 0
    1138: e7 80 c0 4a  	jalr	1196(ra)
    113c: 13 06 10 00  	li	a2, 1
    1140: 93 06 50 00  	li	a3, 5
    1144: 13 07 c0 00  	li	a4, 12
    1148: 03 2c 81 02  	lw	s8, 40(sp)
    114c: 13 05 0c 00  	mv	a0, s8
    1150: 93 05 09 00  	mv	a1, s2
    1154: 97 00 00 00  	auipc	ra, 0
    1158: e7 80 c0 48  	jalr	1164(ra)
    115c: 13 06 10 00  	li	a2, 1
    1160: 93 06 50 00  	li	a3, 5
    1164: 13 07 c0 00  	li	a4, 12
    1168: 03 25 41 03  	lw	a0, 52(sp)
    116c: 93 05 09 00  	mv	a1, s2
    1170: 97 00 00 00  	auipc	ra, 0
    1174: e7 80 00 47  	jalr	1136(ra)
    1178: 13 06 30 00  	li	a2, 3
    117c: 93 06 10 00  	li	a3, 1
    1180: 13 07 c0 00  	li	a4, 12
    1184: 13 05 0c 00  	mv	a0, s8
    1188: 93 05 09 00  	mv	a1, s2
    118c: 97 00 00 00  	auipc	ra, 0
    1190: e7 80 40 45  	jalr	1108(ra)
    1194: 13 0b 94 00  	addi	s6, s0, 9
    1198: 13 06 30 00  	li	a2, 3
    119c: 93 06 10 00  	li	a3, 1
    11a0: 13 07 c0 00  	li	a4, 12
    11a4: 13 05 0c 00  	mv	a0, s8
    11a8: 93 05 0b 00  	mv	a1, s6
    11ac: 97 00 00 00  	auipc	ra, 0
    11b0: e7 80 40 43  	jalr	1076(ra)
    11b4: 13 06 30 00  	li	a2, 3
    11b8: 93 06 10 00  	li	a3, 1
    11bc: 13 07 c0 00  	li	a4, 12
    11c0: 83 29 01 04  	lw	s3, 64(sp)
    11c4: 13 85 09 00  	mv	a0, s3
    11c8: 93 05 09 00  	mv	a1, s2
    11cc: 97 00 00 00  	auipc	ra, 0
    11d0: e7 80 40 41  	jalr	1044(ra)
    11d4: 13 0c 74 00  	addi	s8, s0, 7
    11d8: 13 06 30 00  	li	a2, 3
    11dc: 93 06 10 00  	li	a3, 1
    11e0: 13 07 c0 00  	li	a4, 12
    11e4: 13 85 09 00  	mv	a0, s3
    11e8: 93 05 0c 00  	mv	a1, s8
    11ec: 97 00 00 00  	auipc	ra, 0
    11f0: e7 80 40 3f  	jalr	1012(ra)
    11f4: 13 06 30 00  	li	a2, 3
    11f8: 93 06 10 00  	li	a3, 1
    11fc: 13 07 c0 00  	li	a4, 12
    1200: 13 85 09 00  	mv	a0, s3
    1204: 93 05 0b 00  	mv	a1, s6
    1208: 97 00 00 00  	auipc	ra, 0
    120c: e7 80 80 3d  	jalr	984(ra)
    1210: 93 05 64 00  	addi	a1, s0, 6
    1214: 13 06 10 00  	li	a2, 1
    1218: 93 06 10 00  	li	a3, 1
    121c: 13 07 c0 00  	li	a4, 12
    1220: 13 05 0d 00  	mv	a0, s10
    1224: 97 00 00 00  	auipc	ra, 0
    1228: e7 80 c0 3b  	jalr	956(ra)
    122c: 93 05 84 00  	addi	a1, s0, 8
    1230: 13 06 10 00  	li	a2, 1
    1234: 93 06 10 00  	li	a3, 1
    1238: 13 07 c0 00  	li	a4, 12
    123c: 13 85 09 00  	mv	a0, s3
    1240: 97 00 00 00  	auipc	ra, 0
    1244: e7 80 00 3a  	jalr	928(ra)
    1248: 13 06 10 00  	li	a2, 1
    124c: 93 06 30 00  	li	a3, 3
    1250: 13 07 c0 00  	li	a4, 12
    1254: 03 25 41 02  	lw	a0, 36(sp)
    1258: 93 05 09 00  	mv	a1, s2
    125c: 97 00 00 00  	auipc	ra, 0
    1260: e7 80 40 38  	jalr	900(ra)
    1264: 13 06 10 00  	li	a2, 1
    1268: 93 06 50 00  	li	a3, 5
    126c: 13 07 c0 00  	li	a4, 12
    1270: 03 25 c1 00  	lw	a0, 12(sp)
    1274: 93 05 09 00  	mv	a1, s2
    1278: 97 00 00 00  	auipc	ra, 0
    127c: e7 80 80 36  	jalr	872(ra)
    1280: 13 06 10 00  	li	a2, 1
    1284: 93 06 10 00  	li	a3, 1
    1288: 13 07 c0 00  	li	a4, 12
    128c: 03 25 c1 02  	lw	a0, 44(sp)
    1290: 93 05 0c 00  	mv	a1, s8
    1294: 03 2c c1 03  	lw	s8, 60(sp)
    1298: 6f 00 00 21  	j	0x14a8 <.LBB4_35+0x20c>

0000129c <.LBB4_35>:
    129c: 13 06 f0 00  	li	a2, 15
    12a0: 93 06 f0 00  	li	a3, 15
    12a4: 13 07 b0 00  	li	a4, 11
    12a8: 13 85 04 00  	mv	a0, s1
    12ac: 93 05 04 00  	mv	a1, s0
    12b0: 97 00 00 00  	auipc	ra, 0
    12b4: e7 80 00 33  	jalr	816(ra)
    12b8: 13 09 54 00  	addi	s2, s0, 5
    12bc: 13 06 30 00  	li	a2, 3
    12c0: 93 06 10 00  	li	a3, 1
    12c4: 13 07 c0 00  	li	a4, 12
    12c8: 13 85 04 00  	mv	a0, s1
    12cc: 93 05 09 00  	mv	a1, s2
    12d0: 97 00 00 00  	auipc	ra, 0
    12d4: e7 80 00 31  	jalr	784(ra)
    12d8: 13 0c 74 00  	addi	s8, s0, 7
    12dc: 13 06 30 00  	li	a2, 3
    12e0: 93 06 10 00  	li	a3, 1
    12e4: 13 07 c0 00  	li	a4, 12
    12e8: 13 85 04 00  	mv	a0, s1
    12ec: 93 05 0c 00  	mv	a1, s8
    12f0: 97 00 00 00  	auipc	ra, 0
    12f4: e7 80 00 2f  	jalr	752(ra)
    12f8: 13 0b 94 00  	addi	s6, s0, 9
    12fc: 13 06 30 00  	li	a2, 3
    1300: 93 06 10 00  	li	a3, 1
    1304: 13 07 c0 00  	li	a4, 12
    1308: 13 85 04 00  	mv	a0, s1
    130c: 93 05 0b 00  	mv	a1, s6
    1310: 97 00 00 00  	auipc	ra, 0
    1314: e7 80 00 2d  	jalr	720(ra)
    1318: 93 05 64 00  	addi	a1, s0, 6
    131c: 13 06 10 00  	li	a2, 1
    1320: 93 06 10 00  	li	a3, 1
    1324: 13 07 c0 00  	li	a4, 12
    1328: 03 25 01 02  	lw	a0, 32(sp)
    132c: 97 00 00 00  	auipc	ra, 0
    1330: e7 80 40 2b  	jalr	692(ra)
    1334: 93 05 84 00  	addi	a1, s0, 8
    1338: 13 06 10 00  	li	a2, 1
    133c: 93 06 10 00  	li	a3, 1
    1340: 13 07 c0 00  	li	a4, 12
    1344: 13 85 04 00  	mv	a0, s1
    1348: 97 00 00 00  	auipc	ra, 0
    134c: e7 80 80 29  	jalr	664(ra)
    1350: 13 06 10 00  	li	a2, 1
    1354: 93 06 50 00  	li	a3, 5
    1358: 13 07 c0 00  	li	a4, 12
    135c: 83 29 01 03  	lw	s3, 48(sp)
    1360: 13 85 09 00  	mv	a0, s3
    1364: 93 05 09 00  	mv	a1, s2
    1368: 97 00 00 00  	auipc	ra, 0
    136c: e7 80 80 27  	jalr	632(ra)
    1370: 13 06 10 00  	li	a2, 1
    1374: 93 06 50 00  	li	a3, 5
    1378: 13 07 c0 00  	li	a4, 12
    137c: 13 05 0a 00  	mv	a0, s4
    1380: 93 05 09 00  	mv	a1, s2
    1384: 97 00 00 00  	auipc	ra, 0
    1388: e7 80 c0 25  	jalr	604(ra)
    138c: 13 06 30 00  	li	a2, 3
    1390: 93 06 10 00  	li	a3, 1
    1394: 13 07 c0 00  	li	a4, 12
    1398: 13 85 09 00  	mv	a0, s3
    139c: 93 05 09 00  	mv	a1, s2
    13a0: 97 00 00 00  	auipc	ra, 0
    13a4: e7 80 00 24  	jalr	576(ra)
    13a8: 13 06 30 00  	li	a2, 3
    13ac: 93 06 10 00  	li	a3, 1
    13b0: 13 07 c0 00  	li	a4, 12
    13b4: 13 85 09 00  	mv	a0, s3
    13b8: 93 05 0b 00  	mv	a1, s6
    13bc: 97 00 00 00  	auipc	ra, 0
    13c0: e7 80 40 22  	jalr	548(ra)
    13c4: 13 06 10 00  	li	a2, 1
    13c8: 93 06 30 00  	li	a3, 3
    13cc: 13 07 c0 00  	li	a4, 12
    13d0: 13 85 0b 00  	mv	a0, s7
    13d4: 93 05 09 00  	mv	a1, s2
    13d8: 97 00 00 00  	auipc	ra, 0
    13dc: e7 80 80 20  	jalr	520(ra)
    13e0: 13 06 10 00  	li	a2, 1
    13e4: 93 06 50 00  	li	a3, 5
    13e8: 13 07 c0 00  	li	a4, 12
    13ec: 03 25 81 03  	lw	a0, 56(sp)
    13f0: 93 05 09 00  	mv	a1, s2
    13f4: 97 00 00 00  	auipc	ra, 0
    13f8: e7 80 c0 1e  	jalr	492(ra)
    13fc: 13 06 10 00  	li	a2, 1
    1400: 93 06 10 00  	li	a3, 1
    1404: 13 07 c0 00  	li	a4, 12
    1408: 13 05 0d 00  	mv	a0, s10
    140c: 93 05 0c 00  	mv	a1, s8
    1410: 97 00 00 00  	auipc	ra, 0
    1414: e7 80 00 1d  	jalr	464(ra)
    1418: 13 06 10 00  	li	a2, 1
    141c: 93 06 50 00  	li	a3, 5
    1420: 13 07 c0 00  	li	a4, 12
    1424: 03 2d c1 02  	lw	s10, 44(sp)
    1428: 13 05 0d 00  	mv	a0, s10
    142c: 93 05 09 00  	mv	a1, s2
    1430: 97 00 00 00  	auipc	ra, 0
    1434: e7 80 00 1b  	jalr	432(ra)
    1438: 13 06 10 00  	li	a2, 1
    143c: 93 06 50 00  	li	a3, 5
    1440: 13 07 c0 00  	li	a4, 12
    1444: 03 25 41 01  	lw	a0, 20(sp)
    1448: 93 05 09 00  	mv	a1, s2
    144c: 97 00 00 00  	auipc	ra, 0
    1450: e7 80 40 19  	jalr	404(ra)
    1454: 13 06 30 00  	li	a2, 3
    1458: 93 06 10 00  	li	a3, 1
    145c: 13 07 c0 00  	li	a4, 12
    1460: 13 05 0d 00  	mv	a0, s10
    1464: 93 05 09 00  	mv	a1, s2
    1468: 97 00 00 00  	auipc	ra, 0
    146c: e7 80 80 17  	jalr	376(ra)
    1470: 13 06 30 00  	li	a2, 3
    1474: 93 06 10 00  	li	a3, 1
    1478: 13 07 c0 00  	li	a4, 12
    147c: 13 05 0d 00  	mv	a0, s10
    1480: 93 05 0c 00  	mv	a1, s8
    1484: 03 2c c1 03  	lw	s8, 60(sp)
    1488: 97 00 00 00  	auipc	ra, 0
    148c: e7 80 80 15  	jalr	344(ra)
    1490: 13 06 30 00  	li	a2, 3
    1494: 93 06 10 00  	li	a3, 1
    1498: 13 07 c0 00  	li	a4, 12
    149c: 13 05 0d 00  	mv	a0, s10
    14a0: 03 2d c1 01  	lw	s10, 28(sp)
    14a4: 93 05 0b 00  	mv	a1, s6
    14a8: 97 00 00 00  	auipc	ra, 0
    14ac: e7 80 80 13  	jalr	312(ra)
    14b0: 13 04 f4 00  	addi	s0, s0, 15
    14b4: 93 8a 1a 00  	addi	s5, s5, 1
    14b8: 63 1a b4 a9  	bne	s0, s11, 0x74c <main+0x464>
    14bc: 83 25 41 00  	lw	a1, 4(sp)
    14c0: 93 85 15 00  	addi	a1, a1, 1
    14c4: 83 2a 81 00  	lw	s5, 8(sp)
    14c8: 93 8a 4a 00  	addi	s5, s5, 4
    14cc: 93 04 40 00  	li	s1, 4
    14d0: 63 9a 95 9e  	bne	a1, s1, 0x6c4 <main+0x3dc>
    14d4: 93 05 00 00  	li	a1, 0
    14d8: 13 05 00 00  	li	a0, 0
    14dc: 37 f6 ad fb  	lui	a2, 1030879
    14e0: 93 06 10 00  	li	a3, 1
    14e4: 23 00 d6 00  	sb	a3, 0(a2)
    14e8: 13 06 c1 05  	addi	a2, sp, 92
    14ec: 63 88 95 02  	beq	a1, s1, 0x151c <.LBB4_35+0x280>
    14f0: 93 06 00 00  	li	a3, 0
    14f4: 63 8e 96 00  	beq	a3, s1, 0x1510 <.LBB4_35+0x274>
    14f8: 33 07 d6 00  	add	a4, a2, a3
    14fc: 03 47 07 00  	lbu	a4, 0(a4)
    1500: 13 37 17 00  	seqz	a4, a4
    1504: 33 05 e5 00  	add	a0, a0, a4
    1508: 93 86 16 00  	addi	a3, a3, 1
    150c: e3 96 96 fe  	bne	a3, s1, 0x14f8 <.LBB4_35+0x25c>
    1510: 93 85 15 00  	addi	a1, a1, 1
    1514: 13 06 46 00  	addi	a2, a2, 4
    1518: e3 9c 95 fc  	bne	a1, s1, 0x14f0 <.LBB4_35+0x254>
    151c: 13 75 f5 0f  	andi	a0, a0, 255
    1520: 63 1c 05 84  	bnez	a0, 0x578 <main+0x290>
    1524: 13 05 c1 05  	addi	a0, sp, 92
    1528: 97 f0 ff ff  	auipc	ra, 1048575
    152c: e7 80 40 c7  	jalr	-908(ra)
    1530: 63 14 05 84  	bnez	a0, 0x578 <main+0x290>
    1534: 13 05 c1 05  	addi	a0, sp, 92
    1538: 97 f0 ff ff  	auipc	ra, 1048575
    153c: e7 80 80 ad  	jalr	-1320(ra)
    1540: 13 05 c1 05  	addi	a0, sp, 92
    1544: 97 f0 ff ff  	auipc	ra, 1048575
    1548: e7 80 80 c5  	jalr	-936(ra)
    154c: 13 04 05 00  	mv	s0, a0
    1550: 13 05 c1 05  	addi	a0, sp, 92
    1554: 97 f0 ff ff  	auipc	ra, 1048575
    1558: e7 80 c0 ab  	jalr	-1348(ra)
    155c: 13 05 c1 05  	addi	a0, sp, 92
    1560: 97 f0 ff ff  	auipc	ra, 1048575
    1564: e7 80 00 ab  	jalr	-1360(ra)
    1568: 13 05 c1 05  	addi	a0, sp, 92
    156c: 97 f0 ff ff  	auipc	ra, 1048575
    1570: e7 80 40 aa  	jalr	-1372(ra)
    1574: 63 12 04 80  	bnez	s0, 0x578 <main+0x290>
    1578: 13 05 00 00  	li	a0, 0
    157c: 83 20 c1 09  	lw	ra, 156(sp)
    1580: 03 24 81 09  	lw	s0, 152(sp)
    1584: 83 24 41 09  	lw	s1, 148(sp)
    1588: 03 29 01 09  	lw	s2, 144(sp)
    158c: 83 29 c1 08  	lw	s3, 140(sp)
    1590: 03 2a 81 08  	lw	s4, 136(sp)
    1594: 83 2a 41 08  	lw	s5, 132(sp)
    1598: 03 2b 01 08  	lw	s6, 128(sp)
    159c: 83 2b c1 07  	lw	s7, 124(sp)
    15a0: 03 2c 81 07  	lw	s8, 120(sp)
    15a4: 83 2c 41 07  	lw	s9, 116(sp)
    15a8: 03 2d 01 07  	lw	s10, 112(sp)
    15ac: 83 2d c1 06  	lw	s11, 108(sp)
    15b0: 13 01 01 0a  	addi	sp, sp, 160
    15b4: 67 80 00 00  	ret

000015b8 <my_rand>:
    15b8: b7 05 00 20  	lui	a1, 131072
    15bc: 03 a5 05 00  	lw	a0, 0(a1)
    15c0: 13 16 d5 00  	slli	a2, a0, 13
    15c4: 33 45 a6 00  	xor	a0, a2, a0
    15c8: 13 56 15 01  	srli	a2, a0, 17
    15cc: 33 45 a6 00  	xor	a0, a2, a0
    15d0: 13 16 55 00  	slli	a2, a0, 5
    15d4: 33 45 a6 00  	xor	a0, a2, a0
    15d8: 23 a0 a5 00  	sw	a0, 0(a1)
    15dc: 67 80 00 00  	ret

000015e0 <graphics_fill_rect>:
    15e0: 33 88 b6 00  	add	a6, a3, a1
    15e4: b3 06 a6 00  	add	a3, a2, a0
    15e8: 93 87 05 00  	mv	a5, a1
    15ec: 63 44 b8 00  	blt	a6, a1, 0x15f4 <graphics_fill_rect+0x14>
    15f0: 93 07 08 00  	mv	a5, a6
    15f4: 13 06 05 00  	mv	a2, a0
    15f8: 63 c4 a6 00  	blt	a3, a0, 0x1600 <graphics_fill_rect+0x20>
    15fc: 13 86 06 00  	mv	a2, a3
    1600: 93 06 00 05  	li	a3, 80
    1604: b3 86 d5 02  	<unknown>
    1608: b3 06 d5 00  	add	a3, a0, a3
    160c: 37 08 ad fb  	lui	a6, 1030864
    1610: b3 86 06 01  	add	a3, a3, a6
    1614: b3 85 b7 40  	sub	a1, a5, a1
    1618: 93 87 05 00  	mv	a5, a1
    161c: 13 88 06 00  	mv	a6, a3
    1620: 63 02 c5 02  	beq	a0, a2, 0x1644 <graphics_fill_rect+0x64>
    1624: 63 8a 07 00  	beqz	a5, 0x1638 <graphics_fill_rect+0x58>
    1628: 23 00 e8 00  	sb	a4, 0(a6)
    162c: 13 08 08 05  	addi	a6, a6, 80
    1630: 93 87 f7 ff  	addi	a5, a5, -1
    1634: e3 9a 07 fe  	bnez	a5, 0x1628 <graphics_fill_rect+0x48>
    1638: 13 05 15 00  	addi	a0, a0, 1
    163c: 93 86 16 00  	addi	a3, a3, 1
    1640: 6f f0 9f fd  	j	0x1618 <graphics_fill_rect+0x38>
    1644: 67 80 00 00  	ret

00001648 <my_input_update>:
    1648: b7 c5 ad fb  	lui	a1, 1030876
    164c: 03 c6 e5 ee  	lbu	a2, -274(a1)
    1650: 63 06 06 06  	beqz	a2, 0x16bc <my_input_update+0x74>
    1654: 37 06 00 20  	lui	a2, 131072
    1658: 93 06 10 00  	li	a3, 1
    165c: 13 07 b0 06  	li	a4, 107
    1660: 93 07 20 07  	li	a5, 114
    1664: 13 08 40 07  	li	a6, 116
    1668: 93 08 00 0f  	li	a7, 240
    166c: 93 02 50 07  	li	t0, 117
    1670: 13 03 00 0e  	li	t1, 224
    1674: 83 c3 e5 ee  	lbu	t2, -274(a1)
    1678: 63 82 03 04  	beqz	t2, 0x16bc <my_input_update+0x74>
    167c: 83 c3 f5 ee  	lbu	t2, -273(a1)
    1680: 03 4e 96 03  	lbu	t3, 57(a2)
    1684: 63 0a de 00  	beq	t3, a3, 0x1698 <my_input_update+0x50>
    1688: 63 14 0e 02  	bnez	t3, 0x16b0 <my_input_update+0x68>
    168c: 13 0e 10 00  	li	t3, 1
    1690: e3 92 63 fe  	bne	t2, t1, 0x1674 <my_input_update+0x2c>
    1694: 6f 00 00 02  	j	0x16b4 <my_input_update+0x6c>
    1698: 63 86 e3 02  	beq	t2, a4, 0x16c4 <my_input_update+0x7c>
    169c: 63 88 f3 02  	beq	t2, a5, 0x16cc <my_input_update+0x84>
    16a0: 63 8a 03 03  	beq	t2, a6, 0x16d4 <my_input_update+0x8c>
    16a4: 63 88 13 05  	beq	t2, a7, 0x16f4 <my_input_update+0xac>
    16a8: e3 96 53 fc  	bne	t2, t0, 0x1674 <my_input_update+0x2c>
    16ac: 6f 00 c0 02  	j	0x16d8 <my_input_update+0x90>
    16b0: 13 0e 00 00  	li	t3, 0
    16b4: a3 0c c6 03  	sb	t3, 57(a2)
    16b8: 6f f0 df fb  	j	0x1674 <my_input_update+0x2c>
    16bc: 93 05 00 00  	li	a1, 0
    16c0: 6f 00 c0 04  	j	0x170c <my_input_update+0xc4>
    16c4: 13 05 25 00  	addi	a0, a0, 2
    16c8: 6f 00 00 01  	j	0x16d8 <my_input_update+0x90>
    16cc: 13 05 15 00  	addi	a0, a0, 1
    16d0: 6f 00 80 00  	j	0x16d8 <my_input_update+0x90>
    16d4: 13 05 35 00  	addi	a0, a0, 3
    16d8: 93 05 00 00  	li	a1, 0
    16dc: 13 06 10 00  	li	a2, 1
    16e0: 23 00 c5 00  	sb	a2, 0(a0)
    16e4: 37 05 00 20  	lui	a0, 131072
    16e8: 13 06 30 00  	li	a2, 3
    16ec: a3 0c c5 02  	sb	a2, 57(a0)
    16f0: 6f 00 c0 01  	j	0x170c <my_input_update+0xc4>
    16f4: 37 05 00 20  	lui	a0, 131072
    16f8: 93 05 20 00  	li	a1, 2
    16fc: a3 0c b5 02  	sb	a1, 57(a0)
    1700: 37 c5 ad fb  	lui	a0, 1030876
    1704: 03 05 f5 ee  	lb	a0, -273(a0)
    1708: 93 05 10 00  	li	a1, 1
    170c: 13 85 05 00  	mv	a0, a1
    1710: 67 80 00 00  	ret

00001714 <wait_any_key_down>:
    1714: 13 01 01 ff  	addi	sp, sp, -16
    1718: 23 26 11 00  	sw	ra, 12(sp)
    171c: 23 24 81 00  	sw	s0, 8(sp)
    1720: 23 22 91 00  	sw	s1, 4(sp)
    1724: 13 04 05 00  	mv	s0, a0
    1728: 13 05 04 00  	mv	a0, s0
    172c: 97 00 00 00  	auipc	ra, 0
    1730: e7 80 c0 f1  	jalr	-228(ra)
    1734: 93 04 05 00  	mv	s1, a0
    1738: 13 06 b0 00  	li	a2, 11
    173c: 13 05 04 00  	mv	a0, s0
    1740: 93 05 00 00  	li	a1, 0
    1744: 97 00 00 00  	auipc	ra, 0
    1748: e7 80 40 02  	jalr	36(ra)
    174c: 13 f5 14 00  	andi	a0, s1, 1
    1750: e3 0c 05 fc  	beqz	a0, 0x1728 <wait_any_key_down+0x14>
    1754: 83 20 c1 00  	lw	ra, 12(sp)
    1758: 03 24 81 00  	lw	s0, 8(sp)
    175c: 83 24 41 00  	lw	s1, 4(sp)
    1760: 13 01 01 01  	addi	sp, sp, 16
    1764: 67 80 00 00  	ret

00001768 <memset>:
    1768: 93 06 00 00  	li	a3, 0
    176c: 63 0a d6 00  	beq	a2, a3, 0x1780 <memset+0x18>
    1770: 33 07 d5 00  	add	a4, a0, a3
    1774: 23 00 b7 00  	sb	a1, 0(a4)
    1778: 93 86 16 00  	addi	a3, a3, 1
    177c: e3 1a d6 fe  	bne	a2, a3, 0x1770 <memset+0x8>
    1780: 67 80 00 00  	ret

00001784 <memcpy>:
    1784: 93 06 00 00  	li	a3, 0
    1788: 63 0e d6 00  	beq	a2, a3, 0x17a4 <memcpy+0x20>
    178c: 33 87 d5 00  	add	a4, a1, a3
    1790: 03 07 07 00  	lb	a4, 0(a4)
    1794: b3 07 d5 00  	add	a5, a0, a3
    1798: 23 80 e7 00  	sb	a4, 0(a5)
    179c: 93 86 16 00  	addi	a3, a3, 1
    17a0: e3 16 d6 fe  	bne	a2, a3, 0x178c <memcpy+0x8>
    17a4: 67 80 00 00  	ret
