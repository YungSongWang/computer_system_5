// Test case 4: 10 * 10
load Mult.asm,
output-file Mult04.out,
compare-to Mult04.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2;

set RAM[1] 10,
set RAM[2] 10,
repeat 500 {
  ticktock;
}
output;