break in here
mem[0xFFFC] = CPU::INS_LDA_IM;
> print mem[0xFFFC]
(Byte) '\xa9'
> print/x mem[0xFFFC]
(Byte) 0xa9
> print mem[0xFFFC] == CPU::INS_LDA_IM
(bool) true
> mem read -f hex -c 4 `mem.Data + 0xFFFC`
0x7fffffffd33c: 0x000000a9 0xffffd430 0x00007fff 0xa66ff800
> p/x mem.Data + 0xfffc
(Byte *) 0x00007fffffffd33c "\xa9"
