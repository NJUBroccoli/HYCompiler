.data
_prompt: .asciiz "Enter an integer:"
_ret: .asciiz "\n"
.globl main
.text
read:
  li $v0, 4
  la $a0, _prompt
  syscall
  li $v0, 5
  syscall
  jr $ra

write:
  li $v0, 1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  move $v0, $0
  jr $ra

safe_add:
  addi $sp, $sp, -4
  sw $s8, 0($sp)
  move $s8, $sp
  addi $sp, $sp, -4096
  li $t0, 0
  move $t1, $t0
  sw $t1, -4($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -12($s8)
  lw $t0, 12($s8)
  li $t1, 0
  bgt $t0, $t1, label6
  j label7
label6:
  li $t0, 1
  move $t1, $t0
  sw $t1, -12($s8)
label7:
  lw $t0, -12($s8)
  li $t1, 0
  beq $t0, $t1, label5
  li $t0, 0
  move $t1, $t0
  sw $t1, -16($s8)
  lw $t0, 8($s8)
  li $t1, 0
  bgt $t0, $t1, label8
  j label9
label8:
  li $t0, 1
  move $t1, $t0
  sw $t1, -16($s8)
label9:
  lw $t0, -16($s8)
  li $t1, 0
  beq $t0, $t1, label5
  li $t0, 0
  move $t1, $t0
  sw $t1, -20($s8)
  li $t0, 2147483647
  lw $t1, 8($s8)
  sub $t2, $t0, $t1
  sw $t2, -24($s8)
  lw $t0, 12($s8)
  lw $t1, -24($s8)
  bgt $t0, $t1, label10
  j label11
label10:
  li $t0, 1
  move $t1, $t0
  sw $t1, -20($s8)
label11:
  lw $t0, -20($s8)
  li $t1, 0
  bne $t0, $t1, label4
  j label5
label4:
  li $t0, 1
  move $t1, $t0
  sw $t1, -8($s8)
label5:
  lw $t0, -8($s8)
  li $t1, 0
  bne $t0, $t1, label2
  li $t0, 0
  move $t1, $t0
  sw $t1, -28($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -32($s8)
  lw $t0, 12($s8)
  li $t1, 0
  blt $t0, $t1, label14
  j label15
label14:
  li $t0, 1
  move $t1, $t0
  sw $t1, -32($s8)
label15:
  lw $t0, -32($s8)
  li $t1, 0
  beq $t0, $t1, label13
  li $t0, 0
  move $t1, $t0
  sw $t1, -36($s8)
  lw $t0, 8($s8)
  li $t1, 0
  blt $t0, $t1, label16
  j label17
label16:
  li $t0, 1
  move $t1, $t0
  sw $t1, -36($s8)
label17:
  lw $t0, -36($s8)
  li $t1, 0
  beq $t0, $t1, label13
  li $t0, 0
  move $t1, $t0
  sw $t1, -40($s8)
  li $t0, -2147483648
  lw $t1, 8($s8)
  sub $t2, $t0, $t1
  sw $t2, -44($s8)
  lw $t0, 12($s8)
  lw $t1, -44($s8)
  blt $t0, $t1, label18
  j label19
label18:
  li $t0, 1
  move $t1, $t0
  sw $t1, -40($s8)
label19:
  lw $t0, -40($s8)
  li $t1, 0
  bne $t0, $t1, label12
  j label13
label12:
  li $t0, 1
  move $t1, $t0
  sw $t1, -28($s8)
label13:
  lw $t0, -28($s8)
  li $t1, 0
  bne $t0, $t1, label2
  j label3
label2:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4($s8)
label3:
  lw $t0, -4($s8)
  li $t1, 0
  beq $t0, $t1, label1
  lw $t0, 12($s8)
  move $v0, $t0
  move $sp, $s8
  lw $s8, 0($sp)
  addi $sp, $sp, 4
  jr $ra
label1:
  lw $t0, 12($s8)
  lw $t1, 8($s8)
  add $t2, $t0, $t1
  sw $t2, -48($s8)
  lw $t0, -48($s8)
  move $v0, $t0
  move $sp, $s8
  lw $s8, 0($sp)
  addi $sp, $sp, 4
  jr $ra

safe_sub:
  addi $sp, $sp, -4
  sw $s8, 0($sp)
  move $s8, $sp
  addi $sp, $sp, -4096
  li $t0, 0
  move $t1, $t0
  sw $t1, -4($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -8($s8)
  lw $t0, 12($s8)
  li $t1, 0
  bgt $t0, $t1, label24
  j label25
label24:
  li $t0, 1
  move $t1, $t0
  sw $t1, -8($s8)
label25:
  lw $t0, -8($s8)
  li $t1, 0
  beq $t0, $t1, label23
  li $t0, 0
  move $t1, $t0
  sw $t1, -12($s8)
  lw $t0, 8($s8)
  li $t1, 0
  blt $t0, $t1, label26
  j label27
label26:
  li $t0, 1
  move $t1, $t0
  sw $t1, -12($s8)
label27:
  lw $t0, -12($s8)
  li $t1, 0
  beq $t0, $t1, label23
  li $t0, 0
  move $t1, $t0
  sw $t1, -16($s8)
  li $t0, 2147483647
  lw $t1, 8($s8)
  add $t2, $t0, $t1
  sw $t2, -20($s8)
  lw $t0, 12($s8)
  lw $t1, -20($s8)
  bgt $t0, $t1, label28
  j label29
label28:
  li $t0, 1
  move $t1, $t0
  sw $t1, -16($s8)
label29:
  lw $t0, -16($s8)
  li $t1, 0
  bne $t0, $t1, label22
  j label23
label22:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4($s8)
label23:
  lw $t0, -4($s8)
  li $t1, 0
  bne $t0, $t1, label21
  li $t0, 0
  move $t1, $t0
  sw $t1, -24($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -28($s8)
  lw $t0, 12($s8)
  li $t1, 0
  blt $t0, $t1, label32
  j label33
label32:
  li $t0, 1
  move $t1, $t0
  sw $t1, -28($s8)
label33:
  lw $t0, -28($s8)
  li $t1, 0
  beq $t0, $t1, label31
  li $t0, 0
  move $t1, $t0
  sw $t1, -32($s8)
  lw $t0, 8($s8)
  li $t1, 0
  bgt $t0, $t1, label34
  j label35
label34:
  li $t0, 1
  move $t1, $t0
  sw $t1, -32($s8)
label35:
  lw $t0, -32($s8)
  li $t1, 0
  beq $t0, $t1, label31
  li $t0, 0
  move $t1, $t0
  sw $t1, -36($s8)
  li $t0, -2147483648
  lw $t1, 8($s8)
  add $t2, $t0, $t1
  sw $t2, -40($s8)
  lw $t0, 12($s8)
  lw $t1, -40($s8)
  blt $t0, $t1, label36
  j label37
label36:
  li $t0, 1
  move $t1, $t0
  sw $t1, -36($s8)
label37:
  lw $t0, -36($s8)
  li $t1, 0
  bne $t0, $t1, label30
  j label31
label30:
  li $t0, 1
  move $t1, $t0
  sw $t1, -24($s8)
label31:
  lw $t0, -24($s8)
  li $t1, 0
  beq $t0, $t1, label20
label21:
  lw $t0, 12($s8)
  move $v0, $t0
  move $sp, $s8
  lw $s8, 0($sp)
  addi $sp, $sp, 4
  jr $ra
label20:
  lw $t0, 12($s8)
  lw $t1, 8($s8)
  sub $t2, $t0, $t1
  sw $t2, -44($s8)
  lw $t0, -44($s8)
  move $v0, $t0
  move $sp, $s8
  lw $s8, 0($sp)
  addi $sp, $sp, 4
  jr $ra

safe_mul:
  addi $sp, $sp, -4
  sw $s8, 0($sp)
  move $s8, $sp
  addi $sp, $sp, -4096
  li $t0, 0
  move $t1, $t0
  sw $t1, -4($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -12($s8)
  lw $t0, 12($s8)
  li $t1, 0
  bgt $t0, $t1, label43
  j label44
label43:
  li $t0, 1
  move $t1, $t0
  sw $t1, -12($s8)
label44:
  lw $t0, -12($s8)
  li $t1, 0
  beq $t0, $t1, label42
  li $t0, 0
  move $t1, $t0
  sw $t1, -16($s8)
  lw $t0, 8($s8)
  li $t1, 0
  bgt $t0, $t1, label45
  j label46
label45:
  li $t0, 1
  move $t1, $t0
  sw $t1, -16($s8)
label46:
  lw $t0, -16($s8)
  li $t1, 0
  beq $t0, $t1, label42
  li $t0, 0
  move $t1, $t0
  sw $t1, -20($s8)
  li $t0, 2147483647
  lw $t1, 8($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -24($s8)
  lw $t0, 12($s8)
  lw $t1, -24($s8)
  bgt $t0, $t1, label47
  j label48
label47:
  li $t0, 1
  move $t1, $t0
  sw $t1, -20($s8)
label48:
  lw $t0, -20($s8)
  li $t1, 0
  bne $t0, $t1, label41
  j label42
label41:
  li $t0, 1
  move $t1, $t0
  sw $t1, -8($s8)
label42:
  lw $t0, -8($s8)
  li $t1, 0
  bne $t0, $t1, label39
  li $t0, 0
  move $t1, $t0
  sw $t1, -28($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -32($s8)
  lw $t0, 12($s8)
  li $t1, 0
  bgt $t0, $t1, label51
  j label52
label51:
  li $t0, 1
  move $t1, $t0
  sw $t1, -32($s8)
label52:
  lw $t0, -32($s8)
  li $t1, 0
  beq $t0, $t1, label50
  li $t0, 0
  move $t1, $t0
  sw $t1, -36($s8)
  lw $t0, 8($s8)
  li $t1, 0
  ble $t0, $t1, label53
  j label54
label53:
  li $t0, 1
  move $t1, $t0
  sw $t1, -36($s8)
label54:
  lw $t0, -36($s8)
  li $t1, 0
  beq $t0, $t1, label50
  li $t0, 0
  move $t1, $t0
  sw $t1, -40($s8)
  li $t0, -2147483648
  lw $t1, 12($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -44($s8)
  lw $t0, 8($s8)
  lw $t1, -44($s8)
  blt $t0, $t1, label55
  j label56
label55:
  li $t0, 1
  move $t1, $t0
  sw $t1, -40($s8)
label56:
  lw $t0, -40($s8)
  li $t1, 0
  bne $t0, $t1, label49
  j label50
label49:
  li $t0, 1
  move $t1, $t0
  sw $t1, -28($s8)
label50:
  lw $t0, -28($s8)
  li $t1, 0
  bne $t0, $t1, label39
  li $t0, 0
  move $t1, $t0
  sw $t1, -48($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -52($s8)
  lw $t0, 12($s8)
  li $t1, 0
  ble $t0, $t1, label59
  j label60
label59:
  li $t0, 1
  move $t1, $t0
  sw $t1, -52($s8)
label60:
  lw $t0, -52($s8)
  li $t1, 0
  beq $t0, $t1, label58
  li $t0, 0
  move $t1, $t0
  sw $t1, -56($s8)
  lw $t0, 8($s8)
  li $t1, 0
  bgt $t0, $t1, label61
  j label62
label61:
  li $t0, 1
  move $t1, $t0
  sw $t1, -56($s8)
label62:
  lw $t0, -56($s8)
  li $t1, 0
  beq $t0, $t1, label58
  li $t0, 0
  move $t1, $t0
  sw $t1, -60($s8)
  li $t0, -2147483648
  lw $t1, 8($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -64($s8)
  lw $t0, 12($s8)
  lw $t1, -64($s8)
  blt $t0, $t1, label63
  j label64
label63:
  li $t0, 1
  move $t1, $t0
  sw $t1, -60($s8)
label64:
  lw $t0, -60($s8)
  li $t1, 0
  bne $t0, $t1, label57
  j label58
label57:
  li $t0, 1
  move $t1, $t0
  sw $t1, -48($s8)
label58:
  lw $t0, -48($s8)
  li $t1, 0
  bne $t0, $t1, label39
  li $t0, 0
  move $t1, $t0
  sw $t1, -68($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -72($s8)
  lw $t0, 12($s8)
  li $t1, 0
  ble $t0, $t1, label67
  j label68
label67:
  li $t0, 1
  move $t1, $t0
  sw $t1, -72($s8)
label68:
  lw $t0, -72($s8)
  li $t1, 0
  beq $t0, $t1, label66
  li $t0, 0
  move $t1, $t0
  sw $t1, -76($s8)
  lw $t0, 8($s8)
  li $t1, 0
  ble $t0, $t1, label69
  j label70
label69:
  li $t0, 1
  move $t1, $t0
  sw $t1, -76($s8)
label70:
  lw $t0, -76($s8)
  li $t1, 0
  beq $t0, $t1, label66
  li $t0, 0
  move $t1, $t0
  sw $t1, -80($s8)
  lw $t0, 12($s8)
  li $t1, 0
  bne $t0, $t1, label71
  j label72
label71:
  li $t0, 1
  move $t1, $t0
  sw $t1, -80($s8)
label72:
  lw $t0, -80($s8)
  li $t1, 0
  beq $t0, $t1, label66
  li $t0, 0
  move $t1, $t0
  sw $t1, -84($s8)
  li $t0, 2147483647
  lw $t1, 12($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -88($s8)
  lw $t0, 8($s8)
  lw $t1, -88($s8)
  blt $t0, $t1, label73
  j label74
label73:
  li $t0, 1
  move $t1, $t0
  sw $t1, -84($s8)
label74:
  lw $t0, -84($s8)
  li $t1, 0
  bne $t0, $t1, label65
  j label66
label65:
  li $t0, 1
  move $t1, $t0
  sw $t1, -68($s8)
label66:
  lw $t0, -68($s8)
  li $t1, 0
  bne $t0, $t1, label39
  j label40
label39:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4($s8)
label40:
  lw $t0, -4($s8)
  li $t1, 0
  beq $t0, $t1, label38
  lw $t0, 12($s8)
  move $v0, $t0
  move $sp, $s8
  lw $s8, 0($sp)
  addi $sp, $sp, 4
  jr $ra
label38:
  lw $t0, 12($s8)
  lw $t1, 8($s8)
  mul $t2, $t0, $t1
  sw $t2, -92($s8)
  lw $t0, -92($s8)
  move $v0, $t0
  move $sp, $s8
  lw $s8, 0($sp)
  addi $sp, $sp, 4
  jr $ra

safe_div:
  addi $sp, $sp, -4
  sw $s8, 0($sp)
  move $s8, $sp
  addi $sp, $sp, -4096
  li $t0, 0
  move $t1, $t0
  sw $t1, -4($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -8($s8)
  lw $t0, 8($s8)
  li $t1, 0
  beq $t0, $t1, label78
  j label79
label78:
  li $t0, 1
  move $t1, $t0
  sw $t1, -8($s8)
label79:
  lw $t0, -8($s8)
  li $t1, 0
  bne $t0, $t1, label76
  li $t0, 0
  move $t1, $t0
  sw $t1, -12($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -16($s8)
  lw $t0, 12($s8)
  li $t1, -2147483648
  beq $t0, $t1, label82
  j label83
label82:
  li $t0, 1
  move $t1, $t0
  sw $t1, -16($s8)
label83:
  lw $t0, -16($s8)
  li $t1, 0
  beq $t0, $t1, label81
  li $t0, 0
  move $t1, $t0
  sw $t1, -20($s8)
  lw $t0, 8($s8)
  li $t1, -1
  beq $t0, $t1, label84
  j label85
label84:
  li $t0, 1
  move $t1, $t0
  sw $t1, -20($s8)
label85:
  lw $t0, -20($s8)
  li $t1, 0
  bne $t0, $t1, label80
  j label81
label80:
  li $t0, 1
  move $t1, $t0
  sw $t1, -12($s8)
label81:
  lw $t0, -12($s8)
  li $t1, 0
  bne $t0, $t1, label76
  j label77
label76:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4($s8)
label77:
  lw $t0, -4($s8)
  li $t1, 0
  beq $t0, $t1, label75
  lw $t0, 12($s8)
  move $v0, $t0
  move $sp, $s8
  lw $s8, 0($sp)
  addi $sp, $sp, 4
  jr $ra
label75:
  lw $t0, 12($s8)
  lw $t1, 8($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -24($s8)
  lw $t0, -24($s8)
  move $v0, $t0
  move $sp, $s8
  lw $s8, 0($sp)
  addi $sp, $sp, 4
  jr $ra

i_func_149:
  addi $sp, $sp, -4
  sw $s8, 0($sp)
  move $s8, $sp
  addi $sp, $sp, -4096
  lw $t0, 8($s8)
  li $t1, 0
  bgt $t0, $t1, label86
  li $t0, 379748236
  move $v0, $t0
  move $sp, $s8
  lw $s8, 0($sp)
  addi $sp, $sp, 4
  jr $ra
  j label87
label86:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label87:
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -12($s8)
  lw $t0, 20($s8)
  move $t1, $t0
  sw $t1, 24($s8)
  lw $t0, 24($s8)
  move $t1, $t0
  sw $t1, 28($s8)
  lw $t0, 28($s8)
  move $t1, $t0
  sw $t1, -16($s8)
  lw $t0, -16($s8)
  lw $t1, -12($s8)
  sw $t0, 0($t1)
  li $t0, -1446689636
  move $t1, $t0
  sw $t1, -20($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -24($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -20($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, 16($s8)
  sw $t3, 12($sp)
  lw $t4, 20($s8)
  sw $t4, 16($sp)
  lw $t5, 24($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -28($s8)
  lw $t0, -28($s8)
  lw $t1, -24($s8)
  sw $t0, 0($t1)
  lw $t0, -24($s8)
  lw $t1, 0($t0)
  sw $t1, -32($s8)
  lw $t0, -32($s8)
  move $t1, $t0
  sw $t1, -36($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -40($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -44($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -48($s8)
  lw $t0, 24($s8)
  lw $t1, 20($s8)
  ble $t0, $t1, label88
  j label89
label88:
  li $t0, 1
  move $t1, $t0
  sw $t1, -48($s8)
label89:
  lw $t0, -48($s8)
  lw $t1, -44($s8)
  sw $t0, 0($t1)
  lw $t0, -44($s8)
  lw $t1, 0($t0)
  sw $t1, -52($s8)
  lw $t0, -52($s8)
  move $t1, $t0
  sw $t1, -56($s8)
  lw $t0, -56($s8)
  lw $t1, -40($s8)
  sw $t0, 0($t1)
  li $t0, 0
  move $t1, $t0
  sw $t1, -60($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -64($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -68($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label90:
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -72($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  lw $t4, 24($s8)
  sw $t4, 16($sp)
  lw $t5, 28($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -76($s8)
  lw $t0, -76($s8)
  lw $t1, -72($s8)
  sw $t0, 0($t1)
  lw $t0, -72($s8)
  lw $t1, 0($t0)
  sw $t1, -80($s8)
  lw $t0, -80($s8)
  move $t1, $t0
  sw $t1, -84($s8)
  lw $t0, -84($s8)
  li $t1, 0
  beq $t0, $t1, label91
  li $t0, 0
  move $t1, $t0
  sw $t1, -88($s8)
  lw $t0, -60($s8)
  li $t1, 10
  blt $t0, $t1, label92
  j label93
label92:
  li $t0, 1
  move $t1, $t0
  sw $t1, -88($s8)
label93:
  lw $t0, -88($s8)
  li $t1, 0
  beq $t0, $t1, label91
  li $t0, -1921238665
  move $t1, $t0
  sw $t1, -108($s8)
  li $t0, 169589719
  move $t1, $t0
  sw $t1, -112($s8)
  li $t0, 928064053
  move $t1, $t0
  sw $t1, -116($s8)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -96($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -120($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -124($s8)
  lw $t0, -124($s8)
  lw $t1, 0($t0)
  sw $t1, -128($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -132($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -136($s8)
  lw $t0, -136($s8)
  lw $t1, 0($t0)
  sw $t1, -140($s8)
  lw $t0, -140($s8)
  lw $t1, 28($s8)
  bge $t0, $t1, label94
  j label95
label94:
  li $t0, 1
  move $t1, $t0
  sw $t1, -132($s8)
label95:
  li $t0, 0
  move $t1, $t0
  sw $t1, -144($s8)
  li $t0, -193428961
  lw $t1, 24($s8)
  bne $t0, $t1, label96
  j label97
label96:
  li $t0, 1
  move $t1, $t0
  sw $t1, -144($s8)
label97:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -20($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, 16($s8)
  sw $t3, 12($sp)
  lw $t4, 20($s8)
  sw $t4, 16($sp)
  li $t5, 1785046758
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -148($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -116($s8)
  sw $t1, 4($sp)
  lw $t2, -112($s8)
  sw $t2, 8($sp)
  lw $t3, -108($s8)
  sw $t3, 12($sp)
  lw $t4, -36($s8)
  sw $t4, 16($sp)
  li $t5, -1982350921
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -152($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -152($s8)
  sw $t1, 4($sp)
  lw $t2, -148($s8)
  sw $t2, 8($sp)
  lw $t3, -144($s8)
  sw $t3, 12($sp)
  lw $t4, -132($s8)
  sw $t4, 16($sp)
  lw $t5, -128($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -156($s8)
  lw $t0, -156($s8)
  lw $t1, -120($s8)
  sw $t0, 0($t1)
  la $t0, -96($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -160($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -164($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -168($s8)
  lw $t0, 28($s8)
  lw $t1, 24($s8)
  blt $t0, $t1, label98
  j label99
label98:
  li $t0, 1
  move $t1, $t0
  sw $t1, -168($s8)
label99:
  lw $t0, -168($s8)
  lw $t1, -164($s8)
  sw $t0, 0($t1)
  lw $t0, -164($s8)
  lw $t1, 0($t0)
  sw $t1, -172($s8)
  lw $t0, -172($s8)
  move $t1, $t0
  sw $t1, -176($s8)
  lw $t0, -176($s8)
  lw $t1, -160($s8)
  sw $t0, 0($t1)
  la $t0, -104($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -180($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -184($s8)
  lw $t0, -184($s8)
  lw $t1, 0($t0)
  sw $t1, -188($s8)
  lw $t0, -188($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -192($s8)
  la $t0, -96($s8)
  lw $t1, -192($s8)
  add $t2, $t0, $t1
  sw $t2, -196($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -200($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -204($s8)
  lw $t0, -204($s8)
  lw $t1, 0($t0)
  sw $t1, -208($s8)
  lw $t0, -208($s8)
  lw $t1, 28($s8)
  beq $t0, $t1, label100
  j label101
label100:
  li $t0, 1
  move $t1, $t0
  sw $t1, -200($s8)
label101:
  lw $t0, -200($s8)
  lw $t1, -196($s8)
  sw $t0, 0($t1)
  lw $t0, -196($s8)
  lw $t1, 0($t0)
  sw $t1, -212($s8)
  lw $t0, -212($s8)
  move $t1, $t0
  sw $t1, -216($s8)
  lw $t0, -216($s8)
  lw $t1, -180($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -104($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -220($s8)
  la $t0, -96($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -224($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -228($s8)
  lw $t0, -228($s8)
  lw $t1, 0($t0)
  sw $t1, -232($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -236($s8)
  lw $t0, -236($s8)
  lw $t1, 0($t0)
  sw $t1, -240($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  li $t2, -2116189880
  sw $t2, 8($sp)
  lw $t3, 28($s8)
  sw $t3, 12($sp)
  lw $t4, -240($s8)
  sw $t4, 16($sp)
  lw $t5, -232($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -244($s8)
  lw $t0, -244($s8)
  lw $t1, -224($s8)
  sw $t0, 0($t1)
  lw $t0, -224($s8)
  lw $t1, 0($t0)
  sw $t1, -248($s8)
  lw $t0, -248($s8)
  move $t1, $t0
  sw $t1, -252($s8)
  lw $t0, -252($s8)
  lw $t1, -220($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -256($s8)
  la $t0, -96($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -260($s8)
  lw $t0, -260($s8)
  lw $t1, 0($t0)
  sw $t1, -264($s8)
  la $t0, -104($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -268($s8)
  lw $t0, -268($s8)
  lw $t1, 0($t0)
  sw $t1, -272($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  lw $t2, 28($s8)
  sw $t2, 8($sp)
  lw $t3, -272($s8)
  sw $t3, 12($sp)
  lw $t4, -264($s8)
  sw $t4, 16($sp)
  li $t5, -975316389
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -276($s8)
  lw $t0, -276($s8)
  lw $t1, -256($s8)
  sw $t0, 0($t1)
  lw $t0, -256($s8)
  lw $t1, 0($t0)
  sw $t1, -280($s8)
  lw $t0, -280($s8)
  move $t1, $t0
  sw $t1, -284($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -288($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -292($s8)
  lw $t0, -60($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -60($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -96($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -296($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -300($s8)
  lw $t0, -300($s8)
  lw $t1, 0($t0)
  sw $t1, -304($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -308($s8)
  lw $t0, -308($s8)
  lw $t1, 0($t0)
  sw $t1, -312($s8)
  la $t0, -104($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -316($s8)
  lw $t0, -316($s8)
  lw $t1, 0($t0)
  sw $t1, -320($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 28($s8)
  sw $t1, 4($sp)
  lw $t2, -320($s8)
  sw $t2, 8($sp)
  lw $t3, -312($s8)
  sw $t3, 12($sp)
  li $t4, 1392303400
  sw $t4, 16($sp)
  lw $t5, -304($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -324($s8)
  lw $t0, -324($s8)
  lw $t1, -296($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -328($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -332($s8)
  la $t0, -96($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -336($s8)
  lw $t0, -336($s8)
  lw $t1, 0($t0)
  sw $t1, -340($s8)
  lw $t0, -340($s8)
  li $t1, 0
  beq $t0, $t1, label103
  la $t0, -104($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -344($s8)
  lw $t0, -344($s8)
  lw $t1, 0($t0)
  sw $t1, -348($s8)
  lw $t0, -348($s8)
  li $t1, 0
  bne $t0, $t1, label102
  j label103
label102:
  li $t0, 1
  move $t1, $t0
  sw $t1, -332($s8)
label103:
  lw $t0, -332($s8)
  lw $t1, -328($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -352($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -356($s8)
  la $t0, -96($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -360($s8)
  lw $t0, -360($s8)
  lw $t1, 0($t0)
  sw $t1, -364($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -368($s8)
  lw $t0, -368($s8)
  lw $t1, 0($t0)
  sw $t1, -372($s8)
  lw $t0, -364($s8)
  lw $t1, -372($s8)
  bne $t0, $t1, label104
  j label105
label104:
  li $t0, 1
  move $t1, $t0
  sw $t1, -356($s8)
label105:
  lw $t0, -356($s8)
  lw $t1, -352($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label106:
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -376($s8)
  la $t0, -96($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -380($s8)
  lw $t0, -380($s8)
  lw $t1, 0($t0)
  sw $t1, -384($s8)
  la $t0, -104($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -388($s8)
  lw $t0, -388($s8)
  lw $t1, 0($t0)
  sw $t1, -392($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, 24($s8)
  sw $t2, 8($sp)
  lw $t3, 28($s8)
  sw $t3, 12($sp)
  lw $t4, -392($s8)
  sw $t4, 16($sp)
  lw $t5, -384($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -396($s8)
  lw $t0, -396($s8)
  lw $t1, -376($s8)
  sw $t0, 0($t1)
  lw $t0, -376($s8)
  lw $t1, 0($t0)
  sw $t1, -400($s8)
  lw $t0, -400($s8)
  move $t1, $t0
  sw $t1, -404($s8)
  lw $t0, -404($s8)
  li $t1, 0
  beq $t0, $t1, label107
  li $t0, 0
  move $t1, $t0
  sw $t1, -408($s8)
  lw $t0, -288($s8)
  li $t1, 10
  blt $t0, $t1, label108
  j label109
label108:
  li $t0, 1
  move $t1, $t0
  sw $t1, -408($s8)
label109:
  lw $t0, -408($s8)
  li $t1, 0
  beq $t0, $t1, label107
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -416($s8)
  la $t0, -96($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -420($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -424($s8)
  lw $t0, -424($s8)
  lw $t1, 0($t0)
  sw $t1, -428($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -432($s8)
  lw $t0, -432($s8)
  lw $t1, 0($t0)
  sw $t1, -436($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  lw $t2, 28($s8)
  sw $t2, 8($sp)
  lw $t3, -436($s8)
  sw $t3, 12($sp)
  li $t4, 861811273
  sw $t4, 16($sp)
  lw $t5, -428($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -440($s8)
  lw $t0, -440($s8)
  lw $t1, -420($s8)
  sw $t0, 0($t1)
  lw $t0, -420($s8)
  lw $t1, 0($t0)
  sw $t1, -444($s8)
  lw $t0, -444($s8)
  move $t1, $t0
  sw $t1, -448($s8)
  lw $t0, -448($s8)
  lw $t1, -416($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -452($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -456($s8)
  lw $t0, -456($s8)
  lw $t1, 0($t0)
  sw $t1, -460($s8)
  la $t0, -104($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -464($s8)
  lw $t0, -464($s8)
  lw $t1, 0($t0)
  sw $t1, -468($s8)
  la $t0, -412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -472($s8)
  lw $t0, -472($s8)
  lw $t1, 0($t0)
  sw $t1, -476($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  lw $t2, 28($s8)
  sw $t2, 8($sp)
  lw $t3, -476($s8)
  sw $t3, 12($sp)
  lw $t4, -468($s8)
  sw $t4, 16($sp)
  lw $t5, -460($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -480($s8)
  lw $t0, -480($s8)
  lw $t1, -452($s8)
  sw $t0, 0($t1)
  lw $t0, -452($s8)
  lw $t1, 0($t0)
  sw $t1, -484($s8)
  lw $t0, -484($s8)
  move $t1, $t0
  sw $t1, -488($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -492($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -496($s8)
  la $t0, -412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -500($s8)
  lw $t0, -500($s8)
  lw $t1, 0($t0)
  sw $t1, -504($s8)
  lw $t0, -504($s8)
  li $t1, 0
  beq $t0, $t1, label111
  la $t0, -96($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -508($s8)
  lw $t0, -508($s8)
  lw $t1, 0($t0)
  sw $t1, -512($s8)
  lw $t0, -512($s8)
  li $t1, 0
  bne $t0, $t1, label110
  j label111
label110:
  li $t0, 1
  move $t1, $t0
  sw $t1, -496($s8)
label111:
  lw $t0, -496($s8)
  lw $t1, -492($s8)
  sw $t0, 0($t1)
  lw $t0, -492($s8)
  lw $t1, 0($t0)
  sw $t1, -516($s8)
  lw $t0, -516($s8)
  move $t1, $t0
  sw $t1, -520($s8)
  lw $t0, -288($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -288($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -524($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -528($s8)
  lw $t0, -528($s8)
  lw $t1, 0($t0)
  sw $t1, -532($s8)
  la $t0, -412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -536($s8)
  lw $t0, -536($s8)
  lw $t1, 0($t0)
  sw $t1, -540($s8)
  la $t0, -104($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -544($s8)
  lw $t0, -544($s8)
  lw $t1, 0($t0)
  sw $t1, -548($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  lw $t2, 28($s8)
  sw $t2, 8($sp)
  lw $t3, -548($s8)
  sw $t3, 12($sp)
  lw $t4, -540($s8)
  sw $t4, 16($sp)
  lw $t5, -532($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -552($s8)
  lw $t0, -552($s8)
  lw $t1, -524($s8)
  sw $t0, 0($t1)
  la $t0, -96($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -556($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -560($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -564($s8)
  lw $t0, -564($s8)
  lw $t1, 0($t0)
  sw $t1, -568($s8)
  la $t0, -104($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -572($s8)
  lw $t0, -572($s8)
  lw $t1, 0($t0)
  sw $t1, -576($s8)
  lw $t0, -568($s8)
  lw $t1, -576($s8)
  beq $t0, $t1, label112
  j label113
label112:
  li $t0, 1
  move $t1, $t0
  sw $t1, -560($s8)
label113:
  lw $t0, -560($s8)
  lw $t1, -556($s8)
  sw $t0, 0($t1)
  la $t0, -96($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -580($s8)
  li $t0, -850691817
  move $t1, $t0
  sw $t1, -584($s8)
  lw $t0, -584($s8)
  lw $t1, -580($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -588($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -592($s8)
  lw $t0, -592($s8)
  lw $t1, 0($t0)
  sw $t1, -596($s8)
  la $t0, -412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -600($s8)
  lw $t0, -600($s8)
  lw $t1, 0($t0)
  sw $t1, -604($s8)
  la $t0, -104($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -608($s8)
  lw $t0, -608($s8)
  lw $t1, 0($t0)
  sw $t1, -612($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  lw $t2, 28($s8)
  sw $t2, 8($sp)
  lw $t3, -612($s8)
  sw $t3, 12($sp)
  lw $t4, -604($s8)
  sw $t4, 16($sp)
  lw $t5, -596($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -616($s8)
  lw $t0, -616($s8)
  lw $t1, -588($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -620($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -624($s8)
  lw $t0, -624($s8)
  lw $t1, 0($t0)
  sw $t1, -628($s8)
  la $t0, -412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -632($s8)
  lw $t0, -632($s8)
  lw $t1, 0($t0)
  sw $t1, -636($s8)
  la $t0, -96($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -640($s8)
  lw $t0, -640($s8)
  lw $t1, 0($t0)
  sw $t1, -644($s8)
  la $t0, -104($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -648($s8)
  lw $t0, -648($s8)
  lw $t1, 0($t0)
  sw $t1, -652($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -652($s8)
  sw $t1, 4($sp)
  lw $t2, -644($s8)
  sw $t2, 8($sp)
  lw $t3, -636($s8)
  sw $t3, 12($sp)
  li $t4, -624358577
  sw $t4, 16($sp)
  lw $t5, -628($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -656($s8)
  lw $t0, -656($s8)
  lw $t1, -620($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -660($s8)
  la $t0, -96($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -664($s8)
  lw $t0, -664($s8)
  lw $t1, 0($t0)
  sw $t1, -668($s8)
  la $t0, -104($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -672($s8)
  lw $t0, -672($s8)
  lw $t1, 0($t0)
  sw $t1, -676($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -680($s8)
  lw $t0, -680($s8)
  lw $t1, 0($t0)
  sw $t1, -684($s8)
  la $t0, -412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -688($s8)
  lw $t0, -688($s8)
  lw $t1, 0($t0)
  sw $t1, -692($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -692($s8)
  sw $t1, 4($sp)
  lw $t2, -684($s8)
  sw $t2, 8($sp)
  lw $t3, -676($s8)
  sw $t3, 12($sp)
  li $t4, 1849969913
  sw $t4, 16($sp)
  lw $t5, -668($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -696($s8)
  lw $t0, -696($s8)
  lw $t1, -660($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -700($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -704($s8)
  lw $t0, -704($s8)
  lw $t1, 0($t0)
  sw $t1, -708($s8)
  la $t0, -104($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -712($s8)
  lw $t0, -712($s8)
  lw $t1, 0($t0)
  sw $t1, -716($s8)
  la $t0, -412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -720($s8)
  lw $t0, -720($s8)
  lw $t1, 0($t0)
  sw $t1, -724($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  lw $t2, 28($s8)
  sw $t2, 8($sp)
  lw $t3, -724($s8)
  sw $t3, 12($sp)
  lw $t4, -716($s8)
  sw $t4, 16($sp)
  lw $t5, -708($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -728($s8)
  lw $t0, -728($s8)
  lw $t1, -700($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -732($s8)
  la $t0, -412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -736($s8)
  lw $t0, -736($s8)
  lw $t1, 0($t0)
  sw $t1, -740($s8)
  la $t0, -96($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -744($s8)
  lw $t0, -744($s8)
  lw $t1, 0($t0)
  sw $t1, -748($s8)
  la $t0, -104($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -752($s8)
  lw $t0, -752($s8)
  lw $t1, 0($t0)
  sw $t1, -756($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  lw $t2, 28($s8)
  sw $t2, 8($sp)
  lw $t3, -756($s8)
  sw $t3, 12($sp)
  lw $t4, -748($s8)
  sw $t4, 16($sp)
  lw $t5, -740($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -760($s8)
  lw $t0, -760($s8)
  lw $t1, -732($s8)
  sw $t0, 0($t1)
  la $t0, -96($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -764($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -768($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -772($s8)
  lw $t0, -772($s8)
  lw $t1, 0($t0)
  sw $t1, -776($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -780($s8)
  lw $t0, -780($s8)
  lw $t1, 0($t0)
  sw $t1, -784($s8)
  lw $t0, -776($s8)
  lw $t1, -784($s8)
  bne $t0, $t1, label114
  j label115
label114:
  li $t0, 1
  move $t1, $t0
  sw $t1, -768($s8)
label115:
  lw $t0, -768($s8)
  lw $t1, -764($s8)
  sw $t0, 0($t1)
  la $t0, -96($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -788($s8)
  la $t0, -104($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -792($s8)
  lw $t0, -792($s8)
  lw $t1, 0($t0)
  sw $t1, -796($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -800($s8)
  lw $t0, -800($s8)
  lw $t1, 0($t0)
  sw $t1, -804($s8)
  lw $t0, -796($s8)
  lw $t1, -804($s8)
  sub $t2, $t0, $t1
  sw $t2, -808($s8)
  lw $t0, -808($s8)
  lw $t1, -788($s8)
  sw $t0, 0($t1)
  lw $t0, -488($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -520($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label106
label107:
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -812($s8)
  lw $t0, -812($s8)
  lw $t1, 0($t0)
  sw $t1, -816($s8)
  li $t0, 1502189381
  sw $t0, 0($sp)
  lw $t1, -816($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_mul
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -820($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -824($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -828($s8)
  lw $t0, -828($s8)
  lw $t1, 0($t0)
  sw $t1, -832($s8)
  la $t0, -96($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -836($s8)
  lw $t0, -836($s8)
  lw $t1, 0($t0)
  sw $t1, -840($s8)
  lw $t0, -832($s8)
  lw $t1, -840($s8)
  beq $t0, $t1, label116
  j label117
label116:
  li $t0, 1
  move $t1, $t0
  sw $t1, -824($s8)
label117:
  la $t0, -104($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -844($s8)
  lw $t0, -844($s8)
  lw $t1, 0($t0)
  sw $t1, -848($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 16($s8)
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  lw $t3, 24($s8)
  sw $t3, 12($sp)
  lw $t4, 28($s8)
  sw $t4, 16($sp)
  lw $t5, -848($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -852($s8)
  lw $t0, -20($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_sub
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -856($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -860($s8)
  lw $t0, -36($s8)
  lw $t1, -108($s8)
  beq $t0, $t1, label118
  j label119
label118:
  li $t0, 1
  move $t1, $t0
  sw $t1, -860($s8)
label119:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -860($s8)
  sw $t1, 4($sp)
  lw $t2, -856($s8)
  sw $t2, 8($sp)
  lw $t3, -852($s8)
  sw $t3, 12($sp)
  lw $t4, -824($s8)
  sw $t4, 16($sp)
  lw $t5, -820($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -864($s8)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label120:
  la $t0, -96($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -868($s8)
  lw $t0, -868($s8)
  lw $t1, 0($t0)
  sw $t1, -872($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -876($s8)
  lw $t0, -876($s8)
  lw $t1, 0($t0)
  sw $t1, -880($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -884($s8)
  lw $t0, -884($s8)
  lw $t1, 0($t0)
  sw $t1, -888($s8)
  la $t0, -104($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -892($s8)
  lw $t0, -892($s8)
  lw $t1, 0($t0)
  sw $t1, -896($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 28($s8)
  sw $t1, 4($sp)
  lw $t2, -896($s8)
  sw $t2, 8($sp)
  lw $t3, -888($s8)
  sw $t3, 12($sp)
  lw $t4, -880($s8)
  sw $t4, 16($sp)
  lw $t5, -872($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -900($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  li $t2, -339114932
  sw $t2, 8($sp)
  lw $t3, 16($s8)
  sw $t3, 12($sp)
  lw $t4, 20($s8)
  sw $t4, 16($sp)
  lw $t5, 24($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -904($s8)
  lw $t0, -20($s8)
  lw $t1, -36($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -908($s8)
  lw $t0, -108($s8)
  lw $t1, -112($s8)
  add $t2, $t0, $t1
  sw $t2, -912($s8)
  lw $t0, -116($s8)
  lw $t1, -284($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -916($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -916($s8)
  sw $t1, 4($sp)
  lw $t2, -912($s8)
  sw $t2, 8($sp)
  lw $t3, -908($s8)
  sw $t3, 12($sp)
  lw $t4, -904($s8)
  sw $t4, 16($sp)
  lw $t5, -900($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -920($s8)
  lw $t0, -920($s8)
  li $t1, 0
  beq $t0, $t1, label121
  li $t0, 0
  move $t1, $t0
  sw $t1, -924($s8)
  lw $t0, -292($s8)
  li $t1, 10
  blt $t0, $t1, label122
  j label123
label122:
  li $t0, 1
  move $t1, $t0
  sw $t1, -924($s8)
label123:
  lw $t0, -924($s8)
  li $t1, 0
  beq $t0, $t1, label121
  la $t0, -96($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -940($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -944($s8)
  lw $t0, -944($s8)
  lw $t1, 0($t0)
  sw $t1, -948($s8)
  lw $t0, -948($s8)
  lw $t1, -940($s8)
  sw $t0, 0($t1)
  lw $t0, -940($s8)
  lw $t1, 0($t0)
  sw $t1, -952($s8)
  lw $t0, -952($s8)
  move $t1, $t0
  sw $t1, -956($s8)
  la $t0, -932($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -960($s8)
  la $t0, -96($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -964($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -968($s8)
  la $t0, -104($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -972($s8)
  lw $t0, -972($s8)
  lw $t1, 0($t0)
  sw $t1, -976($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -980($s8)
  lw $t0, -980($s8)
  lw $t1, 0($t0)
  sw $t1, -984($s8)
  lw $t0, -976($s8)
  lw $t1, -984($s8)
  ble $t0, $t1, label124
  j label125
label124:
  li $t0, 1
  move $t1, $t0
  sw $t1, -968($s8)
label125:
  lw $t0, -968($s8)
  lw $t1, -964($s8)
  sw $t0, 0($t1)
  lw $t0, -964($s8)
  lw $t1, 0($t0)
  sw $t1, -988($s8)
  lw $t0, -988($s8)
  move $t1, $t0
  sw $t1, -992($s8)
  lw $t0, -992($s8)
  lw $t1, -960($s8)
  sw $t0, 0($t1)
  la $t0, -932($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -996($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1000($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1004($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1008($s8)
  lw $t0, -1008($s8)
  lw $t1, 0($t0)
  sw $t1, -1012($s8)
  la $t0, -104($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1016($s8)
  lw $t0, -1016($s8)
  lw $t1, 0($t0)
  sw $t1, -1020($s8)
  lw $t0, -1012($s8)
  lw $t1, -1020($s8)
  bge $t0, $t1, label126
  j label127
label126:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1004($s8)
label127:
  lw $t0, -1004($s8)
  lw $t1, -1000($s8)
  sw $t0, 0($t1)
  lw $t0, -1000($s8)
  lw $t1, 0($t0)
  sw $t1, -1024($s8)
  lw $t0, -1024($s8)
  move $t1, $t0
  sw $t1, -1028($s8)
  lw $t0, -1028($s8)
  lw $t1, -996($s8)
  sw $t0, 0($t1)
  la $t0, -936($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1032($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1036($s8)
  lw $t0, -1036($s8)
  lw $t1, 0($t0)
  sw $t1, -1040($s8)
  lw $t0, -1040($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1044($s8)
  la $t0, -96($s8)
  lw $t1, -1044($s8)
  add $t2, $t0, $t1
  sw $t2, -1048($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1052($s8)
  lw $t0, -1052($s8)
  lw $t1, 0($t0)
  sw $t1, -1056($s8)
  la $t0, -104($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1060($s8)
  lw $t0, -1060($s8)
  lw $t1, 0($t0)
  sw $t1, -1064($s8)
  lw $t0, -1056($s8)
  lw $t1, -1064($s8)
  sub $t2, $t0, $t1
  sw $t2, -1068($s8)
  lw $t0, -1068($s8)
  lw $t1, -1048($s8)
  sw $t0, 0($t1)
  lw $t0, -1048($s8)
  lw $t1, 0($t0)
  sw $t1, -1072($s8)
  lw $t0, -1072($s8)
  move $t1, $t0
  sw $t1, -1076($s8)
  lw $t0, -1076($s8)
  lw $t1, -1032($s8)
  sw $t0, 0($t1)
  lw $t0, -292($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -292($s8)
  la $t0, -96($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1080($s8)
  li $t0, -1291637240
  move $t1, $t0
  sw $t1, -1084($s8)
  lw $t0, -1084($s8)
  lw $t1, -1080($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1088($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1092($s8)
  lw $t0, -1092($s8)
  lw $t1, 0($t0)
  sw $t1, -1096($s8)
  la $t0, -936($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1100($s8)
  lw $t0, -1100($s8)
  lw $t1, 0($t0)
  sw $t1, -1104($s8)
  la $t0, -96($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1108($s8)
  lw $t0, -1108($s8)
  lw $t1, 0($t0)
  sw $t1, -1112($s8)
  la $t0, -104($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1116($s8)
  lw $t0, -1116($s8)
  lw $t1, 0($t0)
  sw $t1, -1120($s8)
  la $t0, -932($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1124($s8)
  lw $t0, -1124($s8)
  lw $t1, 0($t0)
  sw $t1, -1128($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1128($s8)
  sw $t1, 4($sp)
  lw $t2, -1120($s8)
  sw $t2, 8($sp)
  lw $t3, -1112($s8)
  sw $t3, 12($sp)
  lw $t4, -1104($s8)
  sw $t4, 16($sp)
  lw $t5, -1096($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1132($s8)
  lw $t0, -1132($s8)
  lw $t1, -1088($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1136($s8)
  la $t0, -104($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1140($s8)
  lw $t0, -1140($s8)
  lw $t1, 0($t0)
  sw $t1, -1144($s8)
  la $t0, -932($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1148($s8)
  lw $t0, -1148($s8)
  lw $t1, 0($t0)
  sw $t1, -1152($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1156($s8)
  lw $t0, -1156($s8)
  lw $t1, 0($t0)
  sw $t1, -1160($s8)
  la $t0, -936($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1164($s8)
  lw $t0, -1164($s8)
  lw $t1, 0($t0)
  sw $t1, -1168($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1168($s8)
  sw $t1, 4($sp)
  lw $t2, -1160($s8)
  sw $t2, 8($sp)
  lw $t3, -1152($s8)
  sw $t3, 12($sp)
  lw $t4, -1144($s8)
  sw $t4, 16($sp)
  li $t5, 904618922
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1172($s8)
  lw $t0, -1172($s8)
  lw $t1, -1136($s8)
  sw $t0, 0($t1)
  la $t0, -104($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1176($s8)
  lw $t0, -1176($s8)
  lw $t1, 0($t0)
  sw $t1, -1180($s8)
  lw $t0, -1180($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1184($s8)
  la $t0, -96($s8)
  lw $t1, -1184($s8)
  add $t2, $t0, $t1
  sw $t2, -1188($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1192($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1196($s8)
  lw $t0, -1196($s8)
  lw $t1, 0($t0)
  sw $t1, -1200($s8)
  li $t0, 1731020644
  lw $t1, -1200($s8)
  bge $t0, $t1, label128
  j label129
label128:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1192($s8)
label129:
  lw $t0, -1192($s8)
  lw $t1, -1188($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1204($s8)
  la $t0, -936($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1208($s8)
  lw $t0, -1208($s8)
  lw $t1, 0($t0)
  sw $t1, -1212($s8)
  la $t0, -96($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1216($s8)
  lw $t0, -1216($s8)
  lw $t1, 0($t0)
  sw $t1, -1220($s8)
  la $t0, -104($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1224($s8)
  lw $t0, -1224($s8)
  lw $t1, 0($t0)
  sw $t1, -1228($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 1531035274
  sw $t1, 4($sp)
  li $t2, -1827009738
  sw $t2, 8($sp)
  lw $t3, -1228($s8)
  sw $t3, 12($sp)
  lw $t4, -1220($s8)
  sw $t4, 16($sp)
  lw $t5, -1212($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1232($s8)
  lw $t0, -1232($s8)
  lw $t1, -1204($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1236($s8)
  la $t0, -96($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1240($s8)
  lw $t0, -1240($s8)
  lw $t1, 0($t0)
  sw $t1, -1244($s8)
  lw $t0, -1244($s8)
  li $t1, 0
  beq $t0, $t1, label131
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1248($s8)
  lw $t0, -1248($s8)
  lw $t1, 0($t0)
  sw $t1, -1252($s8)
  lw $t0, -1252($s8)
  li $t1, 0
  bne $t0, $t1, label130
  j label131
label130:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1236($s8)
label131:
  li $t0, 0
  move $t1, $t0
  sw $t1, -1256($s8)
  la $t0, -104($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1260($s8)
  lw $t0, -1260($s8)
  lw $t1, 0($t0)
  sw $t1, -1264($s8)
  li $t0, 924129742
  lw $t1, -1264($s8)
  beq $t0, $t1, label132
  j label133
label132:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1256($s8)
label133:
  la $t0, -932($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1268($s8)
  lw $t0, -1268($s8)
  lw $t1, 0($t0)
  sw $t1, -1272($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1276($s8)
  lw $t0, -1276($s8)
  lw $t1, 0($t0)
  sw $t1, -1280($s8)
  la $t0, -936($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1284($s8)
  lw $t0, -1284($s8)
  lw $t1, 0($t0)
  sw $t1, -1288($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 28($s8)
  sw $t1, 4($sp)
  li $t2, -1203944258
  sw $t2, 8($sp)
  lw $t3, -1288($s8)
  sw $t3, 12($sp)
  lw $t4, -1280($s8)
  sw $t4, 16($sp)
  lw $t5, -1272($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1292($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1296($s8)
  lw $t0, 24($s8)
  lw $t1, 20($s8)
  bne $t0, $t1, label134
  j label135
label134:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1296($s8)
label135:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1296($s8)
  sw $t1, 4($sp)
  lw $t2, -1292($s8)
  sw $t2, 8($sp)
  lw $t3, -1256($s8)
  sw $t3, 12($sp)
  lw $t4, -1236($s8)
  sw $t4, 16($sp)
  li $t5, 1276691425
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1300($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1304($s8)
  la $t0, -936($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1308($s8)
  lw $t0, -1308($s8)
  lw $t1, 0($t0)
  sw $t1, -1312($s8)
  la $t0, -96($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1316($s8)
  lw $t0, -1316($s8)
  lw $t1, 0($t0)
  sw $t1, -1320($s8)
  la $t0, -104($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1324($s8)
  lw $t0, -1324($s8)
  lw $t1, 0($t0)
  sw $t1, -1328($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1328($s8)
  sw $t1, 4($sp)
  li $t2, -668148600
  sw $t2, 8($sp)
  lw $t3, -1320($s8)
  sw $t3, 12($sp)
  li $t4, -1070484384
  sw $t4, 16($sp)
  lw $t5, -1312($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1332($s8)
  lw $t0, -1332($s8)
  lw $t1, -1304($s8)
  sw $t0, 0($t1)
  lw $t0, -956($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label120
label121:
  la $t0, -96($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1336($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1340($s8)
  la $t0, -104($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1344($s8)
  lw $t0, -1344($s8)
  lw $t1, 0($t0)
  sw $t1, -1348($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1352($s8)
  lw $t0, -1352($s8)
  lw $t1, 0($t0)
  sw $t1, -1356($s8)
  lw $t0, -1348($s8)
  lw $t1, -1356($s8)
  bge $t0, $t1, label136
  j label137
label136:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1340($s8)
label137:
  lw $t0, -1340($s8)
  lw $t1, -1336($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1360($s8)
  la $t0, -96($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1364($s8)
  lw $t0, -1364($s8)
  lw $t1, 0($t0)
  sw $t1, -1368($s8)
  la $t0, -104($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1372($s8)
  lw $t0, -1372($s8)
  lw $t1, 0($t0)
  sw $t1, -1376($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  lw $t2, 28($s8)
  sw $t2, 8($sp)
  li $t3, 617472529
  sw $t3, 12($sp)
  lw $t4, -1376($s8)
  sw $t4, 16($sp)
  lw $t5, -1368($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1380($s8)
  lw $t0, -1380($s8)
  lw $t1, -1360($s8)
  sw $t0, 0($t1)
  lw $t0, -108($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -112($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -116($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -284($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label90
label91:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label138:
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1384($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  li $t2, 831644430
  sw $t2, 8($sp)
  lw $t3, 24($s8)
  sw $t3, 12($sp)
  li $t4, -77674891
  sw $t4, 16($sp)
  lw $t5, 28($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1388($s8)
  lw $t0, -1388($s8)
  lw $t1, -1384($s8)
  sw $t0, 0($t1)
  lw $t0, -1384($s8)
  lw $t1, 0($t0)
  sw $t1, -1392($s8)
  lw $t0, -1392($s8)
  move $t1, $t0
  sw $t1, -1396($s8)
  lw $t0, -1396($s8)
  li $t1, 0
  beq $t0, $t1, label139
  li $t0, 0
  move $t1, $t0
  sw $t1, -1400($s8)
  lw $t0, -64($s8)
  li $t1, 10
  blt $t0, $t1, label140
  j label141
label140:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1400($s8)
label141:
  lw $t0, -1400($s8)
  li $t1, 0
  beq $t0, $t1, label139
  la $t0, -1404($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1416($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1420($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1424($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1428($s8)
  lw $t0, -1428($s8)
  lw $t1, 0($t0)
  sw $t1, -1432($s8)
  lw $t0, -1432($s8)
  li $t1, 0
  beq $t0, $t1, label143
  lw $t0, 28($s8)
  li $t1, 0
  bne $t0, $t1, label142
  j label143
label142:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1424($s8)
label143:
  lw $t0, -1424($s8)
  lw $t1, -1420($s8)
  sw $t0, 0($t1)
  lw $t0, -1420($s8)
  lw $t1, 0($t0)
  sw $t1, -1436($s8)
  lw $t0, -1436($s8)
  move $t1, $t0
  sw $t1, -1440($s8)
  lw $t0, -1440($s8)
  lw $t1, -1416($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1444($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1448($s8)
  la $t0, -1404($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1452($s8)
  lw $t0, -1452($s8)
  lw $t1, 0($t0)
  sw $t1, -1456($s8)
  lw $t0, -1456($s8)
  lw $t1, 28($s8)
  bge $t0, $t1, label144
  j label145
label144:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1448($s8)
label145:
  lw $t0, -1448($s8)
  lw $t1, -1444($s8)
  sw $t0, 0($t1)
  lw $t0, -1444($s8)
  lw $t1, 0($t0)
  sw $t1, -1460($s8)
  lw $t0, -1460($s8)
  move $t1, $t0
  sw $t1, -1464($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1412($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1468($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1472($s8)
  la $t0, -1404($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1476($s8)
  lw $t0, -1476($s8)
  lw $t1, 0($t0)
  sw $t1, -1480($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 16($s8)
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  lw $t3, 24($s8)
  sw $t3, 12($sp)
  lw $t4, 28($s8)
  sw $t4, 16($sp)
  lw $t5, -1480($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1484($s8)
  lw $t0, -1484($s8)
  lw $t1, -1472($s8)
  sw $t0, 0($t1)
  lw $t0, -1472($s8)
  lw $t1, 0($t0)
  sw $t1, -1488($s8)
  lw $t0, -1488($s8)
  move $t1, $t0
  sw $t1, -1492($s8)
  lw $t0, -1492($s8)
  lw $t1, -1468($s8)
  sw $t0, 0($t1)
  la $t0, -1412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1496($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1500($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1504($s8)
  la $t0, -1404($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1508($s8)
  lw $t0, -1508($s8)
  lw $t1, 0($t0)
  sw $t1, -1512($s8)
  lw $t0, -1512($s8)
  lw $t1, 28($s8)
  beq $t0, $t1, label146
  j label147
label146:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1504($s8)
label147:
  lw $t0, -1504($s8)
  lw $t1, -1500($s8)
  sw $t0, 0($t1)
  lw $t0, -1500($s8)
  lw $t1, 0($t0)
  sw $t1, -1516($s8)
  lw $t0, -1516($s8)
  move $t1, $t0
  sw $t1, -1520($s8)
  lw $t0, -1520($s8)
  lw $t1, -1496($s8)
  sw $t0, 0($t1)
  li $t0, -923944453
  move $t1, $t0
  sw $t1, -1524($s8)
  li $t0, -2094900461
  move $t1, $t0
  sw $t1, -1528($s8)
  li $t0, -930206664
  move $t1, $t0
  sw $t1, -1532($s8)
  li $t0, -1046399917
  move $t1, $t0
  sw $t1, -1536($s8)
  li $t0, -1138676792
  move $t1, $t0
  sw $t1, -1540($s8)
  li $t0, -1151600287
  move $t1, $t0
  sw $t1, -1544($s8)
  li $t0, 1170043792
  move $t1, $t0
  sw $t1, -1548($s8)
  li $t0, -2130690702
  move $t1, $t0
  sw $t1, -1552($s8)
  li $t0, -549247241
  move $t1, $t0
  sw $t1, -1556($s8)
  li $t0, 63329008
  move $t1, $t0
  sw $t1, -1560($s8)
  lw $t0, -64($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -64($s8)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1564($s8)
  lw $t0, -1564($s8)
  lw $t1, 0($t0)
  sw $t1, -1568($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1572($s8)
  lw $t0, -1572($s8)
  lw $t1, 0($t0)
  sw $t1, -1576($s8)
  la $t0, -1412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1580($s8)
  lw $t0, -1580($s8)
  lw $t1, 0($t0)
  sw $t1, -1584($s8)
  la $t0, -1404($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1588($s8)
  lw $t0, -1588($s8)
  lw $t1, 0($t0)
  sw $t1, -1592($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1592($s8)
  sw $t1, 4($sp)
  li $t2, -1853573042
  sw $t2, 8($sp)
  lw $t3, -1584($s8)
  sw $t3, 12($sp)
  lw $t4, -1576($s8)
  sw $t4, 16($sp)
  lw $t5, -1568($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1596($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1600($s8)
  lw $t0, 28($s8)
  li $t1, 0
  bne $t0, $t1, label148
  lw $t0, 24($s8)
  li $t1, 0
  bne $t0, $t1, label148
  j label149
label148:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1600($s8)
label149:
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_sub
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1604($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1524($s8)
  sw $t1, 4($sp)
  lw $t2, -1464($s8)
  sw $t2, 8($sp)
  lw $t3, -36($s8)
  sw $t3, 12($sp)
  lw $t4, -20($s8)
  sw $t4, 16($sp)
  li $t5, -196531310
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1608($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1608($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, -1604($s8)
  sw $t3, 12($sp)
  lw $t4, -1600($s8)
  sw $t4, 16($sp)
  lw $t5, -1596($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1612($s8)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1620($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1624($s8)
  lw $t0, -1624($s8)
  lw $t1, 0($t0)
  sw $t1, -1628($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -695436067
  sw $t1, 4($sp)
  lw $t2, -1628($s8)
  sw $t2, 8($sp)
  li $t3, -130765458
  sw $t3, 12($sp)
  li $t4, -1728210983
  sw $t4, 16($sp)
  li $t5, -510788746
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1632($s8)
  lw $t0, -1632($s8)
  lw $t1, -1620($s8)
  sw $t0, 0($t1)
  lw $t0, -1620($s8)
  lw $t1, 0($t0)
  sw $t1, -1636($s8)
  lw $t0, -1636($s8)
  move $t1, $t0
  sw $t1, -1640($s8)
  la $t0, -1616($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1644($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1648($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1652($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1656($s8)
  lw $t0, -1656($s8)
  lw $t1, 0($t0)
  sw $t1, -1660($s8)
  la $t0, -1404($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1664($s8)
  lw $t0, -1664($s8)
  lw $t1, 0($t0)
  sw $t1, -1668($s8)
  lw $t0, -1660($s8)
  lw $t1, -1668($s8)
  ble $t0, $t1, label150
  j label151
label150:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1652($s8)
label151:
  lw $t0, -1652($s8)
  lw $t1, -1648($s8)
  sw $t0, 0($t1)
  lw $t0, -1648($s8)
  lw $t1, 0($t0)
  sw $t1, -1672($s8)
  lw $t0, -1672($s8)
  move $t1, $t0
  sw $t1, -1676($s8)
  lw $t0, -1676($s8)
  lw $t1, -1644($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1680($s8)
  la $t0, -1412($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1684($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1688($s8)
  lw $t0, -1688($s8)
  lw $t1, 0($t0)
  sw $t1, -1692($s8)
  lw $t0, -1692($s8)
  lw $t1, -1684($s8)
  sw $t0, 0($t1)
  lw $t0, -1684($s8)
  lw $t1, 0($t0)
  sw $t1, -1696($s8)
  lw $t0, -1696($s8)
  move $t1, $t0
  sw $t1, -1700($s8)
  lw $t0, -1700($s8)
  lw $t1, -1680($s8)
  sw $t0, 0($t1)
  lw $t0, -1680($s8)
  lw $t1, 0($t0)
  sw $t1, -1704($s8)
  lw $t0, -1704($s8)
  move $t1, $t0
  sw $t1, -1708($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1712($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1716($s8)
  lw $t0, -1716($s8)
  lw $t1, 0($t0)
  sw $t1, -1720($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1724($s8)
  lw $t0, -1724($s8)
  lw $t1, 0($t0)
  sw $t1, -1728($s8)
  la $t0, -1404($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1732($s8)
  lw $t0, -1732($s8)
  lw $t1, 0($t0)
  sw $t1, -1736($s8)
  la $t0, -1616($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1740($s8)
  lw $t0, -1740($s8)
  lw $t1, 0($t0)
  sw $t1, -1744($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 28($s8)
  sw $t1, 4($sp)
  lw $t2, -1744($s8)
  sw $t2, 8($sp)
  lw $t3, -1736($s8)
  sw $t3, 12($sp)
  lw $t4, -1728($s8)
  sw $t4, 16($sp)
  lw $t5, -1720($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1748($s8)
  lw $t0, -1748($s8)
  lw $t1, -1712($s8)
  sw $t0, 0($t1)
  la $t0, -1412($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1752($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1756($s8)
  lw $t0, -1756($s8)
  lw $t1, 0($t0)
  sw $t1, -1760($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1764($s8)
  lw $t0, -1764($s8)
  lw $t1, 0($t0)
  sw $t1, -1768($s8)
  lw $t0, -1760($s8)
  lw $t1, -1768($s8)
  add $t2, $t0, $t1
  sw $t2, -1772($s8)
  lw $t0, -1772($s8)
  lw $t1, -1752($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1776($s8)
  la $t0, -1412($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1780($s8)
  lw $t0, -1780($s8)
  lw $t1, 0($t0)
  sw $t1, -1784($s8)
  lw $t0, -1784($s8)
  lw $t1, -1776($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1788($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1792($s8)
  lw $t0, -1792($s8)
  lw $t1, 0($t0)
  sw $t1, -1796($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1800($s8)
  lw $t0, -1800($s8)
  lw $t1, 0($t0)
  sw $t1, -1804($s8)
  la $t0, -1404($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1808($s8)
  lw $t0, -1808($s8)
  lw $t1, 0($t0)
  sw $t1, -1812($s8)
  la $t0, -1616($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1816($s8)
  lw $t0, -1816($s8)
  lw $t1, 0($t0)
  sw $t1, -1820($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1820($s8)
  sw $t1, 4($sp)
  li $t2, 2078457213
  sw $t2, 8($sp)
  lw $t3, -1812($s8)
  sw $t3, 12($sp)
  lw $t4, -1804($s8)
  sw $t4, 16($sp)
  lw $t5, -1796($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1824($s8)
  lw $t0, -1824($s8)
  lw $t1, -1788($s8)
  sw $t0, 0($t1)
  la $t0, -1412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1828($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1832($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1836($s8)
  lw $t0, -1836($s8)
  lw $t1, 0($t0)
  sw $t1, -1840($s8)
  la $t0, -1404($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1844($s8)
  lw $t0, -1844($s8)
  lw $t1, 0($t0)
  sw $t1, -1848($s8)
  lw $t0, -1840($s8)
  lw $t1, -1848($s8)
  ble $t0, $t1, label152
  j label153
label152:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1832($s8)
label153:
  lw $t0, -1832($s8)
  lw $t1, -1828($s8)
  sw $t0, 0($t1)
  lw $t0, -1640($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -1708($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  la $t0, -1412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1852($s8)
  li $t0, 1538852432
  move $t1, $t0
  sw $t1, -1856($s8)
  lw $t0, -1856($s8)
  lw $t1, -1852($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 5
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1860($s8)
  lw $t0, -1860($s8)
  lw $t1, 0($t0)
  sw $t1, -1864($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1868($s8)
  lw $t0, -1868($s8)
  lw $t1, 0($t0)
  sw $t1, -1872($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1876($s8)
  lw $t0, -1876($s8)
  lw $t1, 0($t0)
  sw $t1, -1880($s8)
  la $t0, -1404($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1884($s8)
  lw $t0, -1884($s8)
  lw $t1, 0($t0)
  sw $t1, -1888($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 28($s8)
  sw $t1, 4($sp)
  lw $t2, -1888($s8)
  sw $t2, 8($sp)
  lw $t3, -1880($s8)
  sw $t3, 12($sp)
  lw $t4, -1872($s8)
  sw $t4, 16($sp)
  lw $t5, -1864($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1892($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -20($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, 16($s8)
  sw $t3, 12($sp)
  lw $t4, 20($s8)
  sw $t4, 16($sp)
  lw $t5, 24($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1896($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1532($s8)
  sw $t1, 4($sp)
  lw $t2, -1528($s8)
  sw $t2, 8($sp)
  lw $t3, -1524($s8)
  sw $t3, 12($sp)
  lw $t4, -1464($s8)
  sw $t4, 16($sp)
  lw $t5, -36($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1900($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1552($s8)
  sw $t1, 4($sp)
  lw $t2, -1548($s8)
  sw $t2, 8($sp)
  lw $t3, -1544($s8)
  sw $t3, 12($sp)
  lw $t4, -1540($s8)
  sw $t4, 16($sp)
  lw $t5, -1536($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1904($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1908($s8)
  lw $t0, -1556($s8)
  li $t1, 0
  bne $t0, $t1, label154
  lw $t0, -1560($s8)
  li $t1, 0
  bne $t0, $t1, label154
  j label155
label154:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1908($s8)
label155:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1908($s8)
  sw $t1, 4($sp)
  lw $t2, -1904($s8)
  sw $t2, 8($sp)
  lw $t3, -1900($s8)
  sw $t3, 12($sp)
  lw $t4, -1896($s8)
  sw $t4, 16($sp)
  lw $t5, -1892($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1912($s8)
  lw $t0, 8($s8)
  li $t1, 4
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1916($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1920($s8)
  lw $t0, -1920($s8)
  lw $t1, 0($t0)
  sw $t1, -1924($s8)
  la $t0, -1412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1928($s8)
  lw $t0, -1928($s8)
  lw $t1, 0($t0)
  sw $t1, -1932($s8)
  lw $t0, -1924($s8)
  lw $t1, -1932($s8)
  beq $t0, $t1, label156
  j label157
label156:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1916($s8)
label157:
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1936($s8)
  lw $t0, -1936($s8)
  lw $t1, 0($t0)
  sw $t1, -1940($s8)
  la $t0, -1404($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1944($s8)
  lw $t0, -1944($s8)
  lw $t1, 0($t0)
  sw $t1, -1948($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  lw $t2, 28($s8)
  sw $t2, 8($sp)
  lw $t3, -1948($s8)
  sw $t3, 12($sp)
  lw $t4, -1940($s8)
  sw $t4, 16($sp)
  li $t5, -1093910497
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1952($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 2042928982
  sw $t1, 4($sp)
  lw $t2, -20($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  lw $t4, 16($s8)
  sw $t4, 16($sp)
  lw $t5, 20($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1956($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1528($s8)
  sw $t1, 4($sp)
  lw $t2, -1524($s8)
  sw $t2, 8($sp)
  lw $t3, -1464($s8)
  sw $t3, 12($sp)
  li $t4, -501054233
  sw $t4, 16($sp)
  lw $t5, -36($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1960($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1964($s8)
  lw $t0, -1532($s8)
  lw $t1, -1536($s8)
  ble $t0, $t1, label158
  j label159
label158:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1964($s8)
label159:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1964($s8)
  sw $t1, 4($sp)
  lw $t2, -1960($s8)
  sw $t2, 8($sp)
  lw $t3, -1956($s8)
  sw $t3, 12($sp)
  lw $t4, -1952($s8)
  sw $t4, 16($sp)
  lw $t5, -1916($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1968($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1972($s8)
  la $t0, -1412($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1976($s8)
  lw $t0, -1976($s8)
  lw $t1, 0($t0)
  sw $t1, -1980($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1984($s8)
  lw $t0, -1984($s8)
  lw $t1, 0($t0)
  sw $t1, -1988($s8)
  la $t0, -1404($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1992($s8)
  lw $t0, -1992($s8)
  lw $t1, 0($t0)
  sw $t1, -1996($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 28($s8)
  sw $t1, 4($sp)
  li $t2, 439506640
  sw $t2, 8($sp)
  lw $t3, -1996($s8)
  sw $t3, 12($sp)
  lw $t4, -1988($s8)
  sw $t4, 16($sp)
  lw $t5, -1980($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2000($s8)
  lw $t0, -2000($s8)
  lw $t1, -1972($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2004($s8)
  la $t0, -1412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2008($s8)
  lw $t0, -2008($s8)
  lw $t1, 0($t0)
  sw $t1, -2012($s8)
  la $t0, -1404($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2016($s8)
  lw $t0, -2016($s8)
  lw $t1, 0($t0)
  sw $t1, -2020($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 28($s8)
  sw $t1, 4($sp)
  lw $t2, -2020($s8)
  sw $t2, 8($sp)
  lw $t3, -2012($s8)
  sw $t3, 12($sp)
  li $t4, -537759189
  sw $t4, 16($sp)
  li $t5, -1416529881
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2024($s8)
  lw $t0, -2024($s8)
  lw $t1, -2004($s8)
  sw $t0, 0($t1)
  la $t0, -1412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2028($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2032($s8)
  lw $t0, -2032($s8)
  lw $t1, 0($t0)
  sw $t1, -2036($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2040($s8)
  lw $t0, -2040($s8)
  lw $t1, 0($t0)
  sw $t1, -2044($s8)
  lw $t0, -2036($s8)
  lw $t1, -2044($s8)
  mul $t2, $t0, $t1
  sw $t2, -2048($s8)
  lw $t0, -2048($s8)
  lw $t1, -2028($s8)
  sw $t0, 0($t1)
  la $t0, -1412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2052($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2056($s8)
  lw $t0, -2056($s8)
  lw $t1, 0($t0)
  sw $t1, -2060($s8)
  la $t0, -1404($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2064($s8)
  lw $t0, -2064($s8)
  lw $t1, 0($t0)
  sw $t1, -2068($s8)
  lw $t0, -2060($s8)
  lw $t1, -2068($s8)
  mul $t2, $t0, $t1
  sw $t2, -2072($s8)
  lw $t0, -2072($s8)
  lw $t1, -2052($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2076($s8)
  la $t0, -1404($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2080($s8)
  lw $t0, -2080($s8)
  lw $t1, 0($t0)
  sw $t1, -2084($s8)
  la $t0, -1412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2088($s8)
  lw $t0, -2088($s8)
  lw $t1, 0($t0)
  sw $t1, -2092($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, 24($s8)
  sw $t2, 8($sp)
  lw $t3, 28($s8)
  sw $t3, 12($sp)
  lw $t4, -2092($s8)
  sw $t4, 16($sp)
  lw $t5, -2084($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2096($s8)
  lw $t0, -2096($s8)
  lw $t1, -2076($s8)
  sw $t0, 0($t1)
  lw $t0, -1464($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -1524($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -1528($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -1532($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -1536($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -1540($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -1544($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -1548($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -1552($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -1556($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -1560($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label138
label139:
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2100($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2104($s8)
  lw $t0, 28($s8)
  lw $t1, 24($s8)
  beq $t0, $t1, label162
  j label163
label162:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2104($s8)
label163:
  lw $t0, -2104($s8)
  lw $t1, -2100($s8)
  sw $t0, 0($t1)
  lw $t0, -2100($s8)
  lw $t1, 0($t0)
  sw $t1, -2108($s8)
  lw $t0, -2108($s8)
  move $t1, $t0
  sw $t1, -2112($s8)
  lw $t0, -2112($s8)
  li $t1, 0
  beq $t0, $t1, label161
  li $t0, 0
  move $t1, $t0
  sw $t1, -2116($s8)
  lw $t0, -68($s8)
  li $t1, 10
  blt $t0, $t1, label164
  j label165
label164:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2116($s8)
label165:
  lw $t0, -2116($s8)
  li $t1, 0
  beq $t0, $t1, label161
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2132($s8)
  lw $t0, 28($s8)
  move $t1, $t0
  sw $t1, -2136($s8)
  lw $t0, -2136($s8)
  lw $t1, -2132($s8)
  sw $t0, 0($t1)
  lw $t0, -2132($s8)
  lw $t1, 0($t0)
  sw $t1, -2140($s8)
  lw $t0, -2140($s8)
  move $t1, $t0
  sw $t1, -2144($s8)
  li $t0, -1595410678
  move $t1, $t0
  sw $t1, -2148($s8)
  li $t0, 1257902776
  move $t1, $t0
  sw $t1, -2152($s8)
  lw $t0, -2152($s8)
  move $t1, $t0
  sw $t1, -2156($s8)
  li $t0, 253944722
  move $t1, $t0
  sw $t1, -2160($s8)
  li $t0, 498284829
  move $t1, $t0
  sw $t1, -2164($s8)
  li $t0, -572010214
  move $t1, $t0
  sw $t1, -2168($s8)
  li $t0, -774786452
  move $t1, $t0
  sw $t1, -2172($s8)
  li $t0, 412543126
  move $t1, $t0
  sw $t1, -2176($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2124($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2180($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2184($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  lw $t4, 24($s8)
  sw $t4, 16($sp)
  lw $t5, 28($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2188($s8)
  lw $t0, -2188($s8)
  lw $t1, -2184($s8)
  sw $t0, 0($t1)
  lw $t0, -2184($s8)
  lw $t1, 0($t0)
  sw $t1, -2192($s8)
  lw $t0, -2192($s8)
  move $t1, $t0
  sw $t1, -2196($s8)
  lw $t0, -2196($s8)
  lw $t1, -2180($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 4
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2124($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2200($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2204($s8)
  li $t0, -425311630
  li $t1, 0
  beq $t0, $t1, label167
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2208($s8)
  lw $t0, -2208($s8)
  lw $t1, 0($t0)
  sw $t1, -2212($s8)
  lw $t0, -2212($s8)
  li $t1, 0
  bne $t0, $t1, label166
  j label167
label166:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2204($s8)
label167:
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2216($s8)
  lw $t0, -2216($s8)
  lw $t1, 0($t0)
  sw $t1, -2220($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 16($s8)
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  lw $t3, 24($s8)
  sw $t3, 12($sp)
  lw $t4, 28($s8)
  sw $t4, 16($sp)
  lw $t5, -2220($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2224($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2148($s8)
  sw $t1, 4($sp)
  lw $t2, -2144($s8)
  sw $t2, 8($sp)
  lw $t3, -36($s8)
  sw $t3, 12($sp)
  lw $t4, -20($s8)
  sw $t4, 16($sp)
  lw $t5, 12($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2228($s8)
  li $t0, -419455846
  move $t1, $t0
  sw $t1, -2156($s8)
  lw $t0, -2156($s8)
  move $t1, $t0
  sw $t1, -2232($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2176($s8)
  sw $t1, 4($sp)
  lw $t2, -2172($s8)
  sw $t2, 8($sp)
  lw $t3, -2168($s8)
  sw $t3, 12($sp)
  lw $t4, -2164($s8)
  sw $t4, 16($sp)
  lw $t5, -2160($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2236($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2236($s8)
  sw $t1, 4($sp)
  lw $t2, -2232($s8)
  sw $t2, 8($sp)
  lw $t3, -2228($s8)
  sw $t3, 12($sp)
  lw $t4, -2224($s8)
  sw $t4, 16($sp)
  lw $t5, -2204($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2240($s8)
  lw $t0, -2240($s8)
  lw $t1, -2200($s8)
  sw $t0, 0($t1)
  la $t0, -2128($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2244($s8)
  la $t0, -2124($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2248($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2252($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2256($s8)
  lw $t0, -2256($s8)
  lw $t1, 0($t0)
  sw $t1, -2260($s8)
  lw $t0, -2260($s8)
  li $t1, 0
  bne $t0, $t1, label169
  j label168
label168:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2252($s8)
label169:
  lw $t0, -2252($s8)
  lw $t1, -2248($s8)
  sw $t0, 0($t1)
  lw $t0, -2248($s8)
  lw $t1, 0($t0)
  sw $t1, -2264($s8)
  lw $t0, -2264($s8)
  move $t1, $t0
  sw $t1, -2268($s8)
  lw $t0, -2268($s8)
  lw $t1, -2244($s8)
  sw $t0, 0($t1)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2272($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2276($s8)
  lw $t0, -68($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -68($s8)
label170:
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2280($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2284($s8)
  la $t0, -2128($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2288($s8)
  lw $t0, -2288($s8)
  lw $t1, 0($t0)
  sw $t1, -2292($s8)
  la $t0, -2124($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2296($s8)
  lw $t0, -2296($s8)
  lw $t1, 0($t0)
  sw $t1, -2300($s8)
  lw $t0, -2292($s8)
  lw $t1, -2300($s8)
  bne $t0, $t1, label172
  j label173
label172:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2284($s8)
label173:
  lw $t0, -2284($s8)
  lw $t1, -2280($s8)
  sw $t0, 0($t1)
  lw $t0, -2280($s8)
  lw $t1, 0($t0)
  sw $t1, -2304($s8)
  lw $t0, -2304($s8)
  move $t1, $t0
  sw $t1, -2308($s8)
  lw $t0, -2308($s8)
  li $t1, 0
  beq $t0, $t1, label171
  li $t0, 0
  move $t1, $t0
  sw $t1, -2312($s8)
  lw $t0, -2272($s8)
  li $t1, 10
  blt $t0, $t1, label174
  j label175
label174:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2312($s8)
label175:
  lw $t0, -2312($s8)
  li $t1, 0
  beq $t0, $t1, label171
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2324($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2328($s8)
  lw $t0, -2328($s8)
  lw $t1, 0($t0)
  sw $t1, -2332($s8)
  la $t0, -2128($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2336($s8)
  lw $t0, -2336($s8)
  lw $t1, 0($t0)
  sw $t1, -2340($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  lw $t2, 28($s8)
  sw $t2, 8($sp)
  li $t3, 149749138
  sw $t3, 12($sp)
  lw $t4, -2340($s8)
  sw $t4, 16($sp)
  lw $t5, -2332($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2344($s8)
  lw $t0, -2344($s8)
  lw $t1, -2324($s8)
  sw $t0, 0($t1)
  lw $t0, -2324($s8)
  lw $t1, 0($t0)
  sw $t1, -2348($s8)
  lw $t0, -2348($s8)
  move $t1, $t0
  sw $t1, -2352($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2356($s8)
  li $t0, -1585839551
  move $t1, $t0
  sw $t1, -2360($s8)
  lw $t0, -2360($s8)
  lw $t1, -2356($s8)
  sw $t0, 0($t1)
  lw $t0, -2356($s8)
  lw $t1, 0($t0)
  sw $t1, -2364($s8)
  lw $t0, -2364($s8)
  move $t1, $t0
  sw $t1, -2368($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2320($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2372($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2376($s8)
  la $t0, -2128($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2380($s8)
  lw $t0, -2380($s8)
  lw $t1, 0($t0)
  sw $t1, -2384($s8)
  la $t0, -2124($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2388($s8)
  lw $t0, -2388($s8)
  lw $t1, 0($t0)
  sw $t1, -2392($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, 24($s8)
  sw $t2, 8($sp)
  lw $t3, 28($s8)
  sw $t3, 12($sp)
  lw $t4, -2392($s8)
  sw $t4, 16($sp)
  lw $t5, -2384($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2396($s8)
  lw $t0, -2396($s8)
  lw $t1, -2376($s8)
  sw $t0, 0($t1)
  lw $t0, -2376($s8)
  lw $t1, 0($t0)
  sw $t1, -2400($s8)
  lw $t0, -2400($s8)
  move $t1, $t0
  sw $t1, -2404($s8)
  lw $t0, -2404($s8)
  lw $t1, -2372($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2320($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2408($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2412($s8)
  la $t0, -2124($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2416($s8)
  lw $t0, -2416($s8)
  lw $t1, 0($t0)
  sw $t1, -2420($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2424($s8)
  lw $t0, -2424($s8)
  lw $t1, 0($t0)
  sw $t1, -2428($s8)
  lw $t0, -2420($s8)
  lw $t1, -2428($s8)
  bge $t0, $t1, label176
  j label177
label176:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2412($s8)
label177:
  li $t0, 0
  move $t1, $t0
  sw $t1, -2432($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2436($s8)
  lw $t0, -2436($s8)
  lw $t1, 0($t0)
  sw $t1, -2440($s8)
  la $t0, -2128($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2444($s8)
  lw $t0, -2444($s8)
  lw $t1, 0($t0)
  sw $t1, -2448($s8)
  lw $t0, -2440($s8)
  lw $t1, -2448($s8)
  bne $t0, $t1, label178
  j label179
label178:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2432($s8)
label179:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -20($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, 16($s8)
  sw $t3, 12($sp)
  lw $t4, 20($s8)
  sw $t4, 16($sp)
  lw $t5, 24($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2452($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2156($s8)
  sw $t1, 4($sp)
  lw $t2, -2152($s8)
  sw $t2, 8($sp)
  lw $t3, -2148($s8)
  sw $t3, 12($sp)
  lw $t4, -2144($s8)
  sw $t4, 16($sp)
  lw $t5, -36($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2456($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2456($s8)
  sw $t1, 4($sp)
  lw $t2, -2452($s8)
  sw $t2, 8($sp)
  lw $t3, 28($s8)
  sw $t3, 12($sp)
  lw $t4, -2432($s8)
  sw $t4, 16($sp)
  lw $t5, -2412($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2460($s8)
  lw $t0, -2460($s8)
  lw $t1, -2408($s8)
  sw $t0, 0($t1)
  lw $t0, -2272($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -2272($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2124($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2464($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2468($s8)
  lw $t0, -2468($s8)
  lw $t1, 0($t0)
  sw $t1, -2472($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2476($s8)
  lw $t0, -2476($s8)
  lw $t1, 0($t0)
  sw $t1, -2480($s8)
  la $t0, -2128($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2484($s8)
  lw $t0, -2484($s8)
  lw $t1, 0($t0)
  sw $t1, -2488($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 28($s8)
  sw $t1, 4($sp)
  lw $t2, -2488($s8)
  sw $t2, 8($sp)
  li $t3, -484716445
  sw $t3, 12($sp)
  lw $t4, -2480($s8)
  sw $t4, 16($sp)
  lw $t5, -2472($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2492($s8)
  lw $t0, -2492($s8)
  lw $t1, -2464($s8)
  sw $t0, 0($t1)
  la $t0, -2124($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2496($s8)
  la $t0, -2320($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2500($s8)
  lw $t0, -2500($s8)
  lw $t1, 0($t0)
  sw $t1, -2504($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2508($s8)
  lw $t0, -2508($s8)
  lw $t1, 0($t0)
  sw $t1, -2512($s8)
  lw $t0, -2512($s8)
  sw $t0, 0($sp)
  lw $t1, -2504($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_div
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2516($s8)
  lw $t0, -2516($s8)
  lw $t1, -2496($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2124($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2520($s8)
  lw $t0, -2520($s8)
  lw $t1, 0($t0)
  sw $t1, -2524($s8)
  la $t0, -2320($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2528($s8)
  lw $t0, -2528($s8)
  lw $t1, 0($t0)
  sw $t1, -2532($s8)
  lw $t0, -2524($s8)
  lw $t1, -2532($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -2536($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2540($s8)
  lw $t0, -2540($s8)
  lw $t1, 0($t0)
  sw $t1, -2544($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2548($s8)
  lw $t0, -2548($s8)
  lw $t1, 0($t0)
  sw $t1, -2552($s8)
  la $t0, -2128($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2556($s8)
  lw $t0, -2556($s8)
  lw $t1, 0($t0)
  sw $t1, -2560($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, 24($s8)
  sw $t2, 8($sp)
  lw $t3, 28($s8)
  sw $t3, 12($sp)
  lw $t4, -2560($s8)
  sw $t4, 16($sp)
  lw $t5, -2552($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2564($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2144($s8)
  sw $t1, 4($sp)
  lw $t2, -36($s8)
  sw $t2, 8($sp)
  lw $t3, -20($s8)
  sw $t3, 12($sp)
  lw $t4, 12($s8)
  sw $t4, 16($sp)
  lw $t5, 16($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2568($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2148($s8)
  sw $t1, 4($sp)
  lw $t2, -2568($s8)
  sw $t2, 8($sp)
  lw $t3, -2564($s8)
  sw $t3, 12($sp)
  lw $t4, -2544($s8)
  sw $t4, 16($sp)
  lw $t5, -2536($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2572($s8)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2576($s8)
  lw $t0, -2576($s8)
  lw $t1, 0($t0)
  sw $t1, -2580($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2584($s8)
  lw $t0, -2584($s8)
  lw $t1, 0($t0)
  sw $t1, -2588($s8)
  la $t0, -2128($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2592($s8)
  lw $t0, -2592($s8)
  lw $t1, 0($t0)
  sw $t1, -2596($s8)
  la $t0, -2124($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2600($s8)
  lw $t0, -2600($s8)
  lw $t1, 0($t0)
  sw $t1, -2604($s8)
  la $t0, -2320($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2608($s8)
  lw $t0, -2608($s8)
  lw $t1, 0($t0)
  sw $t1, -2612($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2612($s8)
  sw $t1, 4($sp)
  lw $t2, -2604($s8)
  sw $t2, 8($sp)
  lw $t3, -2596($s8)
  sw $t3, 12($sp)
  lw $t4, -2588($s8)
  sw $t4, 16($sp)
  lw $t5, -2580($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2616($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2620($s8)
  lw $t0, 28($s8)
  lw $t1, 24($s8)
  ble $t0, $t1, label180
  j label181
label180:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2620($s8)
label181:
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_sub
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2624($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2144($s8)
  sw $t1, 4($sp)
  lw $t2, -36($s8)
  sw $t2, 8($sp)
  li $t3, -629442280
  sw $t3, 12($sp)
  lw $t4, -20($s8)
  sw $t4, 16($sp)
  lw $t5, 12($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2628($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2632($s8)
  lw $t0, -2148($s8)
  li $t1, 0
  bne $t0, $t1, label182
  lw $t0, -2152($s8)
  li $t1, 0
  bne $t0, $t1, label182
  j label183
label182:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2632($s8)
label183:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2632($s8)
  sw $t1, 4($sp)
  lw $t2, -2628($s8)
  sw $t2, 8($sp)
  lw $t3, -2624($s8)
  sw $t3, 12($sp)
  lw $t4, -2620($s8)
  sw $t4, 16($sp)
  lw $t5, -2616($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2636($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2640($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2644($s8)
  lw $t0, -2644($s8)
  lw $t1, 0($t0)
  sw $t1, -2648($s8)
  la $t0, -2320($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2652($s8)
  lw $t0, -2652($s8)
  lw $t1, 0($t0)
  sw $t1, -2656($s8)
  la $t0, -2128($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2660($s8)
  lw $t0, -2660($s8)
  lw $t1, 0($t0)
  sw $t1, -2664($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  lw $t2, 28($s8)
  sw $t2, 8($sp)
  lw $t3, -2664($s8)
  sw $t3, 12($sp)
  lw $t4, -2656($s8)
  sw $t4, 16($sp)
  lw $t5, -2648($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2668($s8)
  lw $t0, -2668($s8)
  lw $t1, -2640($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2672($s8)
  li $t0, -1848412274
  sw $t0, 0($sp)
  li $t1, 870087626
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_mul
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2676($s8)
  lw $t0, -2676($s8)
  lw $t1, -2672($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2680($s8)
  la $t0, -2320($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2684($s8)
  lw $t0, -2684($s8)
  lw $t1, 0($t0)
  sw $t1, -2688($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2692($s8)
  lw $t0, -2692($s8)
  lw $t1, 0($t0)
  sw $t1, -2696($s8)
  lw $t0, -2688($s8)
  lw $t1, -2696($s8)
  mul $t2, $t0, $t1
  sw $t2, -2700($s8)
  lw $t0, -2700($s8)
  lw $t1, -2680($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2124($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2704($s8)
  la $t0, -2320($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2708($s8)
  lw $t0, -2708($s8)
  lw $t1, 0($t0)
  sw $t1, -2712($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2716($s8)
  lw $t0, -2716($s8)
  lw $t1, 0($t0)
  sw $t1, -2720($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2724($s8)
  lw $t0, -2724($s8)
  lw $t1, 0($t0)
  sw $t1, -2728($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 1037431602
  sw $t1, 4($sp)
  li $t2, 1395294131
  sw $t2, 8($sp)
  lw $t3, -2728($s8)
  sw $t3, 12($sp)
  lw $t4, -2720($s8)
  sw $t4, 16($sp)
  lw $t5, -2712($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2732($s8)
  lw $t0, -2732($s8)
  lw $t1, -2704($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2124($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2736($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2740($s8)
  lw $t0, -2740($s8)
  lw $t1, 0($t0)
  sw $t1, -2744($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2748($s8)
  lw $t0, -2748($s8)
  lw $t1, 0($t0)
  sw $t1, -2752($s8)
  la $t0, -2128($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2756($s8)
  lw $t0, -2756($s8)
  lw $t1, 0($t0)
  sw $t1, -2760($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  lw $t2, 28($s8)
  sw $t2, 8($sp)
  lw $t3, -2760($s8)
  sw $t3, 12($sp)
  lw $t4, -2752($s8)
  sw $t4, 16($sp)
  lw $t5, -2744($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2764($s8)
  lw $t0, -2764($s8)
  lw $t1, -2736($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2768($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2772($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2776($s8)
  lw $t0, -2776($s8)
  lw $t1, 0($t0)
  sw $t1, -2780($s8)
  li $t0, 495379959
  lw $t1, -2780($s8)
  bgt $t0, $t1, label184
  j label185
label184:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2772($s8)
label185:
  lw $t0, -2772($s8)
  lw $t1, -2768($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2784($s8)
  lw $t0, -2784($s8)
  lw $t1, 0($t0)
  sw $t1, -2788($s8)
  lw $t0, -2788($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2792($s8)
  la $t0, -2124($s8)
  lw $t1, -2792($s8)
  add $t2, $t0, $t1
  sw $t2, -2796($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2800($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2804($s8)
  lw $t0, -2804($s8)
  lw $t1, 0($t0)
  sw $t1, -2808($s8)
  la $t0, -2320($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2812($s8)
  lw $t0, -2812($s8)
  lw $t1, 0($t0)
  sw $t1, -2816($s8)
  lw $t0, -2808($s8)
  lw $t1, -2816($s8)
  bgt $t0, $t1, label186
  j label187
label186:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2800($s8)
label187:
  lw $t0, -2800($s8)
  lw $t1, -2796($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2820($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2824($s8)
  lw $t0, -2824($s8)
  lw $t1, 0($t0)
  sw $t1, -2828($s8)
  la $t0, -2128($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2832($s8)
  lw $t0, -2832($s8)
  lw $t1, 0($t0)
  sw $t1, -2836($s8)
  la $t0, -2124($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2840($s8)
  lw $t0, -2840($s8)
  lw $t1, 0($t0)
  sw $t1, -2844($s8)
  la $t0, -2320($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2848($s8)
  lw $t0, -2848($s8)
  lw $t1, 0($t0)
  sw $t1, -2852($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 28($s8)
  sw $t1, 4($sp)
  lw $t2, -2852($s8)
  sw $t2, 8($sp)
  lw $t3, -2844($s8)
  sw $t3, 12($sp)
  lw $t4, -2836($s8)
  sw $t4, 16($sp)
  lw $t5, -2828($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2856($s8)
  lw $t0, -2856($s8)
  lw $t1, -2820($s8)
  sw $t0, 0($t1)
  lw $t0, -2352($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -2368($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label170
label171:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2860($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2864($s8)
  lw $t0, -2864($s8)
  lw $t1, 0($t0)
  sw $t1, -2868($s8)
  la $t0, -2128($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2872($s8)
  lw $t0, -2872($s8)
  lw $t1, 0($t0)
  sw $t1, -2876($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, 24($s8)
  sw $t2, 8($sp)
  lw $t3, 28($s8)
  sw $t3, 12($sp)
  lw $t4, -2876($s8)
  sw $t4, 16($sp)
  lw $t5, -2868($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2880($s8)
  lw $t0, -2880($s8)
  lw $t1, -2860($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2884($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2888($s8)
  lw $t0, -2888($s8)
  lw $t1, 0($t0)
  sw $t1, -2892($s8)
  la $t0, -2124($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2896($s8)
  lw $t0, -2896($s8)
  lw $t1, 0($t0)
  sw $t1, -2900($s8)
  lw $t0, -2892($s8)
  lw $t1, -2900($s8)
  bgt $t0, $t1, label188
  j label189
label188:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2884($s8)
label189:
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2904($s8)
  lw $t0, -2904($s8)
  lw $t1, 0($t0)
  sw $t1, -2908($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2912($s8)
  la $t0, -2128($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2916($s8)
  lw $t0, -2916($s8)
  lw $t1, 0($t0)
  sw $t1, -2920($s8)
  lw $t0, -2920($s8)
  lw $t1, 28($s8)
  ble $t0, $t1, label190
  j label191
label190:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2912($s8)
label191:
  li $t0, 0
  move $t1, $t0
  sw $t1, -2924($s8)
  lw $t0, 24($s8)
  lw $t1, 20($s8)
  ble $t0, $t1, label192
  j label193
label192:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2924($s8)
label193:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -1664683868
  sw $t1, 4($sp)
  lw $t2, -2924($s8)
  sw $t2, 8($sp)
  lw $t3, -2912($s8)
  sw $t3, 12($sp)
  lw $t4, -2908($s8)
  sw $t4, 16($sp)
  lw $t5, -2884($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2928($s8)
  la $t0, -2124($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2932($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2936($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2940($s8)
  lw $t0, -2940($s8)
  lw $t1, 0($t0)
  sw $t1, -2944($s8)
  li $t0, 1825345153
  lw $t1, -2944($s8)
  bge $t0, $t1, label194
  j label195
label194:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2936($s8)
label195:
  lw $t0, -2936($s8)
  lw $t1, -2932($s8)
  sw $t0, 0($t1)
label196:
  la $t0, -2124($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2948($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2952($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2956($s8)
  lw $t0, -2956($s8)
  lw $t1, 0($t0)
  sw $t1, -2960($s8)
  lw $t0, -2960($s8)
  li $t1, 628746391
  blt $t0, $t1, label198
  j label199
label198:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2952($s8)
label199:
  lw $t0, -2952($s8)
  lw $t1, -2948($s8)
  sw $t0, 0($t1)
  lw $t0, -2948($s8)
  lw $t1, 0($t0)
  sw $t1, -2964($s8)
  lw $t0, -2964($s8)
  move $t1, $t0
  sw $t1, -2968($s8)
  lw $t0, -2968($s8)
  li $t1, 0
  beq $t0, $t1, label197
  li $t0, 0
  move $t1, $t0
  sw $t1, -2972($s8)
  lw $t0, -2276($s8)
  li $t1, 10
  blt $t0, $t1, label200
  j label201
label200:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2972($s8)
label201:
  lw $t0, -2972($s8)
  li $t1, 0
  beq $t0, $t1, label197
  la $t0, -2124($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2980($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2984($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2988($s8)
  lw $t0, -2988($s8)
  lw $t1, 0($t0)
  sw $t1, -2992($s8)
  lw $t0, -2992($s8)
  li $t1, 0
  bne $t0, $t1, label202
  la $t0, -2128($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2996($s8)
  lw $t0, -2996($s8)
  lw $t1, 0($t0)
  sw $t1, -3000($s8)
  lw $t0, -3000($s8)
  li $t1, 0
  bne $t0, $t1, label202
  j label203
label202:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2984($s8)
label203:
  lw $t0, -2984($s8)
  lw $t1, -2980($s8)
  sw $t0, 0($t1)
  lw $t0, -2980($s8)
  lw $t1, 0($t0)
  sw $t1, -3004($s8)
  lw $t0, -3004($s8)
  move $t1, $t0
  sw $t1, -3008($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2976($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3012($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3016($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3020($s8)
  lw $t0, -3020($s8)
  lw $t1, 0($t0)
  sw $t1, -3024($s8)
  la $t0, -2128($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3028($s8)
  lw $t0, -3028($s8)
  lw $t1, 0($t0)
  sw $t1, -3032($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, 24($s8)
  sw $t2, 8($sp)
  lw $t3, 28($s8)
  sw $t3, 12($sp)
  lw $t4, -3032($s8)
  sw $t4, 16($sp)
  lw $t5, -3024($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3036($s8)
  lw $t0, -3036($s8)
  lw $t1, -3016($s8)
  sw $t0, 0($t1)
  lw $t0, -3016($s8)
  lw $t1, 0($t0)
  sw $t1, -3040($s8)
  lw $t0, -3040($s8)
  move $t1, $t0
  sw $t1, -3044($s8)
  lw $t0, -3044($s8)
  lw $t1, -3012($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2124($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3048($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3052($s8)
  lw $t0, -3052($s8)
  lw $t1, 0($t0)
  sw $t1, -3056($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3060($s8)
  lw $t0, -3060($s8)
  lw $t1, 0($t0)
  sw $t1, -3064($s8)
  la $t0, -2128($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3068($s8)
  lw $t0, -3068($s8)
  lw $t1, 0($t0)
  sw $t1, -3072($s8)
  la $t0, -2976($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3076($s8)
  lw $t0, -3076($s8)
  lw $t1, 0($t0)
  sw $t1, -3080($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 28($s8)
  sw $t1, 4($sp)
  lw $t2, -3080($s8)
  sw $t2, 8($sp)
  lw $t3, -3072($s8)
  sw $t3, 12($sp)
  lw $t4, -3064($s8)
  sw $t4, 16($sp)
  lw $t5, -3056($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3084($s8)
  lw $t0, -3084($s8)
  lw $t1, -3048($s8)
  sw $t0, 0($t1)
  lw $t0, -3048($s8)
  lw $t1, 0($t0)
  sw $t1, -3088($s8)
  lw $t0, -3088($s8)
  move $t1, $t0
  sw $t1, -3092($s8)
  lw $t0, -2276($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -2276($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2124($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3096($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3100($s8)
  lw $t0, -3100($s8)
  lw $t1, 0($t0)
  sw $t1, -3104($s8)
  la $t0, -2128($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3108($s8)
  lw $t0, -3108($s8)
  lw $t1, 0($t0)
  sw $t1, -3112($s8)
  la $t0, -2976($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3116($s8)
  lw $t0, -3116($s8)
  lw $t1, 0($t0)
  sw $t1, -3120($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  lw $t2, 28($s8)
  sw $t2, 8($sp)
  lw $t3, -3120($s8)
  sw $t3, 12($sp)
  lw $t4, -3112($s8)
  sw $t4, 16($sp)
  lw $t5, -3104($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3124($s8)
  lw $t0, -3124($s8)
  lw $t1, -3096($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3128($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3132($s8)
  la $t0, -2128($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3136($s8)
  lw $t0, -3136($s8)
  lw $t1, 0($t0)
  sw $t1, -3140($s8)
  lw $t0, -3140($s8)
  lw $t1, -3132($s8)
  sw $t0, 0($t1)
  lw $t0, -3132($s8)
  lw $t1, 0($t0)
  sw $t1, -3144($s8)
  lw $t0, -3144($s8)
  move $t1, $t0
  sw $t1, -3148($s8)
  lw $t0, -3148($s8)
  lw $t1, -3128($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3152($s8)
  lw $t0, -3152($s8)
  lw $t1, 0($t0)
  sw $t1, -3156($s8)
  lw $t0, -3156($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -3160($s8)
  la $t0, -2124($s8)
  lw $t1, -3160($s8)
  add $t2, $t0, $t1
  sw $t2, -3164($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3168($s8)
  lw $t0, -3168($s8)
  lw $t1, 0($t0)
  sw $t1, -3172($s8)
  la $t0, -2128($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3176($s8)
  lw $t0, -3176($s8)
  lw $t1, 0($t0)
  sw $t1, -3180($s8)
  la $t0, -2976($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3184($s8)
  lw $t0, -3184($s8)
  lw $t1, 0($t0)
  sw $t1, -3188($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 28($s8)
  sw $t1, 4($sp)
  li $t2, -1835758836
  sw $t2, 8($sp)
  lw $t3, -3188($s8)
  sw $t3, 12($sp)
  lw $t4, -3180($s8)
  sw $t4, 16($sp)
  lw $t5, -3172($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3192($s8)
  lw $t0, -3192($s8)
  lw $t1, -3164($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2124($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3196($s8)
  lw $t0, -3196($s8)
  lw $t1, 0($t0)
  sw $t1, -3200($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3204($s8)
  lw $t0, -3204($s8)
  lw $t1, 0($t0)
  sw $t1, -3208($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3212($s8)
  lw $t0, -3212($s8)
  lw $t1, 0($t0)
  sw $t1, -3216($s8)
  la $t0, -2128($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3220($s8)
  lw $t0, -3220($s8)
  lw $t1, 0($t0)
  sw $t1, -3224($s8)
  la $t0, -2976($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3228($s8)
  lw $t0, -3228($s8)
  lw $t1, 0($t0)
  sw $t1, -3232($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3232($s8)
  sw $t1, 4($sp)
  lw $t2, -3224($s8)
  sw $t2, 8($sp)
  lw $t3, -3216($s8)
  sw $t3, 12($sp)
  lw $t4, -3208($s8)
  sw $t4, 16($sp)
  lw $t5, -3200($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3236($s8)
  lw $t0, 24($s8)
  sw $t0, 0($sp)
  lw $t1, 28($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_div
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3240($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_sub
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3244($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3248($s8)
  lw $t0, 12($s8)
  lw $t1, -20($s8)
  beq $t0, $t1, label204
  j label205
label204:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3248($s8)
label205:
  li $t0, 0
  move $t1, $t0
  sw $t1, -3252($s8)
  lw $t0, -36($s8)
  li $t1, 0
  bne $t0, $t1, label207
  j label206
label206:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3252($s8)
label207:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3252($s8)
  sw $t1, 4($sp)
  lw $t2, -3248($s8)
  sw $t2, 8($sp)
  lw $t3, -3244($s8)
  sw $t3, 12($sp)
  lw $t4, -3240($s8)
  sw $t4, 16($sp)
  lw $t5, -3236($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3256($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3260($s8)
  la $t0, -2124($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3264($s8)
  la $t0, -2128($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3268($s8)
  lw $t0, -3268($s8)
  lw $t1, 0($t0)
  sw $t1, -3272($s8)
  lw $t0, -3272($s8)
  lw $t1, -3264($s8)
  sw $t0, 0($t1)
  lw $t0, -3264($s8)
  lw $t1, 0($t0)
  sw $t1, -3276($s8)
  lw $t0, -3276($s8)
  move $t1, $t0
  sw $t1, -3280($s8)
  lw $t0, -3280($s8)
  lw $t1, -3260($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3284($s8)
  li $t0, 1097480474
  move $t1, $t0
  sw $t1, -3288($s8)
  lw $t0, -3288($s8)
  lw $t1, -3284($s8)
  sw $t0, 0($t1)
  la $t0, -2124($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3292($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3296($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3300($s8)
  lw $t0, -3300($s8)
  lw $t1, 0($t0)
  sw $t1, -3304($s8)
  lw $t0, -3304($s8)
  li $t1, 0
  bne $t0, $t1, label208
  la $t0, -2128($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3308($s8)
  lw $t0, -3308($s8)
  lw $t1, 0($t0)
  sw $t1, -3312($s8)
  lw $t0, -3312($s8)
  li $t1, 0
  bne $t0, $t1, label208
  j label209
label208:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3296($s8)
label209:
  lw $t0, -3296($s8)
  lw $t1, -3292($s8)
  sw $t0, 0($t1)
  lw $t0, -3008($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -3092($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label196
label197:
  la $t0, -2124($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3316($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3320($s8)
  lw $t0, -3320($s8)
  lw $t1, 0($t0)
  sw $t1, -3324($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3328($s8)
  lw $t0, -3328($s8)
  lw $t1, 0($t0)
  sw $t1, -3332($s8)
  lw $t0, -3324($s8)
  lw $t1, -3332($s8)
  add $t2, $t0, $t1
  sw $t2, -3336($s8)
  lw $t0, -3336($s8)
  lw $t1, -3316($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3340($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3344($s8)
  la $t0, -2128($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3348($s8)
  lw $t0, -3348($s8)
  lw $t1, 0($t0)
  sw $t1, -3352($s8)
  lw $t0, -3352($s8)
  lw $t1, -3344($s8)
  sw $t0, 0($t1)
  lw $t0, -3344($s8)
  lw $t1, 0($t0)
  sw $t1, -3356($s8)
  lw $t0, -3356($s8)
  move $t1, $t0
  sw $t1, -3360($s8)
  lw $t0, -3360($s8)
  lw $t1, -3340($s8)
  sw $t0, 0($t1)
  lw $t0, -2144($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -2148($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -2152($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -2156($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -2160($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -2164($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -2168($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -2172($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -2176($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label139
label161:
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3364($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3368($s8)
  lw $t0, -3368($s8)
  lw $t1, 0($t0)
  sw $t1, -3372($s8)
  lw $t0, -3372($s8)
  lw $t1, -3364($s8)
  sw $t0, 0($t1)
  lw $t0, -3364($s8)
  lw $t1, 0($t0)
  sw $t1, -3376($s8)
  lw $t0, -3376($s8)
  move $t1, $t0
  sw $t1, -3380($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -393428201
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  lw $t4, 24($s8)
  sw $t4, 16($sp)
  lw $t5, 28($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3384($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3388($s8)
  lw $t0, -20($s8)
  lw $t1, -36($s8)
  blt $t0, $t1, label210
  j label211
label210:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3388($s8)
label211:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3388($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, -3384($s8)
  sw $t3, 12($sp)
  li $t4, -2023783224
  sw $t4, 16($sp)
  lw $t5, -3380($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3392($s8)
  lw $t0, 8($s8)
  li $t1, 35
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3396($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  lw $t4, 24($s8)
  sw $t4, 16($sp)
  lw $t5, 28($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3400($s8)
  lw $t0, -3400($s8)
  lw $t1, -3396($s8)
  sw $t0, 0($t1)
  lw $t0, -3396($s8)
  lw $t1, 0($t0)
  sw $t1, -3404($s8)
  lw $t0, -3404($s8)
  move $t1, $t0
  sw $t1, -3408($s8)
  lw $t0, -3408($s8)
  li $t1, 0
  beq $t0, $t1, label212
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3428($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3432($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  lw $t4, 24($s8)
  sw $t4, 16($sp)
  lw $t5, 28($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3436($s8)
  lw $t0, -3436($s8)
  lw $t1, -3432($s8)
  sw $t0, 0($t1)
  lw $t0, -3432($s8)
  lw $t1, 0($t0)
  sw $t1, -3440($s8)
  lw $t0, -3440($s8)
  move $t1, $t0
  sw $t1, -3444($s8)
  lw $t0, -3444($s8)
  lw $t1, -3428($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3420($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3448($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3452($s8)
  la $t0, -3412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3456($s8)
  lw $t0, -3456($s8)
  lw $t1, 0($t0)
  sw $t1, -3460($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, 24($s8)
  sw $t2, 8($sp)
  lw $t3, 28($s8)
  sw $t3, 12($sp)
  lw $t4, -3460($s8)
  sw $t4, 16($sp)
  li $t5, -1424567044
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3464($s8)
  lw $t0, -3464($s8)
  lw $t1, -3452($s8)
  sw $t0, 0($t1)
  lw $t0, -3452($s8)
  lw $t1, 0($t0)
  sw $t1, -3468($s8)
  lw $t0, -3468($s8)
  move $t1, $t0
  sw $t1, -3472($s8)
  lw $t0, -3472($s8)
  lw $t1, -3448($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3476($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3480($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3484($s8)
  lw $t0, -3484($s8)
  lw $t1, 0($t0)
  sw $t1, -3488($s8)
  la $t0, -3412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3492($s8)
  lw $t0, -3492($s8)
  lw $t1, 0($t0)
  sw $t1, -3496($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  lw $t2, 28($s8)
  sw $t2, 8($sp)
  lw $t3, -3496($s8)
  sw $t3, 12($sp)
  li $t4, -1494938625
  sw $t4, 16($sp)
  lw $t5, -3488($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3500($s8)
  lw $t0, -3500($s8)
  lw $t1, -3480($s8)
  sw $t0, 0($t1)
  lw $t0, -3480($s8)
  lw $t1, 0($t0)
  sw $t1, -3504($s8)
  lw $t0, -3504($s8)
  move $t1, $t0
  sw $t1, -3508($s8)
  lw $t0, -3508($s8)
  lw $t1, -3476($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3424($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3512($s8)
  la $t0, -3420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3516($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3520($s8)
  lw $t0, -3520($s8)
  lw $t1, 0($t0)
  sw $t1, -3524($s8)
  la $t0, -3412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3528($s8)
  lw $t0, -3528($s8)
  lw $t1, 0($t0)
  sw $t1, -3532($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, 24($s8)
  sw $t2, 8($sp)
  lw $t3, 28($s8)
  sw $t3, 12($sp)
  lw $t4, -3532($s8)
  sw $t4, 16($sp)
  lw $t5, -3524($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3536($s8)
  lw $t0, -3536($s8)
  lw $t1, -3516($s8)
  sw $t0, 0($t1)
  lw $t0, -3516($s8)
  lw $t1, 0($t0)
  sw $t1, -3540($s8)
  lw $t0, -3540($s8)
  move $t1, $t0
  sw $t1, -3544($s8)
  lw $t0, -3544($s8)
  lw $t1, -3512($s8)
  sw $t0, 0($t1)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3548($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3552($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3556($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3560($s8)
  la $t0, -3412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3564($s8)
  lw $t0, -3564($s8)
  lw $t1, 0($t0)
  sw $t1, -3568($s8)
  li $t0, -979366968
  lw $t1, -3568($s8)
  bgt $t0, $t1, label214
  j label215
label214:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3560($s8)
label215:
  lw $t0, -3560($s8)
  lw $t1, -3556($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3572($s8)
  la $t0, -3420($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3576($s8)
  lw $t0, -3576($s8)
  lw $t1, 0($t0)
  sw $t1, -3580($s8)
  la $t0, -3412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3584($s8)
  lw $t0, -3584($s8)
  lw $t1, 0($t0)
  sw $t1, -3588($s8)
  la $t0, -3424($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3592($s8)
  lw $t0, -3592($s8)
  lw $t1, 0($t0)
  sw $t1, -3596($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3596($s8)
  sw $t1, 4($sp)
  li $t2, 1618735162
  sw $t2, 8($sp)
  li $t3, -1191688054
  sw $t3, 12($sp)
  lw $t4, -3588($s8)
  sw $t4, 16($sp)
  lw $t5, -3580($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3600($s8)
  lw $t0, -3600($s8)
  lw $t1, -3572($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label216:
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3604($s8)
  lw $t0, -3604($s8)
  lw $t1, 0($t0)
  sw $t1, -3608($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3612($s8)
  lw $t0, -3612($s8)
  lw $t1, 0($t0)
  sw $t1, -3616($s8)
  lw $t0, -3608($s8)
  lw $t1, -3616($s8)
  mul $t2, $t0, $t1
  sw $t2, -3620($s8)
  la $t0, -3420($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3624($s8)
  lw $t0, -3624($s8)
  lw $t1, 0($t0)
  sw $t1, -3628($s8)
  la $t0, -3412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3632($s8)
  lw $t0, -3632($s8)
  lw $t1, 0($t0)
  sw $t1, -3636($s8)
  la $t0, -3424($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3640($s8)
  lw $t0, -3640($s8)
  lw $t1, 0($t0)
  sw $t1, -3644($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 1897715167
  sw $t1, 4($sp)
  li $t2, -1100844184
  sw $t2, 8($sp)
  lw $t3, -3644($s8)
  sw $t3, 12($sp)
  lw $t4, -3636($s8)
  sw $t4, 16($sp)
  lw $t5, -3628($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3648($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3652($s8)
  lw $t0, 28($s8)
  lw $t1, 24($s8)
  bgt $t0, $t1, label218
  j label219
label218:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3652($s8)
label219:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -36($s8)
  sw $t1, 4($sp)
  lw $t2, -20($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  lw $t4, 16($s8)
  sw $t4, 16($sp)
  lw $t5, 20($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3656($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3656($s8)
  sw $t1, 4($sp)
  lw $t2, -3652($s8)
  sw $t2, 8($sp)
  lw $t3, -3648($s8)
  sw $t3, 12($sp)
  li $t4, 433134703
  sw $t4, 16($sp)
  lw $t5, -3620($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3660($s8)
  lw $t0, -3660($s8)
  li $t1, 0
  beq $t0, $t1, label217
  li $t0, 0
  move $t1, $t0
  sw $t1, -3664($s8)
  lw $t0, -3548($s8)
  li $t1, 10
  blt $t0, $t1, label220
  j label221
label220:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3664($s8)
label221:
  lw $t0, -3664($s8)
  li $t1, 0
  beq $t0, $t1, label217
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3668($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3672($s8)
  la $t0, -3412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3676($s8)
  lw $t0, -3676($s8)
  lw $t1, 0($t0)
  sw $t1, -3680($s8)
  lw $t0, -3680($s8)
  li $t1, -1811132824
  bge $t0, $t1, label222
  j label223
label222:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3672($s8)
label223:
  lw $t0, -3672($s8)
  lw $t1, -3668($s8)
  sw $t0, 0($t1)
  lw $t0, -3668($s8)
  lw $t1, 0($t0)
  sw $t1, -3684($s8)
  lw $t0, -3684($s8)
  move $t1, $t0
  sw $t1, -3688($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3692($s8)
  la $t0, -3412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3696($s8)
  lw $t0, -3696($s8)
  lw $t1, 0($t0)
  sw $t1, -3700($s8)
  la $t0, -3424($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3704($s8)
  lw $t0, -3704($s8)
  lw $t1, 0($t0)
  sw $t1, -3708($s8)
  la $t0, -3420($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3712($s8)
  lw $t0, -3712($s8)
  lw $t1, 0($t0)
  sw $t1, -3716($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 28($s8)
  sw $t1, 4($sp)
  lw $t2, -3716($s8)
  sw $t2, 8($sp)
  li $t3, -1695628650
  sw $t3, 12($sp)
  lw $t4, -3708($s8)
  sw $t4, 16($sp)
  lw $t5, -3700($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3720($s8)
  lw $t0, -3720($s8)
  lw $t1, -3692($s8)
  sw $t0, 0($t1)
  lw $t0, -3692($s8)
  lw $t1, 0($t0)
  sw $t1, -3724($s8)
  lw $t0, -3724($s8)
  move $t1, $t0
  sw $t1, -3728($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3732($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3736($s8)
  la $t0, -3412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3740($s8)
  lw $t0, -3740($s8)
  lw $t1, 0($t0)
  sw $t1, -3744($s8)
  lw $t0, -3744($s8)
  li $t1, 0
  beq $t0, $t1, label225
  la $t0, -3424($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3748($s8)
  lw $t0, -3748($s8)
  lw $t1, 0($t0)
  sw $t1, -3752($s8)
  lw $t0, -3752($s8)
  li $t1, 0
  bne $t0, $t1, label224
  j label225
label224:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3736($s8)
label225:
  lw $t0, -3736($s8)
  lw $t1, -3732($s8)
  sw $t0, 0($t1)
  lw $t0, -3732($s8)
  lw $t1, 0($t0)
  sw $t1, -3756($s8)
  lw $t0, -3756($s8)
  move $t1, $t0
  sw $t1, -3760($s8)
  lw $t0, -3548($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -3548($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3764($s8)
  lw $t0, -3764($s8)
  lw $t1, 0($t0)
  sw $t1, -3768($s8)
  lw $t0, -3768($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -3772($s8)
  la $t0, -3420($s8)
  lw $t1, -3772($s8)
  add $t2, $t0, $t1
  sw $t2, -3776($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3780($s8)
  lw $t0, -3780($s8)
  lw $t1, 0($t0)
  sw $t1, -3784($s8)
  la $t0, -3412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3788($s8)
  lw $t0, -3788($s8)
  lw $t1, 0($t0)
  sw $t1, -3792($s8)
  la $t0, -3424($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3796($s8)
  lw $t0, -3796($s8)
  lw $t1, 0($t0)
  sw $t1, -3800($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 28($s8)
  sw $t1, 4($sp)
  lw $t2, -3800($s8)
  sw $t2, 8($sp)
  lw $t3, -3792($s8)
  sw $t3, 12($sp)
  lw $t4, -3784($s8)
  sw $t4, 16($sp)
  li $t5, 857406857
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3804($s8)
  lw $t0, -3804($s8)
  lw $t1, -3776($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3808($s8)
  la $t0, -3420($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3812($s8)
  lw $t0, -3812($s8)
  lw $t1, 0($t0)
  sw $t1, -3816($s8)
  li $t0, -569801430
  lw $t1, -3816($s8)
  ble $t0, $t1, label226
  j label227
label226:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3808($s8)
label227:
  li $t0, 0
  move $t1, $t0
  sw $t1, -3820($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3824($s8)
  lw $t0, -3824($s8)
  lw $t1, 0($t0)
  sw $t1, -3828($s8)
  lw $t0, -3828($s8)
  li $t1, -1637830431
  bge $t0, $t1, label228
  j label229
label228:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3820($s8)
label229:
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3832($s8)
  lw $t0, -3832($s8)
  lw $t1, 0($t0)
  sw $t1, -3836($s8)
  la $t0, -3412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3840($s8)
  lw $t0, -3840($s8)
  lw $t1, 0($t0)
  sw $t1, -3844($s8)
  la $t0, -3424($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3848($s8)
  lw $t0, -3848($s8)
  lw $t1, 0($t0)
  sw $t1, -3852($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  lw $t2, 28($s8)
  sw $t2, 8($sp)
  lw $t3, -3852($s8)
  sw $t3, 12($sp)
  lw $t4, -3844($s8)
  sw $t4, 16($sp)
  lw $t5, -3836($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3856($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -20($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, 16($s8)
  sw $t3, 12($sp)
  li $t4, 265013736
  sw $t4, 16($sp)
  lw $t5, 20($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3860($s8)
  lw $t0, -36($s8)
  lw $t1, -3688($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -3864($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3864($s8)
  sw $t1, 4($sp)
  lw $t2, -3860($s8)
  sw $t2, 8($sp)
  lw $t3, -3856($s8)
  sw $t3, 12($sp)
  lw $t4, -3820($s8)
  sw $t4, 16($sp)
  lw $t5, -3808($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3868($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3872($s8)
  la $t0, -3412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3876($s8)
  lw $t0, -3876($s8)
  lw $t1, 0($t0)
  sw $t1, -3880($s8)
  la $t0, -3424($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3884($s8)
  lw $t0, -3884($s8)
  lw $t1, 0($t0)
  sw $t1, -3888($s8)
  la $t0, -3420($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3892($s8)
  lw $t0, -3892($s8)
  lw $t1, 0($t0)
  sw $t1, -3896($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 28($s8)
  sw $t1, 4($sp)
  li $t2, 1974877638
  sw $t2, 8($sp)
  lw $t3, -3896($s8)
  sw $t3, 12($sp)
  lw $t4, -3888($s8)
  sw $t4, 16($sp)
  lw $t5, -3880($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3900($s8)
  lw $t0, -3900($s8)
  lw $t1, -3872($s8)
  sw $t0, 0($t1)
  la $t0, -3420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3904($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3908($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3912($s8)
  lw $t0, -3912($s8)
  lw $t1, 0($t0)
  sw $t1, -3916($s8)
  la $t0, -3412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3920($s8)
  lw $t0, -3920($s8)
  lw $t1, 0($t0)
  sw $t1, -3924($s8)
  lw $t0, -3916($s8)
  lw $t1, -3924($s8)
  beq $t0, $t1, label230
  j label231
label230:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3908($s8)
label231:
  lw $t0, -3908($s8)
  lw $t1, -3904($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3928($s8)
  la $t0, -3412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3932($s8)
  lw $t0, -3932($s8)
  lw $t1, 0($t0)
  sw $t1, -3936($s8)
  la $t0, -3420($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3940($s8)
  lw $t0, -3940($s8)
  lw $t1, 0($t0)
  sw $t1, -3944($s8)
  la $t0, -3424($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3948($s8)
  lw $t0, -3948($s8)
  lw $t1, 0($t0)
  sw $t1, -3952($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 28($s8)
  sw $t1, 4($sp)
  lw $t2, -3952($s8)
  sw $t2, 8($sp)
  li $t3, -1591366327
  sw $t3, 12($sp)
  lw $t4, -3944($s8)
  sw $t4, 16($sp)
  lw $t5, -3936($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3956($s8)
  lw $t0, -3956($s8)
  lw $t1, -3928($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3960($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3964($s8)
  lw $t0, -3964($s8)
  lw $t1, 0($t0)
  sw $t1, -3968($s8)
  la $t0, -3412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3972($s8)
  lw $t0, -3972($s8)
  lw $t1, 0($t0)
  sw $t1, -3976($s8)
  la $t0, -3424($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3980($s8)
  lw $t0, -3980($s8)
  lw $t1, 0($t0)
  sw $t1, -3984($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -1661427410
  sw $t1, 4($sp)
  lw $t2, 28($s8)
  sw $t2, 8($sp)
  lw $t3, -3984($s8)
  sw $t3, 12($sp)
  lw $t4, -3976($s8)
  sw $t4, 16($sp)
  lw $t5, -3968($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3988($s8)
  lw $t0, -3988($s8)
  lw $t1, -3960($s8)
  sw $t0, 0($t1)
  lw $t0, -3688($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -3728($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -3760($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label216
label217:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label232:
  la $t0, -3420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3992($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3996($s8)
  lw $t0, -3996($s8)
  lw $t1, 0($t0)
  sw $t1, -4000($s8)
  la $t0, -3412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4004($s8)
  lw $t0, -4004($s8)
  lw $t1, 0($t0)
  sw $t1, -4008($s8)
  la $t0, -3424($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4012($s8)
  lw $t0, -4012($s8)
  lw $t1, 0($t0)
  sw $t1, -4016($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  lw $t2, 28($s8)
  sw $t2, 8($sp)
  lw $t3, -4016($s8)
  sw $t3, 12($sp)
  lw $t4, -4008($s8)
  sw $t4, 16($sp)
  lw $t5, -4000($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4020($s8)
  lw $t0, -4020($s8)
  lw $t1, -3992($s8)
  sw $t0, 0($t1)
  lw $t0, -3992($s8)
  lw $t1, 0($t0)
  sw $t1, -4024($s8)
  lw $t0, -4024($s8)
  move $t1, $t0
  sw $t1, -4028($s8)
  lw $t0, -4028($s8)
  li $t1, 0
  beq $t0, $t1, label233
  li $t0, 0
  move $t1, $t0
  sw $t1, -4032($s8)
  lw $t0, -3552($s8)
  li $t1, 10
  blt $t0, $t1, label234
  j label235
label234:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4032($s8)
label235:
  lw $t0, -4032($s8)
  li $t1, 0
  beq $t0, $t1, label233
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4036($s8)
  la $t0, -3420($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4040($s8)
  lw $t0, -4040($s8)
  lw $t1, 0($t0)
  sw $t1, -4044($s8)
  la $t0, -3412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4048($s8)
  lw $t0, -4048($s8)
  lw $t1, 0($t0)
  sw $t1, -4052($s8)
  la $t0, -3424($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4056($s8)
  lw $t0, -4056($s8)
  lw $t1, 0($t0)
  sw $t1, -4060($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  lw $t2, 28($s8)
  sw $t2, 8($sp)
  lw $t3, -4060($s8)
  sw $t3, 12($sp)
  lw $t4, -4052($s8)
  sw $t4, 16($sp)
  lw $t5, -4044($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4064($s8)
  lw $t0, -4064($s8)
  lw $t1, -4036($s8)
  sw $t0, 0($t1)
  lw $t0, -4036($s8)
  lw $t1, 0($t0)
  sw $t1, -4068($s8)
  lw $t0, -4068($s8)
  move $t1, $t0
  sw $t1, -4072($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4076($s8)
  la $t0, -3412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4080($s8)
  lw $t0, -4080($s8)
  lw $t1, 0($t0)
  sw $t1, -4084($s8)
  la $t0, -3420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4088($s8)
  lw $t0, -4088($s8)
  lw $t1, 0($t0)
  sw $t1, -4092($s8)
  la $t0, -3424($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4096($s8)
  lw $t0, -4096($s8)
  lw $t1, 0($t0)
  sw $t1, -4100($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 1531603128
  sw $t1, 4($sp)
  lw $t2, -4100($s8)
  sw $t2, 8($sp)
  li $t3, 2123666057
  sw $t3, 12($sp)
  lw $t4, -4092($s8)
  sw $t4, 16($sp)
  lw $t5, -4084($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4104($s8)
  lw $t0, -4104($s8)
  lw $t1, -4076($s8)
  sw $t0, 0($t1)
  lw $t0, -4076($s8)
  lw $t1, 0($t0)
  sw $t1, -4108($s8)
  lw $t0, -4108($s8)
  move $t1, $t0
  sw $t1, -4112($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4116($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4120($s8)
  lw $t0, -4120($s8)
  lw $t1, 0($t0)
  sw $t1, -4124($s8)
  la $t0, -3412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4128($s8)
  lw $t0, -4128($s8)
  lw $t1, 0($t0)
  sw $t1, -4132($s8)
  lw $t0, -4124($s8)
  lw $t1, -4132($s8)
  sub $t2, $t0, $t1
  sw $t2, -4136($s8)
  lw $t0, -4136($s8)
  lw $t1, -4116($s8)
  sw $t0, 0($t1)
  lw $t0, -4116($s8)
  lw $t1, 0($t0)
  sw $t1, -4140($s8)
  lw $t0, -4140($s8)
  move $t1, $t0
  sw $t1, -4144($s8)
  lw $t0, -3552($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -3552($s8)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4148($s8)
  lw $t0, -4148($s8)
  lw $t1, 0($t0)
  sw $t1, -4152($s8)
  la $t0, -3420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4156($s8)
  lw $t0, -4156($s8)
  lw $t1, 0($t0)
  sw $t1, -4160($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4164($s8)
  lw $t0, -4164($s8)
  lw $t1, 0($t0)
  sw $t1, -4168($s8)
  la $t0, -3412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4172($s8)
  lw $t0, -4172($s8)
  lw $t1, 0($t0)
  sw $t1, -4176($s8)
  la $t0, -3424($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4180($s8)
  lw $t0, -4180($s8)
  lw $t1, 0($t0)
  sw $t1, -4184($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4184($s8)
  sw $t1, 4($sp)
  lw $t2, -4176($s8)
  sw $t2, 8($sp)
  lw $t3, -4168($s8)
  sw $t3, 12($sp)
  lw $t4, -4160($s8)
  sw $t4, 16($sp)
  lw $t5, -4152($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4188($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4192($s8)
  lw $t0, 28($s8)
  lw $t1, 24($s8)
  bge $t0, $t1, label236
  j label237
label236:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4192($s8)
label237:
  li $t0, 0
  move $t1, $t0
  sw $t1, -4196($s8)
  lw $t0, 20($s8)
  lw $t1, 16($s8)
  beq $t0, $t1, label238
  j label239
label238:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4196($s8)
label239:
  lw $t0, 12($s8)
  li $t1, 1928781934
  div $t0, $t1
  mflo $t2
  sw $t2, -4200($s8)
  lw $t0, -20($s8)
  lw $t1, -36($s8)
  sub $t2, $t0, $t1
  sw $t2, -4204($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4204($s8)
  sw $t1, 4($sp)
  lw $t2, -4200($s8)
  sw $t2, 8($sp)
  lw $t3, -4196($s8)
  sw $t3, 12($sp)
  lw $t4, -4192($s8)
  sw $t4, 16($sp)
  lw $t5, -4188($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4208($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4212($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4216($s8)
  lw $t0, -4216($s8)
  lw $t1, 0($t0)
  sw $t1, -4220($s8)
  la $t0, -3412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4224($s8)
  lw $t0, -4224($s8)
  lw $t1, 0($t0)
  sw $t1, -4228($s8)
  la $t0, -3424($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4232($s8)
  lw $t0, -4232($s8)
  lw $t1, 0($t0)
  sw $t1, -4236($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4236($s8)
  sw $t1, 4($sp)
  lw $t2, -4228($s8)
  sw $t2, 8($sp)
  lw $t3, -4220($s8)
  sw $t3, 12($sp)
  li $t4, 1174608692
  sw $t4, 16($sp)
  li $t5, -551806632
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4240($s8)
  lw $t0, -4240($s8)
  lw $t1, -4212($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4244($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4248($s8)
  lw $t0, -4248($s8)
  lw $t1, 0($t0)
  sw $t1, -4252($s8)
  la $t0, -3412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4256($s8)
  lw $t0, -4256($s8)
  lw $t1, 0($t0)
  sw $t1, -4260($s8)
  lw $t0, -4252($s8)
  lw $t1, -4260($s8)
  add $t2, $t0, $t1
  sw $t2, -4264($s8)
  lw $t0, -4264($s8)
  lw $t1, -4244($s8)
  sw $t0, 0($t1)
  la $t0, -3420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4268($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4272($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4276($s8)
  lw $t0, -4276($s8)
  lw $t1, 0($t0)
  sw $t1, -4280($s8)
  la $t0, -3412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4284($s8)
  lw $t0, -4284($s8)
  lw $t1, 0($t0)
  sw $t1, -4288($s8)
  lw $t0, -4280($s8)
  lw $t1, -4288($s8)
  blt $t0, $t1, label240
  j label241
label240:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4272($s8)
label241:
  lw $t0, -4272($s8)
  lw $t1, -4268($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4292($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4296($s8)
  lw $t0, -4296($s8)
  lw $t1, 0($t0)
  sw $t1, -4300($s8)
  la $t0, -3412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4304($s8)
  lw $t0, -4304($s8)
  lw $t1, 0($t0)
  sw $t1, -4308($s8)
  la $t0, -3424($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4312($s8)
  lw $t0, -4312($s8)
  lw $t1, 0($t0)
  sw $t1, -4316($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  lw $t2, 28($s8)
  sw $t2, 8($sp)
  lw $t3, -4316($s8)
  sw $t3, 12($sp)
  lw $t4, -4308($s8)
  sw $t4, 16($sp)
  lw $t5, -4300($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4320($s8)
  lw $t0, -4320($s8)
  lw $t1, -4292($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4324($s8)
  la $t0, -3420($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4328($s8)
  lw $t0, -4328($s8)
  lw $t1, 0($t0)
  sw $t1, -4332($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4336($s8)
  lw $t0, -4336($s8)
  lw $t1, 0($t0)
  sw $t1, -4340($s8)
  la $t0, -3412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4344($s8)
  lw $t0, -4344($s8)
  lw $t1, 0($t0)
  sw $t1, -4348($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 1363536899
  sw $t1, 4($sp)
  li $t2, -142048180
  sw $t2, 8($sp)
  lw $t3, -4348($s8)
  sw $t3, 12($sp)
  lw $t4, -4340($s8)
  sw $t4, 16($sp)
  lw $t5, -4332($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4352($s8)
  lw $t0, -4352($s8)
  lw $t1, -4324($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4356($s8)
  la $t0, -3412($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4360($s8)
  lw $t0, -4360($s8)
  lw $t1, 0($t0)
  sw $t1, -4364($s8)
  la $t0, -3424($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4368($s8)
  lw $t0, -4368($s8)
  lw $t1, 0($t0)
  sw $t1, -4372($s8)
  la $t0, -3420($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4376($s8)
  lw $t0, -4376($s8)
  lw $t1, 0($t0)
  sw $t1, -4380($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  lw $t2, 28($s8)
  sw $t2, 8($sp)
  lw $t3, -4380($s8)
  sw $t3, 12($sp)
  lw $t4, -4372($s8)
  sw $t4, 16($sp)
  lw $t5, -4364($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4384($s8)
  lw $t0, -4384($s8)
  lw $t1, -4356($s8)
  sw $t0, 0($t1)
  lw $t0, -4072($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -4112($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -4144($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label232
label233:
  la $t0, -3420($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4388($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4392($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4396($s8)
  lw $t0, -4396($s8)
  lw $t1, 0($t0)
  sw $t1, -4400($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4404($s8)
  lw $t0, -4404($s8)
  lw $t1, 0($t0)
  sw $t1, -4408($s8)
  lw $t0, -4400($s8)
  lw $t1, -4408($s8)
  ble $t0, $t1, label242
  j label243
label242:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4392($s8)
label243:
  lw $t0, -4392($s8)
  lw $t1, -4388($s8)
  sw $t0, 0($t1)
  j label213
label212:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4424($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4428($s8)
  lw $t0, -4428($s8)
  lw $t1, 0($t0)
  sw $t1, -4432($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 16($s8)
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  lw $t3, 24($s8)
  sw $t3, 12($sp)
  lw $t4, 28($s8)
  sw $t4, 16($sp)
  lw $t5, -4432($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4436($s8)
  lw $t0, -4436($s8)
  lw $t1, -4424($s8)
  sw $t0, 0($t1)
  lw $t0, -4424($s8)
  lw $t1, 0($t0)
  sw $t1, -4440($s8)
  lw $t0, -4440($s8)
  move $t1, $t0
  sw $t1, -4444($s8)
  la $t0, -4416($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4448($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4452($s8)
  lw $t0, -4452($s8)
  lw $t1, 0($t0)
  sw $t1, -4456($s8)
  lw $t0, -4456($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4460($s8)
  la $t0, -4($s8)
  lw $t1, -4460($s8)
  add $t2, $t0, $t1
  sw $t2, -4464($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4468($s8)
  lw $t0, 28($s8)
  li $t1, 0
  beq $t0, $t1, label245
  lw $t0, 24($s8)
  li $t1, 0
  bne $t0, $t1, label244
  j label245
label244:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4468($s8)
label245:
  lw $t0, -4468($s8)
  lw $t1, -4464($s8)
  sw $t0, 0($t1)
  lw $t0, -4464($s8)
  lw $t1, 0($t0)
  sw $t1, -4472($s8)
  lw $t0, -4472($s8)
  move $t1, $t0
  sw $t1, -4476($s8)
  lw $t0, -4476($s8)
  lw $t1, -4448($s8)
  sw $t0, 0($t1)
  la $t0, -4416($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4480($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4484($s8)
  li $t0, -2107618644
  move $t1, $t0
  sw $t1, -4488($s8)
  lw $t0, -4488($s8)
  lw $t1, -4484($s8)
  sw $t0, 0($t1)
  lw $t0, -4484($s8)
  lw $t1, 0($t0)
  sw $t1, -4492($s8)
  lw $t0, -4492($s8)
  move $t1, $t0
  sw $t1, -4496($s8)
  lw $t0, -4496($s8)
  lw $t1, -4480($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4500($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4504($s8)
  lw $t0, -4504($s8)
  lw $t1, 0($t0)
  sw $t1, -4508($s8)
  lw $t0, -4508($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4512($s8)
  la $t0, -4($s8)
  lw $t1, -4512($s8)
  add $t2, $t0, $t1
  sw $t2, -4516($s8)
  la $t0, -4416($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4520($s8)
  lw $t0, -4520($s8)
  lw $t1, 0($t0)
  sw $t1, -4524($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 356430335
  sw $t1, 4($sp)
  lw $t2, 24($s8)
  sw $t2, 8($sp)
  lw $t3, 28($s8)
  sw $t3, 12($sp)
  lw $t4, -4524($s8)
  sw $t4, 16($sp)
  li $t5, -129926779
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4528($s8)
  lw $t0, -4528($s8)
  lw $t1, -4516($s8)
  sw $t0, 0($t1)
  lw $t0, -4516($s8)
  lw $t1, 0($t0)
  sw $t1, -4532($s8)
  lw $t0, -4532($s8)
  move $t1, $t0
  sw $t1, -4536($s8)
  lw $t0, -4536($s8)
  lw $t1, -4500($s8)
  sw $t0, 0($t1)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4540($s8)
  lw $t0, -4540($s8)
  lw $t1, 0($t0)
  sw $t1, -4544($s8)
  lw $t0, -4544($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4548($s8)
  la $t0, -4($s8)
  lw $t1, -4548($s8)
  add $t2, $t0, $t1
  sw $t2, -4552($s8)
  la $t0, -4416($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4556($s8)
  lw $t0, -4556($s8)
  lw $t1, 0($t0)
  sw $t1, -4560($s8)
  lw $t0, -4560($s8)
  li $t1, -681106403
  mul $t2, $t0, $t1
  sw $t2, -4564($s8)
  lw $t0, -4564($s8)
  lw $t1, -4552($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 20
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4568($s8)
  lw $t0, -4568($s8)
  lw $t1, 0($t0)
  sw $t1, -4572($s8)
  lw $t0, -4572($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4576($s8)
  la $t0, -4($s8)
  lw $t1, -4576($s8)
  add $t2, $t0, $t1
  sw $t2, -4580($s8)
  la $t0, -4420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4584($s8)
  lw $t0, -4584($s8)
  lw $t1, 0($t0)
  sw $t1, -4588($s8)
  la $t0, -4416($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4592($s8)
  lw $t0, -4592($s8)
  lw $t1, 0($t0)
  sw $t1, -4596($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  li $t2, -344524181
  sw $t2, 8($sp)
  lw $t3, 28($s8)
  sw $t3, 12($sp)
  lw $t4, -4596($s8)
  sw $t4, 16($sp)
  lw $t5, -4588($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4600($s8)
  lw $t0, -4600($s8)
  lw $t1, -4580($s8)
  sw $t0, 0($t1)
  lw $t0, -4580($s8)
  lw $t1, 0($t0)
  sw $t1, -4604($s8)
  lw $t0, -4604($s8)
  move $t1, $t0
  sw $t1, -4608($s8)
  lw $t0, -4608($s8)
  li $t1, 0
  beq $t0, $t1, label246
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4616($s8)
  lw $t0, -4616($s8)
  lw $t1, 0($t0)
  sw $t1, -4620($s8)
  lw $t0, -4620($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4624($s8)
  la $t0, -4416($s8)
  lw $t1, -4624($s8)
  add $t2, $t0, $t1
  sw $t2, -4628($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4632($s8)
  lw $t0, -4632($s8)
  lw $t1, 0($t0)
  sw $t1, -4636($s8)
  la $t0, -4420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4640($s8)
  lw $t0, -4640($s8)
  lw $t1, 0($t0)
  sw $t1, -4644($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, 24($s8)
  sw $t2, 8($sp)
  lw $t3, 28($s8)
  sw $t3, 12($sp)
  lw $t4, -4644($s8)
  sw $t4, 16($sp)
  lw $t5, -4636($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4648($s8)
  lw $t0, -4648($s8)
  lw $t1, -4628($s8)
  sw $t0, 0($t1)
  lw $t0, -4628($s8)
  lw $t1, 0($t0)
  sw $t1, -4652($s8)
  lw $t0, -4652($s8)
  move $t1, $t0
  sw $t1, -4656($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4660($s8)
  lw $t0, -4660($s8)
  lw $t1, 0($t0)
  sw $t1, -4664($s8)
  lw $t0, -4664($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4668($s8)
  la $t0, -4416($s8)
  lw $t1, -4668($s8)
  add $t2, $t0, $t1
  sw $t2, -4672($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4676($s8)
  lw $t0, -4676($s8)
  lw $t1, 0($t0)
  sw $t1, -4680($s8)
  la $t0, -4420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4684($s8)
  lw $t0, -4684($s8)
  lw $t1, 0($t0)
  sw $t1, -4688($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, 24($s8)
  sw $t2, 8($sp)
  lw $t3, 28($s8)
  sw $t3, 12($sp)
  lw $t4, -4688($s8)
  sw $t4, 16($sp)
  lw $t5, -4680($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4692($s8)
  lw $t0, -4692($s8)
  lw $t1, -4672($s8)
  sw $t0, 0($t1)
  lw $t0, -4672($s8)
  lw $t1, 0($t0)
  sw $t1, -4696($s8)
  lw $t0, -4696($s8)
  move $t1, $t0
  sw $t1, -4700($s8)
  la $t0, -4612($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4704($s8)
  la $t0, -4416($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4708($s8)
  lw $t0, -4708($s8)
  lw $t1, 0($t0)
  sw $t1, -4712($s8)
  lw $t0, -4712($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4716($s8)
  la $t0, -4($s8)
  lw $t1, -4716($s8)
  add $t2, $t0, $t1
  sw $t2, -4720($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4724($s8)
  la $t0, -4420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4728($s8)
  lw $t0, -4728($s8)
  lw $t1, 0($t0)
  sw $t1, -4732($s8)
  lw $t0, -4732($s8)
  lw $t1, -4724($s8)
  sw $t0, 0($t1)
  lw $t0, -4724($s8)
  lw $t1, 0($t0)
  sw $t1, -4736($s8)
  lw $t0, -4736($s8)
  move $t1, $t0
  sw $t1, -4740($s8)
  lw $t0, -4740($s8)
  lw $t1, -4720($s8)
  sw $t0, 0($t1)
  lw $t0, -4720($s8)
  lw $t1, 0($t0)
  sw $t1, -4744($s8)
  lw $t0, -4744($s8)
  move $t1, $t0
  sw $t1, -4748($s8)
  lw $t0, -4748($s8)
  lw $t1, -4704($s8)
  sw $t0, 0($t1)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4752($s8)
  lw $t0, -4752($s8)
  lw $t1, 0($t0)
  sw $t1, -4756($s8)
  lw $t0, -4756($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4760($s8)
  la $t0, -4($s8)
  lw $t1, -4760($s8)
  add $t2, $t0, $t1
  sw $t2, -4764($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4768($s8)
  la $t0, -4420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4772($s8)
  lw $t0, -4772($s8)
  lw $t1, 0($t0)
  sw $t1, -4776($s8)
  la $t0, -4612($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4780($s8)
  lw $t0, -4780($s8)
  lw $t1, 0($t0)
  sw $t1, -4784($s8)
  lw $t0, -4776($s8)
  lw $t1, -4784($s8)
  ble $t0, $t1, label248
  j label249
label248:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4768($s8)
label249:
  lw $t0, -4768($s8)
  lw $t1, -4764($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4788($s8)
  lw $t0, -4788($s8)
  lw $t1, 0($t0)
  sw $t1, -4792($s8)
  lw $t0, -4792($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4796($s8)
  la $t0, -4($s8)
  lw $t1, -4796($s8)
  add $t2, $t0, $t1
  sw $t2, -4800($s8)
  la $t0, -4420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4804($s8)
  lw $t0, -4804($s8)
  lw $t1, 0($t0)
  sw $t1, -4808($s8)
  la $t0, -4416($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4812($s8)
  lw $t0, -4812($s8)
  lw $t1, 0($t0)
  sw $t1, -4816($s8)
  la $t0, -4612($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4820($s8)
  lw $t0, -4820($s8)
  lw $t1, 0($t0)
  sw $t1, -4824($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 973974376
  sw $t1, 4($sp)
  lw $t2, 28($s8)
  sw $t2, 8($sp)
  lw $t3, -4824($s8)
  sw $t3, 12($sp)
  lw $t4, -4816($s8)
  sw $t4, 16($sp)
  lw $t5, -4808($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4828($s8)
  lw $t0, -4828($s8)
  lw $t1, -4800($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4832($s8)
  lw $t0, -4832($s8)
  lw $t1, 0($t0)
  sw $t1, -4836($s8)
  lw $t0, -4836($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4840($s8)
  la $t0, -4($s8)
  lw $t1, -4840($s8)
  add $t2, $t0, $t1
  sw $t2, -4844($s8)
  la $t0, -4416($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4848($s8)
  lw $t0, -4848($s8)
  lw $t1, 0($t0)
  sw $t1, -4852($s8)
  la $t0, -4420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4856($s8)
  lw $t0, -4856($s8)
  lw $t1, 0($t0)
  sw $t1, -4860($s8)
  la $t0, -4612($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4864($s8)
  lw $t0, -4864($s8)
  lw $t1, 0($t0)
  sw $t1, -4868($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  lw $t2, 28($s8)
  sw $t2, 8($sp)
  lw $t3, -4868($s8)
  sw $t3, 12($sp)
  lw $t4, -4860($s8)
  sw $t4, 16($sp)
  lw $t5, -4852($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4872($s8)
  lw $t0, -4872($s8)
  lw $t1, -4844($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4876($s8)
  lw $t0, -4876($s8)
  lw $t1, 0($t0)
  sw $t1, -4880($s8)
  lw $t0, -4880($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4884($s8)
  la $t0, -4416($s8)
  lw $t1, -4884($s8)
  add $t2, $t0, $t1
  sw $t2, -4888($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4892($s8)
  li $t0, 851072134
  move $t1, $t0
  sw $t1, -4896($s8)
  lw $t0, -4896($s8)
  lw $t1, -4892($s8)
  sw $t0, 0($t1)
  lw $t0, -4892($s8)
  lw $t1, 0($t0)
  sw $t1, -4900($s8)
  lw $t0, -4900($s8)
  move $t1, $t0
  sw $t1, -4904($s8)
  lw $t0, -4904($s8)
  lw $t1, -4888($s8)
  sw $t0, 0($t1)
  la $t0, -4416($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4908($s8)
  lw $t0, -4908($s8)
  lw $t1, 0($t0)
  sw $t1, -4912($s8)
  lw $t0, -4912($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4916($s8)
  la $t0, -4($s8)
  lw $t1, -4916($s8)
  add $t2, $t0, $t1
  sw $t2, -4920($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4924($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4928($s8)
  lw $t0, -4928($s8)
  lw $t1, 0($t0)
  sw $t1, -4932($s8)
  lw $t0, -4932($s8)
  li $t1, 0
  bne $t0, $t1, label251
  j label250
label250:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4924($s8)
label251:
  lw $t0, -4924($s8)
  lw $t1, -4920($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4936($s8)
  lw $t0, -4936($s8)
  lw $t1, 0($t0)
  sw $t1, -4940($s8)
  lw $t0, -4940($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4944($s8)
  la $t0, -4416($s8)
  lw $t1, -4944($s8)
  add $t2, $t0, $t1
  sw $t2, -4948($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4952($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4956($s8)
  lw $t0, -4956($s8)
  lw $t1, 0($t0)
  sw $t1, -4960($s8)
  lw $t0, -4960($s8)
  li $t1, 0
  bne $t0, $t1, label252
  la $t0, -4420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4964($s8)
  lw $t0, -4964($s8)
  lw $t1, 0($t0)
  sw $t1, -4968($s8)
  lw $t0, -4968($s8)
  li $t1, 0
  bne $t0, $t1, label252
  j label253
label252:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4952($s8)
label253:
  lw $t0, -4952($s8)
  lw $t1, -4948($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4972($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4976($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4980($s8)
  lw $t0, -4980($s8)
  lw $t1, 0($t0)
  sw $t1, -4984($s8)
  lw $t0, -4984($s8)
  li $t1, 0
  bne $t0, $t1, label254
  la $t0, -4420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4988($s8)
  lw $t0, -4988($s8)
  lw $t1, 0($t0)
  sw $t1, -4992($s8)
  lw $t0, -4992($s8)
  li $t1, 0
  bne $t0, $t1, label254
  j label255
label254:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4976($s8)
label255:
  lw $t0, -4976($s8)
  lw $t1, -4972($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4996($s8)
  lw $t0, -4996($s8)
  lw $t1, 0($t0)
  sw $t1, -5000($s8)
  lw $t0, -5000($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -5004($s8)
  la $t0, -4416($s8)
  lw $t1, -5004($s8)
  add $t2, $t0, $t1
  sw $t2, -5008($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5012($s8)
  lw $t0, -5012($s8)
  lw $t1, 0($t0)
  sw $t1, -5016($s8)
  la $t0, -4420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5020($s8)
  lw $t0, -5020($s8)
  lw $t1, 0($t0)
  sw $t1, -5024($s8)
  la $t0, -4612($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5028($s8)
  lw $t0, -5028($s8)
  lw $t1, 0($t0)
  sw $t1, -5032($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -491708851
  sw $t1, 4($sp)
  lw $t2, -5032($s8)
  sw $t2, 8($sp)
  li $t3, 874906303
  sw $t3, 12($sp)
  lw $t4, -5024($s8)
  sw $t4, 16($sp)
  lw $t5, -5016($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5036($s8)
  lw $t0, -5036($s8)
  lw $t1, -5008($s8)
  sw $t0, 0($t1)
  lw $t0, -4656($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -4700($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label247
label246:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -5044($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5052($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5056($s8)
  lw $t0, -5056($s8)
  lw $t1, 0($t0)
  sw $t1, -5060($s8)
  lw $t0, -5060($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -5064($s8)
  la $t0, -4416($s8)
  lw $t1, -5064($s8)
  add $t2, $t0, $t1
  sw $t2, -5068($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5072($s8)
  lw $t0, -5072($s8)
  lw $t1, 0($t0)
  sw $t1, -5076($s8)
  la $t0, -4420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5080($s8)
  lw $t0, -5080($s8)
  lw $t1, 0($t0)
  sw $t1, -5084($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -1762924553
  sw $t1, 4($sp)
  lw $t2, 24($s8)
  sw $t2, 8($sp)
  lw $t3, 28($s8)
  sw $t3, 12($sp)
  lw $t4, -5084($s8)
  sw $t4, 16($sp)
  lw $t5, -5076($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5088($s8)
  lw $t0, -5088($s8)
  lw $t1, -5068($s8)
  sw $t0, 0($t1)
  lw $t0, -5068($s8)
  lw $t1, 0($t0)
  sw $t1, -5092($s8)
  lw $t0, -5092($s8)
  move $t1, $t0
  sw $t1, -5096($s8)
  lw $t0, -5096($s8)
  lw $t1, -5052($s8)
  sw $t0, 0($t1)
  la $t0, -5044($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5100($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5104($s8)
  lw $t0, -5104($s8)
  lw $t1, 0($t0)
  sw $t1, -5108($s8)
  lw $t0, -5108($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -5112($s8)
  la $t0, -4416($s8)
  lw $t1, -5112($s8)
  add $t2, $t0, $t1
  sw $t2, -5116($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -5120($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5124($s8)
  lw $t0, -5124($s8)
  lw $t1, 0($t0)
  sw $t1, -5128($s8)
  la $t0, -4420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5132($s8)
  lw $t0, -5132($s8)
  lw $t1, 0($t0)
  sw $t1, -5136($s8)
  lw $t0, -5128($s8)
  lw $t1, -5136($s8)
  ble $t0, $t1, label256
  j label257
label256:
  li $t0, 1
  move $t1, $t0
  sw $t1, -5120($s8)
label257:
  lw $t0, -5120($s8)
  lw $t1, -5116($s8)
  sw $t0, 0($t1)
  lw $t0, -5116($s8)
  lw $t1, 0($t0)
  sw $t1, -5140($s8)
  lw $t0, -5140($s8)
  move $t1, $t0
  sw $t1, -5144($s8)
  lw $t0, -5144($s8)
  lw $t1, -5100($s8)
  sw $t0, 0($t1)
  la $t0, -5048($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5148($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5152($s8)
  lw $t0, -5152($s8)
  lw $t1, 0($t0)
  sw $t1, -5156($s8)
  lw $t0, -5156($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -5160($s8)
  la $t0, -4416($s8)
  lw $t1, -5160($s8)
  add $t2, $t0, $t1
  sw $t2, -5164($s8)
  li $t0, 1448612667
  move $t1, $t0
  sw $t1, -5168($s8)
  lw $t0, -5168($s8)
  lw $t1, -5164($s8)
  sw $t0, 0($t1)
  lw $t0, -5164($s8)
  lw $t1, 0($t0)
  sw $t1, -5172($s8)
  lw $t0, -5172($s8)
  move $t1, $t0
  sw $t1, -5176($s8)
  lw $t0, -5176($s8)
  lw $t1, -5148($s8)
  sw $t0, 0($t1)
  la $t0, -4416($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5180($s8)
  lw $t0, -5180($s8)
  lw $t1, 0($t0)
  sw $t1, -5184($s8)
  lw $t0, -5184($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -5188($s8)
  la $t0, -4($s8)
  lw $t1, -5188($s8)
  add $t2, $t0, $t1
  sw $t2, -5192($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -5196($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5200($s8)
  lw $t0, -5200($s8)
  lw $t1, 0($t0)
  sw $t1, -5204($s8)
  lw $t0, -5204($s8)
  li $t1, 0
  bne $t0, $t1, label258
  la $t0, -5044($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5208($s8)
  lw $t0, -5208($s8)
  lw $t1, 0($t0)
  sw $t1, -5212($s8)
  lw $t0, -5212($s8)
  li $t1, 0
  bne $t0, $t1, label258
  j label259
label258:
  li $t0, 1
  move $t1, $t0
  sw $t1, -5196($s8)
label259:
  lw $t0, -5196($s8)
  lw $t1, -5192($s8)
  sw $t0, 0($t1)
  lw $t0, -5192($s8)
  lw $t1, 0($t0)
  sw $t1, -5216($s8)
  lw $t0, -5216($s8)
  move $t1, $t0
  sw $t1, -5220($s8)
  li $t0, -1510605251
  move $t1, $t0
  sw $t1, -5224($s8)
  li $t0, 377225921
  move $t1, $t0
  sw $t1, -5228($s8)
  li $t0, 689322850
  move $t1, $t0
  sw $t1, -5232($s8)
  li $t0, -470125359
  move $t1, $t0
  sw $t1, -5236($s8)
  li $t0, -348375089
  move $t1, $t0
  sw $t1, -5240($s8)
  li $t0, 1097893828
  move $t1, $t0
  sw $t1, -5244($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5248($s8)
  lw $t0, -5248($s8)
  lw $t1, 0($t0)
  sw $t1, -5252($s8)
  lw $t0, -5252($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -5256($s8)
  la $t0, -4($s8)
  lw $t1, -5256($s8)
  add $t2, $t0, $t1
  sw $t2, -5260($s8)
  la $t0, -4420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5264($s8)
  lw $t0, -5264($s8)
  lw $t1, 0($t0)
  sw $t1, -5268($s8)
  la $t0, -5048($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5272($s8)
  lw $t0, -5272($s8)
  lw $t1, 0($t0)
  sw $t1, -5276($s8)
  la $t0, -4416($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5280($s8)
  lw $t0, -5280($s8)
  lw $t1, 0($t0)
  sw $t1, -5284($s8)
  la $t0, -5044($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5288($s8)
  lw $t0, -5288($s8)
  lw $t1, 0($t0)
  sw $t1, -5292($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 28($s8)
  sw $t1, 4($sp)
  lw $t2, -5292($s8)
  sw $t2, 8($sp)
  lw $t3, -5284($s8)
  sw $t3, 12($sp)
  lw $t4, -5276($s8)
  sw $t4, 16($sp)
  lw $t5, -5268($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5296($s8)
  lw $t0, -5296($s8)
  lw $t1, -5260($s8)
  sw $t0, 0($t1)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5300($s8)
  lw $t0, -5300($s8)
  lw $t1, 0($t0)
  sw $t1, -5304($s8)
  lw $t0, -5304($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -5308($s8)
  la $t0, -4($s8)
  lw $t1, -5308($s8)
  add $t2, $t0, $t1
  sw $t2, -5312($s8)
  la $t0, -4420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5316($s8)
  lw $t0, -5316($s8)
  lw $t1, 0($t0)
  sw $t1, -5320($s8)
  lw $t0, -5320($s8)
  lw $t1, -5312($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5324($s8)
  lw $t0, -5324($s8)
  lw $t1, 0($t0)
  sw $t1, -5328($s8)
  la $t0, -4416($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5332($s8)
  lw $t0, -5332($s8)
  lw $t1, 0($t0)
  sw $t1, -5336($s8)
  lw $t0, -5328($s8)
  lw $t1, -5336($s8)
  mul $t2, $t0, $t1
  sw $t2, -5340($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -5344($s8)
  la $t0, -5044($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5348($s8)
  lw $t0, -5348($s8)
  lw $t1, 0($t0)
  sw $t1, -5352($s8)
  lw $t0, -5352($s8)
  li $t1, -1017502202
  ble $t0, $t1, label260
  j label261
label260:
  li $t0, 1
  move $t1, $t0
  sw $t1, -5344($s8)
label261:
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5356($s8)
  lw $t0, -5356($s8)
  lw $t1, 0($t0)
  sw $t1, -5360($s8)
  la $t0, -4420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5364($s8)
  lw $t0, -5364($s8)
  lw $t1, 0($t0)
  sw $t1, -5368($s8)
  lw $t0, -5360($s8)
  lw $t1, -5368($s8)
  mul $t2, $t0, $t1
  sw $t2, -5372($s8)
  la $t0, -5048($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5376($s8)
  lw $t0, -5376($s8)
  lw $t1, 0($t0)
  sw $t1, -5380($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, 24($s8)
  sw $t2, 8($sp)
  lw $t3, 28($s8)
  sw $t3, 12($sp)
  lw $t4, -5380($s8)
  sw $t4, 16($sp)
  li $t5, 550565576
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5384($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, 16($s8)
  lw $t0, 16($s8)
  move $t1, $t0
  sw $t1, -5388($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -5388($s8)
  sw $t1, 4($sp)
  lw $t2, -5384($s8)
  sw $t2, 8($sp)
  lw $t3, -5372($s8)
  sw $t3, 12($sp)
  lw $t4, -5344($s8)
  sw $t4, 16($sp)
  lw $t5, -5340($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5392($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5396($s8)
  lw $t0, -5396($s8)
  lw $t1, 0($t0)
  sw $t1, -5400($s8)
  lw $t0, -5400($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -5404($s8)
  la $t0, -4($s8)
  lw $t1, -5404($s8)
  add $t2, $t0, $t1
  sw $t2, -5408($s8)
  la $t0, -4420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5412($s8)
  lw $t0, -5412($s8)
  lw $t1, 0($t0)
  sw $t1, -5416($s8)
  la $t0, -4416($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5420($s8)
  lw $t0, -5420($s8)
  lw $t1, 0($t0)
  sw $t1, -5424($s8)
  la $t0, -5048($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5428($s8)
  lw $t0, -5428($s8)
  lw $t1, 0($t0)
  sw $t1, -5432($s8)
  la $t0, -5044($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5436($s8)
  lw $t0, -5436($s8)
  lw $t1, 0($t0)
  sw $t1, -5440($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 28($s8)
  sw $t1, 4($sp)
  lw $t2, -5440($s8)
  sw $t2, 8($sp)
  lw $t3, -5432($s8)
  sw $t3, 12($sp)
  lw $t4, -5424($s8)
  sw $t4, 16($sp)
  lw $t5, -5416($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5444($s8)
  lw $t0, -5444($s8)
  lw $t1, -5408($s8)
  sw $t0, 0($t1)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5448($s8)
  lw $t0, -5448($s8)
  lw $t1, 0($t0)
  sw $t1, -5452($s8)
  lw $t0, -5452($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -5456($s8)
  la $t0, -4($s8)
  lw $t1, -5456($s8)
  add $t2, $t0, $t1
  sw $t2, -5460($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -5464($s8)
  la $t0, -4420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5468($s8)
  lw $t0, -5468($s8)
  lw $t1, 0($t0)
  sw $t1, -5472($s8)
  la $t0, -4416($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5476($s8)
  lw $t0, -5476($s8)
  lw $t1, 0($t0)
  sw $t1, -5480($s8)
  lw $t0, -5472($s8)
  lw $t1, -5480($s8)
  bge $t0, $t1, label262
  j label263
label262:
  li $t0, 1
  move $t1, $t0
  sw $t1, -5464($s8)
label263:
  lw $t0, -5464($s8)
  lw $t1, -5460($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 6
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5484($s8)
  lw $t0, -5484($s8)
  lw $t1, 0($t0)
  sw $t1, -5488($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5492($s8)
  lw $t0, -5492($s8)
  lw $t1, 0($t0)
  sw $t1, -5496($s8)
  la $t0, -4420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5500($s8)
  lw $t0, -5500($s8)
  lw $t1, 0($t0)
  sw $t1, -5504($s8)
  la $t0, -5048($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5508($s8)
  lw $t0, -5508($s8)
  lw $t1, 0($t0)
  sw $t1, -5512($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -5512($s8)
  sw $t1, 4($sp)
  li $t2, -1480570689
  sw $t2, 8($sp)
  lw $t3, -5504($s8)
  sw $t3, 12($sp)
  lw $t4, -5496($s8)
  sw $t4, 16($sp)
  lw $t5, -5488($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5516($s8)
  la $t0, -4416($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5520($s8)
  lw $t0, -5520($s8)
  lw $t1, 0($t0)
  sw $t1, -5524($s8)
  la $t0, -5044($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5528($s8)
  lw $t0, -5528($s8)
  lw $t1, 0($t0)
  sw $t1, -5532($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  lw $t2, 28($s8)
  sw $t2, 8($sp)
  li $t3, -36188694
  sw $t3, 12($sp)
  lw $t4, -5532($s8)
  sw $t4, 16($sp)
  lw $t5, -5524($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5536($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -36($s8)
  sw $t1, 4($sp)
  lw $t2, -20($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  lw $t4, 16($s8)
  sw $t4, 16($sp)
  lw $t5, 20($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5540($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 700242923
  sw $t1, 4($sp)
  lw $t2, -5228($s8)
  sw $t2, 8($sp)
  lw $t3, -5224($s8)
  sw $t3, 12($sp)
  lw $t4, -5220($s8)
  sw $t4, 16($sp)
  lw $t5, -4444($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5544($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -5244($s8)
  sw $t1, 4($sp)
  lw $t2, -5240($s8)
  sw $t2, 8($sp)
  li $t3, -636102880
  sw $t3, 12($sp)
  lw $t4, -5236($s8)
  sw $t4, 16($sp)
  lw $t5, -5232($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5548($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -5548($s8)
  sw $t1, 4($sp)
  lw $t2, -5544($s8)
  sw $t2, 8($sp)
  lw $t3, -5540($s8)
  sw $t3, 12($sp)
  lw $t4, -5536($s8)
  sw $t4, 16($sp)
  lw $t5, -5516($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5552($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5556($s8)
  lw $t0, -5556($s8)
  lw $t1, 0($t0)
  sw $t1, -5560($s8)
  lw $t0, -5560($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -5564($s8)
  la $t0, -4($s8)
  lw $t1, -5564($s8)
  add $t2, $t0, $t1
  sw $t2, -5568($s8)
  la $t0, -4420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5572($s8)
  lw $t0, -5572($s8)
  lw $t1, 0($t0)
  sw $t1, -5576($s8)
  la $t0, -5048($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5580($s8)
  lw $t0, -5580($s8)
  lw $t1, 0($t0)
  sw $t1, -5584($s8)
  la $t0, -4416($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5588($s8)
  lw $t0, -5588($s8)
  lw $t1, 0($t0)
  sw $t1, -5592($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -5592($s8)
  sw $t1, 4($sp)
  li $t2, 177889318
  sw $t2, 8($sp)
  li $t3, -1915401174
  sw $t3, 12($sp)
  lw $t4, -5584($s8)
  sw $t4, 16($sp)
  lw $t5, -5576($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5596($s8)
  lw $t0, -5596($s8)
  lw $t1, -5568($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5600($s8)
  lw $t0, -5600($s8)
  lw $t1, 0($t0)
  sw $t1, -5604($s8)
  lw $t0, -5604($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -5608($s8)
  la $t0, -4($s8)
  lw $t1, -5608($s8)
  add $t2, $t0, $t1
  sw $t2, -5612($s8)
  la $t0, -4420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5616($s8)
  lw $t0, -5616($s8)
  lw $t1, 0($t0)
  sw $t1, -5620($s8)
  la $t0, -4416($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5624($s8)
  lw $t0, -5624($s8)
  lw $t1, 0($t0)
  sw $t1, -5628($s8)
  la $t0, -5048($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5632($s8)
  lw $t0, -5632($s8)
  lw $t1, 0($t0)
  sw $t1, -5636($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -5636($s8)
  sw $t1, 4($sp)
  li $t2, -1790906561
  sw $t2, 8($sp)
  li $t3, -283100832
  sw $t3, 12($sp)
  lw $t4, -5628($s8)
  sw $t4, 16($sp)
  lw $t5, -5620($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5640($s8)
  lw $t0, -5640($s8)
  lw $t1, -5612($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5644($s8)
  lw $t0, -5644($s8)
  lw $t1, 0($t0)
  sw $t1, -5648($s8)
  lw $t0, -5648($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -5652($s8)
  la $t0, -4416($s8)
  lw $t1, -5652($s8)
  add $t2, $t0, $t1
  sw $t2, -5656($s8)
  la $t0, -5044($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5660($s8)
  lw $t0, -5660($s8)
  lw $t1, 0($t0)
  sw $t1, -5664($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5668($s8)
  lw $t0, -5668($s8)
  lw $t1, 0($t0)
  sw $t1, -5672($s8)
  la $t0, -4420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5676($s8)
  lw $t0, -5676($s8)
  lw $t1, 0($t0)
  sw $t1, -5680($s8)
  la $t0, -5048($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5684($s8)
  lw $t0, -5684($s8)
  lw $t1, 0($t0)
  sw $t1, -5688($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 28($s8)
  sw $t1, 4($sp)
  lw $t2, -5688($s8)
  sw $t2, 8($sp)
  lw $t3, -5680($s8)
  sw $t3, 12($sp)
  lw $t4, -5672($s8)
  sw $t4, 16($sp)
  lw $t5, -5664($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5692($s8)
  lw $t0, -5692($s8)
  lw $t1, -5656($s8)
  sw $t0, 0($t1)
  lw $t0, -5220($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -5224($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -5228($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -5232($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -5236($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -5240($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -5244($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
label247:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5696($s8)
  lw $t0, -5696($s8)
  lw $t1, 0($t0)
  sw $t1, -5700($s8)
  lw $t0, -5700($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -5704($s8)
  la $t0, -4416($s8)
  lw $t1, -5704($s8)
  add $t2, $t0, $t1
  sw $t2, -5708($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5712($s8)
  lw $t0, -5712($s8)
  lw $t1, 0($t0)
  sw $t1, -5716($s8)
  la $t0, -4420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5720($s8)
  lw $t0, -5720($s8)
  lw $t1, 0($t0)
  sw $t1, -5724($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, 24($s8)
  sw $t2, 8($sp)
  lw $t3, 28($s8)
  sw $t3, 12($sp)
  lw $t4, -5724($s8)
  sw $t4, 16($sp)
  lw $t5, -5716($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5728($s8)
  lw $t0, -5728($s8)
  lw $t1, -5708($s8)
  sw $t0, 0($t1)
  la $t0, -4416($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5732($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5736($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5740($s8)
  lw $t0, -5740($s8)
  lw $t1, 0($t0)
  sw $t1, -5744($s8)
  lw $t0, -5744($s8)
  lw $t1, -5736($s8)
  sw $t0, 0($t1)
  lw $t0, -5736($s8)
  lw $t1, 0($t0)
  sw $t1, -5748($s8)
  lw $t0, -5748($s8)
  move $t1, $t0
  sw $t1, -5752($s8)
  lw $t0, -5752($s8)
  lw $t1, -5732($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4416($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5756($s8)
  lw $t0, -5756($s8)
  lw $t1, 0($t0)
  sw $t1, -5760($s8)
  lw $t0, -5760($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -5764($s8)
  la $t0, -4($s8)
  lw $t1, -5764($s8)
  add $t2, $t0, $t1
  sw $t2, -5768($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5772($s8)
  lw $t0, -5772($s8)
  lw $t1, 0($t0)
  sw $t1, -5776($s8)
  la $t0, -4420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5780($s8)
  lw $t0, -5780($s8)
  lw $t1, 0($t0)
  sw $t1, -5784($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 28($s8)
  sw $t1, 4($sp)
  li $t2, -462504289
  sw $t2, 8($sp)
  lw $t3, -5784($s8)
  sw $t3, 12($sp)
  li $t4, 840089298
  sw $t4, 16($sp)
  lw $t5, -5776($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5788($s8)
  lw $t0, -5788($s8)
  lw $t1, -5768($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5792($s8)
  lw $t0, -5792($s8)
  lw $t1, 0($t0)
  sw $t1, -5796($s8)
  lw $t0, -5796($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -5800($s8)
  la $t0, -4416($s8)
  lw $t1, -5800($s8)
  add $t2, $t0, $t1
  sw $t2, -5804($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5808($s8)
  lw $t0, -5808($s8)
  lw $t1, 0($t0)
  sw $t1, -5812($s8)
  la $t0, -4420($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5816($s8)
  lw $t0, -5816($s8)
  lw $t1, 0($t0)
  sw $t1, -5820($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  lw $t2, 28($s8)
  sw $t2, 8($sp)
  li $t3, 709032888
  sw $t3, 12($sp)
  lw $t4, -5820($s8)
  sw $t4, 16($sp)
  lw $t5, -5812($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5824($s8)
  lw $t0, -5824($s8)
  lw $t1, -5804($s8)
  sw $t0, 0($t1)
  lw $t0, -4444($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
label213:
  lw $t0, -20($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -36($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5828($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  lw $t4, 24($s8)
  sw $t4, 16($sp)
  lw $t5, 28($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5832($s8)
  lw $t0, -5832($s8)
  lw $t1, -5828($s8)
  sw $t0, 0($t1)
  lw $t0, -5828($s8)
  lw $t1, 0($t0)
  sw $t1, -5836($s8)
  lw $t0, -5836($s8)
  move $t1, $t0
  sw $t1, -5840($s8)
  lw $t0, -5840($s8)
  move $v0, $t0
  move $sp, $s8
  lw $s8, 0($sp)
  addi $sp, $sp, 4
  jr $ra

i_func_150:
  addi $sp, $sp, -4
  sw $s8, 0($sp)
  move $s8, $sp
  addi $sp, $sp, -4096
  lw $t0, 8($s8)
  li $t1, 0
  bgt $t0, $t1, label264
  li $t0, -1854901366
  move $v0, $t0
  move $sp, $s8
  lw $s8, 0($sp)
  addi $sp, $sp, 4
  jr $ra
  j label265
label264:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label265:
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -16($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -20($s8)
  lw $t0, 16($s8)
  lw $t1, 12($s8)
  blt $t0, $t1, label266
  j label267
label266:
  li $t0, 1
  move $t1, $t0
  sw $t1, -20($s8)
label267:
  lw $t0, -20($s8)
  move $t1, $t0
  sw $t1, 20($s8)
  lw $t0, 20($s8)
  move $t1, $t0
  sw $t1, -24($s8)
  lw $t0, -24($s8)
  lw $t1, -16($s8)
  sw $t0, 0($t1)
  li $t0, -521715655
  move $t1, $t0
  sw $t1, -28($s8)
  li $t0, 1960426678
  move $t1, $t0
  sw $t1, -32($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -36($s8)
  lw $t0, 20($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -40($s8)
  la $t0, -4($s8)
  lw $t1, -40($s8)
  add $t2, $t0, $t1
  sw $t2, -44($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -48($s8)
  lw $t0, 16($s8)
  li $t1, 0
  bne $t0, $t1, label268
  li $t0, 826277764
  li $t1, 0
  bne $t0, $t1, label268
  j label269
label268:
  li $t0, 1
  move $t1, $t0
  sw $t1, -48($s8)
label269:
  lw $t0, -48($s8)
  lw $t1, -44($s8)
  sw $t0, 0($t1)
  lw $t0, -44($s8)
  lw $t1, 0($t0)
  sw $t1, -52($s8)
  lw $t0, -52($s8)
  move $t1, $t0
  sw $t1, -56($s8)
  lw $t0, -56($s8)
  lw $t1, -36($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -60($s8)
  lw $t0, 20($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -64($s8)
  la $t0, -4($s8)
  lw $t1, -64($s8)
  add $t2, $t0, $t1
  sw $t2, -68($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -32($s8)
  sw $t1, 4($sp)
  lw $t2, -28($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  lw $t4, 16($s8)
  sw $t4, 16($sp)
  li $t5, 341650310
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -72($s8)
  lw $t0, -72($s8)
  lw $t1, -68($s8)
  sw $t0, 0($t1)
  lw $t0, -68($s8)
  lw $t1, 0($t0)
  sw $t1, -76($s8)
  lw $t0, -76($s8)
  move $t1, $t0
  sw $t1, -80($s8)
  lw $t0, -80($s8)
  lw $t1, -60($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -84($s8)
  lw $t0, -84($s8)
  lw $t1, 0($t0)
  sw $t1, -88($s8)
  lw $t0, -88($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -92($s8)
  la $t0, -4($s8)
  lw $t1, -92($s8)
  add $t2, $t0, $t1
  sw $t2, -96($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -100($s8)
  lw $t0, 20($s8)
  li $t1, 0
  bne $t0, $t1, label271
  j label270
label270:
  li $t0, 1
  move $t1, $t0
  sw $t1, -100($s8)
label271:
  lw $t0, -100($s8)
  lw $t1, -96($s8)
  sw $t0, 0($t1)
  lw $t0, -96($s8)
  lw $t1, 0($t0)
  sw $t1, -104($s8)
  lw $t0, -104($s8)
  move $t1, $t0
  sw $t1, -108($s8)
  li $t0, 767700875
  move $t1, $t0
  sw $t1, -112($s8)
  li $t0, -949606969
  move $t1, $t0
  sw $t1, -116($s8)
  li $t0, 1011190944
  move $t1, $t0
  sw $t1, -120($s8)
  li $t0, 583416231
  move $t1, $t0
  sw $t1, -124($s8)
  li $t0, 1195873176
  move $t1, $t0
  sw $t1, -128($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -132($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -136($s8)
  lw $t0, 8($s8)
  li $t1, 4
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -140($s8)
  lw $t0, -140($s8)
  lw $t1, 0($t0)
  sw $t1, -144($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -148($s8)
  lw $t0, -148($s8)
  lw $t1, 0($t0)
  sw $t1, -152($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, -152($s8)
  sw $t2, 8($sp)
  lw $t3, -144($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -156($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -28($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, 16($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -160($s8)
  lw $t0, -32($s8)
  lw $t1, -108($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -164($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -120($s8)
  sw $t1, 4($sp)
  lw $t2, -116($s8)
  sw $t2, 8($sp)
  lw $t3, -112($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -168($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -172($s8)
  lw $t0, -124($s8)
  lw $t1, -128($s8)
  bne $t0, $t1, label272
  j label273
label272:
  li $t0, 1
  move $t1, $t0
  sw $t1, -172($s8)
label273:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -172($s8)
  sw $t1, 4($sp)
  lw $t2, -168($s8)
  sw $t2, 8($sp)
  lw $t3, -164($s8)
  sw $t3, 12($sp)
  lw $t4, -160($s8)
  sw $t4, 16($sp)
  lw $t5, -156($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -176($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -180($s8)
  lw $t0, -180($s8)
  lw $t1, 0($t0)
  sw $t1, -184($s8)
  lw $t0, -184($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -188($s8)
  la $t0, -4($s8)
  lw $t1, -188($s8)
  add $t2, $t0, $t1
  sw $t2, -192($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -28($s8)
  sw $t1, 4($sp)
  li $t2, -310445055
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  lw $t4, 16($s8)
  sw $t4, 16($sp)
  lw $t5, 20($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -196($s8)
  lw $t0, -196($s8)
  lw $t1, -192($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 4
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -200($s8)
  lw $t0, -200($s8)
  lw $t1, 0($t0)
  sw $t1, -204($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -208($s8)
  lw $t0, -208($s8)
  lw $t1, 0($t0)
  sw $t1, -212($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  lw $t4, -212($s8)
  sw $t4, 16($sp)
  lw $t5, -204($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -216($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -112($s8)
  sw $t1, 4($sp)
  li $t2, -1010852357
  sw $t2, 8($sp)
  lw $t3, -108($s8)
  sw $t3, 12($sp)
  lw $t4, -32($s8)
  sw $t4, 16($sp)
  lw $t5, -28($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -220($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -124($s8)
  sw $t1, 4($sp)
  lw $t2, -120($s8)
  sw $t2, 8($sp)
  lw $t3, -116($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -224($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -224($s8)
  sw $t1, 4($sp)
  lw $t2, -220($s8)
  sw $t2, 8($sp)
  lw $t3, -216($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -228($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -232($s8)
  lw $t0, -232($s8)
  lw $t1, 0($t0)
  sw $t1, -236($s8)
  lw $t0, -236($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -240($s8)
  la $t0, -4($s8)
  lw $t1, -240($s8)
  add $t2, $t0, $t1
  sw $t2, -244($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -248($s8)
  li $t0, 219322121
  li $t1, 0
  bne $t0, $t1, label275
  j label274
label274:
  li $t0, 1
  move $t1, $t0
  sw $t1, -248($s8)
label275:
  lw $t0, -248($s8)
  lw $t1, -244($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label276:
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -252($s8)
  lw $t0, -252($s8)
  lw $t1, 0($t0)
  sw $t1, -256($s8)
  lw $t0, -256($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -260($s8)
  la $t0, -4($s8)
  lw $t1, -260($s8)
  add $t2, $t0, $t1
  sw $t2, -264($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -32($s8)
  sw $t1, 4($sp)
  lw $t2, -28($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  lw $t4, 16($s8)
  sw $t4, 16($sp)
  lw $t5, 20($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -268($s8)
  lw $t0, -268($s8)
  lw $t1, -264($s8)
  sw $t0, 0($t1)
  lw $t0, -264($s8)
  lw $t1, 0($t0)
  sw $t1, -272($s8)
  lw $t0, -272($s8)
  move $t1, $t0
  sw $t1, -276($s8)
  lw $t0, -276($s8)
  li $t1, 0
  beq $t0, $t1, label277
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -288($s8)
  lw $t0, -288($s8)
  lw $t1, 0($t0)
  sw $t1, -292($s8)
  lw $t0, -292($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -296($s8)
  la $t0, -12($s8)
  lw $t1, -296($s8)
  add $t2, $t0, $t1
  sw $t2, -300($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -304($s8)
  lw $t0, -304($s8)
  lw $t1, -300($s8)
  sw $t0, 0($t1)
  lw $t0, -300($s8)
  lw $t1, 0($t0)
  sw $t1, -308($s8)
  lw $t0, -308($s8)
  move $t1, $t0
  sw $t1, -312($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -316($s8)
  lw $t0, -316($s8)
  lw $t1, 0($t0)
  sw $t1, -320($s8)
  lw $t0, -320($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -324($s8)
  la $t0, -12($s8)
  lw $t1, -324($s8)
  add $t2, $t0, $t1
  sw $t2, -328($s8)
  lw $t0, 20($s8)
  li $t1, 2082068491
  div $t0, $t1
  mflo $t2
  sw $t2, -332($s8)
  lw $t0, -332($s8)
  lw $t1, -328($s8)
  sw $t0, 0($t1)
  lw $t0, -328($s8)
  lw $t1, 0($t0)
  sw $t1, -336($s8)
  lw $t0, -336($s8)
  move $t1, $t0
  sw $t1, -340($s8)
  la $t0, -284($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -344($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -348($s8)
  lw $t0, -348($s8)
  lw $t1, 0($t0)
  sw $t1, -352($s8)
  lw $t0, -352($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -356($s8)
  la $t0, -12($s8)
  lw $t1, -356($s8)
  add $t2, $t0, $t1
  sw $t2, -360($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -364($s8)
  lw $t0, 20($s8)
  lw $t1, 16($s8)
  ble $t0, $t1, label278
  j label279
label278:
  li $t0, 1
  move $t1, $t0
  sw $t1, -364($s8)
label279:
  lw $t0, -364($s8)
  lw $t1, -360($s8)
  sw $t0, 0($t1)
  lw $t0, -360($s8)
  lw $t1, 0($t0)
  sw $t1, -368($s8)
  lw $t0, -368($s8)
  move $t1, $t0
  sw $t1, -372($s8)
  lw $t0, -372($s8)
  lw $t1, -344($s8)
  sw $t0, 0($t1)
  la $t0, -284($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -376($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -380($s8)
  lw $t0, -380($s8)
  lw $t1, 0($t0)
  sw $t1, -384($s8)
  lw $t0, -384($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -388($s8)
  la $t0, -12($s8)
  lw $t1, -388($s8)
  add $t2, $t0, $t1
  sw $t2, -392($s8)
  lw $t0, 20($s8)
  lw $t1, 16($s8)
  add $t2, $t0, $t1
  sw $t2, -396($s8)
  lw $t0, -396($s8)
  lw $t1, -392($s8)
  sw $t0, 0($t1)
  lw $t0, -392($s8)
  lw $t1, 0($t0)
  sw $t1, -400($s8)
  lw $t0, -400($s8)
  move $t1, $t0
  sw $t1, -404($s8)
  lw $t0, -404($s8)
  lw $t1, -376($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -408($s8)
  lw $t0, -408($s8)
  lw $t1, 0($t0)
  sw $t1, -412($s8)
  lw $t0, -412($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -416($s8)
  la $t0, -4($s8)
  lw $t1, -416($s8)
  add $t2, $t0, $t1
  sw $t2, -420($s8)
  la $t0, -284($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -424($s8)
  lw $t0, -424($s8)
  lw $t1, 0($t0)
  sw $t1, -428($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 16($s8)
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  lw $t3, -428($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -432($s8)
  lw $t0, -432($s8)
  lw $t1, -420($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -436($s8)
  lw $t0, -436($s8)
  lw $t1, 0($t0)
  sw $t1, -440($s8)
  lw $t0, -440($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -444($s8)
  la $t0, -4($s8)
  lw $t1, -444($s8)
  add $t2, $t0, $t1
  sw $t2, -448($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -452($s8)
  la $t0, -284($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -456($s8)
  lw $t0, -456($s8)
  lw $t1, 0($t0)
  sw $t1, -460($s8)
  li $t0, -289019984
  lw $t1, -460($s8)
  bgt $t0, $t1, label280
  j label281
label280:
  li $t0, 1
  move $t1, $t0
  sw $t1, -452($s8)
label281:
  lw $t0, -452($s8)
  lw $t1, -448($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 22
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -464($s8)
  lw $t0, -464($s8)
  lw $t1, 0($t0)
  sw $t1, -468($s8)
  lw $t0, -468($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -472($s8)
  la $t0, -4($s8)
  lw $t1, -472($s8)
  add $t2, $t0, $t1
  sw $t2, -476($s8)
  la $t0, -284($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -480($s8)
  lw $t0, -480($s8)
  lw $t1, 0($t0)
  sw $t1, -484($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -28($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, 16($s8)
  sw $t3, 12($sp)
  lw $t4, 20($s8)
  sw $t4, 16($sp)
  lw $t5, -484($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -488($s8)
  lw $t0, -488($s8)
  lw $t1, -476($s8)
  sw $t0, 0($t1)
  lw $t0, -476($s8)
  lw $t1, 0($t0)
  sw $t1, -492($s8)
  lw $t0, -492($s8)
  move $t1, $t0
  sw $t1, -496($s8)
  lw $t0, -496($s8)
  li $t1, 0
  beq $t0, $t1, label282
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -504($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -508($s8)
  lw $t0, -508($s8)
  lw $t1, 0($t0)
  sw $t1, -512($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -516($s8)
  lw $t0, -516($s8)
  lw $t1, 0($t0)
  sw $t1, -520($s8)
  lw $t0, -512($s8)
  lw $t1, -520($s8)
  ble $t0, $t1, label284
  j label285
label284:
  li $t0, 1
  move $t1, $t0
  sw $t1, -504($s8)
label285:
  la $t0, -284($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -524($s8)
  lw $t0, -524($s8)
  lw $t1, 0($t0)
  sw $t1, -528($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  li $t2, -2100222013
  sw $t2, 8($sp)
  lw $t3, 16($s8)
  sw $t3, 12($sp)
  lw $t4, 20($s8)
  sw $t4, 16($sp)
  lw $t5, -528($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -532($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -536($s8)
  lw $t0, -28($s8)
  li $t1, 0
  beq $t0, $t1, label287
  lw $t0, -32($s8)
  li $t1, 0
  bne $t0, $t1, label286
  j label287
label286:
  li $t0, 1
  move $t1, $t0
  sw $t1, -536($s8)
label287:
  li $t0, 0
  move $t1, $t0
  sw $t1, -540($s8)
  lw $t0, -108($s8)
  lw $t1, -112($s8)
  beq $t0, $t1, label288
  j label289
label288:
  li $t0, 1
  move $t1, $t0
  sw $t1, -540($s8)
label289:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 756140722
  sw $t1, 4($sp)
  lw $t2, -120($s8)
  sw $t2, 8($sp)
  lw $t3, -116($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -544($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -544($s8)
  sw $t1, 4($sp)
  lw $t2, -540($s8)
  sw $t2, 8($sp)
  lw $t3, -536($s8)
  sw $t3, 12($sp)
  lw $t4, -532($s8)
  sw $t4, 16($sp)
  lw $t5, -504($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -548($s8)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -500($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -552($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -556($s8)
  lw $t0, -556($s8)
  lw $t1, 0($t0)
  sw $t1, -560($s8)
  li $t0, -1595458918
  lw $t1, -560($s8)
  add $t2, $t0, $t1
  sw $t2, -564($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -568($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -572($s8)
  lw $t0, -572($s8)
  lw $t1, 0($t0)
  sw $t1, -576($s8)
  la $t0, -284($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -580($s8)
  lw $t0, -580($s8)
  lw $t1, 0($t0)
  sw $t1, -584($s8)
  lw $t0, -576($s8)
  lw $t1, -584($s8)
  bgt $t0, $t1, label290
  j label291
label290:
  li $t0, 1
  move $t1, $t0
  sw $t1, -568($s8)
label291:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -1900640188
  sw $t1, 4($sp)
  lw $t2, -28($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  lw $t4, 16($s8)
  sw $t4, 16($sp)
  lw $t5, 20($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -588($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -592($s8)
  lw $t0, -32($s8)
  lw $t1, -108($s8)
  bgt $t0, $t1, label292
  j label293
label292:
  li $t0, 1
  move $t1, $t0
  sw $t1, -592($s8)
label293:
  li $t0, 0
  move $t1, $t0
  sw $t1, -596($s8)
  lw $t0, -112($s8)
  li $t1, 0
  beq $t0, $t1, label295
  lw $t0, -116($s8)
  li $t1, 0
  bne $t0, $t1, label294
  j label295
label294:
  li $t0, 1
  move $t1, $t0
  sw $t1, -596($s8)
label295:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -596($s8)
  sw $t1, 4($sp)
  lw $t2, -592($s8)
  sw $t2, 8($sp)
  lw $t3, -588($s8)
  sw $t3, 12($sp)
  lw $t4, -568($s8)
  sw $t4, 16($sp)
  lw $t5, -564($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -600($s8)
  lw $t0, -600($s8)
  lw $t1, -552($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -604($s8)
  lw $t0, -604($s8)
  lw $t1, 0($t0)
  sw $t1, -608($s8)
  lw $t0, -608($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -612($s8)
  la $t0, -4($s8)
  lw $t1, -612($s8)
  add $t2, $t0, $t1
  sw $t2, -616($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -620($s8)
  la $t0, -500($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -624($s8)
  lw $t0, -624($s8)
  lw $t1, 0($t0)
  sw $t1, -628($s8)
  lw $t0, -628($s8)
  li $t1, 0
  bne $t0, $t1, label297
  j label296
label296:
  li $t0, 1
  move $t1, $t0
  sw $t1, -620($s8)
label297:
  lw $t0, -620($s8)
  lw $t1, -616($s8)
  sw $t0, 0($t1)
  lw $t0, -616($s8)
  lw $t1, 0($t0)
  sw $t1, -632($s8)
  lw $t0, -632($s8)
  move $t1, $t0
  sw $t1, -636($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -640($s8)
  lw $t0, -640($s8)
  lw $t1, 0($t0)
  sw $t1, -644($s8)
  lw $t0, -644($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -648($s8)
  la $t0, -4($s8)
  lw $t1, -648($s8)
  add $t2, $t0, $t1
  sw $t2, -652($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -656($s8)
  la $t0, -284($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -660($s8)
  lw $t0, -660($s8)
  lw $t1, 0($t0)
  sw $t1, -664($s8)
  lw $t0, -664($s8)
  li $t1, 0
  bne $t0, $t1, label298
  la $t0, -500($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -668($s8)
  lw $t0, -668($s8)
  lw $t1, 0($t0)
  sw $t1, -672($s8)
  lw $t0, -672($s8)
  li $t1, 0
  bne $t0, $t1, label298
  j label299
label298:
  li $t0, 1
  move $t1, $t0
  sw $t1, -656($s8)
label299:
  lw $t0, -656($s8)
  lw $t1, -652($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -284($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -676($s8)
  lw $t0, -676($s8)
  lw $t1, 0($t0)
  sw $t1, -680($s8)
  lw $t0, -680($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -684($s8)
  la $t0, -12($s8)
  lw $t1, -684($s8)
  add $t2, $t0, $t1
  sw $t2, -688($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -692($s8)
  lw $t0, -692($s8)
  lw $t1, 0($t0)
  sw $t1, -696($s8)
  la $t0, -500($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -700($s8)
  lw $t0, -700($s8)
  lw $t1, 0($t0)
  sw $t1, -704($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  lw $t4, -704($s8)
  sw $t4, 16($sp)
  lw $t5, -696($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -708($s8)
  lw $t0, -708($s8)
  lw $t1, -688($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -712($s8)
  la $t0, -500($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -716($s8)
  lw $t0, -716($s8)
  lw $t1, 0($t0)
  sw $t1, -720($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -724($s8)
  lw $t0, -724($s8)
  lw $t1, 0($t0)
  sw $t1, -728($s8)
  la $t0, -284($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -732($s8)
  lw $t0, -732($s8)
  lw $t1, 0($t0)
  sw $t1, -736($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 16($s8)
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  lw $t3, -736($s8)
  sw $t3, 12($sp)
  lw $t4, -728($s8)
  sw $t4, 16($sp)
  lw $t5, -720($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -740($s8)
  lw $t0, -740($s8)
  lw $t1, -712($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -500($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -744($s8)
  lw $t0, -744($s8)
  lw $t1, 0($t0)
  sw $t1, -748($s8)
  lw $t0, -748($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -752($s8)
  la $t0, -4($s8)
  lw $t1, -752($s8)
  add $t2, $t0, $t1
  sw $t2, -756($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -760($s8)
  lw $t0, -760($s8)
  lw $t1, 0($t0)
  sw $t1, -764($s8)
  la $t0, -284($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -768($s8)
  lw $t0, -768($s8)
  lw $t1, 0($t0)
  sw $t1, -772($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, -772($s8)
  sw $t2, 8($sp)
  lw $t3, -764($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -776($s8)
  lw $t0, -776($s8)
  lw $t1, -756($s8)
  sw $t0, 0($t1)
  la $t0, -500($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -780($s8)
  lw $t0, -780($s8)
  lw $t1, 0($t0)
  sw $t1, -784($s8)
  lw $t0, -784($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -788($s8)
  la $t0, -4($s8)
  lw $t1, -788($s8)
  add $t2, $t0, $t1
  sw $t2, -792($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -796($s8)
  lw $t0, -796($s8)
  lw $t1, 0($t0)
  sw $t1, -800($s8)
  la $t0, -284($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -804($s8)
  lw $t0, -804($s8)
  lw $t1, 0($t0)
  sw $t1, -808($s8)
  lw $t0, -800($s8)
  lw $t1, -808($s8)
  add $t2, $t0, $t1
  sw $t2, -812($s8)
  lw $t0, -812($s8)
  lw $t1, -792($s8)
  sw $t0, 0($t1)
  la $t0, -284($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -816($s8)
  lw $t0, -816($s8)
  lw $t1, 0($t0)
  sw $t1, -820($s8)
  lw $t0, -820($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -824($s8)
  la $t0, -12($s8)
  lw $t1, -824($s8)
  add $t2, $t0, $t1
  sw $t2, -828($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -832($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -836($s8)
  lw $t0, -836($s8)
  lw $t1, 0($t0)
  sw $t1, -840($s8)
  lw $t0, -840($s8)
  li $t1, 0
  bne $t0, $t1, label301
  j label300
label300:
  li $t0, 1
  move $t1, $t0
  sw $t1, -832($s8)
label301:
  lw $t0, -832($s8)
  lw $t1, -828($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -844($s8)
  li $t0, -130388267
  move $t1, $t0
  sw $t1, -848($s8)
  lw $t0, -848($s8)
  lw $t1, -844($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -852($s8)
  lw $t0, -852($s8)
  lw $t1, 0($t0)
  sw $t1, -856($s8)
  lw $t0, -856($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -860($s8)
  la $t0, -4($s8)
  lw $t1, -860($s8)
  add $t2, $t0, $t1
  sw $t2, -864($s8)
  la $t0, -500($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -868($s8)
  lw $t0, -868($s8)
  lw $t1, 0($t0)
  sw $t1, -872($s8)
  la $t0, -284($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -876($s8)
  lw $t0, -876($s8)
  lw $t1, 0($t0)
  sw $t1, -880($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, -880($s8)
  sw $t2, 8($sp)
  lw $t3, -872($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -884($s8)
  lw $t0, -884($s8)
  lw $t1, -864($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -500($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -888($s8)
  lw $t0, -888($s8)
  lw $t1, 0($t0)
  sw $t1, -892($s8)
  lw $t0, -892($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -896($s8)
  la $t0, -4($s8)
  lw $t1, -896($s8)
  add $t2, $t0, $t1
  sw $t2, -900($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -904($s8)
  lw $t0, -904($s8)
  lw $t1, 0($t0)
  sw $t1, -908($s8)
  la $t0, -284($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -912($s8)
  lw $t0, -912($s8)
  lw $t1, 0($t0)
  sw $t1, -916($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, -916($s8)
  sw $t2, 8($sp)
  lw $t3, -908($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -920($s8)
  lw $t0, -920($s8)
  lw $t1, -900($s8)
  sw $t0, 0($t1)
  lw $t0, -548($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -636($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label283
label282:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -928($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -932($s8)
  la $t0, -284($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -936($s8)
  lw $t0, -936($s8)
  lw $t1, 0($t0)
  sw $t1, -940($s8)
  lw $t0, -940($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -944($s8)
  la $t0, -12($s8)
  lw $t1, -944($s8)
  add $t2, $t0, $t1
  sw $t2, -948($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -952($s8)
  lw $t0, -952($s8)
  lw $t1, 0($t0)
  sw $t1, -956($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -1430187425
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  li $t4, -538635664
  sw $t4, 16($sp)
  lw $t5, -956($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -960($s8)
  lw $t0, -960($s8)
  lw $t1, -948($s8)
  sw $t0, 0($t1)
  lw $t0, -948($s8)
  lw $t1, 0($t0)
  sw $t1, -964($s8)
  lw $t0, -964($s8)
  move $t1, $t0
  sw $t1, -968($s8)
  lw $t0, -968($s8)
  lw $t1, -932($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -928($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -972($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -976($s8)
  lw $t0, -976($s8)
  lw $t1, 0($t0)
  sw $t1, -980($s8)
  lw $t0, -980($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -984($s8)
  la $t0, -12($s8)
  lw $t1, -984($s8)
  add $t2, $t0, $t1
  sw $t2, -988($s8)
  la $t0, -284($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -992($s8)
  lw $t0, -992($s8)
  lw $t1, 0($t0)
  sw $t1, -996($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 16($s8)
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  lw $t3, -996($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1000($s8)
  lw $t0, -1000($s8)
  lw $t1, -988($s8)
  sw $t0, 0($t1)
  lw $t0, -988($s8)
  lw $t1, 0($t0)
  sw $t1, -1004($s8)
  lw $t0, -1004($s8)
  move $t1, $t0
  sw $t1, -1008($s8)
  lw $t0, -1008($s8)
  lw $t1, -972($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -284($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1012($s8)
  lw $t0, -1012($s8)
  lw $t1, 0($t0)
  sw $t1, -1016($s8)
  lw $t0, -1016($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1020($s8)
  la $t0, -12($s8)
  lw $t1, -1020($s8)
  add $t2, $t0, $t1
  sw $t2, -1024($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1028($s8)
  lw $t0, -1028($s8)
  lw $t1, 0($t0)
  sw $t1, -1032($s8)
  la $t0, -928($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1036($s8)
  lw $t0, -1036($s8)
  lw $t1, 0($t0)
  sw $t1, -1040($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, -1040($s8)
  sw $t2, 8($sp)
  lw $t3, -1032($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1044($s8)
  lw $t0, -1044($s8)
  lw $t1, -1024($s8)
  sw $t0, 0($t1)
  lw $t0, -1024($s8)
  lw $t1, 0($t0)
  sw $t1, -1048($s8)
  lw $t0, -1048($s8)
  move $t1, $t0
  sw $t1, -1052($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1056($s8)
  lw $t0, -1056($s8)
  lw $t1, 0($t0)
  sw $t1, -1060($s8)
  lw $t0, -1060($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1064($s8)
  la $t0, -4($s8)
  lw $t1, -1064($s8)
  add $t2, $t0, $t1
  sw $t2, -1068($s8)
  la $t0, -284($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1072($s8)
  lw $t0, -1072($s8)
  lw $t1, 0($t0)
  sw $t1, -1076($s8)
  la $t0, -928($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1080($s8)
  lw $t0, -1080($s8)
  lw $t1, 0($t0)
  sw $t1, -1084($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, -1084($s8)
  sw $t2, 8($sp)
  li $t3, -206815018
  sw $t3, 12($sp)
  lw $t4, -1076($s8)
  sw $t4, 16($sp)
  li $t5, 1105190963
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1088($s8)
  lw $t0, -1088($s8)
  lw $t1, -1068($s8)
  sw $t0, 0($t1)
  lw $t0, -1068($s8)
  lw $t1, 0($t0)
  sw $t1, -1092($s8)
  lw $t0, -1092($s8)
  move $t1, $t0
  sw $t1, -1096($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1100($s8)
  lw $t0, -1100($s8)
  lw $t1, 0($t0)
  sw $t1, -1104($s8)
  lw $t0, -1104($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1108($s8)
  la $t0, -4($s8)
  lw $t1, -1108($s8)
  add $t2, $t0, $t1
  sw $t2, -1112($s8)
  li $t0, 1186031673
  move $t1, $t0
  sw $t1, -1116($s8)
  lw $t0, -1116($s8)
  lw $t1, -1112($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1120($s8)
  lw $t0, -1120($s8)
  lw $t1, 0($t0)
  sw $t1, -1124($s8)
  lw $t0, -1124($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1128($s8)
  la $t0, -12($s8)
  lw $t1, -1128($s8)
  add $t2, $t0, $t1
  sw $t2, -1132($s8)
  la $t0, -284($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1136($s8)
  lw $t0, -1136($s8)
  lw $t1, 0($t0)
  sw $t1, -1140($s8)
  la $t0, -928($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1144($s8)
  lw $t0, -1144($s8)
  lw $t1, 0($t0)
  sw $t1, -1148($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  lw $t4, -1148($s8)
  sw $t4, 16($sp)
  lw $t5, -1140($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1152($s8)
  lw $t0, -1152($s8)
  lw $t1, -1132($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1156($s8)
  lw $t0, -1156($s8)
  lw $t1, 0($t0)
  sw $t1, -1160($s8)
  lw $t0, -1160($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1164($s8)
  la $t0, -4($s8)
  lw $t1, -1164($s8)
  add $t2, $t0, $t1
  sw $t2, -1168($s8)
  li $t0, -1964041850
  move $t1, $t0
  sw $t1, -1172($s8)
  lw $t0, -1172($s8)
  lw $t1, -1168($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1176($s8)
  lw $t0, -1176($s8)
  lw $t1, 0($t0)
  sw $t1, -1180($s8)
  lw $t0, -1180($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1184($s8)
  la $t0, -4($s8)
  lw $t1, -1184($s8)
  add $t2, $t0, $t1
  sw $t2, -1188($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1192($s8)
  la $t0, -284($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1196($s8)
  lw $t0, -1196($s8)
  lw $t1, 0($t0)
  sw $t1, -1200($s8)
  la $t0, -928($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1204($s8)
  lw $t0, -1204($s8)
  lw $t1, 0($t0)
  sw $t1, -1208($s8)
  lw $t0, -1200($s8)
  lw $t1, -1208($s8)
  beq $t0, $t1, label302
  j label303
label302:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1192($s8)
label303:
  lw $t0, -1192($s8)
  lw $t1, -1188($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1212($s8)
  lw $t0, -1212($s8)
  lw $t1, 0($t0)
  sw $t1, -1216($s8)
  lw $t0, -1216($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1220($s8)
  la $t0, -4($s8)
  lw $t1, -1220($s8)
  add $t2, $t0, $t1
  sw $t2, -1224($s8)
  la $t0, -284($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1228($s8)
  lw $t0, -1228($s8)
  lw $t1, 0($t0)
  sw $t1, -1232($s8)
  la $t0, -928($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1236($s8)
  lw $t0, -1236($s8)
  lw $t1, 0($t0)
  sw $t1, -1240($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, -1240($s8)
  sw $t2, 8($sp)
  lw $t3, -1232($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1244($s8)
  lw $t0, -1244($s8)
  lw $t1, -1224($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1248($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1252($s8)
  lw $t0, -1252($s8)
  lw $t1, 0($t0)
  sw $t1, -1256($s8)
  lw $t0, -1256($s8)
  li $t1, 0
  bne $t0, $t1, label304
  la $t0, -284($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1260($s8)
  lw $t0, -1260($s8)
  lw $t1, 0($t0)
  sw $t1, -1264($s8)
  lw $t0, -1264($s8)
  li $t1, 0
  bne $t0, $t1, label304
  j label305
label304:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1248($s8)
label305:
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1268($s8)
  lw $t0, -1268($s8)
  lw $t1, 0($t0)
  sw $t1, -1272($s8)
  la $t0, -928($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1276($s8)
  lw $t0, -1276($s8)
  lw $t1, 0($t0)
  sw $t1, -1280($s8)
  lw $t0, -1272($s8)
  lw $t1, -1280($s8)
  mul $t2, $t0, $t1
  sw $t2, -1284($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1288($s8)
  li $t0, -1356758107
  li $t1, 0
  bne $t0, $t1, label306
  lw $t0, 20($s8)
  li $t1, 0
  bne $t0, $t1, label306
  j label307
label306:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1288($s8)
label307:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1288($s8)
  sw $t1, 4($sp)
  lw $t2, -1284($s8)
  sw $t2, 8($sp)
  lw $t3, -1248($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1292($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1296($s8)
  lw $t0, -1296($s8)
  lw $t1, 0($t0)
  sw $t1, -1300($s8)
  lw $t0, -1300($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1304($s8)
  la $t0, -12($s8)
  lw $t1, -1304($s8)
  add $t2, $t0, $t1
  sw $t2, -1308($s8)
  la $t0, -284($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1312($s8)
  lw $t0, -1312($s8)
  lw $t1, 0($t0)
  sw $t1, -1316($s8)
  la $t0, -928($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1320($s8)
  lw $t0, -1320($s8)
  lw $t1, 0($t0)
  sw $t1, -1324($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  lw $t4, -1324($s8)
  sw $t4, 16($sp)
  lw $t5, -1316($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1328($s8)
  lw $t0, -1328($s8)
  lw $t1, -1308($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1332($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1336($s8)
  la $t0, -284($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1340($s8)
  lw $t0, -1340($s8)
  lw $t1, 0($t0)
  sw $t1, -1344($s8)
  li $t0, -179318894
  lw $t1, -1344($s8)
  beq $t0, $t1, label308
  j label309
label308:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1336($s8)
label309:
  lw $t0, -1336($s8)
  lw $t1, -1332($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1348($s8)
  lw $t0, -1348($s8)
  lw $t1, 0($t0)
  sw $t1, -1352($s8)
  lw $t0, -1352($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1356($s8)
  la $t0, -4($s8)
  lw $t1, -1356($s8)
  add $t2, $t0, $t1
  sw $t2, -1360($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1364($s8)
  la $t0, -284($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1368($s8)
  lw $t0, -1368($s8)
  lw $t1, 0($t0)
  sw $t1, -1372($s8)
  la $t0, -928($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1376($s8)
  lw $t0, -1376($s8)
  lw $t1, 0($t0)
  sw $t1, -1380($s8)
  lw $t0, -1372($s8)
  lw $t1, -1380($s8)
  ble $t0, $t1, label310
  j label311
label310:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1364($s8)
label311:
  lw $t0, -1364($s8)
  lw $t1, -1360($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1384($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1388($s8)
  lw $t0, -1388($s8)
  lw $t1, 0($t0)
  sw $t1, -1392($s8)
  lw $t0, -1392($s8)
  li $t1, 0
  bne $t0, $t1, label313
  j label312
label312:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1384($s8)
label313:
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1396($s8)
  lw $t0, -1396($s8)
  lw $t1, 0($t0)
  sw $t1, -1400($s8)
  la $t0, -284($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1404($s8)
  lw $t0, -1404($s8)
  lw $t1, 0($t0)
  sw $t1, -1408($s8)
  la $t0, -928($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1412($s8)
  lw $t0, -1412($s8)
  lw $t1, 0($t0)
  sw $t1, -1416($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1416($s8)
  sw $t1, 4($sp)
  lw $t2, -1408($s8)
  sw $t2, 8($sp)
  lw $t3, -1400($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1420($s8)
  lw $t0, 16($s8)
  move $t1, $t0
  sw $t1, 20($s8)
  lw $t0, 20($s8)
  move $t1, $t0
  sw $t1, -1424($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1424($s8)
  sw $t1, 4($sp)
  lw $t2, -1420($s8)
  sw $t2, 8($sp)
  lw $t3, -1384($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1428($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1432($s8)
  lw $t0, -1432($s8)
  lw $t1, 0($t0)
  sw $t1, -1436($s8)
  lw $t0, -1436($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1440($s8)
  la $t0, -4($s8)
  lw $t1, -1440($s8)
  add $t2, $t0, $t1
  sw $t2, -1444($s8)
  la $t0, -284($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1448($s8)
  lw $t0, -1448($s8)
  lw $t1, 0($t0)
  sw $t1, -1452($s8)
  la $t0, -928($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1456($s8)
  lw $t0, -1456($s8)
  lw $t1, 0($t0)
  sw $t1, -1460($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  lw $t4, -1460($s8)
  sw $t4, 16($sp)
  lw $t5, -1452($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1464($s8)
  lw $t0, -1464($s8)
  lw $t1, -1444($s8)
  sw $t0, 0($t1)
  lw $t0, -1052($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -1096($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
label283:
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1468($s8)
  la $t0, -284($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1472($s8)
  lw $t0, -1472($s8)
  lw $t1, 0($t0)
  sw $t1, -1476($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1480($s8)
  lw $t0, -1480($s8)
  lw $t1, 0($t0)
  sw $t1, -1484($s8)
  lw $t0, -1476($s8)
  lw $t1, -1484($s8)
  sub $t2, $t0, $t1
  sw $t2, -1488($s8)
  lw $t0, -1488($s8)
  lw $t1, -1468($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1492($s8)
  lw $t0, -1492($s8)
  lw $t1, 0($t0)
  sw $t1, -1496($s8)
  lw $t0, -1496($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1500($s8)
  la $t0, -12($s8)
  lw $t1, -1500($s8)
  add $t2, $t0, $t1
  sw $t2, -1504($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1508($s8)
  la $t0, -284($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1512($s8)
  lw $t0, -1512($s8)
  lw $t1, 0($t0)
  sw $t1, -1516($s8)
  lw $t0, -1516($s8)
  li $t1, 0
  beq $t0, $t1, label315
  lw $t0, 20($s8)
  li $t1, 0
  bne $t0, $t1, label314
  j label315
label314:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1508($s8)
label315:
  lw $t0, -1508($s8)
  lw $t1, -1504($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1520($s8)
  lw $t0, -1520($s8)
  lw $t1, 0($t0)
  sw $t1, -1524($s8)
  lw $t0, -1524($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1528($s8)
  la $t0, -4($s8)
  lw $t1, -1528($s8)
  add $t2, $t0, $t1
  sw $t2, -1532($s8)
  la $t0, -284($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1536($s8)
  lw $t0, -1536($s8)
  lw $t1, 0($t0)
  sw $t1, -1540($s8)
  lw $t0, -1540($s8)
  lw $t1, -1532($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1544($s8)
  lw $t0, -1544($s8)
  lw $t1, 0($t0)
  sw $t1, -1548($s8)
  lw $t0, -1548($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1552($s8)
  la $t0, -4($s8)
  lw $t1, -1552($s8)
  add $t2, $t0, $t1
  sw $t2, -1556($s8)
  la $t0, -284($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1560($s8)
  lw $t0, -1560($s8)
  lw $t1, 0($t0)
  sw $t1, -1564($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  lw $t4, -1564($s8)
  sw $t4, 16($sp)
  li $t5, 1270756654
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1568($s8)
  lw $t0, -1568($s8)
  lw $t1, -1556($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1572($s8)
  lw $t0, -1572($s8)
  lw $t1, 0($t0)
  sw $t1, -1576($s8)
  lw $t0, -1576($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1580($s8)
  la $t0, -4($s8)
  lw $t1, -1580($s8)
  add $t2, $t0, $t1
  sw $t2, -1584($s8)
  la $t0, -284($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1588($s8)
  lw $t0, -1588($s8)
  lw $t1, 0($t0)
  sw $t1, -1592($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 16($s8)
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  lw $t3, -1592($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1596($s8)
  lw $t0, -1596($s8)
  lw $t1, -1584($s8)
  sw $t0, 0($t1)
  lw $t0, -312($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -340($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label276
label277:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1600($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1604($s8)
  lw $t0, -1604($s8)
  lw $t1, 0($t0)
  sw $t1, -1608($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 16($s8)
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  lw $t3, -1608($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1612($s8)
  lw $t0, -1612($s8)
  lw $t1, -1600($s8)
  sw $t0, 0($t1)
label316:
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1616($s8)
  lw $t0, -1616($s8)
  lw $t1, 0($t0)
  sw $t1, -1620($s8)
  lw $t0, -1620($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1624($s8)
  la $t0, -4($s8)
  lw $t1, -1624($s8)
  add $t2, $t0, $t1
  sw $t2, -1628($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1632($s8)
  lw $t0, 20($s8)
  li $t1, 0
  beq $t0, $t1, label319
  lw $t0, 16($s8)
  li $t1, 0
  bne $t0, $t1, label318
  j label319
label318:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1632($s8)
label319:
  lw $t0, -1632($s8)
  lw $t1, -1628($s8)
  sw $t0, 0($t1)
  lw $t0, -1628($s8)
  lw $t1, 0($t0)
  sw $t1, -1636($s8)
  lw $t0, -1636($s8)
  move $t1, $t0
  sw $t1, -1640($s8)
  lw $t0, -1640($s8)
  li $t1, 0
  beq $t0, $t1, label317
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1644($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1656($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1660($s8)
  lw $t0, -1660($s8)
  lw $t1, 0($t0)
  sw $t1, -1664($s8)
  lw $t0, -1664($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1668($s8)
  la $t0, -12($s8)
  lw $t1, -1668($s8)
  add $t2, $t0, $t1
  sw $t2, -1672($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -28($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  li $t3, -1759124955
  sw $t3, 12($sp)
  lw $t4, 16($s8)
  sw $t4, 16($sp)
  lw $t5, 20($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1676($s8)
  lw $t0, -1676($s8)
  lw $t1, -1672($s8)
  sw $t0, 0($t1)
  lw $t0, -1672($s8)
  lw $t1, 0($t0)
  sw $t1, -1680($s8)
  lw $t0, -1680($s8)
  move $t1, $t0
  sw $t1, -1684($s8)
  lw $t0, -1684($s8)
  lw $t1, -1656($s8)
  sw $t0, 0($t1)
  la $t0, -1652($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1688($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1692($s8)
  lw $t0, -1692($s8)
  lw $t1, 0($t0)
  sw $t1, -1696($s8)
  lw $t0, -1696($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1700($s8)
  la $t0, -4($s8)
  lw $t1, -1700($s8)
  add $t2, $t0, $t1
  sw $t2, -1704($s8)
  la $t0, -1644($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1708($s8)
  lw $t0, -1708($s8)
  lw $t1, 0($t0)
  sw $t1, -1712($s8)
  lw $t0, -1712($s8)
  lw $t1, 20($s8)
  mul $t2, $t0, $t1
  sw $t2, -1716($s8)
  lw $t0, -1716($s8)
  lw $t1, -1704($s8)
  sw $t0, 0($t1)
  lw $t0, -1704($s8)
  lw $t1, 0($t0)
  sw $t1, -1720($s8)
  lw $t0, -1720($s8)
  move $t1, $t0
  sw $t1, -1724($s8)
  lw $t0, -1724($s8)
  lw $t1, -1688($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1652($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1728($s8)
  la $t0, -1644($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1732($s8)
  lw $t0, -1732($s8)
  lw $t1, 0($t0)
  sw $t1, -1736($s8)
  lw $t0, -1736($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1740($s8)
  la $t0, -4($s8)
  lw $t1, -1740($s8)
  add $t2, $t0, $t1
  sw $t2, -1744($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1748($s8)
  lw $t0, -1748($s8)
  lw $t1, 0($t0)
  sw $t1, -1752($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 16($s8)
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  lw $t3, -1752($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1756($s8)
  lw $t0, -1756($s8)
  lw $t1, -1744($s8)
  sw $t0, 0($t1)
  lw $t0, -1744($s8)
  lw $t1, 0($t0)
  sw $t1, -1760($s8)
  lw $t0, -1760($s8)
  move $t1, $t0
  sw $t1, -1764($s8)
  lw $t0, -1764($s8)
  lw $t1, -1728($s8)
  sw $t0, 0($t1)
  la $t0, -1644($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1768($s8)
  lw $t0, -1768($s8)
  lw $t1, 0($t0)
  sw $t1, -1772($s8)
  lw $t0, -1772($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1776($s8)
  la $t0, -4($s8)
  lw $t1, -1776($s8)
  add $t2, $t0, $t1
  sw $t2, -1780($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1784($s8)
  lw $t0, -1784($s8)
  lw $t1, 0($t0)
  sw $t1, -1788($s8)
  lw $t0, -1788($s8)
  lw $t1, -1780($s8)
  sw $t0, 0($t1)
  lw $t0, -1780($s8)
  lw $t1, 0($t0)
  sw $t1, -1792($s8)
  lw $t0, -1792($s8)
  move $t1, $t0
  sw $t1, -1796($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1800($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1804($s8)
label320:
  la $t0, -1644($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1808($s8)
  lw $t0, -1808($s8)
  lw $t1, 0($t0)
  sw $t1, -1812($s8)
  lw $t0, -1812($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1816($s8)
  la $t0, -4($s8)
  lw $t1, -1816($s8)
  add $t2, $t0, $t1
  sw $t2, -1820($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1824($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1828($s8)
  lw $t0, -1828($s8)
  lw $t1, 0($t0)
  sw $t1, -1832($s8)
  la $t0, -1652($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1836($s8)
  lw $t0, -1836($s8)
  lw $t1, 0($t0)
  sw $t1, -1840($s8)
  lw $t0, -1832($s8)
  lw $t1, -1840($s8)
  blt $t0, $t1, label322
  j label323
label322:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1824($s8)
label323:
  lw $t0, -1824($s8)
  lw $t1, -1820($s8)
  sw $t0, 0($t1)
  lw $t0, -1820($s8)
  lw $t1, 0($t0)
  sw $t1, -1844($s8)
  lw $t0, -1844($s8)
  move $t1, $t0
  sw $t1, -1848($s8)
  lw $t0, -1848($s8)
  li $t1, 0
  beq $t0, $t1, label321
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1644($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1860($s8)
  lw $t0, -1860($s8)
  lw $t1, 0($t0)
  sw $t1, -1864($s8)
  lw $t0, -1864($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1868($s8)
  la $t0, -4($s8)
  lw $t1, -1868($s8)
  add $t2, $t0, $t1
  sw $t2, -1872($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1876($s8)
  lw $t0, -1876($s8)
  lw $t1, 0($t0)
  sw $t1, -1880($s8)
  la $t0, -1652($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1884($s8)
  lw $t0, -1884($s8)
  lw $t1, 0($t0)
  sw $t1, -1888($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  lw $t4, -1888($s8)
  sw $t4, 16($sp)
  lw $t5, -1880($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1892($s8)
  lw $t0, -1892($s8)
  lw $t1, -1872($s8)
  sw $t0, 0($t1)
  lw $t0, -1872($s8)
  lw $t1, 0($t0)
  sw $t1, -1896($s8)
  lw $t0, -1896($s8)
  move $t1, $t0
  sw $t1, -1900($s8)
  la $t0, -1856($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1904($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1908($s8)
  lw $t0, -1908($s8)
  lw $t1, 0($t0)
  sw $t1, -1912($s8)
  lw $t0, -1912($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1916($s8)
  la $t0, -4($s8)
  lw $t1, -1916($s8)
  add $t2, $t0, $t1
  sw $t2, -1920($s8)
  la $t0, -1644($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1924($s8)
  lw $t0, -1924($s8)
  lw $t1, 0($t0)
  sw $t1, -1928($s8)
  lw $t0, -1928($s8)
  lw $t1, -1920($s8)
  sw $t0, 0($t1)
  lw $t0, -1920($s8)
  lw $t1, 0($t0)
  sw $t1, -1932($s8)
  lw $t0, -1932($s8)
  move $t1, $t0
  sw $t1, -1936($s8)
  lw $t0, -1936($s8)
  lw $t1, -1904($s8)
  sw $t0, 0($t1)
  la $t0, -1856($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1940($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1944($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1948($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1952($s8)
  lw $t0, -1952($s8)
  lw $t1, 0($t0)
  sw $t1, -1956($s8)
  lw $t0, -1956($s8)
  li $t1, 0
  beq $t0, $t1, label325
  la $t0, -1652($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1960($s8)
  lw $t0, -1960($s8)
  lw $t1, 0($t0)
  sw $t1, -1964($s8)
  lw $t0, -1964($s8)
  li $t1, 0
  bne $t0, $t1, label324
  j label325
label324:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1948($s8)
label325:
  lw $t0, -1948($s8)
  lw $t1, -1944($s8)
  sw $t0, 0($t1)
  lw $t0, -1944($s8)
  lw $t1, 0($t0)
  sw $t1, -1968($s8)
  lw $t0, -1968($s8)
  move $t1, $t0
  sw $t1, -1972($s8)
  lw $t0, -1972($s8)
  lw $t1, -1940($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1976($s8)
  la $t0, -1652($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1980($s8)
  lw $t0, -1980($s8)
  lw $t1, 0($t0)
  sw $t1, -1984($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1988($s8)
  lw $t0, -1988($s8)
  lw $t1, 0($t0)
  sw $t1, -1992($s8)
  lw $t0, -1984($s8)
  lw $t1, -1992($s8)
  mul $t2, $t0, $t1
  sw $t2, -1996($s8)
  lw $t0, -1996($s8)
  lw $t1, -1976($s8)
  sw $t0, 0($t1)
  lw $t0, -1976($s8)
  lw $t1, 0($t0)
  sw $t1, -2000($s8)
  lw $t0, -2000($s8)
  move $t1, $t0
  sw $t1, -2004($s8)
  la $t0, -1652($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2008($s8)
  lw $t0, -2008($s8)
  lw $t1, 0($t0)
  sw $t1, -2012($s8)
  lw $t0, -2012($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2016($s8)
  la $t0, -12($s8)
  lw $t1, -2016($s8)
  add $t2, $t0, $t1
  sw $t2, -2020($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2024($s8)
  li $t0, 268175522
  li $t1, 0
  bne $t0, $t1, label327
  j label326
label326:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2024($s8)
label327:
  lw $t0, -2024($s8)
  lw $t1, -2020($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2028($s8)
  lw $t0, -2028($s8)
  lw $t1, 0($t0)
  sw $t1, -2032($s8)
  lw $t0, -2032($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2036($s8)
  la $t0, -12($s8)
  lw $t1, -2036($s8)
  add $t2, $t0, $t1
  sw $t2, -2040($s8)
  la $t0, -1644($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2044($s8)
  lw $t0, -2044($s8)
  lw $t1, 0($t0)
  sw $t1, -2048($s8)
  la $t0, -1652($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2052($s8)
  lw $t0, -2052($s8)
  lw $t1, 0($t0)
  sw $t1, -2056($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2056($s8)
  sw $t1, 4($sp)
  lw $t2, -2048($s8)
  sw $t2, 8($sp)
  li $t3, 1735831908
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2060($s8)
  lw $t0, -2060($s8)
  lw $t1, -2040($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2064($s8)
  lw $t0, -2064($s8)
  lw $t1, 0($t0)
  sw $t1, -2068($s8)
  lw $t0, -2068($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2072($s8)
  la $t0, -12($s8)
  lw $t1, -2072($s8)
  add $t2, $t0, $t1
  sw $t2, -2076($s8)
  la $t0, -1644($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2080($s8)
  lw $t0, -2080($s8)
  lw $t1, 0($t0)
  sw $t1, -2084($s8)
  la $t0, -1652($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2088($s8)
  lw $t0, -2088($s8)
  lw $t1, 0($t0)
  sw $t1, -2092($s8)
  la $t0, -1856($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2096($s8)
  lw $t0, -2096($s8)
  lw $t1, 0($t0)
  sw $t1, -2100($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 16($s8)
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  lw $t3, -2100($s8)
  sw $t3, 12($sp)
  lw $t4, -2092($s8)
  sw $t4, 16($sp)
  lw $t5, -2084($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2104($s8)
  lw $t0, -2104($s8)
  lw $t1, -2076($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2108($s8)
  la $t0, -1652($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2112($s8)
  lw $t0, -2112($s8)
  lw $t1, 0($t0)
  sw $t1, -2116($s8)
  la $t0, -1856($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2120($s8)
  lw $t0, -2120($s8)
  lw $t1, 0($t0)
  sw $t1, -2124($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2124($s8)
  sw $t1, 4($sp)
  lw $t2, -2116($s8)
  sw $t2, 8($sp)
  li $t3, -814747362
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2128($s8)
  lw $t0, -2128($s8)
  lw $t1, -2108($s8)
  sw $t0, 0($t1)
  la $t0, -1644($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2132($s8)
  lw $t0, -2132($s8)
  lw $t1, 0($t0)
  sw $t1, -2136($s8)
  lw $t0, -2136($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2140($s8)
  la $t0, -4($s8)
  lw $t1, -2140($s8)
  add $t2, $t0, $t1
  sw $t2, -2144($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2148($s8)
  lw $t0, -2148($s8)
  lw $t1, 0($t0)
  sw $t1, -2152($s8)
  la $t0, -1652($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2156($s8)
  lw $t0, -2156($s8)
  lw $t1, 0($t0)
  sw $t1, -2160($s8)
  lw $t0, -2152($s8)
  lw $t1, -2160($s8)
  sub $t2, $t0, $t1
  sw $t2, -2164($s8)
  lw $t0, -2164($s8)
  lw $t1, -2144($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2168($s8)
  lw $t0, -2168($s8)
  lw $t1, 0($t0)
  sw $t1, -2172($s8)
  lw $t0, -2172($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2176($s8)
  la $t0, -4($s8)
  lw $t1, -2176($s8)
  add $t2, $t0, $t1
  sw $t2, -2180($s8)
  li $t0, 250472923
  move $t1, $t0
  sw $t1, -2184($s8)
  lw $t0, -2184($s8)
  lw $t1, -2180($s8)
  sw $t0, 0($t1)
  la $t0, -1644($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2188($s8)
  lw $t0, -2188($s8)
  lw $t1, 0($t0)
  sw $t1, -2192($s8)
  lw $t0, -2192($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2196($s8)
  la $t0, -4($s8)
  lw $t1, -2196($s8)
  add $t2, $t0, $t1
  sw $t2, -2200($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2204($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2208($s8)
  lw $t0, -2208($s8)
  lw $t1, 0($t0)
  sw $t1, -2212($s8)
  lw $t0, -2212($s8)
  li $t1, 0
  bne $t0, $t1, label328
  la $t0, -1652($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2216($s8)
  lw $t0, -2216($s8)
  lw $t1, 0($t0)
  sw $t1, -2220($s8)
  lw $t0, -2220($s8)
  li $t1, 0
  bne $t0, $t1, label328
  j label329
label328:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2204($s8)
label329:
  lw $t0, -2204($s8)
  lw $t1, -2200($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2224($s8)
  lw $t0, -2224($s8)
  lw $t1, 0($t0)
  sw $t1, -2228($s8)
  lw $t0, -2228($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2232($s8)
  la $t0, -4($s8)
  lw $t1, -2232($s8)
  add $t2, $t0, $t1
  sw $t2, -2236($s8)
  la $t0, -1644($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2240($s8)
  lw $t0, -2240($s8)
  lw $t1, 0($t0)
  sw $t1, -2244($s8)
  la $t0, -1652($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2248($s8)
  lw $t0, -2248($s8)
  lw $t1, 0($t0)
  sw $t1, -2252($s8)
  lw $t0, -2244($s8)
  lw $t1, -2252($s8)
  sub $t2, $t0, $t1
  sw $t2, -2256($s8)
  lw $t0, -2256($s8)
  lw $t1, -2236($s8)
  sw $t0, 0($t1)
  la $t0, -1652($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2260($s8)
  lw $t0, -2260($s8)
  lw $t1, 0($t0)
  sw $t1, -2264($s8)
  lw $t0, -2264($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2268($s8)
  la $t0, -12($s8)
  lw $t1, -2268($s8)
  add $t2, $t0, $t1
  sw $t2, -2272($s8)
  li $t0, 1557862725
  move $t1, $t0
  sw $t1, -2276($s8)
  lw $t0, -2276($s8)
  lw $t1, -2272($s8)
  sw $t0, 0($t1)
  lw $t0, -1900($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -2004($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label320
label321:
  la $t0, -1652($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2280($s8)
  lw $t0, -2280($s8)
  lw $t1, 0($t0)
  sw $t1, -2284($s8)
  lw $t0, -2284($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2288($s8)
  la $t0, -12($s8)
  lw $t1, -2288($s8)
  add $t2, $t0, $t1
  sw $t2, -2292($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2296($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2300($s8)
  lw $t0, -2300($s8)
  lw $t1, 0($t0)
  sw $t1, -2304($s8)
  la $t0, -1644($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2308($s8)
  lw $t0, -2308($s8)
  lw $t1, 0($t0)
  sw $t1, -2312($s8)
  lw $t0, -2304($s8)
  lw $t1, -2312($s8)
  bne $t0, $t1, label332
  j label333
label332:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2296($s8)
label333:
  lw $t0, -2296($s8)
  lw $t1, -2292($s8)
  sw $t0, 0($t1)
  lw $t0, -2292($s8)
  lw $t1, 0($t0)
  sw $t1, -2316($s8)
  lw $t0, -2316($s8)
  move $t1, $t0
  sw $t1, -2320($s8)
  lw $t0, -2320($s8)
  li $t1, 0
  beq $t0, $t1, label331
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2324($s8)
  lw $t0, -2324($s8)
  lw $t1, 0($t0)
  sw $t1, -2328($s8)
  lw $t0, -2328($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2332($s8)
  la $t0, -4($s8)
  lw $t1, -2332($s8)
  add $t2, $t0, $t1
  sw $t2, -2336($s8)
  li $t0, -242514981
  move $t1, $t0
  sw $t1, -2340($s8)
  lw $t0, -2340($s8)
  lw $t1, -2336($s8)
  sw $t0, 0($t1)
  lw $t0, -2336($s8)
  lw $t1, 0($t0)
  sw $t1, -2344($s8)
  lw $t0, -2344($s8)
  move $t1, $t0
  sw $t1, -2348($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1644($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2352($s8)
  lw $t0, -2352($s8)
  lw $t1, 0($t0)
  sw $t1, -2356($s8)
  lw $t0, -2356($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2360($s8)
  la $t0, -4($s8)
  lw $t1, -2360($s8)
  add $t2, $t0, $t1
  sw $t2, -2364($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2368($s8)
  lw $t0, -2368($s8)
  lw $t1, 0($t0)
  sw $t1, -2372($s8)
  la $t0, -1652($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2376($s8)
  lw $t0, -2376($s8)
  lw $t1, 0($t0)
  sw $t1, -2380($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 1929221955
  sw $t1, 4($sp)
  lw $t2, -2380($s8)
  sw $t2, 8($sp)
  lw $t3, -2372($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2384($s8)
  lw $t0, -2384($s8)
  lw $t1, -2364($s8)
  sw $t0, 0($t1)
  lw $t0, -2364($s8)
  lw $t1, 0($t0)
  sw $t1, -2388($s8)
  lw $t0, -2388($s8)
  move $t1, $t0
  sw $t1, -2392($s8)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2396($s8)
  lw $t0, -2396($s8)
  lw $t1, 0($t0)
  sw $t1, -2400($s8)
  la $t0, -1644($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2404($s8)
  lw $t0, -2404($s8)
  lw $t1, 0($t0)
  sw $t1, -2408($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2412($s8)
  lw $t0, -2412($s8)
  lw $t1, 0($t0)
  sw $t1, -2416($s8)
  la $t0, -1652($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2420($s8)
  lw $t0, -2420($s8)
  lw $t1, 0($t0)
  sw $t1, -2424($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, -2424($s8)
  sw $t2, 8($sp)
  lw $t3, -2416($s8)
  sw $t3, 12($sp)
  lw $t4, -2408($s8)
  sw $t4, 16($sp)
  lw $t5, -2400($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2428($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2432($s8)
  lw $t0, 16($s8)
  lw $t1, 12($s8)
  blt $t0, $t1, label334
  j label335
label334:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2432($s8)
label335:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -112($s8)
  sw $t1, 4($sp)
  lw $t2, -108($s8)
  sw $t2, 8($sp)
  lw $t3, -32($s8)
  sw $t3, 12($sp)
  lw $t4, -28($s8)
  sw $t4, 16($sp)
  li $t5, -1481734194
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2436($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2440($s8)
  lw $t0, -116($s8)
  lw $t1, -120($s8)
  blt $t0, $t1, label336
  j label337
label336:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2440($s8)
label337:
  li $t0, 0
  move $t1, $t0
  sw $t1, -2444($s8)
  lw $t0, -124($s8)
  lw $t1, -128($s8)
  bgt $t0, $t1, label338
  j label339
label338:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2444($s8)
label339:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2444($s8)
  sw $t1, 4($sp)
  lw $t2, -2440($s8)
  sw $t2, 8($sp)
  lw $t3, -2436($s8)
  sw $t3, 12($sp)
  lw $t4, -2432($s8)
  sw $t4, 16($sp)
  lw $t5, -2428($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2448($s8)
  la $t0, -1644($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2452($s8)
  lw $t0, -2452($s8)
  lw $t1, 0($t0)
  sw $t1, -2456($s8)
  lw $t0, -2456($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2460($s8)
  la $t0, -4($s8)
  lw $t1, -2460($s8)
  add $t2, $t0, $t1
  sw $t2, -2464($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2468($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2472($s8)
  lw $t0, -2472($s8)
  lw $t1, 0($t0)
  sw $t1, -2476($s8)
  lw $t0, -2476($s8)
  li $t1, 0
  bne $t0, $t1, label341
  j label340
label340:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2468($s8)
label341:
  lw $t0, -2468($s8)
  lw $t1, -2464($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2480($s8)
  lw $t0, -2480($s8)
  lw $t1, 0($t0)
  sw $t1, -2484($s8)
  lw $t0, -2484($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2488($s8)
  la $t0, -4($s8)
  lw $t1, -2488($s8)
  add $t2, $t0, $t1
  sw $t2, -2492($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2496($s8)
  la $t0, -1644($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2500($s8)
  lw $t0, -2500($s8)
  lw $t1, 0($t0)
  sw $t1, -2504($s8)
  la $t0, -1652($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2508($s8)
  lw $t0, -2508($s8)
  lw $t1, 0($t0)
  sw $t1, -2512($s8)
  lw $t0, -2504($s8)
  lw $t1, -2512($s8)
  beq $t0, $t1, label342
  j label343
label342:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2496($s8)
label343:
  lw $t0, -2496($s8)
  lw $t1, -2492($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 5
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2516($s8)
  lw $t0, -2516($s8)
  lw $t1, 0($t0)
  sw $t1, -2520($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2524($s8)
  lw $t0, -2524($s8)
  lw $t1, 0($t0)
  sw $t1, -2528($s8)
  la $t0, -1652($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2532($s8)
  lw $t0, -2532($s8)
  lw $t1, 0($t0)
  sw $t1, -2536($s8)
  la $t0, -1644($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2540($s8)
  lw $t0, -2540($s8)
  lw $t1, 0($t0)
  sw $t1, -2544($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2544($s8)
  sw $t1, 4($sp)
  lw $t2, -2536($s8)
  sw $t2, 8($sp)
  li $t3, -1661389384
  sw $t3, 12($sp)
  lw $t4, -2528($s8)
  sw $t4, 16($sp)
  lw $t5, -2520($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2548($s8)
  li $t0, -2044105594
  lw $t1, 20($s8)
  add $t2, $t0, $t1
  sw $t2, -2552($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -640571008
  sw $t1, 4($sp)
  lw $t2, -32($s8)
  sw $t2, 8($sp)
  lw $t3, -28($s8)
  sw $t3, 12($sp)
  lw $t4, 12($s8)
  sw $t4, 16($sp)
  lw $t5, 16($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2556($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -116($s8)
  sw $t1, 4($sp)
  lw $t2, -112($s8)
  sw $t2, 8($sp)
  lw $t3, -108($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2560($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -128($s8)
  sw $t1, 4($sp)
  lw $t2, -124($s8)
  sw $t2, 8($sp)
  lw $t3, -120($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2564($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2564($s8)
  sw $t1, 4($sp)
  lw $t2, -2560($s8)
  sw $t2, 8($sp)
  lw $t3, -2556($s8)
  sw $t3, 12($sp)
  lw $t4, -2552($s8)
  sw $t4, 16($sp)
  lw $t5, -2548($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2568($s8)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2572($s8)
  lw $t0, -2572($s8)
  lw $t1, 0($t0)
  sw $t1, -2576($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2580($s8)
  lw $t0, -2580($s8)
  lw $t1, 0($t0)
  sw $t1, -2584($s8)
  la $t0, -1644($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2588($s8)
  lw $t0, -2588($s8)
  lw $t1, 0($t0)
  sw $t1, -2592($s8)
  la $t0, -1652($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2596($s8)
  lw $t0, -2596($s8)
  lw $t1, 0($t0)
  sw $t1, -2600($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, -2600($s8)
  sw $t2, 8($sp)
  lw $t3, -2592($s8)
  sw $t3, 12($sp)
  lw $t4, -2584($s8)
  sw $t4, 16($sp)
  lw $t5, -2576($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2604($s8)
  li $t0, -1345569622
  move $t1, $t0
  sw $t1, 16($s8)
  lw $t0, 16($s8)
  move $t1, $t0
  sw $t1, -2608($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -108($s8)
  sw $t1, 4($sp)
  lw $t2, -32($s8)
  sw $t2, 8($sp)
  li $t3, 787210291
  sw $t3, 12($sp)
  lw $t4, -28($s8)
  sw $t4, 16($sp)
  lw $t5, 12($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2612($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2612($s8)
  sw $t1, 4($sp)
  lw $t2, -2608($s8)
  sw $t2, 8($sp)
  lw $t3, -2604($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2616($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1652($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2620($s8)
  lw $t0, -2620($s8)
  lw $t1, 0($t0)
  sw $t1, -2624($s8)
  lw $t0, -2624($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2628($s8)
  la $t0, -12($s8)
  lw $t1, -2628($s8)
  add $t2, $t0, $t1
  sw $t2, -2632($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2636($s8)
  lw $t0, -2636($s8)
  lw $t1, 0($t0)
  sw $t1, -2640($s8)
  la $t0, -1644($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2644($s8)
  lw $t0, -2644($s8)
  lw $t1, 0($t0)
  sw $t1, -2648($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, -2648($s8)
  sw $t2, 8($sp)
  lw $t3, -2640($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2652($s8)
  lw $t0, -2652($s8)
  lw $t1, -2632($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2656($s8)
  lw $t0, -2656($s8)
  lw $t1, 0($t0)
  sw $t1, -2660($s8)
  lw $t0, -2660($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2664($s8)
  la $t0, -12($s8)
  lw $t1, -2664($s8)
  add $t2, $t0, $t1
  sw $t2, -2668($s8)
  la $t0, -1652($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2672($s8)
  lw $t0, -2672($s8)
  lw $t1, 0($t0)
  sw $t1, -2676($s8)
  la $t0, -1644($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2680($s8)
  lw $t0, -2680($s8)
  lw $t1, 0($t0)
  sw $t1, -2684($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, -2684($s8)
  sw $t2, 8($sp)
  lw $t3, -2676($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2688($s8)
  lw $t0, -2688($s8)
  lw $t1, -2668($s8)
  sw $t0, 0($t1)
  la $t0, -1652($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2692($s8)
  lw $t0, -2692($s8)
  lw $t1, 0($t0)
  sw $t1, -2696($s8)
  lw $t0, -2696($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2700($s8)
  la $t0, -12($s8)
  lw $t1, -2700($s8)
  add $t2, $t0, $t1
  sw $t2, -2704($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2708($s8)
  lw $t0, -2708($s8)
  lw $t1, 0($t0)
  sw $t1, -2712($s8)
  la $t0, -1644($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2716($s8)
  lw $t0, -2716($s8)
  lw $t1, 0($t0)
  sw $t1, -2720($s8)
  lw $t0, -2712($s8)
  lw $t1, -2720($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -2724($s8)
  lw $t0, -2724($s8)
  lw $t1, -2704($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2728($s8)
  lw $t0, -2728($s8)
  lw $t1, 0($t0)
  sw $t1, -2732($s8)
  lw $t0, -2732($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2736($s8)
  la $t0, -12($s8)
  lw $t1, -2736($s8)
  add $t2, $t0, $t1
  sw $t2, -2740($s8)
  la $t0, -1652($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2744($s8)
  lw $t0, -2744($s8)
  lw $t1, 0($t0)
  sw $t1, -2748($s8)
  la $t0, -1644($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2752($s8)
  lw $t0, -2752($s8)
  lw $t1, 0($t0)
  sw $t1, -2756($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  lw $t4, -2756($s8)
  sw $t4, 16($sp)
  lw $t5, -2748($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2760($s8)
  lw $t0, -2760($s8)
  lw $t1, -2740($s8)
  sw $t0, 0($t1)
  lw $t0, -2348($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -2392($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -2448($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label321
label331:
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2764($s8)
  lw $t0, -2764($s8)
  lw $t1, 0($t0)
  sw $t1, -2768($s8)
  lw $t0, -2768($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2772($s8)
  la $t0, -12($s8)
  lw $t1, -2772($s8)
  add $t2, $t0, $t1
  sw $t2, -2776($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2780($s8)
  la $t0, -1652($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2784($s8)
  lw $t0, -2784($s8)
  lw $t1, 0($t0)
  sw $t1, -2788($s8)
  lw $t0, -2788($s8)
  li $t1, 426622628
  bne $t0, $t1, label344
  j label345
label344:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2780($s8)
label345:
  lw $t0, -2780($s8)
  lw $t1, -2776($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1652($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2792($s8)
  lw $t0, -2792($s8)
  lw $t1, 0($t0)
  sw $t1, -2796($s8)
  lw $t0, -2796($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2800($s8)
  la $t0, -12($s8)
  lw $t1, -2800($s8)
  add $t2, $t0, $t1
  sw $t2, -2804($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2808($s8)
  lw $t0, -2808($s8)
  lw $t1, 0($t0)
  sw $t1, -2812($s8)
  la $t0, -1644($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2816($s8)
  lw $t0, -2816($s8)
  lw $t1, 0($t0)
  sw $t1, -2820($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -404854029
  sw $t1, 4($sp)
  lw $t2, -2820($s8)
  sw $t2, 8($sp)
  lw $t3, -2812($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2824($s8)
  lw $t0, -2824($s8)
  lw $t1, -2804($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2828($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2832($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2836($s8)
  lw $t0, -2836($s8)
  lw $t1, 0($t0)
  sw $t1, -2840($s8)
  li $t0, 704381485
  lw $t1, -2840($s8)
  beq $t0, $t1, label346
  j label347
label346:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2832($s8)
label347:
  lw $t0, -2832($s8)
  lw $t1, -2828($s8)
  sw $t0, 0($t1)
  lw $t0, -1796($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label316
label317:
  lw $t0, -28($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -32($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -108($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -112($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -116($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -120($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -124($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -128($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2844($s8)
  lw $t0, -2844($s8)
  lw $t1, 0($t0)
  sw $t1, -2848($s8)
  lw $t0, -2848($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2852($s8)
  la $t0, -12($s8)
  lw $t1, -2852($s8)
  add $t2, $t0, $t1
  sw $t2, -2856($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -32($s8)
  sw $t1, 4($sp)
  lw $t2, -28($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  lw $t4, 16($s8)
  sw $t4, 16($sp)
  lw $t5, 20($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2860($s8)
  lw $t0, -2860($s8)
  lw $t1, -2856($s8)
  sw $t0, 0($t1)
  lw $t0, -2856($s8)
  lw $t1, 0($t0)
  sw $t1, -2864($s8)
  lw $t0, -2864($s8)
  move $t1, $t0
  sw $t1, -2868($s8)
  lw $t0, -2868($s8)
  move $v0, $t0
  move $sp, $s8
  lw $s8, 0($sp)
  addi $sp, $sp, 4
  jr $ra

i_func_151:
  addi $sp, $sp, -4
  sw $s8, 0($sp)
  move $s8, $sp
  addi $sp, $sp, -4096
  lw $t0, 8($s8)
  li $t1, 0
  bgt $t0, $t1, label348
  li $t0, -553567727
  move $v0, $t0
  move $sp, $s8
  lw $s8, 0($sp)
  addi $sp, $sp, 4
  jr $ra
  j label349
label348:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label349:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 1296570622
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 12($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -4($s8)
  li $t0, 1115826410
  move $t1, $t0
  sw $t1, -8($s8)
  lw $t0, -4($s8)
  lw $t1, -8($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, 12($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -12($s8)
  li $t0, -652018830
  move $t1, $t0
  sw $t1, -16($s8)
  li $t0, -770003869
  move $t1, $t0
  sw $t1, -20($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  lw $t0, 12($s8)
  lw $t1, -4($s8)
  sub $t2, $t0, $t1
  sw $t2, -24($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -28($s8)
  lw $t0, -8($s8)
  lw $t1, -12($s8)
  bge $t0, $t1, label350
  j label351
label350:
  li $t0, 1
  move $t1, $t0
  sw $t1, -28($s8)
label351:
  lw $t0, -16($s8)
  lw $t1, -20($s8)
  sub $t2, $t0, $t1
  sw $t2, -32($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -32($s8)
  sw $t1, 4($sp)
  lw $t2, -28($s8)
  sw $t2, 8($sp)
  lw $t3, -24($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -36($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -40($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -44($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -48($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -52($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label352:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 12($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -56($s8)
  lw $t0, -56($s8)
  li $t1, 0
  beq $t0, $t1, label353
  li $t0, 0
  move $t1, $t0
  sw $t1, -60($s8)
  lw $t0, -40($s8)
  li $t1, 10
  blt $t0, $t1, label354
  j label355
label354:
  li $t0, 1
  move $t1, $t0
  sw $t1, -60($s8)
label355:
  lw $t0, -60($s8)
  li $t1, 0
  beq $t0, $t1, label353
  li $t0, 683307573
  move $t1, $t0
  sw $t1, -76($s8)
  li $t0, -131713221
  move $t1, $t0
  sw $t1, -80($s8)
  li $t0, -992992215
  move $t1, $t0
  sw $t1, -84($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -64($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -88($s8)
  lw $t0, -4($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_add
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -92($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -96($s8)
  lw $t0, -8($s8)
  lw $t1, -12($s8)
  blt $t0, $t1, label356
  j label357
label356:
  li $t0, 1
  move $t1, $t0
  sw $t1, -96($s8)
label357:
  li $t0, 0
  move $t1, $t0
  sw $t1, -100($s8)
  lw $t0, -16($s8)
  lw $t1, -20($s8)
  blt $t0, $t1, label358
  j label359
label358:
  li $t0, 1
  move $t1, $t0
  sw $t1, -100($s8)
label359:
  li $t0, 0
  move $t1, $t0
  sw $t1, -104($s8)
  lw $t0, -36($s8)
  lw $t1, -76($s8)
  bgt $t0, $t1, label360
  j label361
label360:
  li $t0, 1
  move $t1, $t0
  sw $t1, -104($s8)
label361:
  li $t0, 0
  move $t1, $t0
  sw $t1, -108($s8)
  lw $t0, -80($s8)
  lw $t1, -84($s8)
  bge $t0, $t1, label362
  j label363
label362:
  li $t0, 1
  move $t1, $t0
  sw $t1, -108($s8)
label363:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -108($s8)
  sw $t1, 4($sp)
  lw $t2, -104($s8)
  sw $t2, 8($sp)
  lw $t3, -100($s8)
  sw $t3, 12($sp)
  lw $t4, -96($s8)
  sw $t4, 16($sp)
  lw $t5, -92($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -112($s8)
  lw $t0, -112($s8)
  lw $t1, -88($s8)
  sw $t0, 0($t1)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -116($s8)
  la $t0, -64($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -120($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -124($s8)
  lw $t0, -4($s8)
  lw $t1, -8($s8)
  beq $t0, $t1, label364
  j label365
label364:
  li $t0, 1
  move $t1, $t0
  sw $t1, -124($s8)
label365:
  lw $t0, -124($s8)
  lw $t1, -120($s8)
  sw $t0, 0($t1)
  lw $t0, -120($s8)
  lw $t1, 0($t0)
  sw $t1, -128($s8)
  lw $t0, -128($s8)
  move $t1, $t0
  sw $t1, -132($s8)
  lw $t0, -132($s8)
  lw $t1, -116($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -72($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -136($s8)
  la $t0, -64($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -140($s8)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -144($s8)
  lw $t0, -144($s8)
  lw $t1, 0($t0)
  sw $t1, -148($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -148($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -152($s8)
  lw $t0, -152($s8)
  lw $t1, -140($s8)
  sw $t0, 0($t1)
  lw $t0, -140($s8)
  lw $t1, 0($t0)
  sw $t1, -156($s8)
  lw $t0, -156($s8)
  move $t1, $t0
  sw $t1, -160($s8)
  lw $t0, -160($s8)
  lw $t1, -136($s8)
  sw $t0, 0($t1)
  li $t0, 0
  move $t1, $t0
  sw $t1, -164($s8)
  lw $t0, -40($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -40($s8)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -64($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -168($s8)
  lw $t0, -168($s8)
  lw $t1, 0($t0)
  sw $t1, -172($s8)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -176($s8)
  lw $t0, -176($s8)
  lw $t1, 0($t0)
  sw $t1, -180($s8)
  lw $t0, -180($s8)
  sw $t0, 0($sp)
  lw $t1, -172($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_div
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -184($s8)
  la $t0, -72($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -188($s8)
  lw $t0, -188($s8)
  lw $t1, 0($t0)
  sw $t1, -192($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, -192($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -196($s8)
  lw $t0, -12($s8)
  move $t1, $t0
  sw $t1, -8($s8)
  lw $t0, -8($s8)
  move $t1, $t0
  sw $t1, -200($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -200($s8)
  sw $t1, 4($sp)
  lw $t2, -196($s8)
  sw $t2, 8($sp)
  lw $t3, -184($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -204($s8)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -208($s8)
  lw $t0, -208($s8)
  lw $t1, 0($t0)
  sw $t1, -212($s8)
  lw $t0, -212($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -216($s8)
  la $t0, -64($s8)
  lw $t1, -216($s8)
  add $t2, $t0, $t1
  sw $t2, -220($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -224($s8)
  la $t0, -72($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -228($s8)
  lw $t0, -228($s8)
  lw $t1, 0($t0)
  sw $t1, -232($s8)
  li $t0, -1549867130
  lw $t1, -232($s8)
  beq $t0, $t1, label366
  j label367
label366:
  li $t0, 1
  move $t1, $t0
  sw $t1, -224($s8)
label367:
  lw $t0, -224($s8)
  lw $t1, -220($s8)
  sw $t0, 0($t1)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -236($s8)
  lw $t0, -236($s8)
  lw $t1, 0($t0)
  sw $t1, -240($s8)
  lw $t0, -240($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -244($s8)
  la $t0, -64($s8)
  lw $t1, -244($s8)
  add $t2, $t0, $t1
  sw $t2, -248($s8)
  li $t0, 1068221650
  move $t1, $t0
  sw $t1, -252($s8)
  lw $t0, -252($s8)
  lw $t1, -248($s8)
  sw $t0, 0($t1)
  la $t0, -64($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -256($s8)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -260($s8)
  lw $t0, -260($s8)
  lw $t1, 0($t0)
  sw $t1, -264($s8)
  lw $t0, -264($s8)
  li $t1, 1626120473
  add $t2, $t0, $t1
  sw $t2, -268($s8)
  lw $t0, -268($s8)
  lw $t1, -256($s8)
  sw $t0, 0($t1)
  la $t0, -64($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -272($s8)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -276($s8)
  lw $t0, -276($s8)
  lw $t1, 0($t0)
  sw $t1, -280($s8)
  la $t0, -72($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -284($s8)
  lw $t0, -284($s8)
  lw $t1, 0($t0)
  sw $t1, -288($s8)
  lw $t0, -280($s8)
  lw $t1, -288($s8)
  mul $t2, $t0, $t1
  sw $t2, -292($s8)
  lw $t0, -292($s8)
  lw $t1, -272($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -296($s8)
  la $t0, -64($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -300($s8)
  lw $t0, -300($s8)
  lw $t1, 0($t0)
  sw $t1, -304($s8)
  lw $t0, -304($s8)
  li $t1, 0
  beq $t0, $t1, label369
  li $t0, -1521512366
  li $t1, 0
  bne $t0, $t1, label368
  j label369
label368:
  li $t0, 1
  move $t1, $t0
  sw $t1, -296($s8)
label369:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -296($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -308($s8)
label370:
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -312($s8)
  lw $t0, -312($s8)
  lw $t1, 0($t0)
  sw $t1, -316($s8)
  lw $t0, -316($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -320($s8)
  la $t0, -64($s8)
  lw $t1, -320($s8)
  add $t2, $t0, $t1
  sw $t2, -324($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -328($s8)
  la $t0, -72($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -332($s8)
  lw $t0, -332($s8)
  lw $t1, 0($t0)
  sw $t1, -336($s8)
  lw $t0, -336($s8)
  li $t1, -864454307
  bne $t0, $t1, label372
  j label373
label372:
  li $t0, 1
  move $t1, $t0
  sw $t1, -328($s8)
label373:
  lw $t0, -328($s8)
  lw $t1, -324($s8)
  sw $t0, 0($t1)
  lw $t0, -324($s8)
  lw $t1, 0($t0)
  sw $t1, -340($s8)
  lw $t0, -340($s8)
  move $t1, $t0
  sw $t1, -344($s8)
  lw $t0, -344($s8)
  li $t1, 0
  beq $t0, $t1, label371
  li $t0, 0
  move $t1, $t0
  sw $t1, -348($s8)
  lw $t0, -164($s8)
  li $t1, 10
  blt $t0, $t1, label374
  j label375
label374:
  li $t0, 1
  move $t1, $t0
  sw $t1, -348($s8)
label375:
  lw $t0, -348($s8)
  li $t1, 0
  beq $t0, $t1, label371
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -64($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -356($s8)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -360($s8)
  lw $t0, -360($s8)
  lw $t1, 0($t0)
  sw $t1, -364($s8)
  lw $t0, -364($s8)
  lw $t1, -356($s8)
  sw $t0, 0($t1)
  lw $t0, -356($s8)
  lw $t1, 0($t0)
  sw $t1, -368($s8)
  lw $t0, -368($s8)
  move $t1, $t0
  sw $t1, -372($s8)
  la $t0, -72($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -376($s8)
  lw $t0, -376($s8)
  lw $t1, 0($t0)
  sw $t1, -380($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  li $t2, -1984843593
  sw $t2, 8($sp)
  lw $t3, -380($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -384($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -388($s8)
  li $t0, -2073872216
  li $t1, 0
  bne $t0, $t1, label377
  j label376
label376:
  li $t0, 1
  move $t1, $t0
  sw $t1, -388($s8)
label377:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -388($s8)
  sw $t1, 4($sp)
  lw $t2, -384($s8)
  sw $t2, 8($sp)
  lw $t3, -372($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -392($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -352($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -396($s8)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -400($s8)
  lw $t0, -400($s8)
  lw $t1, 0($t0)
  sw $t1, -404($s8)
  lw $t0, -404($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -408($s8)
  la $t0, -64($s8)
  lw $t1, -408($s8)
  add $t2, $t0, $t1
  sw $t2, -412($s8)
  la $t0, -72($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -416($s8)
  lw $t0, -416($s8)
  lw $t1, 0($t0)
  sw $t1, -420($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, -420($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -424($s8)
  lw $t0, -424($s8)
  lw $t1, -412($s8)
  sw $t0, 0($t1)
  lw $t0, -412($s8)
  lw $t1, 0($t0)
  sw $t1, -428($s8)
  lw $t0, -428($s8)
  move $t1, $t0
  sw $t1, -432($s8)
  lw $t0, -432($s8)
  lw $t1, -396($s8)
  sw $t0, 0($t1)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -436($s8)
  lw $t0, -436($s8)
  lw $t1, 0($t0)
  sw $t1, -440($s8)
  lw $t0, -440($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -444($s8)
  la $t0, -64($s8)
  lw $t1, -444($s8)
  add $t2, $t0, $t1
  sw $t2, -448($s8)
  la $t0, -72($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -452($s8)
  lw $t0, -452($s8)
  lw $t1, 0($t0)
  sw $t1, -456($s8)
  la $t0, -352($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -460($s8)
  lw $t0, -460($s8)
  lw $t1, 0($t0)
  sw $t1, -464($s8)
  lw $t0, -464($s8)
  sw $t0, 0($sp)
  lw $t1, -456($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_mul
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -468($s8)
  lw $t0, -468($s8)
  lw $t1, -448($s8)
  sw $t0, 0($t1)
  lw $t0, -448($s8)
  lw $t1, 0($t0)
  sw $t1, -472($s8)
  lw $t0, -472($s8)
  move $t1, $t0
  sw $t1, -476($s8)
  lw $t0, -164($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -164($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -480($s8)
  lw $t0, -480($s8)
  lw $t1, 0($t0)
  sw $t1, -484($s8)
  lw $t0, -484($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -488($s8)
  la $t0, -64($s8)
  lw $t1, -488($s8)
  add $t2, $t0, $t1
  sw $t2, -492($s8)
  la $t0, -72($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -496($s8)
  lw $t0, -496($s8)
  lw $t1, 0($t0)
  sw $t1, -500($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -836464369
  sw $t1, 4($sp)
  li $t2, 1973327517
  sw $t2, 8($sp)
  lw $t3, -500($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -504($s8)
  lw $t0, -504($s8)
  lw $t1, -492($s8)
  sw $t0, 0($t1)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -508($s8)
  lw $t0, -508($s8)
  lw $t1, 0($t0)
  sw $t1, -512($s8)
  lw $t0, -512($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -516($s8)
  la $t0, -64($s8)
  lw $t1, -516($s8)
  add $t2, $t0, $t1
  sw $t2, -520($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -524($s8)
  la $t0, -72($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -528($s8)
  lw $t0, -528($s8)
  lw $t1, 0($t0)
  sw $t1, -532($s8)
  lw $t0, -532($s8)
  li $t1, 0
  beq $t0, $t1, label379
  la $t0, -352($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -536($s8)
  lw $t0, -536($s8)
  lw $t1, 0($t0)
  sw $t1, -540($s8)
  lw $t0, -540($s8)
  li $t1, 0
  bne $t0, $t1, label378
  j label379
label378:
  li $t0, 1
  move $t1, $t0
  sw $t1, -524($s8)
label379:
  lw $t0, -524($s8)
  lw $t1, -520($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -544($s8)
  lw $t0, -544($s8)
  lw $t1, 0($t0)
  sw $t1, -548($s8)
  lw $t0, -548($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -552($s8)
  la $t0, -64($s8)
  lw $t1, -552($s8)
  add $t2, $t0, $t1
  sw $t2, -556($s8)
  la $t0, -72($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -560($s8)
  lw $t0, -560($s8)
  lw $t1, 0($t0)
  sw $t1, -564($s8)
  la $t0, -352($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -568($s8)
  lw $t0, -568($s8)
  lw $t1, 0($t0)
  sw $t1, -572($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, -572($s8)
  sw $t2, 8($sp)
  lw $t3, -564($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -576($s8)
  lw $t0, -576($s8)
  lw $t1, -556($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -580($s8)
  lw $t0, -580($s8)
  lw $t1, 0($t0)
  sw $t1, -584($s8)
  lw $t0, -584($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -588($s8)
  la $t0, -64($s8)
  lw $t1, -588($s8)
  add $t2, $t0, $t1
  sw $t2, -592($s8)
  la $t0, -72($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -596($s8)
  lw $t0, -596($s8)
  lw $t1, 0($t0)
  sw $t1, -600($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -600($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -604($s8)
  lw $t0, -604($s8)
  lw $t1, -592($s8)
  sw $t0, 0($t1)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -608($s8)
  lw $t0, -608($s8)
  lw $t1, 0($t0)
  sw $t1, -612($s8)
  lw $t0, -612($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -616($s8)
  la $t0, -64($s8)
  lw $t1, -616($s8)
  add $t2, $t0, $t1
  sw $t2, -620($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -624($s8)
  la $t0, -72($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -628($s8)
  lw $t0, -628($s8)
  lw $t1, 0($t0)
  sw $t1, -632($s8)
  lw $t0, -632($s8)
  li $t1, 0
  bne $t0, $t1, label381
  j label380
label380:
  li $t0, 1
  move $t1, $t0
  sw $t1, -624($s8)
label381:
  lw $t0, -624($s8)
  lw $t1, -620($s8)
  sw $t0, 0($t1)
  la $t0, -64($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -636($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -640($s8)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -644($s8)
  lw $t0, -644($s8)
  lw $t1, 0($t0)
  sw $t1, -648($s8)
  la $t0, -72($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -652($s8)
  lw $t0, -652($s8)
  lw $t1, 0($t0)
  sw $t1, -656($s8)
  lw $t0, -648($s8)
  lw $t1, -656($s8)
  bgt $t0, $t1, label382
  j label383
label382:
  li $t0, 1
  move $t1, $t0
  sw $t1, -640($s8)
label383:
  lw $t0, -640($s8)
  lw $t1, -636($s8)
  sw $t0, 0($t1)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -660($s8)
  lw $t0, -660($s8)
  lw $t1, 0($t0)
  sw $t1, -664($s8)
  lw $t0, -664($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -668($s8)
  la $t0, -64($s8)
  lw $t1, -668($s8)
  add $t2, $t0, $t1
  sw $t2, -672($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -676($s8)
  la $t0, -72($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -680($s8)
  lw $t0, -680($s8)
  lw $t1, 0($t0)
  sw $t1, -684($s8)
  lw $t0, -684($s8)
  li $t1, 0
  beq $t0, $t1, label385
  la $t0, -352($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -688($s8)
  lw $t0, -688($s8)
  lw $t1, 0($t0)
  sw $t1, -692($s8)
  lw $t0, -692($s8)
  li $t1, 0
  bne $t0, $t1, label384
  j label385
label384:
  li $t0, 1
  move $t1, $t0
  sw $t1, -676($s8)
label385:
  lw $t0, -676($s8)
  lw $t1, -672($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -696($s8)
  lw $t0, -696($s8)
  lw $t1, 0($t0)
  sw $t1, -700($s8)
  lw $t0, -700($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -704($s8)
  la $t0, -64($s8)
  lw $t1, -704($s8)
  add $t2, $t0, $t1
  sw $t2, -708($s8)
  la $t0, -72($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -712($s8)
  lw $t0, -712($s8)
  lw $t1, 0($t0)
  sw $t1, -716($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -716($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -720($s8)
  lw $t0, -720($s8)
  lw $t1, -708($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -724($s8)
  lw $t0, -724($s8)
  lw $t1, 0($t0)
  sw $t1, -728($s8)
  lw $t0, -728($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -732($s8)
  la $t0, -64($s8)
  lw $t1, -732($s8)
  add $t2, $t0, $t1
  sw $t2, -736($s8)
  la $t0, -72($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -740($s8)
  lw $t0, -740($s8)
  lw $t1, 0($t0)
  sw $t1, -744($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -744($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -748($s8)
  lw $t0, -748($s8)
  lw $t1, -736($s8)
  sw $t0, 0($t1)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -752($s8)
  lw $t0, -752($s8)
  lw $t1, 0($t0)
  sw $t1, -756($s8)
  lw $t0, -756($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -760($s8)
  la $t0, -64($s8)
  lw $t1, -760($s8)
  add $t2, $t0, $t1
  sw $t2, -764($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -768($s8)
  la $t0, -72($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -772($s8)
  lw $t0, -772($s8)
  lw $t1, 0($t0)
  sw $t1, -776($s8)
  la $t0, -352($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -780($s8)
  lw $t0, -780($s8)
  lw $t1, 0($t0)
  sw $t1, -784($s8)
  lw $t0, -776($s8)
  lw $t1, -784($s8)
  beq $t0, $t1, label386
  j label387
label386:
  li $t0, 1
  move $t1, $t0
  sw $t1, -768($s8)
label387:
  lw $t0, -768($s8)
  lw $t1, -764($s8)
  sw $t0, 0($t1)
  lw $t0, -392($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -476($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label370
label371:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -788($s8)
  lw $t0, -788($s8)
  lw $t1, 0($t0)
  sw $t1, -792($s8)
  lw $t0, -792($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -796($s8)
  la $t0, -64($s8)
  lw $t1, -796($s8)
  add $t2, $t0, $t1
  sw $t2, -800($s8)
  la $t0, -72($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -804($s8)
  lw $t0, -804($s8)
  lw $t1, 0($t0)
  sw $t1, -808($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -808($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -812($s8)
  lw $t0, -812($s8)
  lw $t1, -800($s8)
  sw $t0, 0($t1)
  lw $t0, -76($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -80($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -84($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label352
label353:
  li $t0, 0
  move $t1, $t0
  sw $t1, -816($s8)
  lw $t0, -4($s8)
  lw $t1, -8($s8)
  ble $t0, $t1, label388
  j label389
label388:
  li $t0, 1
  move $t1, $t0
  sw $t1, -816($s8)
label389:
  lw $t0, -816($s8)
  move $t1, $t0
  sw $t1, 12($s8)
label390:
  li $t0, 0
  move $t1, $t0
  sw $t1, -820($s8)
  lw $t0, -4($s8)
  li $t1, 1621370278
  bge $t0, $t1, label392
  j label393
label392:
  li $t0, 1
  move $t1, $t0
  sw $t1, -820($s8)
label393:
  lw $t0, -820($s8)
  move $t1, $t0
  sw $t1, 12($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -824($s8)
  lw $t0, -824($s8)
  li $t1, 0
  beq $t0, $t1, label391
  li $t0, 1939066104
  move $t1, $t0
  sw $t1, -836($s8)
  li $t0, 289483817
  move $t1, $t0
  sw $t1, -840($s8)
  li $t0, 481757250
  move $t1, $t0
  sw $t1, -844($s8)
  lw $t0, 8($s8)
  li $t1, 4
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -8($s8)
  sw $t1, 4($sp)
  lw $t2, -4($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -848($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  li $t2, 1487937253
  sw $t2, 8($sp)
  lw $t3, -12($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -852($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -856($s8)
  lw $t0, -20($s8)
  lw $t1, -36($s8)
  ble $t0, $t1, label394
  j label395
label394:
  li $t0, 1
  move $t1, $t0
  sw $t1, -856($s8)
label395:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -844($s8)
  sw $t1, 4($sp)
  lw $t2, -840($s8)
  sw $t2, 8($sp)
  li $t3, -1069432301
  sw $t3, 12($sp)
  li $t4, -1827320605
  sw $t4, 16($sp)
  lw $t5, -836($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -860($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -864($s8)
  li $t0, 2016338115
  li $t1, 0
  bne $t0, $t1, label397
  j label396
label396:
  li $t0, 1
  move $t1, $t0
  sw $t1, -864($s8)
label397:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -864($s8)
  sw $t1, 4($sp)
  lw $t2, -860($s8)
  sw $t2, 8($sp)
  lw $t3, -856($s8)
  sw $t3, 12($sp)
  lw $t4, -852($s8)
  sw $t4, 16($sp)
  lw $t5, -848($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -868($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -828($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -872($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 12($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -876($s8)
  lw $t0, -876($s8)
  lw $t1, -872($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -880($s8)
  lw $t0, 12($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -884($s8)
  la $t0, -828($s8)
  lw $t1, -884($s8)
  add $t2, $t0, $t1
  sw $t2, -888($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -12($s8)
  sw $t1, 4($sp)
  lw $t2, -8($s8)
  sw $t2, 8($sp)
  lw $t3, -4($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -892($s8)
  lw $t0, -892($s8)
  lw $t1, -888($s8)
  sw $t0, 0($t1)
  lw $t0, -888($s8)
  lw $t1, 0($t0)
  sw $t1, -896($s8)
  lw $t0, -896($s8)
  move $t1, $t0
  sw $t1, -900($s8)
  lw $t0, -900($s8)
  lw $t1, -880($s8)
  sw $t0, 0($t1)
  li $t0, 0
  move $t1, $t0
  sw $t1, -904($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -908($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -912($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -916($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -920($s8)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label398:
  la $t0, -828($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -924($s8)
  lw $t0, -924($s8)
  lw $t1, 0($t0)
  sw $t1, -928($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -928($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -932($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -936($s8)
  lw $t0, -936($s8)
  lw $t1, 0($t0)
  sw $t1, -940($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, -940($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -944($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -948($s8)
  lw $t0, -8($s8)
  lw $t1, -12($s8)
  beq $t0, $t1, label400
  j label401
label400:
  li $t0, 1
  move $t1, $t0
  sw $t1, -948($s8)
label401:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -948($s8)
  sw $t1, 4($sp)
  lw $t2, -944($s8)
  sw $t2, 8($sp)
  lw $t3, -932($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -952($s8)
  lw $t0, -952($s8)
  li $t1, 0
  beq $t0, $t1, label399
  la $t0, -956($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -972($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -976($s8)
  lw $t0, -976($s8)
  lw $t1, 0($t0)
  sw $t1, -980($s8)
  lw $t0, -980($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -984($s8)
  la $t0, -828($s8)
  lw $t1, -984($s8)
  add $t2, $t0, $t1
  sw $t2, -988($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -992($s8)
  lw $t0, 12($s8)
  li $t1, -812502318
  bne $t0, $t1, label402
  j label403
label402:
  li $t0, 1
  move $t1, $t0
  sw $t1, -992($s8)
label403:
  lw $t0, -992($s8)
  lw $t1, -988($s8)
  sw $t0, 0($t1)
  lw $t0, -988($s8)
  lw $t1, 0($t0)
  sw $t1, -996($s8)
  lw $t0, -996($s8)
  move $t1, $t0
  sw $t1, -1000($s8)
  lw $t0, -1000($s8)
  lw $t1, -972($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -960($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1004($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1008($s8)
  lw $t0, -1008($s8)
  lw $t1, 0($t0)
  sw $t1, -1012($s8)
  lw $t0, -1012($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1016($s8)
  la $t0, -828($s8)
  lw $t1, -1016($s8)
  add $t2, $t0, $t1
  sw $t2, -1020($s8)
  la $t0, -956($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1024($s8)
  lw $t0, -1024($s8)
  lw $t1, 0($t0)
  sw $t1, -1028($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -8($s8)
  sw $t1, 4($sp)
  lw $t2, -4($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  li $t4, 1604149745
  sw $t4, 16($sp)
  lw $t5, -1028($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1032($s8)
  lw $t0, -1032($s8)
  lw $t1, -1020($s8)
  sw $t0, 0($t1)
  lw $t0, -1020($s8)
  lw $t1, 0($t0)
  sw $t1, -1036($s8)
  lw $t0, -1036($s8)
  move $t1, $t0
  sw $t1, -1040($s8)
  lw $t0, -1040($s8)
  lw $t1, -1004($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 4
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -968($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1044($s8)
  la $t0, -828($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1048($s8)
  lw $t0, -1048($s8)
  lw $t1, 0($t0)
  sw $t1, -1052($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1056($s8)
  lw $t0, -1056($s8)
  lw $t1, 0($t0)
  sw $t1, -1060($s8)
  lw $t0, -1052($s8)
  lw $t1, -1060($s8)
  mul $t2, $t0, $t1
  sw $t2, -1064($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1068($s8)
  la $t0, -956($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1072($s8)
  lw $t0, -1072($s8)
  lw $t1, 0($t0)
  sw $t1, -1076($s8)
  la $t0, -960($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1080($s8)
  lw $t0, -1080($s8)
  lw $t1, 0($t0)
  sw $t1, -1084($s8)
  lw $t0, -1076($s8)
  lw $t1, -1084($s8)
  blt $t0, $t1, label404
  j label405
label404:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1068($s8)
label405:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -12($s8)
  sw $t1, 4($sp)
  lw $t2, -8($s8)
  sw $t2, 8($sp)
  lw $t3, -4($s8)
  sw $t3, 12($sp)
  lw $t4, 12($s8)
  sw $t4, 16($sp)
  li $t5, -1689877589
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1088($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -36($s8)
  sw $t1, 4($sp)
  lw $t2, -20($s8)
  sw $t2, 8($sp)
  li $t3, 2023790011
  sw $t3, 12($sp)
  lw $t4, -16($s8)
  sw $t4, 16($sp)
  li $t5, -536435431
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1092($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -844($s8)
  sw $t1, 4($sp)
  lw $t2, -840($s8)
  sw $t2, 8($sp)
  lw $t3, -836($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1096($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1096($s8)
  sw $t1, 4($sp)
  lw $t2, -1092($s8)
  sw $t2, 8($sp)
  lw $t3, -1088($s8)
  sw $t3, 12($sp)
  lw $t4, -1068($s8)
  sw $t4, 16($sp)
  lw $t5, -1064($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1100($s8)
  lw $t0, -1100($s8)
  lw $t1, -1044($s8)
  sw $t0, 0($t1)
  la $t0, -968($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1104($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1108($s8)
  lw $t0, -1108($s8)
  lw $t1, 0($t0)
  sw $t1, -1112($s8)
  lw $t0, -1112($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1116($s8)
  la $t0, -828($s8)
  lw $t1, -1116($s8)
  add $t2, $t0, $t1
  sw $t2, -1120($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1124($s8)
  la $t0, -956($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1128($s8)
  lw $t0, -1128($s8)
  lw $t1, 0($t0)
  sw $t1, -1132($s8)
  lw $t0, -1132($s8)
  li $t1, 0
  bne $t0, $t1, label407
  j label406
label406:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1124($s8)
label407:
  lw $t0, -1124($s8)
  lw $t1, -1120($s8)
  sw $t0, 0($t1)
  lw $t0, -1120($s8)
  lw $t1, 0($t0)
  sw $t1, -1136($s8)
  lw $t0, -1136($s8)
  move $t1, $t0
  sw $t1, -1140($s8)
  lw $t0, -1140($s8)
  lw $t1, -1104($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -828($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1144($s8)
  lw $t0, -1144($s8)
  lw $t1, 0($t0)
  sw $t1, -1148($s8)
  lw $t0, -1148($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1152($s8)
  la $t0, -968($s8)
  lw $t1, -1152($s8)
  add $t2, $t0, $t1
  sw $t2, -1156($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1160($s8)
  lw $t0, -1160($s8)
  lw $t1, 0($t0)
  sw $t1, -1164($s8)
  la $t0, -956($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1168($s8)
  lw $t0, -1168($s8)
  lw $t1, 0($t0)
  sw $t1, -1172($s8)
  la $t0, -960($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1176($s8)
  lw $t0, -1176($s8)
  lw $t1, 0($t0)
  sw $t1, -1180($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1180($s8)
  sw $t1, 4($sp)
  lw $t2, -1172($s8)
  sw $t2, 8($sp)
  lw $t3, -1164($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1184($s8)
  lw $t0, -1184($s8)
  lw $t1, -1156($s8)
  sw $t0, 0($t1)
  la $t0, -968($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1188($s8)
  lw $t0, -1188($s8)
  lw $t1, 0($t0)
  sw $t1, -1192($s8)
  lw $t0, -1192($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1196($s8)
  la $t0, -828($s8)
  lw $t1, -1196($s8)
  add $t2, $t0, $t1
  sw $t2, -1200($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1204($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1208($s8)
  lw $t0, -1208($s8)
  lw $t1, 0($t0)
  sw $t1, -1212($s8)
  lw $t0, -1212($s8)
  li $t1, 0
  beq $t0, $t1, label409
  la $t0, -956($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1216($s8)
  lw $t0, -1216($s8)
  lw $t1, 0($t0)
  sw $t1, -1220($s8)
  lw $t0, -1220($s8)
  li $t1, 0
  bne $t0, $t1, label408
  j label409
label408:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1204($s8)
label409:
  lw $t0, -1204($s8)
  lw $t1, -1200($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -828($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1224($s8)
  lw $t0, -1224($s8)
  lw $t1, 0($t0)
  sw $t1, -1228($s8)
  lw $t0, -1228($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1232($s8)
  la $t0, -968($s8)
  lw $t1, -1232($s8)
  add $t2, $t0, $t1
  sw $t2, -1236($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1240($s8)
  lw $t0, -1240($s8)
  lw $t1, 0($t0)
  sw $t1, -1244($s8)
  la $t0, -956($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1248($s8)
  lw $t0, -1248($s8)
  lw $t1, 0($t0)
  sw $t1, -1252($s8)
  la $t0, -960($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1256($s8)
  lw $t0, -1256($s8)
  lw $t1, 0($t0)
  sw $t1, -1260($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1260($s8)
  sw $t1, 4($sp)
  lw $t2, -1252($s8)
  sw $t2, 8($sp)
  lw $t3, -1244($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1264($s8)
  lw $t0, -1264($s8)
  lw $t1, -1236($s8)
  sw $t0, 0($t1)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1268($s8)
  lw $t0, -1268($s8)
  lw $t1, 0($t0)
  sw $t1, -1272($s8)
  lw $t0, -1272($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1276($s8)
  la $t0, -828($s8)
  lw $t1, -1276($s8)
  add $t2, $t0, $t1
  sw $t2, -1280($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1284($s8)
  la $t0, -968($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1288($s8)
  lw $t0, -1288($s8)
  lw $t1, 0($t0)
  sw $t1, -1292($s8)
  la $t0, -956($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1296($s8)
  lw $t0, -1296($s8)
  lw $t1, 0($t0)
  sw $t1, -1300($s8)
  lw $t0, -1292($s8)
  lw $t1, -1300($s8)
  bge $t0, $t1, label410
  j label411
label410:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1284($s8)
label411:
  lw $t0, -1284($s8)
  lw $t1, -1280($s8)
  sw $t0, 0($t1)
  la $t0, -828($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1304($s8)
  lw $t0, -1304($s8)
  lw $t1, 0($t0)
  sw $t1, -1308($s8)
  lw $t0, -1308($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1312($s8)
  la $t0, -968($s8)
  lw $t1, -1312($s8)
  add $t2, $t0, $t1
  sw $t2, -1316($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1320($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1324($s8)
  lw $t0, -1324($s8)
  lw $t1, 0($t0)
  sw $t1, -1328($s8)
  lw $t0, -1328($s8)
  li $t1, 0
  beq $t0, $t1, label413
  li $t0, 1474312599
  li $t1, 0
  bne $t0, $t1, label412
  j label413
label412:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1320($s8)
label413:
  lw $t0, -1320($s8)
  lw $t1, -1316($s8)
  sw $t0, 0($t1)
  la $t0, -968($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1332($s8)
  lw $t0, -1332($s8)
  lw $t1, 0($t0)
  sw $t1, -1336($s8)
  lw $t0, -1336($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1340($s8)
  la $t0, -828($s8)
  lw $t1, -1340($s8)
  add $t2, $t0, $t1
  sw $t2, -1344($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1348($s8)
  lw $t0, -1348($s8)
  lw $t1, 0($t0)
  sw $t1, -1352($s8)
  la $t0, -956($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1356($s8)
  lw $t0, -1356($s8)
  lw $t1, 0($t0)
  sw $t1, -1360($s8)
  lw $t0, -1352($s8)
  lw $t1, -1360($s8)
  mul $t2, $t0, $t1
  sw $t2, -1364($s8)
  lw $t0, -1364($s8)
  lw $t1, -1344($s8)
  sw $t0, 0($t1)
  la $t0, -968($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1368($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1372($s8)
  la $t0, -828($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1376($s8)
  lw $t0, -1376($s8)
  lw $t1, 0($t0)
  sw $t1, -1380($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1384($s8)
  lw $t0, -1384($s8)
  lw $t1, 0($t0)
  sw $t1, -1388($s8)
  lw $t0, -1380($s8)
  lw $t1, -1388($s8)
  ble $t0, $t1, label414
  j label415
label414:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1372($s8)
label415:
  lw $t0, -1372($s8)
  lw $t1, -1368($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -828($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1392($s8)
  lw $t0, -1392($s8)
  lw $t1, 0($t0)
  sw $t1, -1396($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1400($s8)
  lw $t0, -1400($s8)
  lw $t1, 0($t0)
  sw $t1, -1404($s8)
  lw $t0, -1396($s8)
  lw $t1, -1404($s8)
  sub $t2, $t0, $t1
  sw $t2, -1408($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1408($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1412($s8)
  j label398
label399:
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1416($s8)
  lw $t0, -1416($s8)
  lw $t1, 0($t0)
  sw $t1, -1420($s8)
  lw $t0, -1420($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1424($s8)
  la $t0, -828($s8)
  lw $t1, -1424($s8)
  add $t2, $t0, $t1
  sw $t2, -1428($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1432($s8)
  lw $t0, 12($s8)
  lw $t1, -4($s8)
  beq $t0, $t1, label416
  j label417
label416:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1432($s8)
label417:
  lw $t0, -1432($s8)
  lw $t1, -1428($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -828($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1436($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1440($s8)
  lw $t0, -1440($s8)
  lw $t1, 0($t0)
  sw $t1, -1444($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1444($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1448($s8)
  lw $t0, -1448($s8)
  lw $t1, -1436($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 4
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label418:
  li $t0, 0
  move $t1, $t0
  sw $t1, -1452($s8)
  la $t0, -828($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1456($s8)
  lw $t0, -1456($s8)
  lw $t1, 0($t0)
  sw $t1, -1460($s8)
  lw $t0, -1460($s8)
  li $t1, -1125695867
  ble $t0, $t1, label420
  j label421
label420:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1452($s8)
label421:
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1464($s8)
  lw $t0, -1464($s8)
  lw $t1, 0($t0)
  sw $t1, -1468($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1468($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1472($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1476($s8)
  lw $t0, 12($s8)
  li $t1, -1727745908
  bge $t0, $t1, label422
  j label423
label422:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1476($s8)
label423:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  lw $t2, -12($s8)
  sw $t2, 8($sp)
  lw $t3, -8($s8)
  sw $t3, 12($sp)
  lw $t4, -4($s8)
  sw $t4, 16($sp)
  li $t5, -1042096167
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1480($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -836($s8)
  sw $t1, 4($sp)
  lw $t2, -36($s8)
  sw $t2, 8($sp)
  lw $t3, -20($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1484($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1484($s8)
  sw $t1, 4($sp)
  lw $t2, -1480($s8)
  sw $t2, 8($sp)
  lw $t3, -1476($s8)
  sw $t3, 12($sp)
  lw $t4, -1472($s8)
  sw $t4, 16($sp)
  lw $t5, -1452($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1488($s8)
  lw $t0, -1488($s8)
  li $t1, 0
  beq $t0, $t1, label419
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1492($s8)
  lw $t0, -1492($s8)
  lw $t1, 0($t0)
  sw $t1, -1496($s8)
  lw $t0, -1496($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1500($s8)
  la $t0, -828($s8)
  lw $t1, -1500($s8)
  add $t2, $t0, $t1
  sw $t2, -1504($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1508($s8)
  lw $t0, 12($s8)
  li $t1, 0
  bne $t0, $t1, label424
  lw $t0, -4($s8)
  li $t1, 0
  bne $t0, $t1, label424
  j label425
label424:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1508($s8)
label425:
  lw $t0, -1508($s8)
  lw $t1, -1504($s8)
  sw $t0, 0($t1)
  lw $t0, -1504($s8)
  lw $t1, 0($t0)
  sw $t1, -1512($s8)
  lw $t0, -1512($s8)
  move $t1, $t0
  sw $t1, -1516($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1520($s8)
  lw $t0, -1520($s8)
  lw $t1, 0($t0)
  sw $t1, -1524($s8)
  lw $t0, -1524($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1528($s8)
  la $t0, -828($s8)
  lw $t1, -1528($s8)
  add $t2, $t0, $t1
  sw $t2, -1532($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1536($s8)
  lw $t0, 12($s8)
  li $t1, 0
  beq $t0, $t1, label427
  lw $t0, -4($s8)
  li $t1, 0
  bne $t0, $t1, label426
  j label427
label426:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1536($s8)
label427:
  lw $t0, -1536($s8)
  lw $t1, -1532($s8)
  sw $t0, 0($t1)
  lw $t0, -1532($s8)
  lw $t1, 0($t0)
  sw $t1, -1540($s8)
  lw $t0, -1540($s8)
  move $t1, $t0
  sw $t1, -1544($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1548($s8)
  lw $t0, -1548($s8)
  lw $t1, 0($t0)
  sw $t1, -1552($s8)
  lw $t0, -1552($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1556($s8)
  la $t0, -828($s8)
  lw $t1, -1556($s8)
  add $t2, $t0, $t1
  sw $t2, -1560($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1564($s8)
  lw $t0, 12($s8)
  li $t1, 0
  beq $t0, $t1, label429
  lw $t0, -4($s8)
  li $t1, 0
  bne $t0, $t1, label428
  j label429
label428:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1564($s8)
label429:
  lw $t0, -1564($s8)
  lw $t1, -1560($s8)
  sw $t0, 0($t1)
  lw $t0, -1560($s8)
  lw $t1, 0($t0)
  sw $t1, -1568($s8)
  lw $t0, -1568($s8)
  move $t1, $t0
  sw $t1, -1572($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1576($s8)
  lw $t0, -1576($s8)
  lw $t1, 0($t0)
  sw $t1, -1580($s8)
  lw $t0, -1580($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1584($s8)
  la $t0, -828($s8)
  lw $t1, -1584($s8)
  add $t2, $t0, $t1
  sw $t2, -1588($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1592($s8)
  lw $t0, 12($s8)
  li $t1, 0
  beq $t0, $t1, label431
  lw $t0, -4($s8)
  li $t1, 0
  bne $t0, $t1, label430
  j label431
label430:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1592($s8)
label431:
  lw $t0, -1592($s8)
  lw $t1, -1588($s8)
  sw $t0, 0($t1)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1596($s8)
  lw $t0, -1596($s8)
  lw $t1, 0($t0)
  sw $t1, -1600($s8)
  lw $t0, -1600($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1604($s8)
  la $t0, -828($s8)
  lw $t1, -1604($s8)
  add $t2, $t0, $t1
  sw $t2, -1608($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1612($s8)
  lw $t0, 12($s8)
  lw $t1, -4($s8)
  beq $t0, $t1, label432
  j label433
label432:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1612($s8)
label433:
  lw $t0, -1612($s8)
  lw $t1, -1608($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1616($s8)
  lw $t0, -1616($s8)
  lw $t1, 0($t0)
  sw $t1, -1620($s8)
  lw $t0, -1620($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1624($s8)
  la $t0, -828($s8)
  lw $t1, -1624($s8)
  add $t2, $t0, $t1
  sw $t2, -1628($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -8($s8)
  sw $t1, 4($sp)
  lw $t2, -4($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1632($s8)
  lw $t0, -1632($s8)
  lw $t1, -1628($s8)
  sw $t0, 0($t1)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1636($s8)
  lw $t0, -1636($s8)
  lw $t1, 0($t0)
  sw $t1, -1640($s8)
  lw $t0, -1640($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1644($s8)
  la $t0, -828($s8)
  lw $t1, -1644($s8)
  add $t2, $t0, $t1
  sw $t2, -1648($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1652($s8)
  lw $t0, 12($s8)
  li $t1, 0
  bne $t0, $t1, label434
  lw $t0, -4($s8)
  li $t1, 0
  bne $t0, $t1, label434
  j label435
label434:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1652($s8)
label435:
  lw $t0, -1652($s8)
  lw $t1, -1648($s8)
  sw $t0, 0($t1)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1656($s8)
  lw $t0, -1656($s8)
  lw $t1, 0($t0)
  sw $t1, -1660($s8)
  lw $t0, -1660($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1664($s8)
  la $t0, -828($s8)
  lw $t1, -1664($s8)
  add $t2, $t0, $t1
  sw $t2, -1668($s8)
  lw $t0, 12($s8)
  li $t1, 181271325
  div $t0, $t1
  mflo $t2
  sw $t2, -1672($s8)
  lw $t0, -1672($s8)
  lw $t1, -1668($s8)
  sw $t0, 0($t1)
  lw $t0, -1516($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -1544($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -1572($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label418
label419:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label436:
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1676($s8)
  lw $t0, -1676($s8)
  lw $t1, 0($t0)
  sw $t1, -1680($s8)
  lw $t0, -1680($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1684($s8)
  la $t0, -828($s8)
  lw $t1, -1684($s8)
  add $t2, $t0, $t1
  sw $t2, -1688($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  lw $t2, -12($s8)
  sw $t2, 8($sp)
  lw $t3, -8($s8)
  sw $t3, 12($sp)
  lw $t4, -4($s8)
  sw $t4, 16($sp)
  lw $t5, 12($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1692($s8)
  lw $t0, -1692($s8)
  lw $t1, -1688($s8)
  sw $t0, 0($t1)
  lw $t0, -1688($s8)
  lw $t1, 0($t0)
  sw $t1, -1696($s8)
  lw $t0, -1696($s8)
  move $t1, $t0
  sw $t1, -1700($s8)
  lw $t0, -1700($s8)
  li $t1, 0
  beq $t0, $t1, label437
  la $t0, -1708($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1728($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1732($s8)
  lw $t0, -1732($s8)
  lw $t1, 0($t0)
  sw $t1, -1736($s8)
  lw $t0, -1736($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1740($s8)
  la $t0, -828($s8)
  lw $t1, -1740($s8)
  add $t2, $t0, $t1
  sw $t2, -1744($s8)
  li $t0, 1809422634
  move $t1, $t0
  sw $t1, 12($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -1748($s8)
  lw $t0, -1748($s8)
  lw $t1, -1744($s8)
  sw $t0, 0($t1)
  lw $t0, -1744($s8)
  lw $t1, 0($t0)
  sw $t1, -1752($s8)
  lw $t0, -1752($s8)
  move $t1, $t0
  sw $t1, -1756($s8)
  lw $t0, -1756($s8)
  lw $t1, -1728($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1708($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1760($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1764($s8)
  la $t0, -828($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1768($s8)
  lw $t0, -1768($s8)
  lw $t1, 0($t0)
  sw $t1, -1772($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1776($s8)
  lw $t0, -1776($s8)
  lw $t1, 0($t0)
  sw $t1, -1780($s8)
  lw $t0, -1772($s8)
  lw $t1, -1780($s8)
  blt $t0, $t1, label438
  j label439
label438:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1764($s8)
label439:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  lw $t2, -12($s8)
  sw $t2, 8($sp)
  lw $t3, -8($s8)
  sw $t3, 12($sp)
  lw $t4, -4($s8)
  sw $t4, 16($sp)
  lw $t5, 12($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1784($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1784($s8)
  sw $t1, 4($sp)
  li $t2, -595932985
  sw $t2, 8($sp)
  lw $t3, -1764($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1788($s8)
  lw $t0, -1788($s8)
  lw $t1, -1760($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1716($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1792($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1796($s8)
  lw $t0, -1796($s8)
  lw $t1, 0($t0)
  sw $t1, -1800($s8)
  lw $t0, -1800($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1804($s8)
  la $t0, -828($s8)
  lw $t1, -1804($s8)
  add $t2, $t0, $t1
  sw $t2, -1808($s8)
  la $t0, -1708($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1812($s8)
  lw $t0, -1812($s8)
  lw $t1, 0($t0)
  sw $t1, -1816($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -12($s8)
  sw $t1, 4($sp)
  lw $t2, -8($s8)
  sw $t2, 8($sp)
  lw $t3, -4($s8)
  sw $t3, 12($sp)
  lw $t4, 12($s8)
  sw $t4, 16($sp)
  lw $t5, -1816($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1820($s8)
  lw $t0, -1820($s8)
  lw $t1, -1808($s8)
  sw $t0, 0($t1)
  lw $t0, -1808($s8)
  lw $t1, 0($t0)
  sw $t1, -1824($s8)
  lw $t0, -1824($s8)
  move $t1, $t0
  sw $t1, -1828($s8)
  lw $t0, -1828($s8)
  lw $t1, -1792($s8)
  sw $t0, 0($t1)
  la $t0, -1716($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1832($s8)
  la $t0, -1708($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1836($s8)
  lw $t0, -1836($s8)
  lw $t1, 0($t0)
  sw $t1, -1840($s8)
  lw $t0, -1840($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1844($s8)
  la $t0, -828($s8)
  lw $t1, -1844($s8)
  add $t2, $t0, $t1
  sw $t2, -1848($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1852($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1856($s8)
  lw $t0, -1856($s8)
  lw $t1, 0($t0)
  sw $t1, -1860($s8)
  lw $t0, -1860($s8)
  li $t1, 0
  bne $t0, $t1, label441
  j label440
label440:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1852($s8)
label441:
  lw $t0, -1852($s8)
  lw $t1, -1848($s8)
  sw $t0, 0($t1)
  lw $t0, -1848($s8)
  lw $t1, 0($t0)
  sw $t1, -1864($s8)
  lw $t0, -1864($s8)
  move $t1, $t0
  sw $t1, -1868($s8)
  lw $t0, -1868($s8)
  lw $t1, -1832($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1724($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1872($s8)
  la $t0, -1708($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1876($s8)
  lw $t0, -1876($s8)
  lw $t1, 0($t0)
  sw $t1, -1880($s8)
  lw $t0, -1880($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1884($s8)
  la $t0, -828($s8)
  lw $t1, -1884($s8)
  add $t2, $t0, $t1
  sw $t2, -1888($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1892($s8)
  lw $t0, -1892($s8)
  lw $t1, 0($t0)
  sw $t1, -1896($s8)
  la $t0, -1716($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1900($s8)
  lw $t0, -1900($s8)
  lw $t1, 0($t0)
  sw $t1, -1904($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -8($s8)
  sw $t1, 4($sp)
  lw $t2, -4($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  lw $t4, -1904($s8)
  sw $t4, 16($sp)
  lw $t5, -1896($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1908($s8)
  lw $t0, -1908($s8)
  lw $t1, -1888($s8)
  sw $t0, 0($t1)
  lw $t0, -1888($s8)
  lw $t1, 0($t0)
  sw $t1, -1912($s8)
  lw $t0, -1912($s8)
  move $t1, $t0
  sw $t1, -1916($s8)
  lw $t0, -1916($s8)
  lw $t1, -1872($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1724($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1920($s8)
  la $t0, -828($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1924($s8)
  la $t0, -1708($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1928($s8)
  lw $t0, -1928($s8)
  lw $t1, 0($t0)
  sw $t1, -1932($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1932($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1936($s8)
  lw $t0, -1936($s8)
  lw $t1, -1924($s8)
  sw $t0, 0($t1)
  lw $t0, -1924($s8)
  lw $t1, 0($t0)
  sw $t1, -1940($s8)
  lw $t0, -1940($s8)
  move $t1, $t0
  sw $t1, -1944($s8)
  lw $t0, -1944($s8)
  lw $t1, -1920($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1708($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1948($s8)
  lw $t0, -1948($s8)
  lw $t1, 0($t0)
  sw $t1, -1952($s8)
  la $t0, -828($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1956($s8)
  lw $t0, -1956($s8)
  lw $t1, 0($t0)
  sw $t1, -1960($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1964($s8)
  lw $t0, -1964($s8)
  lw $t1, 0($t0)
  sw $t1, -1968($s8)
  la $t0, -1716($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1972($s8)
  lw $t0, -1972($s8)
  lw $t1, 0($t0)
  sw $t1, -1976($s8)
  la $t0, -1724($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1980($s8)
  lw $t0, -1980($s8)
  lw $t1, 0($t0)
  sw $t1, -1984($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1984($s8)
  sw $t1, 4($sp)
  lw $t2, -1976($s8)
  sw $t2, 8($sp)
  lw $t3, -1968($s8)
  sw $t3, 12($sp)
  lw $t4, -1960($s8)
  sw $t4, 16($sp)
  lw $t5, -1952($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1988($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1992($s8)
  li $t0, -788292058
  lw $t1, 12($s8)
  bne $t0, $t1, label442
  j label443
label442:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1992($s8)
label443:
  li $t0, 0
  move $t1, $t0
  sw $t1, -1996($s8)
  lw $t0, -4($s8)
  lw $t1, -8($s8)
  ble $t0, $t1, label444
  j label445
label444:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1996($s8)
label445:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1996($s8)
  sw $t1, 4($sp)
  lw $t2, -1992($s8)
  sw $t2, 8($sp)
  lw $t3, -1988($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2000($s8)
  la $t0, -1708($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2004($s8)
  li $t0, 1198504558
  move $t1, $t0
  sw $t1, -2008($s8)
  lw $t0, -2008($s8)
  lw $t1, -2004($s8)
  sw $t0, 0($t1)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2012($s8)
  lw $t0, -2012($s8)
  lw $t1, 0($t0)
  sw $t1, -2016($s8)
  lw $t0, -2016($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2020($s8)
  la $t0, -828($s8)
  lw $t1, -2020($s8)
  add $t2, $t0, $t1
  sw $t2, -2024($s8)
  la $t0, -1708($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2028($s8)
  lw $t0, -2028($s8)
  lw $t1, 0($t0)
  sw $t1, -2032($s8)
  lw $t0, -2032($s8)
  lw $t1, -2024($s8)
  sw $t0, 0($t1)
  la $t0, -828($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2036($s8)
  lw $t0, -2036($s8)
  lw $t1, 0($t0)
  sw $t1, -2040($s8)
  lw $t0, -2040($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2044($s8)
  la $t0, -1708($s8)
  lw $t1, -2044($s8)
  add $t2, $t0, $t1
  sw $t2, -2048($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2052($s8)
  la $t0, -1716($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2056($s8)
  lw $t0, -2056($s8)
  lw $t1, 0($t0)
  sw $t1, -2060($s8)
  lw $t0, -2060($s8)
  li $t1, 0
  bne $t0, $t1, label446
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2064($s8)
  lw $t0, -2064($s8)
  lw $t1, 0($t0)
  sw $t1, -2068($s8)
  lw $t0, -2068($s8)
  li $t1, 0
  bne $t0, $t1, label446
  j label447
label446:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2052($s8)
label447:
  lw $t0, -2052($s8)
  lw $t1, -2048($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -828($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2072($s8)
  lw $t0, -2072($s8)
  lw $t1, 0($t0)
  sw $t1, -2076($s8)
  lw $t0, -2076($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2080($s8)
  la $t0, -1708($s8)
  lw $t1, -2080($s8)
  add $t2, $t0, $t1
  sw $t2, -2084($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2088($s8)
  lw $t0, -2088($s8)
  lw $t1, 0($t0)
  sw $t1, -2092($s8)
  la $t0, -1716($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2096($s8)
  lw $t0, -2096($s8)
  lw $t1, 0($t0)
  sw $t1, -2100($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 834878695
  sw $t1, 4($sp)
  lw $t2, -2100($s8)
  sw $t2, 8($sp)
  lw $t3, -2092($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2104($s8)
  lw $t0, -2104($s8)
  lw $t1, -2084($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2108($s8)
  la $t0, -828($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2112($s8)
  lw $t0, -2112($s8)
  lw $t1, 0($t0)
  sw $t1, -2116($s8)
  lw $t0, -2116($s8)
  li $t1, 1264043463
  bge $t0, $t1, label448
  j label449
label448:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2108($s8)
label449:
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2120($s8)
  lw $t0, -2120($s8)
  lw $t1, 0($t0)
  sw $t1, -2124($s8)
  la $t0, -1708($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2128($s8)
  lw $t0, -2128($s8)
  lw $t1, 0($t0)
  sw $t1, -2132($s8)
  la $t0, -1716($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2136($s8)
  lw $t0, -2136($s8)
  lw $t1, 0($t0)
  sw $t1, -2140($s8)
  la $t0, -1724($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2144($s8)
  lw $t0, -2144($s8)
  lw $t1, 0($t0)
  sw $t1, -2148($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2148($s8)
  sw $t1, 4($sp)
  lw $t2, -2140($s8)
  sw $t2, 8($sp)
  lw $t3, -2132($s8)
  sw $t3, 12($sp)
  lw $t4, -2124($s8)
  sw $t4, 16($sp)
  li $t5, 2145066304
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2152($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -185948437
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2156($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2156($s8)
  sw $t1, 4($sp)
  lw $t2, -2152($s8)
  sw $t2, 8($sp)
  lw $t3, -2108($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2160($s8)
  j label436
label437:
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2164($s8)
  lw $t0, -2164($s8)
  lw $t1, 0($t0)
  sw $t1, -2168($s8)
  lw $t0, -2168($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2172($s8)
  la $t0, -828($s8)
  lw $t1, -2172($s8)
  add $t2, $t0, $t1
  sw $t2, -2176($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2180($s8)
  lw $t0, 12($s8)
  li $t1, 0
  bne $t0, $t1, label452
  lw $t0, -4($s8)
  li $t1, 0
  bne $t0, $t1, label452
  j label453
label452:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2180($s8)
label453:
  lw $t0, -2180($s8)
  lw $t1, -2176($s8)
  sw $t0, 0($t1)
  lw $t0, -2176($s8)
  lw $t1, 0($t0)
  sw $t1, -2184($s8)
  lw $t0, -2184($s8)
  move $t1, $t0
  sw $t1, -2188($s8)
  lw $t0, -2188($s8)
  li $t1, 0
  beq $t0, $t1, label451
  la $t0, -2192($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2208($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2212($s8)
  lw $t0, -2212($s8)
  lw $t1, 0($t0)
  sw $t1, -2216($s8)
  lw $t0, -2216($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2220($s8)
  la $t0, -828($s8)
  lw $t1, -2220($s8)
  add $t2, $t0, $t1
  sw $t2, -2224($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -2228($s8)
  lw $t0, -2228($s8)
  lw $t1, -2224($s8)
  sw $t0, 0($t1)
  lw $t0, -2224($s8)
  lw $t1, 0($t0)
  sw $t1, -2232($s8)
  lw $t0, -2232($s8)
  move $t1, $t0
  sw $t1, -2236($s8)
  lw $t0, -2236($s8)
  lw $t1, -2208($s8)
  sw $t0, 0($t1)
  la $t0, -2196($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2240($s8)
  la $t0, -828($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2244($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2248($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2252($s8)
  lw $t0, -2252($s8)
  lw $t1, 0($t0)
  sw $t1, -2256($s8)
  la $t0, -2192($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2260($s8)
  lw $t0, -2260($s8)
  lw $t1, 0($t0)
  sw $t1, -2264($s8)
  lw $t0, -2256($s8)
  lw $t1, -2264($s8)
  blt $t0, $t1, label454
  j label455
label454:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2248($s8)
label455:
  lw $t0, -2248($s8)
  lw $t1, -2244($s8)
  sw $t0, 0($t1)
  lw $t0, -2244($s8)
  lw $t1, 0($t0)
  sw $t1, -2268($s8)
  lw $t0, -2268($s8)
  move $t1, $t0
  sw $t1, -2272($s8)
  lw $t0, -2272($s8)
  lw $t1, -2240($s8)
  sw $t0, 0($t1)
  la $t0, -2204($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2276($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2280($s8)
  lw $t0, -2280($s8)
  lw $t1, 0($t0)
  sw $t1, -2284($s8)
  lw $t0, -2284($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2288($s8)
  la $t0, -828($s8)
  lw $t1, -2288($s8)
  add $t2, $t0, $t1
  sw $t2, -2292($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2296($s8)
  li $t0, -959017665
  li $t1, -72976823
  bgt $t0, $t1, label456
  j label457
label456:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2296($s8)
label457:
  lw $t0, -2296($s8)
  lw $t1, -2292($s8)
  sw $t0, 0($t1)
  lw $t0, -2292($s8)
  lw $t1, 0($t0)
  sw $t1, -2300($s8)
  lw $t0, -2300($s8)
  move $t1, $t0
  sw $t1, -2304($s8)
  lw $t0, -2304($s8)
  lw $t1, -2276($s8)
  sw $t0, 0($t1)
  la $t0, -2204($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2308($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2312($s8)
  lw $t0, -2312($s8)
  lw $t1, 0($t0)
  sw $t1, -2316($s8)
  lw $t0, -2316($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2320($s8)
  la $t0, -828($s8)
  lw $t1, -2320($s8)
  add $t2, $t0, $t1
  sw $t2, -2324($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2328($s8)
  la $t0, -2192($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2332($s8)
  lw $t0, -2332($s8)
  lw $t1, 0($t0)
  sw $t1, -2336($s8)
  lw $t0, -2336($s8)
  li $t1, 1379155129
  bgt $t0, $t1, label458
  j label459
label458:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2328($s8)
label459:
  lw $t0, -2328($s8)
  lw $t1, -2324($s8)
  sw $t0, 0($t1)
  lw $t0, -2324($s8)
  lw $t1, 0($t0)
  sw $t1, -2340($s8)
  lw $t0, -2340($s8)
  move $t1, $t0
  sw $t1, -2344($s8)
  lw $t0, -2344($s8)
  lw $t1, -2308($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2348($s8)
  la $t0, -828($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2352($s8)
  lw $t0, -2352($s8)
  lw $t1, 0($t0)
  sw $t1, -2356($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2360($s8)
  lw $t0, -2360($s8)
  lw $t1, 0($t0)
  sw $t1, -2364($s8)
  lw $t0, -2356($s8)
  lw $t1, -2364($s8)
  blt $t0, $t1, label460
  j label461
label460:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2348($s8)
label461:
  li $t0, 0
  move $t1, $t0
  sw $t1, -2368($s8)
  la $t0, -2192($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2372($s8)
  lw $t0, -2372($s8)
  lw $t1, 0($t0)
  sw $t1, -2376($s8)
  lw $t0, -2376($s8)
  li $t1, -710400361
  bne $t0, $t1, label462
  j label463
label462:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2368($s8)
label463:
  li $t0, 0
  move $t1, $t0
  sw $t1, -2380($s8)
  la $t0, -2196($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2384($s8)
  lw $t0, -2384($s8)
  lw $t1, 0($t0)
  sw $t1, -2388($s8)
  la $t0, -2204($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2392($s8)
  lw $t0, -2392($s8)
  lw $t1, 0($t0)
  sw $t1, -2396($s8)
  lw $t0, -2388($s8)
  lw $t1, -2396($s8)
  bgt $t0, $t1, label464
  j label465
label464:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2380($s8)
label465:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2380($s8)
  sw $t1, 4($sp)
  lw $t2, -2368($s8)
  sw $t2, 8($sp)
  lw $t3, -2348($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2400($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -828($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2404($s8)
  lw $t0, -2404($s8)
  lw $t1, 0($t0)
  sw $t1, -2408($s8)
  lw $t0, -2408($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2412($s8)
  la $t0, -2204($s8)
  lw $t1, -2412($s8)
  add $t2, $t0, $t1
  sw $t2, -2416($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 380030441
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2420($s8)
  lw $t0, -2420($s8)
  lw $t1, -2416($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -828($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2424($s8)
  lw $t0, -2424($s8)
  lw $t1, 0($t0)
  sw $t1, -2428($s8)
  lw $t0, -2428($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2432($s8)
  la $t0, -2204($s8)
  lw $t1, -2432($s8)
  add $t2, $t0, $t1
  sw $t2, -2436($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2440($s8)
  lw $t0, -2440($s8)
  lw $t1, 0($t0)
  sw $t1, -2444($s8)
  la $t0, -2192($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2448($s8)
  lw $t0, -2448($s8)
  lw $t1, 0($t0)
  sw $t1, -2452($s8)
  la $t0, -2196($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2456($s8)
  lw $t0, -2456($s8)
  lw $t1, 0($t0)
  sw $t1, -2460($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2460($s8)
  sw $t1, 4($sp)
  lw $t2, -2452($s8)
  sw $t2, 8($sp)
  lw $t3, -2444($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2464($s8)
  lw $t0, -2464($s8)
  lw $t1, -2436($s8)
  sw $t0, 0($t1)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2468($s8)
  lw $t0, -2468($s8)
  lw $t1, 0($t0)
  sw $t1, -2472($s8)
  lw $t0, -2472($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2476($s8)
  la $t0, -828($s8)
  lw $t1, -2476($s8)
  add $t2, $t0, $t1
  sw $t2, -2480($s8)
  la $t0, -2204($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2484($s8)
  lw $t0, -2484($s8)
  lw $t1, 0($t0)
  sw $t1, -2488($s8)
  la $t0, -2192($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2492($s8)
  lw $t0, -2492($s8)
  lw $t1, 0($t0)
  sw $t1, -2496($s8)
  lw $t0, -2488($s8)
  lw $t1, -2496($s8)
  sub $t2, $t0, $t1
  sw $t2, -2500($s8)
  lw $t0, -2500($s8)
  lw $t1, -2480($s8)
  sw $t0, 0($t1)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2504($s8)
  lw $t0, -2504($s8)
  lw $t1, 0($t0)
  sw $t1, -2508($s8)
  lw $t0, -2508($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2512($s8)
  la $t0, -828($s8)
  lw $t1, -2512($s8)
  add $t2, $t0, $t1
  sw $t2, -2516($s8)
  la $t0, -2192($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2520($s8)
  lw $t0, -2520($s8)
  lw $t1, 0($t0)
  sw $t1, -2524($s8)
  lw $t0, -2524($s8)
  lw $t1, -2516($s8)
  sw $t0, 0($t1)
  j label437
label451:
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label466:
  li $t0, 0
  move $t1, $t0
  sw $t1, -2528($s8)
  la $t0, -828($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2532($s8)
  lw $t0, -2532($s8)
  lw $t1, 0($t0)
  sw $t1, -2536($s8)
  lw $t0, -2536($s8)
  li $t1, 0
  bne $t0, $t1, label468
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2540($s8)
  lw $t0, -2540($s8)
  lw $t1, 0($t0)
  sw $t1, -2544($s8)
  lw $t0, -2544($s8)
  li $t1, 0
  bne $t0, $t1, label468
  j label469
label468:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2528($s8)
label469:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -1113968229
  sw $t1, 4($sp)
  lw $t2, -4($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2548($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -20($s8)
  sw $t1, 4($sp)
  lw $t2, -16($s8)
  sw $t2, 8($sp)
  lw $t3, -12($s8)
  sw $t3, 12($sp)
  lw $t4, -8($s8)
  sw $t4, 16($sp)
  li $t5, 1885043515
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2552($s8)
  lw $t0, -36($s8)
  lw $t1, -836($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -2556($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2560($s8)
  lw $t0, -840($s8)
  lw $t1, -844($s8)
  blt $t0, $t1, label470
  j label471
label470:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2560($s8)
label471:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2560($s8)
  sw $t1, 4($sp)
  lw $t2, -2556($s8)
  sw $t2, 8($sp)
  lw $t3, -2552($s8)
  sw $t3, 12($sp)
  lw $t4, -2548($s8)
  sw $t4, 16($sp)
  lw $t5, -2528($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2564($s8)
  lw $t0, -2564($s8)
  li $t1, 0
  beq $t0, $t1, label467
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -828($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2576($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2580($s8)
  lw $t0, -2580($s8)
  lw $t1, 0($t0)
  sw $t1, -2584($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2584($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2588($s8)
  lw $t0, -2588($s8)
  lw $t1, -2576($s8)
  sw $t0, 0($t1)
  lw $t0, -2576($s8)
  lw $t1, 0($t0)
  sw $t1, -2592($s8)
  lw $t0, -2592($s8)
  move $t1, $t0
  sw $t1, -2596($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2568($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2600($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2604($s8)
  lw $t0, -2604($s8)
  lw $t1, 0($t0)
  sw $t1, -2608($s8)
  lw $t0, -2608($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2612($s8)
  la $t0, -828($s8)
  lw $t1, -2612($s8)
  add $t2, $t0, $t1
  sw $t2, -2616($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -12($s8)
  sw $t1, 4($sp)
  lw $t2, -8($s8)
  sw $t2, 8($sp)
  li $t3, -1765380799
  sw $t3, 12($sp)
  lw $t4, -4($s8)
  sw $t4, 16($sp)
  lw $t5, 12($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2620($s8)
  lw $t0, -2620($s8)
  lw $t1, -2616($s8)
  sw $t0, 0($t1)
  lw $t0, -2616($s8)
  lw $t1, 0($t0)
  sw $t1, -2624($s8)
  lw $t0, -2624($s8)
  move $t1, $t0
  sw $t1, -2628($s8)
  lw $t0, -2628($s8)
  lw $t1, -2600($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2572($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2632($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2636($s8)
  lw $t0, -2636($s8)
  lw $t1, 0($t0)
  sw $t1, -2640($s8)
  lw $t0, -2640($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2644($s8)
  la $t0, -828($s8)
  lw $t1, -2644($s8)
  add $t2, $t0, $t1
  sw $t2, -2648($s8)
  la $t0, -2568($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2652($s8)
  lw $t0, -2652($s8)
  lw $t1, 0($t0)
  sw $t1, -2656($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, -2656($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2660($s8)
  lw $t0, -2660($s8)
  lw $t1, -2648($s8)
  sw $t0, 0($t1)
  lw $t0, -2648($s8)
  lw $t1, 0($t0)
  sw $t1, -2664($s8)
  lw $t0, -2664($s8)
  move $t1, $t0
  sw $t1, -2668($s8)
  lw $t0, -2668($s8)
  lw $t1, -2632($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2672($s8)
  la $t0, -828($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2676($s8)
  lw $t0, -2676($s8)
  lw $t1, 0($t0)
  sw $t1, -2680($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2684($s8)
  lw $t0, -2684($s8)
  lw $t1, 0($t0)
  sw $t1, -2688($s8)
  lw $t0, -2680($s8)
  lw $t1, -2688($s8)
  ble $t0, $t1, label472
  j label473
label472:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2672($s8)
label473:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -1225449406
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2692($s8)
  la $t0, -2568($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2696($s8)
  lw $t0, -2696($s8)
  lw $t1, 0($t0)
  sw $t1, -2700($s8)
  la $t0, -2572($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2704($s8)
  lw $t0, -2704($s8)
  lw $t1, 0($t0)
  sw $t1, -2708($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -126653334
  sw $t1, 4($sp)
  li $t2, 319781848
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  lw $t4, -2708($s8)
  sw $t4, 16($sp)
  lw $t5, -2700($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2712($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2712($s8)
  sw $t1, 4($sp)
  lw $t2, -2692($s8)
  sw $t2, 8($sp)
  lw $t3, -2672($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2716($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -828($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2720($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2724($s8)
  lw $t0, -2724($s8)
  lw $t1, 0($t0)
  sw $t1, -2728($s8)
  la $t0, -2568($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2732($s8)
  lw $t0, -2732($s8)
  lw $t1, 0($t0)
  sw $t1, -2736($s8)
  la $t0, -2572($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2740($s8)
  lw $t0, -2740($s8)
  lw $t1, 0($t0)
  sw $t1, -2744($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2744($s8)
  sw $t1, 4($sp)
  lw $t2, -2736($s8)
  sw $t2, 8($sp)
  lw $t3, -2728($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2748($s8)
  lw $t0, -2748($s8)
  lw $t1, -2720($s8)
  sw $t0, 0($t1)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2752($s8)
  lw $t0, -2752($s8)
  lw $t1, 0($t0)
  sw $t1, -2756($s8)
  lw $t0, -2756($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2760($s8)
  la $t0, -828($s8)
  lw $t1, -2760($s8)
  add $t2, $t0, $t1
  sw $t2, -2764($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2768($s8)
  la $t0, -2568($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2772($s8)
  lw $t0, -2772($s8)
  lw $t1, 0($t0)
  sw $t1, -2776($s8)
  la $t0, -2572($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2780($s8)
  lw $t0, -2780($s8)
  lw $t1, 0($t0)
  sw $t1, -2784($s8)
  lw $t0, -2776($s8)
  lw $t1, -2784($s8)
  bge $t0, $t1, label474
  j label475
label474:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2768($s8)
label475:
  lw $t0, -2768($s8)
  lw $t1, -2764($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2788($s8)
  lw $t0, -2788($s8)
  lw $t1, 0($t0)
  sw $t1, -2792($s8)
  lw $t0, -2792($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2796($s8)
  la $t0, -828($s8)
  lw $t1, -2796($s8)
  add $t2, $t0, $t1
  sw $t2, -2800($s8)
  la $t0, -2568($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2804($s8)
  lw $t0, -2804($s8)
  lw $t1, 0($t0)
  sw $t1, -2808($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2808($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2812($s8)
  lw $t0, -2812($s8)
  lw $t1, -2800($s8)
  sw $t0, 0($t1)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2816($s8)
  lw $t0, -2816($s8)
  lw $t1, 0($t0)
  sw $t1, -2820($s8)
  lw $t0, -2820($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2824($s8)
  la $t0, -828($s8)
  lw $t1, -2824($s8)
  add $t2, $t0, $t1
  sw $t2, -2828($s8)
  la $t0, -2568($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2832($s8)
  lw $t0, -2832($s8)
  lw $t1, 0($t0)
  sw $t1, -2836($s8)
  lw $t0, -2836($s8)
  lw $t1, -2828($s8)
  sw $t0, 0($t1)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2840($s8)
  lw $t0, -2840($s8)
  lw $t1, 0($t0)
  sw $t1, -2844($s8)
  lw $t0, -2844($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2848($s8)
  la $t0, -828($s8)
  lw $t1, -2848($s8)
  add $t2, $t0, $t1
  sw $t2, -2852($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2856($s8)
  la $t0, -2568($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2860($s8)
  lw $t0, -2860($s8)
  lw $t1, 0($t0)
  sw $t1, -2864($s8)
  la $t0, -2572($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2868($s8)
  lw $t0, -2868($s8)
  lw $t1, 0($t0)
  sw $t1, -2872($s8)
  lw $t0, -2864($s8)
  lw $t1, -2872($s8)
  bne $t0, $t1, label476
  j label477
label476:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2856($s8)
label477:
  lw $t0, -2856($s8)
  lw $t1, -2852($s8)
  sw $t0, 0($t1)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2876($s8)
  lw $t0, -2876($s8)
  lw $t1, 0($t0)
  sw $t1, -2880($s8)
  lw $t0, -2880($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2884($s8)
  la $t0, -828($s8)
  lw $t1, -2884($s8)
  add $t2, $t0, $t1
  sw $t2, -2888($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2892($s8)
  la $t0, -2568($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2896($s8)
  lw $t0, -2896($s8)
  lw $t1, 0($t0)
  sw $t1, -2900($s8)
  lw $t0, -2900($s8)
  li $t1, 0
  beq $t0, $t1, label479
  la $t0, -2572($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2904($s8)
  lw $t0, -2904($s8)
  lw $t1, 0($t0)
  sw $t1, -2908($s8)
  lw $t0, -2908($s8)
  li $t1, 0
  bne $t0, $t1, label478
  j label479
label478:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2892($s8)
label479:
  lw $t0, -2892($s8)
  lw $t1, -2888($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -828($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2912($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2916($s8)
  lw $t0, -2916($s8)
  lw $t1, 0($t0)
  sw $t1, -2920($s8)
  la $t0, -2568($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2924($s8)
  lw $t0, -2924($s8)
  lw $t1, 0($t0)
  sw $t1, -2928($s8)
  la $t0, -2572($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2932($s8)
  lw $t0, -2932($s8)
  lw $t1, 0($t0)
  sw $t1, -2936($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2936($s8)
  sw $t1, 4($sp)
  lw $t2, -2928($s8)
  sw $t2, 8($sp)
  li $t3, 1552429019
  sw $t3, 12($sp)
  lw $t4, -2920($s8)
  sw $t4, 16($sp)
  li $t5, -1335957345
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2940($s8)
  lw $t0, -2940($s8)
  lw $t1, -2912($s8)
  sw $t0, 0($t1)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2944($s8)
  lw $t0, -2944($s8)
  lw $t1, 0($t0)
  sw $t1, -2948($s8)
  lw $t0, -2948($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2952($s8)
  la $t0, -828($s8)
  lw $t1, -2952($s8)
  add $t2, $t0, $t1
  sw $t2, -2956($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2960($s8)
  la $t0, -2568($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2964($s8)
  lw $t0, -2964($s8)
  lw $t1, 0($t0)
  sw $t1, -2968($s8)
  la $t0, -2572($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2972($s8)
  lw $t0, -2972($s8)
  lw $t1, 0($t0)
  sw $t1, -2976($s8)
  lw $t0, -2968($s8)
  lw $t1, -2976($s8)
  blt $t0, $t1, label480
  j label481
label480:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2960($s8)
label481:
  lw $t0, -2960($s8)
  lw $t1, -2956($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2980($s8)
  lw $t0, -2980($s8)
  lw $t1, 0($t0)
  sw $t1, -2984($s8)
  lw $t0, -2984($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2988($s8)
  la $t0, -828($s8)
  lw $t1, -2988($s8)
  add $t2, $t0, $t1
  sw $t2, -2992($s8)
  la $t0, -2568($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2996($s8)
  lw $t0, -2996($s8)
  lw $t1, 0($t0)
  sw $t1, -3000($s8)
  la $t0, -2572($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3004($s8)
  lw $t0, -3004($s8)
  lw $t1, 0($t0)
  sw $t1, -3008($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -8($s8)
  sw $t1, 4($sp)
  lw $t2, -4($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  lw $t4, -3008($s8)
  sw $t4, 16($sp)
  lw $t5, -3000($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3012($s8)
  lw $t0, -3012($s8)
  lw $t1, -2992($s8)
  sw $t0, 0($t1)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3016($s8)
  lw $t0, -3016($s8)
  lw $t1, 0($t0)
  sw $t1, -3020($s8)
  lw $t0, -3020($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -3024($s8)
  la $t0, -828($s8)
  lw $t1, -3024($s8)
  add $t2, $t0, $t1
  sw $t2, -3028($s8)
  la $t0, -2568($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3032($s8)
  lw $t0, -3032($s8)
  lw $t1, 0($t0)
  sw $t1, -3036($s8)
  la $t0, -2572($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3040($s8)
  lw $t0, -3040($s8)
  lw $t1, 0($t0)
  sw $t1, -3044($s8)
  lw $t0, -3036($s8)
  lw $t1, -3044($s8)
  mul $t2, $t0, $t1
  sw $t2, -3048($s8)
  lw $t0, -3048($s8)
  lw $t1, -3028($s8)
  sw $t0, 0($t1)
  lw $t0, -2596($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label466
label467:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3052($s8)
  lw $t0, -3052($s8)
  lw $t1, 0($t0)
  sw $t1, -3056($s8)
  lw $t0, -3056($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -3060($s8)
  la $t0, -828($s8)
  lw $t1, -3060($s8)
  add $t2, $t0, $t1
  sw $t2, -3064($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -8($s8)
  sw $t1, 4($sp)
  lw $t2, -4($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3068($s8)
  lw $t0, -3068($s8)
  lw $t1, -3064($s8)
  sw $t0, 0($t1)
  lw $t0, -836($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -840($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -844($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -868($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label390
label391:
  li $t0, 0
  move $t1, $t0
  sw $t1, -3072($s8)
  lw $t0, -4($s8)
  lw $t1, -8($s8)
  bge $t0, $t1, label482
  j label483
label482:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3072($s8)
label483:
  lw $t0, -3072($s8)
  move $t1, $t0
  sw $t1, 12($s8)
  lw $t0, -4($s8)
  move $t1, $t0
  sw $t1, 12($s8)
label484:
  li $t0, 0
  move $t1, $t0
  sw $t1, -3076($s8)
  li $t0, -1619890164
  lw $t1, -4($s8)
  bgt $t0, $t1, label486
  j label487
label486:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3076($s8)
label487:
  lw $t0, -3076($s8)
  move $t1, $t0
  sw $t1, 12($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -3080($s8)
  lw $t0, -3080($s8)
  li $t1, 0
  beq $t0, $t1, label485
  li $t0, 0
  move $t1, $t0
  sw $t1, -3084($s8)
  lw $t0, -48($s8)
  li $t1, 10
  blt $t0, $t1, label488
  j label489
label488:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3084($s8)
label489:
  lw $t0, -3084($s8)
  li $t1, 0
  beq $t0, $t1, label485
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3104($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3108($s8)
  lw $t0, -4($s8)
  lw $t1, -8($s8)
  bne $t0, $t1, label490
  j label491
label490:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3108($s8)
label491:
  lw $t0, -3108($s8)
  move $t1, $t0
  sw $t1, 12($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -3112($s8)
  lw $t0, -3112($s8)
  lw $t1, -3104($s8)
  sw $t0, 0($t1)
  li $t0, -504255571
  move $t1, $t0
  sw $t1, -3116($s8)
  li $t0, -703996706
  move $t1, $t0
  sw $t1, -3120($s8)
  li $t0, 1226700183
  move $t1, $t0
  sw $t1, -3124($s8)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3092($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3128($s8)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3132($s8)
  lw $t0, -3132($s8)
  lw $t1, 0($t0)
  sw $t1, -3136($s8)
  lw $t0, -3136($s8)
  lw $t1, 12($s8)
  mul $t2, $t0, $t1
  sw $t2, -3140($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  lw $t2, -12($s8)
  sw $t2, 8($sp)
  li $t3, -305300815
  sw $t3, 12($sp)
  lw $t4, -8($s8)
  sw $t4, 16($sp)
  lw $t5, -4($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3144($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3124($s8)
  sw $t1, 4($sp)
  lw $t2, -3120($s8)
  sw $t2, 8($sp)
  lw $t3, -3116($s8)
  sw $t3, 12($sp)
  lw $t4, -36($s8)
  sw $t4, 16($sp)
  lw $t5, -20($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3148($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3148($s8)
  sw $t1, 4($sp)
  lw $t2, -3144($s8)
  sw $t2, 8($sp)
  lw $t3, -3140($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3152($s8)
  lw $t0, -3152($s8)
  lw $t1, -3128($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3100($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3156($s8)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3160($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -8($s8)
  sw $t1, 4($sp)
  lw $t2, -4($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3164($s8)
  lw $t0, -3164($s8)
  lw $t1, -3160($s8)
  sw $t0, 0($t1)
  lw $t0, -3160($s8)
  lw $t1, 0($t0)
  sw $t1, -3168($s8)
  lw $t0, -3168($s8)
  move $t1, $t0
  sw $t1, -3172($s8)
  lw $t0, -3172($s8)
  lw $t1, -3156($s8)
  sw $t0, 0($t1)
  la $t0, -3100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3176($s8)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3180($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3184($s8)
  lw $t0, 12($s8)
  li $t1, 0
  bne $t0, $t1, label493
  j label492
label492:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3184($s8)
label493:
  lw $t0, -3184($s8)
  lw $t1, -3180($s8)
  sw $t0, 0($t1)
  lw $t0, -3180($s8)
  lw $t1, 0($t0)
  sw $t1, -3188($s8)
  lw $t0, -3188($s8)
  move $t1, $t0
  sw $t1, -3192($s8)
  lw $t0, -3192($s8)
  lw $t1, -3176($s8)
  sw $t0, 0($t1)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3196($s8)
  lw $t0, -48($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -48($s8)
  lw $t0, 8($s8)
  li $t1, 14
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3200($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3204($s8)
  la $t0, -3100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3208($s8)
  lw $t0, -3208($s8)
  lw $t1, 0($t0)
  sw $t1, -3212($s8)
  lw $t0, -3212($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -3216($s8)
  la $t0, -3088($s8)
  lw $t1, -3216($s8)
  add $t2, $t0, $t1
  sw $t2, -3220($s8)
  la $t0, -3092($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3224($s8)
  lw $t0, -3224($s8)
  lw $t1, 0($t0)
  sw $t1, -3228($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -12($s8)
  sw $t1, 4($sp)
  lw $t2, -8($s8)
  sw $t2, 8($sp)
  lw $t3, -4($s8)
  sw $t3, 12($sp)
  lw $t4, 12($s8)
  sw $t4, 16($sp)
  lw $t5, -3228($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3232($s8)
  lw $t0, -3232($s8)
  lw $t1, -3220($s8)
  sw $t0, 0($t1)
  lw $t0, -3220($s8)
  lw $t1, 0($t0)
  sw $t1, -3236($s8)
  lw $t0, -3236($s8)
  move $t1, $t0
  sw $t1, -3240($s8)
  lw $t0, -3240($s8)
  lw $t1, -3204($s8)
  sw $t0, 0($t1)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3244($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3248($s8)
  la $t0, -3200($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3252($s8)
  lw $t0, -3252($s8)
  lw $t1, 0($t0)
  sw $t1, -3256($s8)
  lw $t0, -3256($s8)
  li $t1, 0
  bne $t0, $t1, label494
  la $t0, -3100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3260($s8)
  lw $t0, -3260($s8)
  lw $t1, 0($t0)
  sw $t1, -3264($s8)
  lw $t0, -3264($s8)
  li $t1, 0
  bne $t0, $t1, label494
  j label495
label494:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3248($s8)
label495:
  lw $t0, -3248($s8)
  lw $t1, -3244($s8)
  sw $t0, 0($t1)
  lw $t0, -3244($s8)
  lw $t1, 0($t0)
  sw $t1, -3268($s8)
  lw $t0, -3268($s8)
  move $t1, $t0
  sw $t1, -3272($s8)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3276($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3280($s8)
  la $t0, -3200($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3284($s8)
  lw $t0, -3284($s8)
  lw $t1, 0($t0)
  sw $t1, -3288($s8)
  la $t0, -3100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3292($s8)
  lw $t0, -3292($s8)
  lw $t1, 0($t0)
  sw $t1, -3296($s8)
  lw $t0, -3288($s8)
  lw $t1, -3296($s8)
  ble $t0, $t1, label496
  j label497
label496:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3280($s8)
label497:
  lw $t0, -3280($s8)
  lw $t1, -3276($s8)
  sw $t0, 0($t1)
  lw $t0, -3276($s8)
  lw $t1, 0($t0)
  sw $t1, -3300($s8)
  lw $t0, -3300($s8)
  move $t1, $t0
  sw $t1, -3304($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3308($s8)
  lw $t0, -3308($s8)
  lw $t1, 0($t0)
  sw $t1, -3312($s8)
  lw $t0, -3312($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -3316($s8)
  la $t0, -3100($s8)
  lw $t1, -3316($s8)
  add $t2, $t0, $t1
  sw $t2, -3320($s8)
  la $t0, -3092($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3324($s8)
  lw $t0, -3324($s8)
  lw $t1, 0($t0)
  sw $t1, -3328($s8)
  la $t0, -3200($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3332($s8)
  lw $t0, -3332($s8)
  lw $t1, 0($t0)
  sw $t1, -3336($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, -3336($s8)
  sw $t2, 8($sp)
  lw $t3, -3328($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3340($s8)
  lw $t0, -3340($s8)
  lw $t1, -3320($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3344($s8)
  la $t0, -3200($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3348($s8)
  lw $t0, -3348($s8)
  lw $t1, 0($t0)
  sw $t1, -3352($s8)
  la $t0, -3100($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3356($s8)
  lw $t0, -3356($s8)
  lw $t1, 0($t0)
  sw $t1, -3360($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -8($s8)
  sw $t1, 4($sp)
  lw $t2, -4($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  lw $t4, -3360($s8)
  sw $t4, 16($sp)
  lw $t5, -3352($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3364($s8)
  lw $t0, -3364($s8)
  lw $t1, -3344($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3100($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3368($s8)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3372($s8)
  lw $t0, -3372($s8)
  lw $t1, 0($t0)
  sw $t1, -3376($s8)
  la $t0, -3092($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3380($s8)
  lw $t0, -3380($s8)
  lw $t1, 0($t0)
  sw $t1, -3384($s8)
  la $t0, -3200($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3388($s8)
  lw $t0, -3388($s8)
  lw $t1, 0($t0)
  sw $t1, -3392($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, -3392($s8)
  sw $t3, 12($sp)
  lw $t4, -3384($s8)
  sw $t4, 16($sp)
  lw $t5, -3376($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3396($s8)
  lw $t0, -3396($s8)
  lw $t1, -3368($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3400($s8)
  la $t0, -3092($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3404($s8)
  lw $t0, -3404($s8)
  lw $t1, 0($t0)
  sw $t1, -3408($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3408($s8)
  sw $t1, 4($sp)
  li $t2, 1108160532
  sw $t2, 8($sp)
  li $t3, 9246478
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3412($s8)
  lw $t0, -3412($s8)
  lw $t1, -3400($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3100($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3416($s8)
  lw $t0, -3416($s8)
  lw $t1, 0($t0)
  sw $t1, -3420($s8)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3424($s8)
  lw $t0, -3424($s8)
  lw $t1, 0($t0)
  sw $t1, -3428($s8)
  lw $t0, -3428($s8)
  sw $t0, 0($sp)
  lw $t1, -3420($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_mul
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3432($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 1497597886
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3436($s8)
  la $t0, -3092($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3440($s8)
  lw $t0, -3440($s8)
  lw $t1, 0($t0)
  sw $t1, -3444($s8)
  la $t0, -3200($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3448($s8)
  lw $t0, -3448($s8)
  lw $t1, 0($t0)
  sw $t1, -3452($s8)
  lw $t0, -3444($s8)
  lw $t1, -3452($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -3456($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3456($s8)
  sw $t1, 4($sp)
  lw $t2, -3436($s8)
  sw $t2, 8($sp)
  lw $t3, -3432($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3460($s8)
  la $t0, -3100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3464($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3468($s8)
  la $t0, -3092($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3472($s8)
  lw $t0, -3472($s8)
  lw $t1, 0($t0)
  sw $t1, -3476($s8)
  lw $t0, -3476($s8)
  li $t1, 0
  bne $t0, $t1, label499
  j label498
label498:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3468($s8)
label499:
  lw $t0, -3468($s8)
  lw $t1, -3464($s8)
  sw $t0, 0($t1)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3480($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3484($s8)
  li $t0, -422420684
  li $t1, 0
  beq $t0, $t1, label501
  la $t0, -3100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3488($s8)
  lw $t0, -3488($s8)
  lw $t1, 0($t0)
  sw $t1, -3492($s8)
  lw $t0, -3492($s8)
  li $t1, 0
  bne $t0, $t1, label500
  j label501
label500:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3484($s8)
label501:
  lw $t0, -3484($s8)
  lw $t1, -3480($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3496($s8)
  lw $t0, -3496($s8)
  lw $t1, 0($t0)
  sw $t1, -3500($s8)
  lw $t0, -3500($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -3504($s8)
  la $t0, -3100($s8)
  lw $t1, -3504($s8)
  add $t2, $t0, $t1
  sw $t2, -3508($s8)
  la $t0, -3092($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3512($s8)
  lw $t0, -3512($s8)
  lw $t1, 0($t0)
  sw $t1, -3516($s8)
  la $t0, -3200($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3520($s8)
  lw $t0, -3520($s8)
  lw $t1, 0($t0)
  sw $t1, -3524($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, -3524($s8)
  sw $t2, 8($sp)
  lw $t3, -3516($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3528($s8)
  lw $t0, -3528($s8)
  lw $t1, -3508($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 6
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3532($s8)
  lw $t0, -3532($s8)
  lw $t1, 0($t0)
  sw $t1, -3536($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3536($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3540($s8)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3544($s8)
  lw $t0, -3544($s8)
  lw $t1, 0($t0)
  sw $t1, -3548($s8)
  la $t0, -3092($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3552($s8)
  lw $t0, -3552($s8)
  lw $t1, 0($t0)
  sw $t1, -3556($s8)
  la $t0, -3200($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3560($s8)
  lw $t0, -3560($s8)
  lw $t1, 0($t0)
  sw $t1, -3564($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 695560292
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, -3564($s8)
  sw $t3, 12($sp)
  lw $t4, -3556($s8)
  sw $t4, 16($sp)
  lw $t5, -3548($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3568($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -20($s8)
  sw $t1, 4($sp)
  lw $t2, -16($s8)
  sw $t2, 8($sp)
  lw $t3, -12($s8)
  sw $t3, 12($sp)
  lw $t4, -8($s8)
  sw $t4, 16($sp)
  lw $t5, -4($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3572($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3272($s8)
  sw $t1, 4($sp)
  lw $t2, -3124($s8)
  sw $t2, 8($sp)
  lw $t3, -3120($s8)
  sw $t3, 12($sp)
  lw $t4, -3116($s8)
  sw $t4, 16($sp)
  lw $t5, -36($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3576($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3304($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3580($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3580($s8)
  sw $t1, 4($sp)
  lw $t2, -3576($s8)
  sw $t2, 8($sp)
  lw $t3, -3572($s8)
  sw $t3, 12($sp)
  lw $t4, -3568($s8)
  sw $t4, 16($sp)
  lw $t5, -3540($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3584($s8)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3588($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3592($s8)
  li $t0, -141334476
  li $t1, 1269398292
  bgt $t0, $t1, label502
  j label503
label502:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3592($s8)
label503:
  lw $t0, -3592($s8)
  lw $t1, -3588($s8)
  sw $t0, 0($t1)
  lw $t0, -3272($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -3304($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label504:
  la $t0, -3100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3596($s8)
  lw $t0, -3596($s8)
  lw $t1, 0($t0)
  sw $t1, -3600($s8)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3604($s8)
  lw $t0, -3604($s8)
  lw $t1, 0($t0)
  sw $t1, -3608($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -1326093429
  sw $t1, 4($sp)
  lw $t2, -3608($s8)
  sw $t2, 8($sp)
  lw $t3, -3600($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3612($s8)
  la $t0, -3092($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3616($s8)
  lw $t0, -3616($s8)
  lw $t1, 0($t0)
  sw $t1, -3620($s8)
  lw $t0, -3620($s8)
  li $t1, 600019430
  div $t0, $t1
  mflo $t2
  sw $t2, -3624($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -8($s8)
  sw $t1, 4($sp)
  lw $t2, -4($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3628($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3628($s8)
  sw $t1, 4($sp)
  lw $t2, -3624($s8)
  sw $t2, 8($sp)
  lw $t3, -3612($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3632($s8)
  lw $t0, -3632($s8)
  li $t1, 0
  beq $t0, $t1, label505
  li $t0, 0
  move $t1, $t0
  sw $t1, -3636($s8)
  lw $t0, -3196($s8)
  li $t1, 10
  blt $t0, $t1, label506
  j label507
label506:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3636($s8)
label507:
  lw $t0, -3636($s8)
  li $t1, 0
  beq $t0, $t1, label505
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3640($s8)
  la $t0, -3092($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3644($s8)
  lw $t0, -3644($s8)
  lw $t1, 0($t0)
  sw $t1, -3648($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -12($s8)
  sw $t1, 4($sp)
  lw $t2, -8($s8)
  sw $t2, 8($sp)
  lw $t3, -4($s8)
  sw $t3, 12($sp)
  lw $t4, 12($s8)
  sw $t4, 16($sp)
  lw $t5, -3648($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3652($s8)
  lw $t0, -3652($s8)
  lw $t1, -3640($s8)
  sw $t0, 0($t1)
  lw $t0, -3640($s8)
  lw $t1, 0($t0)
  sw $t1, -3656($s8)
  lw $t0, -3656($s8)
  move $t1, $t0
  sw $t1, -3660($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3664($s8)
  la $t0, -3092($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3668($s8)
  lw $t0, -3668($s8)
  lw $t1, 0($t0)
  sw $t1, -3672($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3672($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3676($s8)
  lw $t0, -3676($s8)
  lw $t1, -3664($s8)
  sw $t0, 0($t1)
  lw $t0, -3664($s8)
  lw $t1, 0($t0)
  sw $t1, -3680($s8)
  lw $t0, -3680($s8)
  move $t1, $t0
  sw $t1, -3684($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3688($s8)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3692($s8)
  lw $t0, -3692($s8)
  lw $t1, 0($t0)
  sw $t1, -3696($s8)
  la $t0, -3092($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3700($s8)
  lw $t0, -3700($s8)
  lw $t1, 0($t0)
  sw $t1, -3704($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, -3704($s8)
  sw $t2, 8($sp)
  lw $t3, -3696($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3708($s8)
  lw $t0, -3708($s8)
  lw $t1, -3688($s8)
  sw $t0, 0($t1)
  lw $t0, -3688($s8)
  lw $t1, 0($t0)
  sw $t1, -3712($s8)
  lw $t0, -3712($s8)
  move $t1, $t0
  sw $t1, -3716($s8)
  lw $t0, -3196($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -3196($s8)
  la $t0, -3100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3720($s8)
  la $t0, -3092($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3724($s8)
  lw $t0, -3724($s8)
  lw $t1, 0($t0)
  sw $t1, -3728($s8)
  lw $t0, -3728($s8)
  lw $t1, -3720($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3732($s8)
  lw $t0, -3732($s8)
  lw $t1, 0($t0)
  sw $t1, -3736($s8)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3740($s8)
  lw $t0, -3740($s8)
  lw $t1, 0($t0)
  sw $t1, -3744($s8)
  la $t0, -3092($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3748($s8)
  lw $t0, -3748($s8)
  lw $t1, 0($t0)
  sw $t1, -3752($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3752($s8)
  sw $t1, 4($sp)
  lw $t2, -3744($s8)
  sw $t2, 8($sp)
  lw $t3, -3736($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3756($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -8($s8)
  sw $t1, 4($sp)
  lw $t2, -4($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3760($s8)
  lw $t0, -12($s8)
  lw $t1, -16($s8)
  sub $t2, $t0, $t1
  sw $t2, -3764($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3764($s8)
  sw $t1, 4($sp)
  lw $t2, -3760($s8)
  sw $t2, 8($sp)
  lw $t3, -3756($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3768($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3772($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -714838172
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3776($s8)
  lw $t0, -3776($s8)
  lw $t1, -3772($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3780($s8)
  la $t0, -3092($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3784($s8)
  lw $t0, -3784($s8)
  lw $t1, 0($t0)
  sw $t1, -3788($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, -3788($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3792($s8)
  lw $t0, -3792($s8)
  lw $t1, -3780($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3796($s8)
  la $t0, -3092($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3800($s8)
  lw $t0, -3800($s8)
  lw $t1, 0($t0)
  sw $t1, -3804($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3804($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3808($s8)
  lw $t0, -3808($s8)
  lw $t1, -3796($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3812($s8)
  la $t0, -3100($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3816($s8)
  lw $t0, -3816($s8)
  lw $t1, 0($t0)
  sw $t1, -3820($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, -3820($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3824($s8)
  lw $t0, -3824($s8)
  lw $t1, -3812($s8)
  sw $t0, 0($t1)
  la $t0, -3100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3828($s8)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3832($s8)
  lw $t0, -3832($s8)
  lw $t1, 0($t0)
  sw $t1, -3836($s8)
  la $t0, -3092($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3840($s8)
  lw $t0, -3840($s8)
  lw $t1, 0($t0)
  sw $t1, -3844($s8)
  lw $t0, -3836($s8)
  lw $t1, -3844($s8)
  sub $t2, $t0, $t1
  sw $t2, -3848($s8)
  lw $t0, -3848($s8)
  lw $t1, -3828($s8)
  sw $t0, 0($t1)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3852($s8)
  li $t0, -58311002
  move $t1, $t0
  sw $t1, -3856($s8)
  lw $t0, -3856($s8)
  lw $t1, -3852($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3860($s8)
  la $t0, -3100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3864($s8)
  lw $t0, -3864($s8)
  lw $t1, 0($t0)
  sw $t1, -3868($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, -3868($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3872($s8)
  lw $t0, -3872($s8)
  lw $t1, -3860($s8)
  sw $t0, 0($t1)
  lw $t0, -3660($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -3684($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -3716($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label504
label505:
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3876($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3880($s8)
  la $t0, -3100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3884($s8)
  lw $t0, -3884($s8)
  lw $t1, 0($t0)
  sw $t1, -3888($s8)
  lw $t0, -3888($s8)
  li $t1, 630091666
  bge $t0, $t1, label508
  j label509
label508:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3880($s8)
label509:
  lw $t0, -3880($s8)
  lw $t1, -3876($s8)
  sw $t0, 0($t1)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3892($s8)
  lw $t0, -3892($s8)
  lw $t1, 0($t0)
  sw $t1, -3896($s8)
  lw $t0, -3896($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -3900($s8)
  la $t0, -3100($s8)
  lw $t1, -3900($s8)
  add $t2, $t0, $t1
  sw $t2, -3904($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3908($s8)
  la $t0, -3092($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3912($s8)
  lw $t0, -3912($s8)
  lw $t1, 0($t0)
  sw $t1, -3916($s8)
  lw $t0, -3916($s8)
  lw $t1, 12($s8)
  beq $t0, $t1, label510
  j label511
label510:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3908($s8)
label511:
  lw $t0, -3908($s8)
  lw $t1, -3904($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3920($s8)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3924($s8)
  lw $t0, -3924($s8)
  lw $t1, 0($t0)
  sw $t1, -3928($s8)
  lw $t0, -3928($s8)
  li $t1, 0
  bne $t0, $t1, label512
  la $t0, -3092($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3932($s8)
  lw $t0, -3932($s8)
  lw $t1, 0($t0)
  sw $t1, -3936($s8)
  lw $t0, -3936($s8)
  li $t1, 0
  bne $t0, $t1, label512
  j label513
label512:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3920($s8)
label513:
  la $t0, -3100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3940($s8)
  lw $t0, -3940($s8)
  lw $t1, 0($t0)
  sw $t1, -3944($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3948($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3948($s8)
  sw $t1, 4($sp)
  lw $t2, -3944($s8)
  sw $t2, 8($sp)
  lw $t3, -3920($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3952($s8)
  la $t0, -3100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3956($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3960($s8)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3964($s8)
  lw $t0, -3964($s8)
  lw $t1, 0($t0)
  sw $t1, -3968($s8)
  la $t0, -3092($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3972($s8)
  lw $t0, -3972($s8)
  lw $t1, 0($t0)
  sw $t1, -3976($s8)
  lw $t0, -3968($s8)
  lw $t1, -3976($s8)
  beq $t0, $t1, label514
  j label515
label514:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3960($s8)
label515:
  lw $t0, -3960($s8)
  lw $t1, -3956($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3980($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 344775061
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3984($s8)
  lw $t0, -3984($s8)
  lw $t1, -3980($s8)
  sw $t0, 0($t1)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3988($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3992($s8)
  la $t0, -3092($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3996($s8)
  lw $t0, -3996($s8)
  lw $t1, 0($t0)
  sw $t1, -4000($s8)
  lw $t0, -4000($s8)
  lw $t1, 12($s8)
  ble $t0, $t1, label516
  j label517
label516:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3992($s8)
label517:
  lw $t0, -3992($s8)
  lw $t1, -3988($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 13
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4004($s8)
  la $t0, -3100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4008($s8)
  lw $t0, -4008($s8)
  lw $t1, 0($t0)
  sw $t1, -4012($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 388494431
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, -4012($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4016($s8)
  lw $t0, -4016($s8)
  lw $t1, -4004($s8)
  sw $t0, 0($t1)
  lw $t0, -4004($s8)
  lw $t1, 0($t0)
  sw $t1, -4020($s8)
  lw $t0, -4020($s8)
  move $t1, $t0
  sw $t1, -4024($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4028($s8)
  la $t0, -3092($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4032($s8)
  lw $t0, -4032($s8)
  lw $t1, 0($t0)
  sw $t1, -4036($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, -4036($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4040($s8)
  lw $t0, -4040($s8)
  lw $t1, -4028($s8)
  sw $t0, 0($t1)
  lw $t0, -4028($s8)
  lw $t1, 0($t0)
  sw $t1, -4044($s8)
  lw $t0, -4044($s8)
  move $t1, $t0
  sw $t1, -4048($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4052($s8)
  la $t0, -3092($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4056($s8)
  lw $t0, -4056($s8)
  lw $t1, 0($t0)
  sw $t1, -4060($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4060($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4064($s8)
  lw $t0, -4064($s8)
  lw $t1, -4052($s8)
  sw $t0, 0($t1)
  lw $t0, -4052($s8)
  lw $t1, 0($t0)
  sw $t1, -4068($s8)
  lw $t0, -4068($s8)
  move $t1, $t0
  sw $t1, -4072($s8)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4076($s8)
  la $t0, -3100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4080($s8)
  lw $t0, -4080($s8)
  lw $t1, 0($t0)
  sw $t1, -4084($s8)
  lw $t0, -4084($s8)
  li $t1, 0
  bne $t0, $t1, label518
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4088($s8)
  lw $t0, -4088($s8)
  lw $t1, 0($t0)
  sw $t1, -4092($s8)
  lw $t0, -4092($s8)
  li $t1, 0
  bne $t0, $t1, label518
  j label519
label518:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4076($s8)
label519:
  la $t0, -3092($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4096($s8)
  lw $t0, -4096($s8)
  lw $t1, 0($t0)
  sw $t1, -4100($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4100($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4104($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4108($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4108($s8)
  sw $t1, 4($sp)
  lw $t2, -4104($s8)
  sw $t2, 8($sp)
  lw $t3, -4076($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4112($s8)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4116($s8)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4120($s8)
  lw $t0, -4120($s8)
  lw $t1, 0($t0)
  sw $t1, -4124($s8)
  la $t0, -3100($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4128($s8)
  lw $t0, -4128($s8)
  lw $t1, 0($t0)
  sw $t1, -4132($s8)
  lw $t0, -4124($s8)
  lw $t1, -4132($s8)
  bge $t0, $t1, label520
  j label521
label520:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4116($s8)
label521:
  la $t0, -3092($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4136($s8)
  lw $t0, -4136($s8)
  lw $t1, 0($t0)
  sw $t1, -4140($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, -4140($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4144($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4144($s8)
  sw $t1, 4($sp)
  lw $t2, -4116($s8)
  sw $t2, 8($sp)
  li $t3, -1977427608
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4148($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4152($s8)
  li $t0, 873257300
  li $t1, 0
  bne $t0, $t1, label522
  la $t0, -3100($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4156($s8)
  lw $t0, -4156($s8)
  lw $t1, 0($t0)
  sw $t1, -4160($s8)
  lw $t0, -4160($s8)
  li $t1, 0
  bne $t0, $t1, label522
  j label523
label522:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4152($s8)
label523:
  li $t0, 0
  move $t1, $t0
  sw $t1, -4164($s8)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4168($s8)
  lw $t0, -4168($s8)
  lw $t1, 0($t0)
  sw $t1, -4172($s8)
  lw $t0, -4172($s8)
  li $t1, 0
  beq $t0, $t1, label525
  la $t0, -3092($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4176($s8)
  lw $t0, -4176($s8)
  lw $t1, 0($t0)
  sw $t1, -4180($s8)
  lw $t0, -4180($s8)
  li $t1, 0
  bne $t0, $t1, label524
  j label525
label524:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4164($s8)
label525:
  li $t0, 0
  move $t1, $t0
  sw $t1, -4184($s8)
  lw $t0, 12($s8)
  lw $t1, -4($s8)
  bgt $t0, $t1, label526
  j label527
label526:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4184($s8)
label527:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4184($s8)
  sw $t1, 4($sp)
  lw $t2, -4164($s8)
  sw $t2, 8($sp)
  lw $t3, -4152($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4188($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4192($s8)
  la $t0, -3092($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4196($s8)
  lw $t0, -4196($s8)
  lw $t1, 0($t0)
  sw $t1, -4200($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -1097408838
  sw $t1, 4($sp)
  lw $t2, -4($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  lw $t4, -4200($s8)
  sw $t4, 16($sp)
  li $t5, -1908867055
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4204($s8)
  lw $t0, -4204($s8)
  lw $t1, -4192($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4208($s8)
  la $t0, -3100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4212($s8)
  lw $t0, -4212($s8)
  lw $t1, 0($t0)
  sw $t1, -4216($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  li $t2, 1821559740
  sw $t2, 8($sp)
  lw $t3, -4216($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4220($s8)
  lw $t0, -4220($s8)
  lw $t1, -4208($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3100($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4224($s8)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4228($s8)
  lw $t0, -4228($s8)
  lw $t1, 0($t0)
  sw $t1, -4232($s8)
  lw $t0, -4232($s8)
  lw $t1, -4224($s8)
  sw $t0, 0($t1)
  lw $t0, -4224($s8)
  lw $t1, 0($t0)
  sw $t1, -4236($s8)
  lw $t0, -4236($s8)
  move $t1, $t0
  sw $t1, -4240($s8)
  la $t0, -3092($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4244($s8)
  lw $t0, -4244($s8)
  lw $t1, 0($t0)
  sw $t1, -4248($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -8($s8)
  sw $t1, 4($sp)
  lw $t2, -4($s8)
  sw $t2, 8($sp)
  li $t3, 532210846
  sw $t3, 12($sp)
  lw $t4, 12($s8)
  sw $t4, 16($sp)
  lw $t5, -4248($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4252($s8)
  lw $t0, -16($s8)
  move $t1, $t0
  sw $t1, -12($s8)
  lw $t0, -12($s8)
  move $t1, $t0
  sw $t1, -4256($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4256($s8)
  sw $t1, 4($sp)
  lw $t2, -4252($s8)
  sw $t2, 8($sp)
  lw $t3, -4240($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4260($s8)
  lw $t0, -4024($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -4048($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -4072($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3088($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4264($s8)
  la $t0, -3092($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4268($s8)
  lw $t0, -4268($s8)
  lw $t1, 0($t0)
  sw $t1, -4272($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4272($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4276($s8)
  lw $t0, -4276($s8)
  lw $t1, -4264($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4280($s8)
  la $t0, -3092($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4284($s8)
  lw $t0, -4284($s8)
  lw $t1, 0($t0)
  sw $t1, -4288($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -12($s8)
  sw $t1, 4($sp)
  lw $t2, -8($s8)
  sw $t2, 8($sp)
  lw $t3, -4($s8)
  sw $t3, 12($sp)
  lw $t4, 12($s8)
  sw $t4, 16($sp)
  lw $t5, -4288($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4292($s8)
  lw $t0, -4292($s8)
  lw $t1, -4280($s8)
  sw $t0, 0($t1)
  lw $t0, -3116($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -3120($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -3124($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label484
label485:
  lw $t0, -8($s8)
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_div
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 12($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -4296($s8)
  lw $t0, -4296($s8)
  li $t1, 0
  beq $t0, $t1, label529
  li $t0, 0
  move $t1, $t0
  sw $t1, -4300($s8)
  lw $t0, -52($s8)
  li $t1, 10
  blt $t0, $t1, label530
  j label531
label530:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4300($s8)
label531:
  lw $t0, -4300($s8)
  li $t1, 0
  beq $t0, $t1, label529
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4308($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -1914055214
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 12($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -4312($s8)
  lw $t0, -4312($s8)
  lw $t1, -4308($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4316($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -12($s8)
  sw $t1, 4($sp)
  li $t2, 1540853326
  sw $t2, 8($sp)
  lw $t3, -8($s8)
  sw $t3, 12($sp)
  lw $t4, -4($s8)
  sw $t4, 16($sp)
  li $t5, -525798848
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4320($s8)
  lw $t0, -4320($s8)
  lw $t1, -4316($s8)
  sw $t0, 0($t1)
  lw $t0, -4316($s8)
  lw $t1, 0($t0)
  sw $t1, -4324($s8)
  lw $t0, -4324($s8)
  move $t1, $t0
  sw $t1, -4328($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4332($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  lw $t2, -12($s8)
  sw $t2, 8($sp)
  lw $t3, -8($s8)
  sw $t3, 12($sp)
  lw $t4, -4($s8)
  sw $t4, 16($sp)
  li $t5, -329119544
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4336($s8)
  lw $t0, -4336($s8)
  lw $t1, -4332($s8)
  sw $t0, 0($t1)
  lw $t0, -4332($s8)
  lw $t1, 0($t0)
  sw $t1, -4340($s8)
  lw $t0, -4340($s8)
  move $t1, $t0
  sw $t1, -4344($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4348($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4352($s8)
  lw $t0, -52($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -52($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4356($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4360($s8)
  lw $t0, -4($s8)
  lw $t1, -8($s8)
  bne $t0, $t1, label532
  j label533
label532:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4360($s8)
label533:
  lw $t0, -4360($s8)
  lw $t1, -4356($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label534:
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4364($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -20($s8)
  sw $t1, 4($sp)
  lw $t2, -16($s8)
  sw $t2, 8($sp)
  lw $t3, -12($s8)
  sw $t3, 12($sp)
  lw $t4, -8($s8)
  sw $t4, 16($sp)
  lw $t5, -4($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4368($s8)
  lw $t0, -4368($s8)
  lw $t1, -4364($s8)
  sw $t0, 0($t1)
  lw $t0, -4364($s8)
  lw $t1, 0($t0)
  sw $t1, -4372($s8)
  lw $t0, -4372($s8)
  move $t1, $t0
  sw $t1, -4376($s8)
  lw $t0, -4376($s8)
  li $t1, 0
  beq $t0, $t1, label535
  li $t0, 0
  move $t1, $t0
  sw $t1, -4380($s8)
  lw $t0, -4348($s8)
  li $t1, 10
  blt $t0, $t1, label536
  j label537
label536:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4380($s8)
label537:
  lw $t0, -4380($s8)
  li $t1, 0
  beq $t0, $t1, label535
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4384($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -8($s8)
  sw $t1, 4($sp)
  li $t2, 1197532233
  sw $t2, 8($sp)
  lw $t3, -4($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4388($s8)
  lw $t0, -4388($s8)
  lw $t1, -4384($s8)
  sw $t0, 0($t1)
  lw $t0, -4384($s8)
  lw $t1, 0($t0)
  sw $t1, -4392($s8)
  lw $t0, -4392($s8)
  move $t1, $t0
  sw $t1, -4396($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4400($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -12($s8)
  sw $t1, 4($sp)
  lw $t2, -8($s8)
  sw $t2, 8($sp)
  lw $t3, -4($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4404($s8)
  lw $t0, -4404($s8)
  lw $t1, -4400($s8)
  sw $t0, 0($t1)
  lw $t0, -4400($s8)
  lw $t1, 0($t0)
  sw $t1, -4408($s8)
  lw $t0, -4408($s8)
  move $t1, $t0
  sw $t1, -4412($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4416($s8)
  lw $t0, -4($s8)
  move $t1, $t0
  sw $t1, 12($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -4420($s8)
  lw $t0, -4420($s8)
  lw $t1, -4416($s8)
  sw $t0, 0($t1)
  lw $t0, -4416($s8)
  lw $t1, 0($t0)
  sw $t1, -4424($s8)
  lw $t0, -4424($s8)
  move $t1, $t0
  sw $t1, -4428($s8)
  lw $t0, -4348($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -4348($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4432($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -20($s8)
  sw $t1, 4($sp)
  lw $t2, -16($s8)
  sw $t2, 8($sp)
  lw $t3, -12($s8)
  sw $t3, 12($sp)
  lw $t4, -8($s8)
  sw $t4, 16($sp)
  lw $t5, -4($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4436($s8)
  lw $t0, -4436($s8)
  lw $t1, -4432($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4440($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -20($s8)
  sw $t1, 4($sp)
  lw $t2, -16($s8)
  sw $t2, 8($sp)
  lw $t3, -12($s8)
  sw $t3, 12($sp)
  lw $t4, -8($s8)
  sw $t4, 16($sp)
  lw $t5, -4($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4444($s8)
  lw $t0, -4444($s8)
  lw $t1, -4440($s8)
  sw $t0, 0($t1)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4448($s8)
  lw $t0, -4($s8)
  sw $t0, 0($sp)
  li $t1, -1915062375
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_mul
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4452($s8)
  lw $t0, -4452($s8)
  lw $t1, -4448($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4456($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4460($s8)
  lw $t0, -4460($s8)
  lw $t1, 0($t0)
  sw $t1, -4464($s8)
  lw $t0, -4464($s8)
  li $t1, 0
  beq $t0, $t1, label539
  lw $t0, 12($s8)
  li $t1, 0
  bne $t0, $t1, label538
  j label539
label538:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4456($s8)
label539:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4456($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4468($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4472($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -649452
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4476($s8)
  lw $t0, -4476($s8)
  lw $t1, -4472($s8)
  sw $t0, 0($t1)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4480($s8)
  li $t0, -819102207
  lw $t1, -4($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -4484($s8)
  lw $t0, -4484($s8)
  lw $t1, -4480($s8)
  sw $t0, 0($t1)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4488($s8)
  lw $t0, -8($s8)
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_div
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4492($s8)
  lw $t0, -4492($s8)
  lw $t1, -4488($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4496($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -12($s8)
  sw $t1, 4($sp)
  lw $t2, -8($s8)
  sw $t2, 8($sp)
  lw $t3, -4($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4500($s8)
  lw $t0, -4500($s8)
  lw $t1, -4496($s8)
  sw $t0, 0($t1)
  lw $t0, -4396($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -4412($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -4428($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label534
label535:
  lw $t0, 8($s8)
  li $t1, 14
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4504($s8)
  lw $t0, -8($s8)
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_div
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4508($s8)
  lw $t0, -4508($s8)
  lw $t1, -4504($s8)
  sw $t0, 0($t1)
  lw $t0, -4504($s8)
  lw $t1, 0($t0)
  sw $t1, -4512($s8)
  lw $t0, -4512($s8)
  move $t1, $t0
  sw $t1, -4516($s8)
  lw $t0, -4516($s8)
  li $t1, 0
  beq $t0, $t1, label540
  la $t0, -4524($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4532($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4536($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4540($s8)
  lw $t0, 12($s8)
  li $t1, 0
  bne $t0, $t1, label542
  li $t0, 580256331
  li $t1, 0
  bne $t0, $t1, label542
  j label543
label542:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4540($s8)
label543:
  lw $t0, -4540($s8)
  lw $t1, -4536($s8)
  sw $t0, 0($t1)
  lw $t0, -4536($s8)
  lw $t1, 0($t0)
  sw $t1, -4544($s8)
  lw $t0, -4544($s8)
  move $t1, $t0
  sw $t1, -4548($s8)
  lw $t0, -4548($s8)
  lw $t1, -4532($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4524($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4552($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4556($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4560($s8)
  lw $t0, -4560($s8)
  lw $t1, -4556($s8)
  sw $t0, 0($t1)
  lw $t0, -4556($s8)
  lw $t1, 0($t0)
  sw $t1, -4564($s8)
  lw $t0, -4564($s8)
  move $t1, $t0
  sw $t1, -4568($s8)
  lw $t0, -4568($s8)
  lw $t1, -4552($s8)
  sw $t0, 0($t1)
  la $t0, -4528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4572($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4576($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4580($s8)
  li $t0, -260642910
  lw $t1, 12($s8)
  bge $t0, $t1, label544
  j label545
label544:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4580($s8)
label545:
  lw $t0, -4580($s8)
  lw $t1, -4576($s8)
  sw $t0, 0($t1)
  lw $t0, -4576($s8)
  lw $t1, 0($t0)
  sw $t1, -4584($s8)
  lw $t0, -4584($s8)
  move $t1, $t0
  sw $t1, -4588($s8)
  lw $t0, -4588($s8)
  lw $t1, -4572($s8)
  sw $t0, 0($t1)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4592($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4596($s8)
  la $t0, -4524($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4600($s8)
  lw $t0, -4600($s8)
  lw $t1, 0($t0)
  sw $t1, -4604($s8)
  lw $t0, -4604($s8)
  li $t1, 0
  bne $t0, $t1, label546
  lw $t0, 12($s8)
  li $t1, 0
  bne $t0, $t1, label546
  j label547
label546:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4596($s8)
label547:
  lw $t0, -4596($s8)
  lw $t1, -4592($s8)
  sw $t0, 0($t1)
  lw $t0, -4592($s8)
  lw $t1, 0($t0)
  sw $t1, -4608($s8)
  lw $t0, -4608($s8)
  move $t1, $t0
  sw $t1, -4612($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4616($s8)
  la $t0, -4524($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4620($s8)
  lw $t0, -4620($s8)
  lw $t1, 0($t0)
  sw $t1, -4624($s8)
  lw $t0, -4624($s8)
  lw $t1, 12($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -4628($s8)
  lw $t0, -4628($s8)
  lw $t1, -4616($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4632($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4636($s8)
  lw $t0, -4636($s8)
  lw $t1, 0($t0)
  sw $t1, -4640($s8)
  lw $t0, -4640($s8)
  li $t1, 0
  bne $t0, $t1, label549
  j label548
label548:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4632($s8)
label549:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 1651446748
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4644($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4648($s8)
  la $t0, -4528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4652($s8)
  lw $t0, -4652($s8)
  lw $t1, 0($t0)
  sw $t1, -4656($s8)
  la $t0, -4524($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4660($s8)
  lw $t0, -4660($s8)
  lw $t1, 0($t0)
  sw $t1, -4664($s8)
  lw $t0, -4656($s8)
  lw $t1, -4664($s8)
  blt $t0, $t1, label550
  j label551
label550:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4648($s8)
label551:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4648($s8)
  sw $t1, 4($sp)
  lw $t2, -4644($s8)
  sw $t2, 8($sp)
  lw $t3, -4632($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4668($s8)
  la $t0, -4524($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4672($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4676($s8)
  la $t0, -4528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4680($s8)
  lw $t0, -4680($s8)
  lw $t1, 0($t0)
  sw $t1, -4684($s8)
  lw $t0, -4684($s8)
  li $t1, 0
  bne $t0, $t1, label552
  lw $t0, 12($s8)
  li $t1, 0
  bne $t0, $t1, label552
  j label553
label552:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4676($s8)
label553:
  lw $t0, -4676($s8)
  lw $t1, -4672($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4688($s8)
  la $t0, -4528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4692($s8)
  lw $t0, -4692($s8)
  lw $t1, 0($t0)
  sw $t1, -4696($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -12($s8)
  sw $t1, 4($sp)
  lw $t2, -8($s8)
  sw $t2, 8($sp)
  lw $t3, -4($s8)
  sw $t3, 12($sp)
  lw $t4, 12($s8)
  sw $t4, 16($sp)
  lw $t5, -4696($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4700($s8)
  lw $t0, -4700($s8)
  lw $t1, -4688($s8)
  sw $t0, 0($t1)
  la $t0, -4524($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4704($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4708($s8)
  la $t0, -4528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4712($s8)
  lw $t0, -4712($s8)
  lw $t1, 0($t0)
  sw $t1, -4716($s8)
  lw $t0, -4716($s8)
  lw $t1, 12($s8)
  beq $t0, $t1, label554
  j label555
label554:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4708($s8)
label555:
  lw $t0, -4708($s8)
  lw $t1, -4704($s8)
  sw $t0, 0($t1)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4720($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4724($s8)
  la $t0, -4528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4728($s8)
  lw $t0, -4728($s8)
  lw $t1, 0($t0)
  sw $t1, -4732($s8)
  lw $t0, -4732($s8)
  lw $t1, 12($s8)
  blt $t0, $t1, label556
  j label557
label556:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4724($s8)
label557:
  lw $t0, -4724($s8)
  lw $t1, -4720($s8)
  sw $t0, 0($t1)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4736($s8)
  la $t0, -4524($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4740($s8)
  lw $t0, -4740($s8)
  lw $t1, 0($t0)
  sw $t1, -4744($s8)
  lw $t0, -4744($s8)
  lw $t1, -4736($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4748($s8)
  la $t0, -4524($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4752($s8)
  lw $t0, -4752($s8)
  lw $t1, 0($t0)
  sw $t1, -4756($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -12($s8)
  sw $t1, 4($sp)
  lw $t2, -8($s8)
  sw $t2, 8($sp)
  lw $t3, -4($s8)
  sw $t3, 12($sp)
  lw $t4, 12($s8)
  sw $t4, 16($sp)
  lw $t5, -4756($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4760($s8)
  lw $t0, -4760($s8)
  lw $t1, -4748($s8)
  sw $t0, 0($t1)
  lw $t0, -4612($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label541
label540:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4764($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4776($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4780($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4784($s8)
  lw $t0, -4784($s8)
  lw $t1, -4780($s8)
  sw $t0, 0($t1)
  lw $t0, -4780($s8)
  lw $t1, 0($t0)
  sw $t1, -4788($s8)
  lw $t0, -4788($s8)
  move $t1, $t0
  sw $t1, -4792($s8)
  lw $t0, -4792($s8)
  lw $t1, -4776($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4796($s8)
  la $t0, -4764($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4800($s8)
  lw $t0, -4800($s8)
  lw $t1, 0($t0)
  sw $t1, -4804($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4804($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4808($s8)
  lw $t0, -4808($s8)
  lw $t1, -4796($s8)
  sw $t0, 0($t1)
  lw $t0, -4796($s8)
  lw $t1, 0($t0)
  sw $t1, -4812($s8)
  lw $t0, -4812($s8)
  move $t1, $t0
  sw $t1, -4816($s8)
  la $t0, -4772($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4820($s8)
  la $t0, -4764($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4824($s8)
  lw $t0, -4824($s8)
  lw $t1, 0($t0)
  sw $t1, -4828($s8)
  lw $t0, -4828($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4832($s8)
  la $t0, -4304($s8)
  lw $t1, -4832($s8)
  add $t2, $t0, $t1
  sw $t2, -4836($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4840($s8)
  li $t0, -2037145198
  li $t1, 0
  bne $t0, $t1, label558
  lw $t0, 12($s8)
  li $t1, 0
  bne $t0, $t1, label558
  j label559
label558:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4840($s8)
label559:
  lw $t0, -4840($s8)
  lw $t1, -4836($s8)
  sw $t0, 0($t1)
  lw $t0, -4836($s8)
  lw $t1, 0($t0)
  sw $t1, -4844($s8)
  lw $t0, -4844($s8)
  move $t1, $t0
  sw $t1, -4848($s8)
  lw $t0, -4848($s8)
  lw $t1, -4820($s8)
  sw $t0, 0($t1)
  la $t0, -4772($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4852($s8)
  la $t0, -4764($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4856($s8)
  lw $t0, -4856($s8)
  lw $t1, 0($t0)
  sw $t1, -4860($s8)
  lw $t0, -4860($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4864($s8)
  la $t0, -4304($s8)
  lw $t1, -4864($s8)
  add $t2, $t0, $t1
  sw $t2, -4868($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4872($s8)
  lw $t0, 12($s8)
  lw $t1, -4($s8)
  bne $t0, $t1, label560
  j label561
label560:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4872($s8)
label561:
  lw $t0, -4872($s8)
  lw $t1, -4868($s8)
  sw $t0, 0($t1)
  lw $t0, -4868($s8)
  lw $t1, 0($t0)
  sw $t1, -4876($s8)
  lw $t0, -4876($s8)
  move $t1, $t0
  sw $t1, -4880($s8)
  lw $t0, -4880($s8)
  lw $t1, -4852($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4884($s8)
  la $t0, -4772($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4888($s8)
  lw $t0, -4888($s8)
  lw $t1, 0($t0)
  sw $t1, -4892($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4896($s8)
  lw $t0, -4896($s8)
  lw $t1, 0($t0)
  sw $t1, -4900($s8)
  lw $t0, -4892($s8)
  lw $t1, -4900($s8)
  bgt $t0, $t1, label562
  j label563
label562:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4884($s8)
label563:
  la $t0, -4764($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4904($s8)
  lw $t0, -4904($s8)
  lw $t1, 0($t0)
  sw $t1, -4908($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4908($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4912($s8)
  lw $t0, 12($s8)
  lw $t1, -4($s8)
  mul $t2, $t0, $t1
  sw $t2, -4916($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -8($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4920($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4924($s8)
  lw $t0, -12($s8)
  lw $t1, -16($s8)
  beq $t0, $t1, label564
  j label565
label564:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4924($s8)
label565:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4924($s8)
  sw $t1, 4($sp)
  lw $t2, -4920($s8)
  sw $t2, 8($sp)
  lw $t3, -4916($s8)
  sw $t3, 12($sp)
  lw $t4, -4912($s8)
  sw $t4, 16($sp)
  lw $t5, -4884($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4928($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4932($s8)
  lw $t0, -4932($s8)
  lw $t1, 0($t0)
  sw $t1, -4936($s8)
  lw $t0, -4936($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4940($s8)
  la $t0, -4772($s8)
  lw $t1, -4940($s8)
  add $t2, $t0, $t1
  sw $t2, -4944($s8)
  la $t0, -4764($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4948($s8)
  lw $t0, -4948($s8)
  lw $t1, 0($t0)
  sw $t1, -4952($s8)
  lw $t0, -4952($s8)
  lw $t1, 12($s8)
  mul $t2, $t0, $t1
  sw $t2, -4956($s8)
  lw $t0, -4956($s8)
  lw $t1, -4944($s8)
  sw $t0, 0($t1)
  la $t0, -4772($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4960($s8)
  lw $t0, -4960($s8)
  lw $t1, 0($t0)
  sw $t1, -4964($s8)
  lw $t0, -4964($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4968($s8)
  la $t0, -4304($s8)
  lw $t1, -4968($s8)
  add $t2, $t0, $t1
  sw $t2, -4972($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4976($s8)
  la $t0, -4764($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4980($s8)
  lw $t0, -4980($s8)
  lw $t1, 0($t0)
  sw $t1, -4984($s8)
  lw $t0, -4984($s8)
  li $t1, -653485974
  blt $t0, $t1, label566
  j label567
label566:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4976($s8)
label567:
  lw $t0, -4976($s8)
  lw $t1, -4972($s8)
  sw $t0, 0($t1)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4988($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4992($s8)
  la $t0, -4764($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4996($s8)
  lw $t0, -4996($s8)
  lw $t1, 0($t0)
  sw $t1, -5000($s8)
  la $t0, -4772($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5004($s8)
  lw $t0, -5004($s8)
  lw $t1, 0($t0)
  sw $t1, -5008($s8)
  lw $t0, -5000($s8)
  lw $t1, -5008($s8)
  bge $t0, $t1, label568
  j label569
label568:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4992($s8)
label569:
  lw $t0, -4992($s8)
  lw $t1, -4988($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5012($s8)
  lw $t0, -5012($s8)
  lw $t1, 0($t0)
  sw $t1, -5016($s8)
  la $t0, -4764($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5020($s8)
  lw $t0, -5020($s8)
  lw $t1, 0($t0)
  sw $t1, -5024($s8)
  lw $t0, -5016($s8)
  lw $t1, -5024($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -5028($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -5032($s8)
  la $t0, -4772($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5036($s8)
  lw $t0, -5036($s8)
  lw $t1, 0($t0)
  sw $t1, -5040($s8)
  li $t0, -1418034549
  lw $t1, -5040($s8)
  bne $t0, $t1, label570
  j label571
label570:
  li $t0, 1
  move $t1, $t0
  sw $t1, -5032($s8)
label571:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -12($s8)
  sw $t1, 4($sp)
  lw $t2, -8($s8)
  sw $t2, 8($sp)
  li $t3, -1496051983
  sw $t3, 12($sp)
  lw $t4, -4($s8)
  sw $t4, 16($sp)
  lw $t5, 12($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5044($s8)
  lw $t0, -16($s8)
  lw $t1, -20($s8)
  sub $t2, $t0, $t1
  sw $t2, -5048($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4344($s8)
  sw $t1, 4($sp)
  lw $t2, -4328($s8)
  sw $t2, 8($sp)
  lw $t3, -36($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5052($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -5052($s8)
  sw $t1, 4($sp)
  lw $t2, -5048($s8)
  sw $t2, 8($sp)
  lw $t3, -5044($s8)
  sw $t3, 12($sp)
  lw $t4, -5032($s8)
  sw $t4, 16($sp)
  lw $t5, -5028($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5056($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5060($s8)
  lw $t0, -5060($s8)
  lw $t1, 0($t0)
  sw $t1, -5064($s8)
  lw $t0, -5064($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -5068($s8)
  la $t0, -4772($s8)
  lw $t1, -5068($s8)
  add $t2, $t0, $t1
  sw $t2, -5072($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -5076($s8)
  la $t0, -4764($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5080($s8)
  lw $t0, -5080($s8)
  lw $t1, 0($t0)
  sw $t1, -5084($s8)
  lw $t0, -5084($s8)
  lw $t1, 12($s8)
  ble $t0, $t1, label572
  j label573
label572:
  li $t0, 1
  move $t1, $t0
  sw $t1, -5076($s8)
label573:
  lw $t0, -5076($s8)
  lw $t1, -5072($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4772($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5088($s8)
  lw $t0, -5088($s8)
  lw $t1, 0($t0)
  sw $t1, -5092($s8)
  lw $t0, -5092($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -5096($s8)
  la $t0, -4304($s8)
  lw $t1, -5096($s8)
  add $t2, $t0, $t1
  sw $t2, -5100($s8)
  la $t0, -4764($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5104($s8)
  lw $t0, -5104($s8)
  lw $t1, 0($t0)
  sw $t1, -5108($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, -5108($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5112($s8)
  lw $t0, -5112($s8)
  lw $t1, -5100($s8)
  sw $t0, 0($t1)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5116($s8)
  lw $t0, -5116($s8)
  lw $t1, 0($t0)
  sw $t1, -5120($s8)
  lw $t0, -5120($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -5124($s8)
  la $t0, -4772($s8)
  lw $t1, -5124($s8)
  add $t2, $t0, $t1
  sw $t2, -5128($s8)
  la $t0, -4764($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5132($s8)
  lw $t0, -5132($s8)
  lw $t1, 0($t0)
  sw $t1, -5136($s8)
  lw $t0, -5136($s8)
  lw $t1, 12($s8)
  add $t2, $t0, $t1
  sw $t2, -5140($s8)
  lw $t0, -5140($s8)
  lw $t1, -5128($s8)
  sw $t0, 0($t1)
  lw $t0, -4816($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
label541:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5144($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 930180961
  sw $t1, 4($sp)
  lw $t2, -8($s8)
  sw $t2, 8($sp)
  lw $t3, -4($s8)
  sw $t3, 12($sp)
  li $t4, 574876140
  sw $t4, 16($sp)
  lw $t5, 12($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5148($s8)
  lw $t0, -5148($s8)
  lw $t1, -5144($s8)
  sw $t0, 0($t1)
label574:
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5152($s8)
  lw $t0, -4($s8)
  move $t1, $t0
  sw $t1, -5156($s8)
  lw $t0, -5156($s8)
  lw $t1, -5152($s8)
  sw $t0, 0($t1)
  lw $t0, -5152($s8)
  lw $t1, 0($t0)
  sw $t1, -5160($s8)
  lw $t0, -5160($s8)
  move $t1, $t0
  sw $t1, -5164($s8)
  lw $t0, -5164($s8)
  li $t1, 0
  beq $t0, $t1, label575
  li $t0, 0
  move $t1, $t0
  sw $t1, -5168($s8)
  lw $t0, -4352($s8)
  li $t1, 10
  blt $t0, $t1, label576
  j label577
label576:
  li $t0, 1
  move $t1, $t0
  sw $t1, -5168($s8)
label577:
  lw $t0, -5168($s8)
  li $t1, 0
  beq $t0, $t1, label575
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5180($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -12($s8)
  sw $t1, 4($sp)
  lw $t2, -8($s8)
  sw $t2, 8($sp)
  lw $t3, -4($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5184($s8)
  lw $t0, -5184($s8)
  lw $t1, -5180($s8)
  sw $t0, 0($t1)
  lw $t0, -5180($s8)
  lw $t1, 0($t0)
  sw $t1, -5188($s8)
  lw $t0, -5188($s8)
  move $t1, $t0
  sw $t1, -5192($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5196($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -1076143535
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5200($s8)
  lw $t0, -5200($s8)
  lw $t1, -5196($s8)
  sw $t0, 0($t1)
  lw $t0, -5196($s8)
  lw $t1, 0($t0)
  sw $t1, -5204($s8)
  lw $t0, -5204($s8)
  move $t1, $t0
  sw $t1, -5208($s8)
  la $t0, -5176($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5212($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5216($s8)
  lw $t0, -4($s8)
  lw $t1, -8($s8)
  sub $t2, $t0, $t1
  sw $t2, -5220($s8)
  lw $t0, -5220($s8)
  lw $t1, -5216($s8)
  sw $t0, 0($t1)
  lw $t0, -5216($s8)
  lw $t1, 0($t0)
  sw $t1, -5224($s8)
  lw $t0, -5224($s8)
  move $t1, $t0
  sw $t1, -5228($s8)
  lw $t0, -5228($s8)
  lw $t1, -5212($s8)
  sw $t0, 0($t1)
  la $t0, -5176($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5232($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5236($s8)
  li $t0, 1164919182
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_mul
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5240($s8)
  lw $t0, -5240($s8)
  lw $t1, -5236($s8)
  sw $t0, 0($t1)
  lw $t0, -5236($s8)
  lw $t1, 0($t0)
  sw $t1, -5244($s8)
  lw $t0, -5244($s8)
  move $t1, $t0
  sw $t1, -5248($s8)
  lw $t0, -5248($s8)
  lw $t1, -5232($s8)
  sw $t0, 0($t1)
  lw $t0, -4352($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -4352($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5252($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -5256($s8)
  la $t0, -5176($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5260($s8)
  lw $t0, -5260($s8)
  lw $t1, 0($t0)
  sw $t1, -5264($s8)
  lw $t0, -5264($s8)
  li $t1, 0
  bne $t0, $t1, label578
  lw $t0, 12($s8)
  li $t1, 0
  bne $t0, $t1, label578
  j label579
label578:
  li $t0, 1
  move $t1, $t0
  sw $t1, -5256($s8)
label579:
  lw $t0, -5256($s8)
  lw $t1, -5252($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 4
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -5176($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5268($s8)
  lw $t0, -5268($s8)
  lw $t1, 0($t0)
  sw $t1, -5272($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5276($s8)
  lw $t0, -5276($s8)
  lw $t1, 0($t0)
  sw $t1, -5280($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, -5280($s8)
  sw $t2, 8($sp)
  lw $t3, -5272($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5284($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  lw $t2, -12($s8)
  sw $t2, 8($sp)
  li $t3, -116943805
  sw $t3, 12($sp)
  lw $t4, -8($s8)
  sw $t4, 16($sp)
  lw $t5, -4($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5288($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -20($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5292($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -5292($s8)
  sw $t1, 4($sp)
  lw $t2, -5288($s8)
  sw $t2, 8($sp)
  lw $t3, -5284($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5296($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5300($s8)
  lw $t0, -5300($s8)
  lw $t1, 0($t0)
  sw $t1, -5304($s8)
  lw $t0, -5304($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -5308($s8)
  la $t0, -5176($s8)
  lw $t1, -5308($s8)
  add $t2, $t0, $t1
  sw $t2, -5312($s8)
  lw $t0, 12($s8)
  lw $t1, -4($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -5316($s8)
  lw $t0, -5316($s8)
  lw $t1, -5312($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5320($s8)
  la $t0, -5176($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5324($s8)
  lw $t0, -5324($s8)
  lw $t1, 0($t0)
  sw $t1, -5328($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -5328($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5332($s8)
  lw $t0, -5332($s8)
  lw $t1, -5320($s8)
  sw $t0, 0($t1)
  la $t0, -5176($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5336($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -5340($s8)
  lw $t0, 12($s8)
  li $t1, 0
  bne $t0, $t1, label580
  lw $t0, -4($s8)
  li $t1, 0
  bne $t0, $t1, label580
  j label581
label580:
  li $t0, 1
  move $t1, $t0
  sw $t1, -5340($s8)
label581:
  lw $t0, -5340($s8)
  lw $t1, -5336($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5344($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5348($s8)
  lw $t0, -5348($s8)
  lw $t1, -5344($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -5176($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5352($s8)
  lw $t0, -5352($s8)
  lw $t1, 0($t0)
  sw $t1, -5356($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -1251710963
  sw $t1, 4($sp)
  li $t2, -757194217
  sw $t2, 8($sp)
  lw $t3, -5356($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5360($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -5360($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5364($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5368($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -5372($s8)
  li $t0, 981983366
  li $t1, 0
  beq $t0, $t1, label583
  lw $t0, 12($s8)
  li $t1, 0
  bne $t0, $t1, label582
  j label583
label582:
  li $t0, 1
  move $t1, $t0
  sw $t1, -5372($s8)
label583:
  lw $t0, -5372($s8)
  lw $t1, -5368($s8)
  sw $t0, 0($t1)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5376($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -5380($s8)
  lw $t0, 12($s8)
  lw $t1, -4($s8)
  bge $t0, $t1, label584
  j label585
label584:
  li $t0, 1
  move $t1, $t0
  sw $t1, -5380($s8)
label585:
  lw $t0, -5380($s8)
  lw $t1, -5376($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5384($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  li $t2, -1702886625
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5388($s8)
  lw $t0, -5388($s8)
  lw $t1, -5384($s8)
  sw $t0, 0($t1)
  lw $t0, -5192($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -5208($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label574
label575:
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5392($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -5396($s8)
  lw $t0, -4($s8)
  li $t1, 0
  beq $t0, $t1, label587
  lw $t0, -8($s8)
  li $t1, 0
  bne $t0, $t1, label586
  j label587
label586:
  li $t0, 1
  move $t1, $t0
  sw $t1, -5396($s8)
label587:
  lw $t0, -5396($s8)
  lw $t1, -5392($s8)
  sw $t0, 0($t1)
  la $t0, -4304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5400($s8)
  lw $t0, -8($s8)
  move $t1, $t0
  sw $t1, -4($s8)
  lw $t0, -4($s8)
  move $t1, $t0
  sw $t1, -5404($s8)
  lw $t0, -5404($s8)
  lw $t1, -5400($s8)
  sw $t0, 0($t1)
  lw $t0, -4328($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -4344($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label485
label529:
  lw $t0, -4($s8)
  li $t1, -1072567265
  sub $t2, $t0, $t1
  sw $t2, 12($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 12($s8)
  lw $t0, -4($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -8($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -12($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -16($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -20($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -36($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -8($s8)
  sw $t1, 4($sp)
  lw $t2, -4($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5408($s8)
  lw $t0, -16($s8)
  move $t1, $t0
  sw $t1, -12($s8)
  lw $t0, -12($s8)
  move $t1, $t0
  sw $t1, -5412($s8)
  lw $t0, -36($s8)
  sw $t0, 0($sp)
  lw $t1, -20($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_add
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5416($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -5416($s8)
  sw $t1, 4($sp)
  lw $t2, -5412($s8)
  sw $t2, 8($sp)
  lw $t3, -5408($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5420($s8)
  lw $t0, -5420($s8)
  move $v0, $t0
  move $sp, $s8
  lw $s8, 0($sp)
  addi $sp, $sp, 4
  jr $ra

i_func_152:
  addi $sp, $sp, -4
  sw $s8, 0($sp)
  move $s8, $sp
  addi $sp, $sp, -4096
  lw $t0, 8($s8)
  li $t1, 0
  bgt $t0, $t1, label588
  li $t0, -902501594
  move $v0, $t0
  move $sp, $s8
  lw $s8, 0($sp)
  addi $sp, $sp, 4
  jr $ra
  j label589
label588:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label589:
  li $t0, 0
  move $t1, $t0
  sw $t1, -4($s8)
  lw $t0, 20($s8)
  li $t1, 0
  bne $t0, $t1, label590
  lw $t0, 16($s8)
  li $t1, 0
  bne $t0, $t1, label590
  j label591
label590:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4($s8)
label591:
  lw $t0, -4($s8)
  move $t1, $t0
  sw $t1, 24($s8)
  lw $t0, 24($s8)
  move $t1, $t0
  sw $t1, -8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -12($s8)
  li $t0, 1302199916
  lw $t1, 20($s8)
  bne $t0, $t1, label592
  j label593
label592:
  li $t0, 1
  move $t1, $t0
  sw $t1, -12($s8)
label593:
  lw $t0, -12($s8)
  move $t1, $t0
  sw $t1, 24($s8)
  lw $t0, 24($s8)
  move $t1, $t0
  sw $t1, -16($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_sub
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 24($s8)
  lw $t0, 24($s8)
  move $t1, $t0
  sw $t1, -20($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -24($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -28($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -32($s8)
  lw $t0, 20($s8)
  li $t1, 0
  bne $t0, $t1, label595
  j label594
label594:
  li $t0, 1
  move $t1, $t0
  sw $t1, -32($s8)
label595:
  lw $t0, -32($s8)
  move $t1, $t0
  sw $t1, 24($s8)
  li $t0, 824197012
  move $t1, $t0
  sw $t1, 24($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 1815522300
  sw $t1, 4($sp)
  lw $t2, -8($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  lw $t4, 16($s8)
  sw $t4, 16($sp)
  lw $t5, 20($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 24($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 24($s8)
label596:
  li $t0, 0
  move $t1, $t0
  sw $t1, -36($s8)
  lw $t0, 20($s8)
  li $t1, -1375887306
  bne $t0, $t1, label598
  j label599
label598:
  li $t0, 1
  move $t1, $t0
  sw $t1, -36($s8)
label599:
  lw $t0, -36($s8)
  move $t1, $t0
  sw $t1, 24($s8)
  lw $t0, 24($s8)
  move $t1, $t0
  sw $t1, -40($s8)
  lw $t0, -40($s8)
  li $t1, 0
  beq $t0, $t1, label597
  li $t0, 0
  move $t1, $t0
  sw $t1, -44($s8)
  lw $t0, -24($s8)
  li $t1, 10
  blt $t0, $t1, label600
  j label601
label600:
  li $t0, 1
  move $t1, $t0
  sw $t1, -44($s8)
label601:
  lw $t0, -44($s8)
  li $t1, 0
  beq $t0, $t1, label597
  la $t0, -48($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -64($s8)
  lw $t0, 20($s8)
  sw $t0, 0($sp)
  li $t1, 987776801
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_add
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 24($s8)
  lw $t0, 24($s8)
  move $t1, $t0
  sw $t1, -68($s8)
  lw $t0, -68($s8)
  lw $t1, -64($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -56($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -72($s8)
  la $t0, -48($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -76($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  lw $t2, -8($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  lw $t4, 16($s8)
  sw $t4, 16($sp)
  lw $t5, 20($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -80($s8)
  lw $t0, -80($s8)
  lw $t1, -76($s8)
  sw $t0, 0($t1)
  lw $t0, -76($s8)
  lw $t1, 0($t0)
  sw $t1, -84($s8)
  lw $t0, -84($s8)
  move $t1, $t0
  sw $t1, -88($s8)
  lw $t0, -88($s8)
  lw $t1, -72($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -56($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -92($s8)
  la $t0, -48($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -96($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  li $t3, -1100756116
  sw $t3, 12($sp)
  lw $t4, 20($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -100($s8)
  lw $t0, -100($s8)
  lw $t1, -96($s8)
  sw $t0, 0($t1)
  lw $t0, -96($s8)
  lw $t1, 0($t0)
  sw $t1, -104($s8)
  lw $t0, -104($s8)
  move $t1, $t0
  sw $t1, -108($s8)
  lw $t0, -108($s8)
  lw $t1, -92($s8)
  sw $t0, 0($t1)
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -112($s8)
  la $t0, -48($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -116($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -120($s8)
  lw $t0, 24($s8)
  li $t1, 0
  bne $t0, $t1, label602
  lw $t0, 20($s8)
  li $t1, 0
  bne $t0, $t1, label602
  j label603
label602:
  li $t0, 1
  move $t1, $t0
  sw $t1, -120($s8)
label603:
  lw $t0, -120($s8)
  lw $t1, -116($s8)
  sw $t0, 0($t1)
  lw $t0, -116($s8)
  lw $t1, 0($t0)
  sw $t1, -124($s8)
  lw $t0, -124($s8)
  move $t1, $t0
  sw $t1, -128($s8)
  lw $t0, -128($s8)
  lw $t1, -112($s8)
  sw $t0, 0($t1)
  li $t0, 0
  move $t1, $t0
  sw $t1, -132($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -136($s8)
  lw $t0, -24($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -24($s8)
  la $t0, -48($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -140($s8)
  la $t0, -56($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -144($s8)
  lw $t0, -144($s8)
  lw $t1, 0($t0)
  sw $t1, -148($s8)
  lw $t0, 24($s8)
  sw $t0, 0($sp)
  lw $t1, -148($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_sub
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -152($s8)
  lw $t0, -152($s8)
  lw $t1, -140($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -48($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -156($s8)
  la $t0, -56($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -160($s8)
  lw $t0, -160($s8)
  lw $t1, 0($t0)
  sw $t1, -164($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 582892622
  sw $t1, 4($sp)
  lw $t2, 24($s8)
  sw $t2, 8($sp)
  lw $t3, -164($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -168($s8)
  lw $t0, -168($s8)
  lw $t1, -156($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -56($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -172($s8)
  lw $t0, -172($s8)
  lw $t1, 0($t0)
  sw $t1, -176($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -176($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -180($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -180($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -184($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -48($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -188($s8)
  la $t0, -56($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -192($s8)
  lw $t0, -192($s8)
  lw $t1, 0($t0)
  sw $t1, -196($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -196($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -200($s8)
  lw $t0, -200($s8)
  lw $t1, -188($s8)
  sw $t0, 0($t1)
  la $t0, -56($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -204($s8)
  li $t0, 534551402
  move $t1, $t0
  sw $t1, -208($s8)
  lw $t0, -208($s8)
  lw $t1, -204($s8)
  sw $t0, 0($t1)
  la $t0, -56($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -212($s8)
  la $t0, -48($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -216($s8)
  lw $t0, -216($s8)
  lw $t1, 0($t0)
  sw $t1, -220($s8)
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -224($s8)
  lw $t0, -224($s8)
  lw $t1, 0($t0)
  sw $t1, -228($s8)
  lw $t0, -220($s8)
  lw $t1, -228($s8)
  add $t2, $t0, $t1
  sw $t2, -232($s8)
  lw $t0, -232($s8)
  lw $t1, -212($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -56($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -236($s8)
  lw $t0, -236($s8)
  lw $t1, 0($t0)
  sw $t1, -240($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -240($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -244($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -248($s8)
  la $t0, -48($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -252($s8)
  lw $t0, -252($s8)
  lw $t1, 0($t0)
  sw $t1, -256($s8)
  lw $t0, -256($s8)
  li $t1, -1297323909
  bge $t0, $t1, label604
  j label605
label604:
  li $t0, 1
  move $t1, $t0
  sw $t1, -248($s8)
label605:
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -260($s8)
  lw $t0, -260($s8)
  lw $t1, 0($t0)
  sw $t1, -264($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 16($s8)
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  lw $t3, 24($s8)
  sw $t3, 12($sp)
  lw $t4, -264($s8)
  sw $t4, 16($sp)
  li $t5, 1293743922
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -268($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -272($s8)
  lw $t0, 12($s8)
  lw $t1, -8($s8)
  blt $t0, $t1, label606
  j label607
label606:
  li $t0, 1
  move $t1, $t0
  sw $t1, -272($s8)
label607:
  li $t0, 0
  move $t1, $t0
  sw $t1, -276($s8)
  lw $t0, -16($s8)
  li $t1, 0
  bne $t0, $t1, label609
  j label608
label608:
  li $t0, 1
  move $t1, $t0
  sw $t1, -276($s8)
label609:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -276($s8)
  sw $t1, 4($sp)
  lw $t2, -272($s8)
  sw $t2, 8($sp)
  lw $t3, -268($s8)
  sw $t3, 12($sp)
  lw $t4, -248($s8)
  sw $t4, 16($sp)
  lw $t5, -244($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -280($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label610:
  la $t0, -48($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -284($s8)
  la $t0, -56($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -288($s8)
  lw $t0, -288($s8)
  lw $t1, 0($t0)
  sw $t1, -292($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -292($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -296($s8)
  lw $t0, -296($s8)
  lw $t1, -284($s8)
  sw $t0, 0($t1)
  lw $t0, -284($s8)
  lw $t1, 0($t0)
  sw $t1, -300($s8)
  lw $t0, -300($s8)
  move $t1, $t0
  sw $t1, -304($s8)
  lw $t0, -304($s8)
  li $t1, 0
  beq $t0, $t1, label611
  li $t0, 0
  move $t1, $t0
  sw $t1, -308($s8)
  lw $t0, -132($s8)
  li $t1, 10
  blt $t0, $t1, label612
  j label613
label612:
  li $t0, 1
  move $t1, $t0
  sw $t1, -308($s8)
label613:
  lw $t0, -308($s8)
  li $t1, 0
  beq $t0, $t1, label611
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -48($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -324($s8)
  la $t0, -56($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -328($s8)
  lw $t0, -328($s8)
  lw $t1, 0($t0)
  sw $t1, -332($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, 24($s8)
  sw $t2, 8($sp)
  lw $t3, -332($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -336($s8)
  lw $t0, -336($s8)
  lw $t1, -324($s8)
  sw $t0, 0($t1)
  lw $t0, -324($s8)
  lw $t1, 0($t0)
  sw $t1, -340($s8)
  lw $t0, -340($s8)
  move $t1, $t0
  sw $t1, -344($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -312($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -348($s8)
  la $t0, -56($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -352($s8)
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -356($s8)
  lw $t0, -356($s8)
  lw $t1, 0($t0)
  sw $t1, -360($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 1837210055
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  lw $t3, 24($s8)
  sw $t3, 12($sp)
  lw $t4, -360($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -364($s8)
  lw $t0, -364($s8)
  lw $t1, -352($s8)
  sw $t0, 0($t1)
  lw $t0, -352($s8)
  lw $t1, 0($t0)
  sw $t1, -368($s8)
  lw $t0, -368($s8)
  move $t1, $t0
  sw $t1, -372($s8)
  lw $t0, -372($s8)
  lw $t1, -348($s8)
  sw $t0, 0($t1)
  la $t0, -320($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -376($s8)
  la $t0, -48($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -380($s8)
  li $t0, 65795445
  move $t1, $t0
  sw $t1, -384($s8)
  lw $t0, -384($s8)
  lw $t1, -380($s8)
  sw $t0, 0($t1)
  lw $t0, -380($s8)
  lw $t1, 0($t0)
  sw $t1, -388($s8)
  lw $t0, -388($s8)
  move $t1, $t0
  sw $t1, -392($s8)
  lw $t0, -392($s8)
  lw $t1, -376($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -320($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -396($s8)
  la $t0, -56($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -400($s8)
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -404($s8)
  lw $t0, -404($s8)
  lw $t1, 0($t0)
  sw $t1, -408($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -408($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -412($s8)
  lw $t0, -412($s8)
  lw $t1, -400($s8)
  sw $t0, 0($t1)
  lw $t0, -400($s8)
  lw $t1, 0($t0)
  sw $t1, -416($s8)
  lw $t0, -416($s8)
  move $t1, $t0
  sw $t1, -420($s8)
  lw $t0, -420($s8)
  lw $t1, -396($s8)
  sw $t0, 0($t1)
  lw $t0, -132($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -132($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -48($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -424($s8)
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -428($s8)
  lw $t0, -428($s8)
  lw $t1, 0($t0)
  sw $t1, -432($s8)
  la $t0, -312($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -436($s8)
  lw $t0, -436($s8)
  lw $t1, 0($t0)
  sw $t1, -440($s8)
  la $t0, -56($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -444($s8)
  lw $t0, -444($s8)
  lw $t1, 0($t0)
  sw $t1, -448($s8)
  la $t0, -320($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -452($s8)
  lw $t0, -452($s8)
  lw $t1, 0($t0)
  sw $t1, -456($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -456($s8)
  sw $t1, 4($sp)
  li $t2, 1985177180
  sw $t2, 8($sp)
  lw $t3, -448($s8)
  sw $t3, 12($sp)
  lw $t4, -440($s8)
  sw $t4, 16($sp)
  lw $t5, -432($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -460($s8)
  lw $t0, -460($s8)
  lw $t1, -424($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -48($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -464($s8)
  la $t0, -56($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -468($s8)
  lw $t0, -468($s8)
  lw $t1, 0($t0)
  sw $t1, -472($s8)
  la $t0, -312($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -476($s8)
  lw $t0, -476($s8)
  lw $t1, 0($t0)
  sw $t1, -480($s8)
  la $t0, -320($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -484($s8)
  lw $t0, -484($s8)
  lw $t1, 0($t0)
  sw $t1, -488($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -62011000
  sw $t1, 4($sp)
  lw $t2, 24($s8)
  sw $t2, 8($sp)
  lw $t3, -488($s8)
  sw $t3, 12($sp)
  lw $t4, -480($s8)
  sw $t4, 16($sp)
  lw $t5, -472($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -492($s8)
  lw $t0, -492($s8)
  lw $t1, -464($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -56($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -496($s8)
  la $t0, -48($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -500($s8)
  lw $t0, -500($s8)
  lw $t1, 0($t0)
  sw $t1, -504($s8)
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -508($s8)
  lw $t0, -508($s8)
  lw $t1, 0($t0)
  sw $t1, -512($s8)
  la $t0, -312($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -516($s8)
  lw $t0, -516($s8)
  lw $t1, 0($t0)
  sw $t1, -520($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, 24($s8)
  sw $t2, 8($sp)
  lw $t3, -520($s8)
  sw $t3, 12($sp)
  lw $t4, -512($s8)
  sw $t4, 16($sp)
  lw $t5, -504($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -524($s8)
  lw $t0, -524($s8)
  lw $t1, -496($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -48($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -528($s8)
  la $t0, -320($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -532($s8)
  lw $t0, -532($s8)
  lw $t1, 0($t0)
  sw $t1, -536($s8)
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -540($s8)
  lw $t0, -540($s8)
  lw $t1, 0($t0)
  sw $t1, -544($s8)
  la $t0, -312($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -548($s8)
  lw $t0, -548($s8)
  lw $t1, 0($t0)
  sw $t1, -552($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, 24($s8)
  sw $t2, 8($sp)
  lw $t3, -552($s8)
  sw $t3, 12($sp)
  lw $t4, -544($s8)
  sw $t4, 16($sp)
  lw $t5, -536($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -556($s8)
  lw $t0, -556($s8)
  lw $t1, -528($s8)
  sw $t0, 0($t1)
  la $t0, -56($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -560($s8)
  la $t0, -320($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -564($s8)
  lw $t0, -564($s8)
  lw $t1, 0($t0)
  sw $t1, -568($s8)
  lw $t0, -568($s8)
  lw $t1, -560($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -572($s8)
  la $t0, -56($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -576($s8)
  lw $t0, -576($s8)
  lw $t1, 0($t0)
  sw $t1, -580($s8)
  lw $t0, -580($s8)
  li $t1, 0
  beq $t0, $t1, label615
  la $t0, -320($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -584($s8)
  lw $t0, -584($s8)
  lw $t1, 0($t0)
  sw $t1, -588($s8)
  lw $t0, -588($s8)
  li $t1, 0
  bne $t0, $t1, label614
  j label615
label614:
  li $t0, 1
  move $t1, $t0
  sw $t1, -572($s8)
label615:
  la $t0, -48($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -592($s8)
  lw $t0, -592($s8)
  lw $t1, 0($t0)
  sw $t1, -596($s8)
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -600($s8)
  lw $t0, -600($s8)
  lw $t1, 0($t0)
  sw $t1, -604($s8)
  lw $t0, -596($s8)
  lw $t1, -604($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -608($s8)
  la $t0, -312($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -612($s8)
  lw $t0, -612($s8)
  lw $t1, 0($t0)
  sw $t1, -616($s8)
  lw $t0, -616($s8)
  lw $t1, 24($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -620($s8)
  li $t0, 313557194
  move $t1, $t0
  sw $t1, 20($s8)
  lw $t0, 20($s8)
  move $t1, $t0
  sw $t1, -624($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -624($s8)
  sw $t1, 4($sp)
  lw $t2, -620($s8)
  sw $t2, 8($sp)
  lw $t3, -608($s8)
  sw $t3, 12($sp)
  lw $t4, -572($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -628($s8)
  lw $t0, -344($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label610
label611:
  la $t0, -56($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -632($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -636($s8)
  la $t0, -48($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -640($s8)
  lw $t0, -640($s8)
  lw $t1, 0($t0)
  sw $t1, -644($s8)
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -648($s8)
  lw $t0, -648($s8)
  lw $t1, 0($t0)
  sw $t1, -652($s8)
  lw $t0, -644($s8)
  lw $t1, -652($s8)
  bgt $t0, $t1, label618
  j label619
label618:
  li $t0, 1
  move $t1, $t0
  sw $t1, -636($s8)
label619:
  lw $t0, -636($s8)
  lw $t1, -632($s8)
  sw $t0, 0($t1)
  lw $t0, -632($s8)
  lw $t1, 0($t0)
  sw $t1, -656($s8)
  lw $t0, -656($s8)
  move $t1, $t0
  sw $t1, -660($s8)
  lw $t0, -660($s8)
  li $t1, 0
  beq $t0, $t1, label617
  li $t0, 2008999965
  move $t1, $t0
  sw $t1, -680($s8)
  li $t0, -644614675
  move $t1, $t0
  sw $t1, -684($s8)
  la $t0, -668($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -688($s8)
  la $t0, -48($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -692($s8)
  lw $t0, -692($s8)
  lw $t1, 0($t0)
  sw $t1, -696($s8)
  lw $t0, -696($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -700($s8)
  la $t0, -56($s8)
  lw $t1, -700($s8)
  add $t2, $t0, $t1
  sw $t2, -704($s8)
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -708($s8)
  lw $t0, -708($s8)
  lw $t1, 0($t0)
  sw $t1, -712($s8)
  lw $t0, -712($s8)
  li $t1, 1428046322
  mul $t2, $t0, $t1
  sw $t2, -716($s8)
  lw $t0, -716($s8)
  lw $t1, -704($s8)
  sw $t0, 0($t1)
  lw $t0, -704($s8)
  lw $t1, 0($t0)
  sw $t1, -720($s8)
  lw $t0, -720($s8)
  move $t1, $t0
  sw $t1, -724($s8)
  lw $t0, -724($s8)
  lw $t1, -688($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 4
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -668($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -728($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -732($s8)
  la $t0, -48($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -736($s8)
  lw $t0, -736($s8)
  lw $t1, 0($t0)
  sw $t1, -740($s8)
  lw $t0, -740($s8)
  li $t1, 0
  bne $t0, $t1, label621
  j label620
label620:
  li $t0, 1
  move $t1, $t0
  sw $t1, -732($s8)
label621:
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -744($s8)
  lw $t0, -744($s8)
  lw $t1, 0($t0)
  sw $t1, -748($s8)
  la $t0, -56($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -752($s8)
  lw $t0, -752($s8)
  lw $t1, 0($t0)
  sw $t1, -756($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -756($s8)
  sw $t1, 4($sp)
  lw $t2, -748($s8)
  sw $t2, 8($sp)
  li $t3, 1021619887
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -760($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -552675432
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, 16($s8)
  sw $t3, 12($sp)
  lw $t4, 20($s8)
  sw $t4, 16($sp)
  lw $t5, 24($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -764($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -768($s8)
  lw $t0, -8($s8)
  lw $t1, -16($s8)
  blt $t0, $t1, label622
  j label623
label622:
  li $t0, 1
  move $t1, $t0
  sw $t1, -768($s8)
label623:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -684($s8)
  sw $t1, 4($sp)
  lw $t2, -680($s8)
  sw $t2, 8($sp)
  lw $t3, -20($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -772($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -772($s8)
  sw $t1, 4($sp)
  lw $t2, -768($s8)
  sw $t2, 8($sp)
  lw $t3, -764($s8)
  sw $t3, 12($sp)
  lw $t4, -760($s8)
  sw $t4, 16($sp)
  lw $t5, -732($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -776($s8)
  lw $t0, -776($s8)
  lw $t1, -728($s8)
  sw $t0, 0($t1)
  la $t0, -676($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -780($s8)
  la $t0, -56($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -784($s8)
  lw $t0, -784($s8)
  lw $t1, 0($t0)
  sw $t1, -788($s8)
  lw $t0, -788($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -792($s8)
  la $t0, -48($s8)
  lw $t1, -792($s8)
  add $t2, $t0, $t1
  sw $t2, -796($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -800($s8)
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -804($s8)
  lw $t0, -804($s8)
  lw $t1, 0($t0)
  sw $t1, -808($s8)
  la $t0, -668($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -812($s8)
  lw $t0, -812($s8)
  lw $t1, 0($t0)
  sw $t1, -816($s8)
  lw $t0, -808($s8)
  lw $t1, -816($s8)
  bne $t0, $t1, label624
  j label625
label624:
  li $t0, 1
  move $t1, $t0
  sw $t1, -800($s8)
label625:
  lw $t0, -800($s8)
  lw $t1, -796($s8)
  sw $t0, 0($t1)
  lw $t0, -796($s8)
  lw $t1, 0($t0)
  sw $t1, -820($s8)
  lw $t0, -820($s8)
  move $t1, $t0
  sw $t1, -824($s8)
  lw $t0, -824($s8)
  lw $t1, -780($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -676($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -828($s8)
  la $t0, -48($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -832($s8)
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -836($s8)
  lw $t0, -836($s8)
  lw $t1, 0($t0)
  sw $t1, -840($s8)
  la $t0, -56($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -844($s8)
  lw $t0, -844($s8)
  lw $t1, 0($t0)
  sw $t1, -848($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 1263908155
  sw $t1, 4($sp)
  li $t2, 1610089586
  sw $t2, 8($sp)
  lw $t3, -848($s8)
  sw $t3, 12($sp)
  lw $t4, -840($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -852($s8)
  lw $t0, -852($s8)
  lw $t1, -832($s8)
  sw $t0, 0($t1)
  lw $t0, -832($s8)
  lw $t1, 0($t0)
  sw $t1, -856($s8)
  lw $t0, -856($s8)
  move $t1, $t0
  sw $t1, -860($s8)
  lw $t0, -860($s8)
  lw $t1, -828($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -864($s8)
  lw $t0, -864($s8)
  lw $t1, 0($t0)
  sw $t1, -868($s8)
  lw $t0, -868($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -872($s8)
  la $t0, -48($s8)
  lw $t1, -872($s8)
  add $t2, $t0, $t1
  sw $t2, -876($s8)
  la $t0, -56($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -880($s8)
  lw $t0, -880($s8)
  lw $t1, 0($t0)
  sw $t1, -884($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -884($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -888($s8)
  lw $t0, -888($s8)
  lw $t1, -876($s8)
  sw $t0, 0($t1)
  lw $t0, -876($s8)
  lw $t1, 0($t0)
  sw $t1, -892($s8)
  lw $t0, -892($s8)
  move $t1, $t0
  sw $t1, -896($s8)
  la $t0, -56($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -900($s8)
  lw $t0, -900($s8)
  lw $t1, 0($t0)
  sw $t1, -904($s8)
  lw $t0, -904($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -908($s8)
  la $t0, -48($s8)
  lw $t1, -908($s8)
  add $t2, $t0, $t1
  sw $t2, -912($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -916($s8)
  la $t0, -668($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -920($s8)
  lw $t0, -920($s8)
  lw $t1, 0($t0)
  sw $t1, -924($s8)
  lw $t0, -924($s8)
  li $t1, 666672573
  bgt $t0, $t1, label626
  j label627
label626:
  li $t0, 1
  move $t1, $t0
  sw $t1, -916($s8)
label627:
  lw $t0, -916($s8)
  lw $t1, -912($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -48($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -928($s8)
  lw $t0, -928($s8)
  lw $t1, 0($t0)
  sw $t1, -932($s8)
  lw $t0, -932($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -936($s8)
  la $t0, -56($s8)
  lw $t1, -936($s8)
  add $t2, $t0, $t1
  sw $t2, -940($s8)
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -944($s8)
  lw $t0, -944($s8)
  lw $t1, 0($t0)
  sw $t1, -948($s8)
  la $t0, -668($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -952($s8)
  lw $t0, -952($s8)
  lw $t1, 0($t0)
  sw $t1, -956($s8)
  la $t0, -676($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -960($s8)
  lw $t0, -960($s8)
  lw $t1, 0($t0)
  sw $t1, -964($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -2126615273
  sw $t1, 4($sp)
  lw $t2, 24($s8)
  sw $t2, 8($sp)
  lw $t3, -964($s8)
  sw $t3, 12($sp)
  lw $t4, -956($s8)
  sw $t4, 16($sp)
  lw $t5, -948($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -968($s8)
  lw $t0, -968($s8)
  lw $t1, -940($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -48($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -972($s8)
  lw $t0, -972($s8)
  lw $t1, 0($t0)
  sw $t1, -976($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -976($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -980($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -980($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -984($s8)
  lw $t0, 8($s8)
  li $t1, 4
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -48($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -988($s8)
  lw $t0, -988($s8)
  lw $t1, 0($t0)
  sw $t1, -992($s8)
  la $t0, -56($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -996($s8)
  lw $t0, -996($s8)
  lw $t1, 0($t0)
  sw $t1, -1000($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1000($s8)
  sw $t1, 4($sp)
  li $t2, 401717495
  sw $t2, 8($sp)
  lw $t3, -992($s8)
  sw $t3, 12($sp)
  li $t4, -1770565403
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1004($s8)
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1008($s8)
  lw $t0, -1008($s8)
  lw $t1, 0($t0)
  sw $t1, -1012($s8)
  la $t0, -668($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1016($s8)
  lw $t0, -1016($s8)
  lw $t1, 0($t0)
  sw $t1, -1020($s8)
  la $t0, -676($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1024($s8)
  lw $t0, -1024($s8)
  lw $t1, 0($t0)
  sw $t1, -1028($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1028($s8)
  sw $t1, 4($sp)
  li $t2, -1508106161
  sw $t2, 8($sp)
  lw $t3, -1020($s8)
  sw $t3, 12($sp)
  lw $t4, -1012($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1032($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1036($s8)
  li $t0, -1821879181
  lw $t1, 24($s8)
  bne $t0, $t1, label628
  j label629
label628:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1036($s8)
label629:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -692563074
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, 16($s8)
  sw $t3, 12($sp)
  lw $t4, 20($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1040($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1040($s8)
  sw $t1, 4($sp)
  lw $t2, -1036($s8)
  sw $t2, 8($sp)
  lw $t3, -1032($s8)
  sw $t3, 12($sp)
  lw $t4, -1004($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1044($s8)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -56($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1048($s8)
  lw $t0, -1048($s8)
  lw $t1, 0($t0)
  sw $t1, -1052($s8)
  la $t0, -48($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1056($s8)
  lw $t0, -1056($s8)
  lw $t1, 0($t0)
  sw $t1, -1060($s8)
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1064($s8)
  lw $t0, -1064($s8)
  lw $t1, 0($t0)
  sw $t1, -1068($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1068($s8)
  sw $t1, 4($sp)
  lw $t2, -1060($s8)
  sw $t2, 8($sp)
  lw $t3, -1052($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1072($s8)
  la $t0, -668($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1076($s8)
  lw $t0, -1076($s8)
  lw $t1, 0($t0)
  sw $t1, -1080($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1080($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1084($s8)
  la $t0, -676($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1088($s8)
  lw $t0, -1088($s8)
  lw $t1, 0($t0)
  sw $t1, -1092($s8)
  lw $t0, -1092($s8)
  lw $t1, 24($s8)
  mul $t2, $t0, $t1
  sw $t2, -1096($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1096($s8)
  sw $t1, 4($sp)
  lw $t2, -1084($s8)
  sw $t2, 8($sp)
  lw $t3, -1072($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1100($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1104($s8)
  lw $t0, -1104($s8)
  lw $t1, 0($t0)
  sw $t1, -1108($s8)
  lw $t0, -1108($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1112($s8)
  la $t0, -48($s8)
  lw $t1, -1112($s8)
  add $t2, $t0, $t1
  sw $t2, -1116($s8)
  la $t0, -56($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1120($s8)
  lw $t0, -1120($s8)
  lw $t1, 0($t0)
  sw $t1, -1124($s8)
  la $t0, -668($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1128($s8)
  lw $t0, -1128($s8)
  lw $t1, 0($t0)
  sw $t1, -1132($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1132($s8)
  sw $t1, 4($sp)
  li $t2, 988543595
  sw $t2, 8($sp)
  lw $t3, -1124($s8)
  sw $t3, 12($sp)
  li $t4, -111159862
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1136($s8)
  lw $t0, -1136($s8)
  lw $t1, -1116($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1140($s8)
  lw $t0, -1140($s8)
  lw $t1, 0($t0)
  sw $t1, -1144($s8)
  lw $t0, -1144($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1148($s8)
  la $t0, -48($s8)
  lw $t1, -1148($s8)
  add $t2, $t0, $t1
  sw $t2, -1152($s8)
  la $t0, -56($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1156($s8)
  lw $t0, -1156($s8)
  lw $t1, 0($t0)
  sw $t1, -1160($s8)
  la $t0, -668($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1164($s8)
  lw $t0, -1164($s8)
  lw $t1, 0($t0)
  sw $t1, -1168($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1168($s8)
  sw $t1, 4($sp)
  li $t2, -2131060606
  sw $t2, 8($sp)
  lw $t3, -1160($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1172($s8)
  lw $t0, -1172($s8)
  lw $t1, -1152($s8)
  sw $t0, 0($t1)
  la $t0, -48($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1176($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1180($s8)
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1184($s8)
  lw $t0, -1184($s8)
  lw $t1, 0($t0)
  sw $t1, -1188($s8)
  la $t0, -56($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1192($s8)
  lw $t0, -1192($s8)
  lw $t1, 0($t0)
  sw $t1, -1196($s8)
  lw $t0, -1188($s8)
  lw $t1, -1196($s8)
  bge $t0, $t1, label630
  j label631
label630:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1180($s8)
label631:
  lw $t0, -1180($s8)
  lw $t1, -1176($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 5
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -48($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1200($s8)
  lw $t0, -1200($s8)
  lw $t1, 0($t0)
  sw $t1, -1204($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1204($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1208($s8)
  la $t0, -56($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1212($s8)
  lw $t0, -1212($s8)
  lw $t1, 0($t0)
  sw $t1, -1216($s8)
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1220($s8)
  lw $t0, -1220($s8)
  lw $t1, 0($t0)
  sw $t1, -1224($s8)
  la $t0, -668($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1228($s8)
  lw $t0, -1228($s8)
  lw $t1, 0($t0)
  sw $t1, -1232($s8)
  la $t0, -676($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1236($s8)
  lw $t0, -1236($s8)
  lw $t1, 0($t0)
  sw $t1, -1240($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1240($s8)
  sw $t1, 4($sp)
  lw $t2, -1232($s8)
  sw $t2, 8($sp)
  lw $t3, -1224($s8)
  sw $t3, 12($sp)
  lw $t4, -1216($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1244($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1248($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -8($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, 16($s8)
  sw $t3, 12($sp)
  lw $t4, 20($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1252($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1252($s8)
  sw $t1, 4($sp)
  lw $t2, -1248($s8)
  sw $t2, 8($sp)
  lw $t3, -1244($s8)
  sw $t3, 12($sp)
  lw $t4, -1208($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1256($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -56($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1260($s8)
  lw $t0, -1260($s8)
  lw $t1, 0($t0)
  sw $t1, -1264($s8)
  lw $t0, -1264($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1268($s8)
  la $t0, -48($s8)
  lw $t1, -1268($s8)
  add $t2, $t0, $t1
  sw $t2, -1272($s8)
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1276($s8)
  lw $t0, -1276($s8)
  lw $t1, 0($t0)
  sw $t1, -1280($s8)
  la $t0, -668($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1284($s8)
  lw $t0, -1284($s8)
  lw $t1, 0($t0)
  sw $t1, -1288($s8)
  la $t0, -676($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1292($s8)
  lw $t0, -1292($s8)
  lw $t1, 0($t0)
  sw $t1, -1296($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1296($s8)
  sw $t1, 4($sp)
  lw $t2, -1288($s8)
  sw $t2, 8($sp)
  li $t3, -903679631
  sw $t3, 12($sp)
  lw $t4, -1280($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1300($s8)
  lw $t0, -1300($s8)
  lw $t1, -1272($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1304($s8)
  lw $t0, -1304($s8)
  lw $t1, 0($t0)
  sw $t1, -1308($s8)
  lw $t0, -1308($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1312($s8)
  la $t0, -48($s8)
  lw $t1, -1312($s8)
  add $t2, $t0, $t1
  sw $t2, -1316($s8)
  la $t0, -56($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1320($s8)
  lw $t0, -1320($s8)
  lw $t1, 0($t0)
  sw $t1, -1324($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1324($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1328($s8)
  lw $t0, -1328($s8)
  lw $t1, -1316($s8)
  sw $t0, 0($t1)
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1332($s8)
  lw $t0, -1332($s8)
  lw $t1, 0($t0)
  sw $t1, -1336($s8)
  lw $t0, -1336($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1340($s8)
  la $t0, -48($s8)
  lw $t1, -1340($s8)
  add $t2, $t0, $t1
  sw $t2, -1344($s8)
  la $t0, -56($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1348($s8)
  la $t0, -668($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1352($s8)
  lw $t0, -1352($s8)
  lw $t1, 0($t0)
  sw $t1, -1356($s8)
  lw $t0, -1356($s8)
  lw $t1, -1348($s8)
  sw $t0, 0($t1)
  lw $t0, -1348($s8)
  lw $t1, 0($t0)
  sw $t1, -1360($s8)
  lw $t0, -1360($s8)
  move $t1, $t0
  sw $t1, -1364($s8)
  lw $t0, -1364($s8)
  lw $t1, -1344($s8)
  sw $t0, 0($t1)
  lw $t0, -680($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -684($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -896($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label611
label617:
  la $t0, -56($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1368($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1372($s8)
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1376($s8)
  lw $t0, -1376($s8)
  lw $t1, 0($t0)
  sw $t1, -1380($s8)
  lw $t0, -1380($s8)
  lw $t1, 24($s8)
  bne $t0, $t1, label632
  j label633
label632:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1372($s8)
label633:
  lw $t0, -1372($s8)
  lw $t1, -1368($s8)
  sw $t0, 0($t1)
  j label596
label597:
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_sub
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 24($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label634:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -8($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, 16($s8)
  sw $t3, 12($sp)
  lw $t4, 20($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 24($s8)
  lw $t0, 24($s8)
  move $t1, $t0
  sw $t1, -1384($s8)
  lw $t0, -1384($s8)
  li $t1, 0
  beq $t0, $t1, label635
  li $t0, 0
  move $t1, $t0
  sw $t1, -1388($s8)
  lw $t0, -28($s8)
  li $t1, 10
  blt $t0, $t1, label636
  j label637
label636:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1388($s8)
label637:
  lw $t0, -1388($s8)
  li $t1, 0
  beq $t0, $t1, label635
  li $t0, 0
  move $t1, $t0
  sw $t1, -1396($s8)
  lw $t0, 20($s8)
  lw $t1, 16($s8)
  beq $t0, $t1, label638
  j label639
label638:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1396($s8)
label639:
  lw $t0, -1396($s8)
  move $t1, $t0
  sw $t1, 24($s8)
  lw $t0, 24($s8)
  move $t1, $t0
  sw $t1, -1400($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1404($s8)
  lw $t0, 20($s8)
  li $t1, 0
  bne $t0, $t1, label640
  lw $t0, 16($s8)
  li $t1, 0
  bne $t0, $t1, label640
  j label641
label640:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1404($s8)
label641:
  lw $t0, -1404($s8)
  move $t1, $t0
  sw $t1, 24($s8)
  lw $t0, 24($s8)
  move $t1, $t0
  sw $t1, -1408($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1412($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 24($s8)
  lw $t0, 24($s8)
  move $t1, $t0
  sw $t1, -1416($s8)
  lw $t0, -1416($s8)
  lw $t1, -1412($s8)
  sw $t0, 0($t1)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1420($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1424($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1428($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1432($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1436($s8)
  lw $t0, -28($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -28($s8)
label642:
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1440($s8)
  lw $t0, 20($s8)
  move $t1, $t0
  sw $t1, -1444($s8)
  lw $t0, -1444($s8)
  lw $t1, -1440($s8)
  sw $t0, 0($t1)
  lw $t0, -1440($s8)
  lw $t1, 0($t0)
  sw $t1, -1448($s8)
  lw $t0, -1448($s8)
  move $t1, $t0
  sw $t1, -1452($s8)
  lw $t0, -1452($s8)
  li $t1, 0
  beq $t0, $t1, label643
  li $t0, 0
  move $t1, $t0
  sw $t1, -1456($s8)
  lw $t0, -1420($s8)
  li $t1, 10
  blt $t0, $t1, label644
  j label645
label644:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1456($s8)
label645:
  lw $t0, -1456($s8)
  li $t1, 0
  beq $t0, $t1, label643
  li $t0, 1828673163
  move $t1, $t0
  sw $t1, -1472($s8)
  li $t0, -541501829
  move $t1, $t0
  sw $t1, -1476($s8)
  li $t0, 1410065061
  move $t1, $t0
  sw $t1, -1480($s8)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1460($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1484($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1488($s8)
  lw $t0, -1488($s8)
  lw $t1, 0($t0)
  sw $t1, -1492($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  lw $t4, 24($s8)
  sw $t4, 16($sp)
  lw $t5, -1492($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1496($s8)
  lw $t0, -16($s8)
  move $t1, $t0
  sw $t1, -8($s8)
  lw $t0, -8($s8)
  move $t1, $t0
  sw $t1, -1500($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1472($s8)
  sw $t1, 4($sp)
  lw $t2, -1408($s8)
  sw $t2, 8($sp)
  lw $t3, -1400($s8)
  sw $t3, 12($sp)
  lw $t4, -20($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1504($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1508($s8)
  lw $t0, -1476($s8)
  li $t1, 0
  beq $t0, $t1, label647
  lw $t0, -1480($s8)
  li $t1, 0
  bne $t0, $t1, label646
  j label647
label646:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1508($s8)
label647:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1508($s8)
  sw $t1, 4($sp)
  lw $t2, -1504($s8)
  sw $t2, 8($sp)
  lw $t3, -1500($s8)
  sw $t3, 12($sp)
  lw $t4, -1496($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1512($s8)
  lw $t0, -1512($s8)
  lw $t1, -1484($s8)
  sw $t0, 0($t1)
  la $t0, -1468($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1516($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1520($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1524($s8)
  lw $t0, 24($s8)
  lw $t1, 20($s8)
  bne $t0, $t1, label648
  j label649
label648:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1524($s8)
label649:
  lw $t0, -1524($s8)
  lw $t1, -1520($s8)
  sw $t0, 0($t1)
  lw $t0, -1520($s8)
  lw $t1, 0($t0)
  sw $t1, -1528($s8)
  lw $t0, -1528($s8)
  move $t1, $t0
  sw $t1, -1532($s8)
  lw $t0, -1532($s8)
  lw $t1, -1516($s8)
  sw $t0, 0($t1)
  la $t0, -1468($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1536($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1540($s8)
  li $t0, -1845002685
  move $t1, $t0
  sw $t1, -1544($s8)
  lw $t0, -1544($s8)
  lw $t1, -1540($s8)
  sw $t0, 0($t1)
  lw $t0, -1540($s8)
  lw $t1, 0($t0)
  sw $t1, -1548($s8)
  lw $t0, -1548($s8)
  move $t1, $t0
  sw $t1, -1552($s8)
  lw $t0, -1552($s8)
  lw $t1, -1536($s8)
  sw $t0, 0($t1)
  la $t0, -1468($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1556($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1560($s8)
  la $t0, -1460($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1564($s8)
  lw $t0, -1564($s8)
  lw $t1, 0($t0)
  sw $t1, -1568($s8)
  lw $t0, -1568($s8)
  lw $t1, 24($s8)
  bge $t0, $t1, label650
  j label651
label650:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1560($s8)
label651:
  lw $t0, -1560($s8)
  lw $t1, -1556($s8)
  sw $t0, 0($t1)
  lw $t0, -1556($s8)
  lw $t1, 0($t0)
  sw $t1, -1572($s8)
  lw $t0, -1572($s8)
  move $t1, $t0
  sw $t1, -1576($s8)
  lw $t0, -1420($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -1420($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1468($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1580($s8)
  la $t0, -1460($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1584($s8)
  lw $t0, -1584($s8)
  lw $t1, 0($t0)
  sw $t1, -1588($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  lw $t4, 24($s8)
  sw $t4, 16($sp)
  lw $t5, -1588($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1592($s8)
  lw $t0, -1592($s8)
  lw $t1, -1580($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1596($s8)
  lw $t0, -1596($s8)
  lw $t1, 0($t0)
  sw $t1, -1600($s8)
  la $t0, -1460($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1604($s8)
  lw $t0, -1604($s8)
  lw $t1, 0($t0)
  sw $t1, -1608($s8)
  la $t0, -1468($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1612($s8)
  lw $t0, -1612($s8)
  lw $t1, 0($t0)
  sw $t1, -1616($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, 24($s8)
  sw $t2, 8($sp)
  lw $t3, -1616($s8)
  sw $t3, 12($sp)
  lw $t4, -1608($s8)
  sw $t4, 16($sp)
  lw $t5, -1600($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1620($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1624($s8)
  li $t0, -876080277
  lw $t1, 16($s8)
  blt $t0, $t1, label652
  j label653
label652:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1624($s8)
label653:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  lw $t2, -8($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1628($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1632($s8)
  lw $t0, -20($s8)
  li $t1, 0
  bne $t0, $t1, label655
  j label654
label654:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1632($s8)
label655:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1632($s8)
  sw $t1, 4($sp)
  lw $t2, -1628($s8)
  sw $t2, 8($sp)
  lw $t3, -1624($s8)
  sw $t3, 12($sp)
  lw $t4, -1620($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1636($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1468($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1640($s8)
  la $t0, -1460($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1644($s8)
  lw $t0, -1644($s8)
  lw $t1, 0($t0)
  sw $t1, -1648($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 16($s8)
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  lw $t3, 24($s8)
  sw $t3, 12($sp)
  lw $t4, -1648($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1652($s8)
  lw $t0, -1652($s8)
  lw $t1, -1640($s8)
  sw $t0, 0($t1)
  la $t0, -1468($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1656($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1660($s8)
  lw $t0, -1660($s8)
  lw $t1, 0($t0)
  sw $t1, -1664($s8)
  lw $t0, -1664($s8)
  lw $t1, -1656($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1468($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1668($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1672($s8)
  lw $t0, -1672($s8)
  lw $t1, 0($t0)
  sw $t1, -1676($s8)
  la $t0, -1460($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1680($s8)
  lw $t0, -1680($s8)
  lw $t1, 0($t0)
  sw $t1, -1684($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  lw $t2, -1684($s8)
  sw $t2, 8($sp)
  lw $t3, -1676($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1688($s8)
  lw $t0, -1688($s8)
  lw $t1, -1668($s8)
  sw $t0, 0($t1)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1692($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1696($s8)
  la $t0, -1468($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1700($s8)
  lw $t0, -1700($s8)
  lw $t1, 0($t0)
  sw $t1, -1704($s8)
  lw $t0, -1704($s8)
  lw $t1, 24($s8)
  beq $t0, $t1, label656
  j label657
label656:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1696($s8)
label657:
  lw $t0, -1696($s8)
  lw $t1, -1692($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1708($s8)
  la $t0, -1468($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1712($s8)
  lw $t0, -1712($s8)
  lw $t1, 0($t0)
  sw $t1, -1716($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, 24($s8)
  sw $t2, 8($sp)
  lw $t3, -1716($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1720($s8)
  lw $t0, -1720($s8)
  lw $t1, -1708($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1468($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1724($s8)
  la $t0, -1460($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1728($s8)
  lw $t0, -1728($s8)
  lw $t1, 0($t0)
  sw $t1, -1732($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 16($s8)
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  lw $t3, 24($s8)
  sw $t3, 12($sp)
  lw $t4, -1732($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1736($s8)
  lw $t0, -1736($s8)
  lw $t1, -1724($s8)
  sw $t0, 0($t1)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1740($s8)
  la $t0, -1460($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1744($s8)
  lw $t0, -1744($s8)
  lw $t1, 0($t0)
  sw $t1, -1748($s8)
  li $t0, 553990840
  lw $t1, -1748($s8)
  add $t2, $t0, $t1
  sw $t2, -1752($s8)
  lw $t0, -1752($s8)
  lw $t1, -1740($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1468($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1756($s8)
  la $t0, -1460($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1760($s8)
  lw $t0, -1760($s8)
  lw $t1, 0($t0)
  sw $t1, -1764($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, 24($s8)
  sw $t2, 8($sp)
  li $t3, -616633760
  sw $t3, 12($sp)
  lw $t4, -1764($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1768($s8)
  lw $t0, -1768($s8)
  lw $t1, -1756($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1468($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1772($s8)
  la $t0, -1460($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1776($s8)
  lw $t0, -1776($s8)
  lw $t1, 0($t0)
  sw $t1, -1780($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 16($s8)
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  li $t3, -927143515
  sw $t3, 12($sp)
  lw $t4, 24($s8)
  sw $t4, 16($sp)
  lw $t5, -1780($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1784($s8)
  lw $t0, -1784($s8)
  lw $t1, -1772($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1788($s8)
  la $t0, -1468($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1792($s8)
  lw $t0, -1792($s8)
  lw $t1, 0($t0)
  sw $t1, -1796($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -123641020
  sw $t1, 4($sp)
  lw $t2, 24($s8)
  sw $t2, 8($sp)
  lw $t3, -1796($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1800($s8)
  lw $t0, -1800($s8)
  lw $t1, -1788($s8)
  sw $t0, 0($t1)
  lw $t0, -1472($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -1476($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -1480($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -1576($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label642
label643:
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1804($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1808($s8)
  lw $t0, 20($s8)
  li $t1, 0
  bne $t0, $t1, label660
  lw $t0, 16($s8)
  li $t1, 0
  bne $t0, $t1, label660
  j label661
label660:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1808($s8)
label661:
  lw $t0, -1808($s8)
  lw $t1, -1804($s8)
  sw $t0, 0($t1)
  lw $t0, -1804($s8)
  lw $t1, 0($t0)
  sw $t1, -1812($s8)
  lw $t0, -1812($s8)
  move $t1, $t0
  sw $t1, -1816($s8)
  lw $t0, -1816($s8)
  li $t1, 0
  beq $t0, $t1, label659
  li $t0, 0
  move $t1, $t0
  sw $t1, -1820($s8)
  lw $t0, -1424($s8)
  li $t1, 10
  blt $t0, $t1, label662
  j label663
label662:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1820($s8)
label663:
  lw $t0, -1820($s8)
  li $t1, 0
  beq $t0, $t1, label659
  la $t0, -1828($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1836($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1840($s8)
  lw $t0, 20($s8)
  move $t1, $t0
  sw $t1, -1844($s8)
  lw $t0, -1844($s8)
  lw $t1, -1840($s8)
  sw $t0, 0($t1)
  lw $t0, -1840($s8)
  lw $t1, 0($t0)
  sw $t1, -1848($s8)
  lw $t0, -1848($s8)
  move $t1, $t0
  sw $t1, -1852($s8)
  lw $t0, -1852($s8)
  lw $t1, -1836($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1828($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1856($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1860($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1864($s8)
  lw $t0, -1864($s8)
  lw $t1, 0($t0)
  sw $t1, -1868($s8)
  lw $t0, -1868($s8)
  lw $t1, 24($s8)
  beq $t0, $t1, label664
  j label665
label664:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1860($s8)
label665:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  li $t2, -1826615290
  sw $t2, 8($sp)
  lw $t3, 16($s8)
  sw $t3, 12($sp)
  lw $t4, 20($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1872($s8)
  lw $t0, -8($s8)
  lw $t1, -16($s8)
  add $t2, $t0, $t1
  sw $t2, -1876($s8)
  lw $t0, -20($s8)
  lw $t1, -1400($s8)
  sub $t2, $t0, $t1
  sw $t2, -1880($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1880($s8)
  sw $t1, 4($sp)
  lw $t2, -1876($s8)
  sw $t2, 8($sp)
  lw $t3, -1872($s8)
  sw $t3, 12($sp)
  lw $t4, -1860($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1884($s8)
  lw $t0, -1884($s8)
  lw $t1, -1856($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1888($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1892($s8)
  lw $t0, -1892($s8)
  lw $t1, -1888($s8)
  sw $t0, 0($t1)
  lw $t0, -1888($s8)
  lw $t1, 0($t0)
  sw $t1, -1896($s8)
  lw $t0, -1896($s8)
  move $t1, $t0
  sw $t1, -1900($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1904($s8)
  la $t0, -1828($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1908($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1912($s8)
  lw $t0, -1912($s8)
  lw $t1, 0($t0)
  sw $t1, -1916($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  lw $t4, 24($s8)
  sw $t4, 16($sp)
  lw $t5, -1916($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1920($s8)
  lw $t0, -1920($s8)
  lw $t1, -1908($s8)
  sw $t0, 0($t1)
  lw $t0, -1908($s8)
  lw $t1, 0($t0)
  sw $t1, -1924($s8)
  lw $t0, -1924($s8)
  move $t1, $t0
  sw $t1, -1928($s8)
  lw $t0, -1928($s8)
  lw $t1, -1904($s8)
  sw $t0, 0($t1)
  lw $t0, -1424($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -1424($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1828($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1932($s8)
  la $t0, -1832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1936($s8)
  lw $t0, -1936($s8)
  lw $t1, 0($t0)
  sw $t1, -1940($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1940($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1944($s8)
  lw $t0, -1944($s8)
  lw $t1, -1932($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1948($s8)
  la $t0, -1828($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1952($s8)
  lw $t0, -1952($s8)
  lw $t1, 0($t0)
  sw $t1, -1956($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 595536515
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  lw $t3, 24($s8)
  sw $t3, 12($sp)
  lw $t4, -1956($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1960($s8)
  lw $t0, -1960($s8)
  lw $t1, -1948($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1964($s8)
  lw $t0, -1964($s8)
  lw $t1, 0($t0)
  sw $t1, -1968($s8)
  la $t0, -1828($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1972($s8)
  lw $t0, -1972($s8)
  lw $t1, 0($t0)
  sw $t1, -1976($s8)
  la $t0, -1832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1980($s8)
  lw $t0, -1980($s8)
  lw $t1, 0($t0)
  sw $t1, -1984($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1984($s8)
  sw $t1, 4($sp)
  lw $t2, -1976($s8)
  sw $t2, 8($sp)
  lw $t3, -1968($s8)
  sw $t3, 12($sp)
  li $t4, -91681150
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1988($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1992($s8)
  li $t0, 83654880
  li $t1, 0
  bne $t0, $t1, label667
  j label666
label666:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1992($s8)
label667:
  li $t0, 0
  move $t1, $t0
  sw $t1, -1996($s8)
  lw $t0, 20($s8)
  li $t1, -1234852309
  bge $t0, $t1, label668
  j label669
label668:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1996($s8)
label669:
  li $t0, 0
  move $t1, $t0
  sw $t1, -2000($s8)
  lw $t0, 16($s8)
  li $t1, 0
  bne $t0, $t1, label670
  lw $t0, 12($s8)
  li $t1, 0
  bne $t0, $t1, label670
  j label671
label670:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2000($s8)
label671:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2000($s8)
  sw $t1, 4($sp)
  lw $t2, -1996($s8)
  sw $t2, 8($sp)
  lw $t3, -1992($s8)
  sw $t3, 12($sp)
  lw $t4, 24($s8)
  sw $t4, 16($sp)
  lw $t5, -1988($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2004($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1828($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2008($s8)
  la $t0, -1832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2012($s8)
  lw $t0, -2012($s8)
  lw $t1, 0($t0)
  sw $t1, -2016($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 16($s8)
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  lw $t3, 24($s8)
  sw $t3, 12($sp)
  lw $t4, -2016($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2020($s8)
  lw $t0, -2020($s8)
  lw $t1, -2008($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2024($s8)
  la $t0, -1832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2028($s8)
  lw $t0, -2028($s8)
  lw $t1, 0($t0)
  sw $t1, -2032($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  li $t2, 270986537
  sw $t2, 8($sp)
  lw $t3, -2032($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2036($s8)
  lw $t0, -2036($s8)
  lw $t1, -2024($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2040($s8)
  la $t0, -1832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2044($s8)
  lw $t0, -2044($s8)
  lw $t1, 0($t0)
  sw $t1, -2048($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 16($s8)
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  lw $t3, 24($s8)
  sw $t3, 12($sp)
  lw $t4, -2048($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2052($s8)
  lw $t0, -2052($s8)
  lw $t1, -2040($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2056($s8)
  lw $t0, -2056($s8)
  lw $t1, 0($t0)
  sw $t1, -2060($s8)
  la $t0, -1832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2064($s8)
  lw $t0, -2064($s8)
  lw $t1, 0($t0)
  sw $t1, -2068($s8)
  la $t0, -1828($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2072($s8)
  lw $t0, -2072($s8)
  lw $t1, 0($t0)
  sw $t1, -2076($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2076($s8)
  sw $t1, 4($sp)
  lw $t2, -2068($s8)
  sw $t2, 8($sp)
  lw $t3, -2060($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2080($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2084($s8)
  lw $t0, 24($s8)
  lw $t1, 20($s8)
  blt $t0, $t1, label672
  j label673
label672:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2084($s8)
label673:
  lw $t0, 12($s8)
  sw $t0, 0($sp)
  lw $t1, 16($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_sub
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2088($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -20($s8)
  sw $t1, 4($sp)
  lw $t2, -16($s8)
  sw $t2, 8($sp)
  lw $t3, -8($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2092($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2092($s8)
  sw $t1, 4($sp)
  lw $t2, -2088($s8)
  sw $t2, 8($sp)
  lw $t3, -2084($s8)
  sw $t3, 12($sp)
  lw $t4, -2080($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2096($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1828($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2100($s8)
  la $t0, -1832($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2104($s8)
  lw $t0, -2104($s8)
  lw $t1, 0($t0)
  sw $t1, -2108($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  li $t2, 1528589819
  sw $t2, 8($sp)
  lw $t3, -2108($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2112($s8)
  lw $t0, -2112($s8)
  lw $t1, -2100($s8)
  sw $t0, 0($t1)
  lw $t0, -1900($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label643
label659:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2116($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 1753050510
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2120($s8)
  lw $t0, -2120($s8)
  lw $t1, -2116($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2124($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -1062067586
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, 16($s8)
  sw $t3, 12($sp)
  lw $t4, 20($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2128($s8)
  lw $t0, -2128($s8)
  lw $t1, -2124($s8)
  sw $t0, 0($t1)
label674:
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2132($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2136($s8)
  lw $t0, 20($s8)
  lw $t1, 16($s8)
  bgt $t0, $t1, label676
  j label677
label676:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2136($s8)
label677:
  lw $t0, -2136($s8)
  lw $t1, -2132($s8)
  sw $t0, 0($t1)
  lw $t0, -2132($s8)
  lw $t1, 0($t0)
  sw $t1, -2140($s8)
  lw $t0, -2140($s8)
  move $t1, $t0
  sw $t1, -2144($s8)
  lw $t0, -2144($s8)
  li $t1, 0
  beq $t0, $t1, label675
  li $t0, 0
  move $t1, $t0
  sw $t1, -2148($s8)
  lw $t0, -1428($s8)
  li $t1, 10
  blt $t0, $t1, label678
  j label679
label678:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2148($s8)
label679:
  lw $t0, -2148($s8)
  li $t1, 0
  beq $t0, $t1, label675
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2160($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2164($s8)
  lw $t0, -2164($s8)
  lw $t1, -2160($s8)
  sw $t0, 0($t1)
  lw $t0, -2160($s8)
  lw $t1, 0($t0)
  sw $t1, -2168($s8)
  lw $t0, -2168($s8)
  move $t1, $t0
  sw $t1, -2172($s8)
  la $t0, -2156($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2176($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2180($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2184($s8)
  lw $t0, 20($s8)
  li $t1, 0
  bne $t0, $t1, label681
  j label680
label680:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2184($s8)
label681:
  lw $t0, -2184($s8)
  lw $t1, -2180($s8)
  sw $t0, 0($t1)
  lw $t0, -2180($s8)
  lw $t1, 0($t0)
  sw $t1, -2188($s8)
  lw $t0, -2188($s8)
  move $t1, $t0
  sw $t1, -2192($s8)
  lw $t0, -2192($s8)
  lw $t1, -2176($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2196($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2200($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2204($s8)
  lw $t0, -2204($s8)
  lw $t1, -2200($s8)
  sw $t0, 0($t1)
  lw $t0, -2200($s8)
  lw $t1, 0($t0)
  sw $t1, -2208($s8)
  lw $t0, -2208($s8)
  move $t1, $t0
  sw $t1, -2212($s8)
  lw $t0, -2212($s8)
  lw $t1, -2196($s8)
  sw $t0, 0($t1)
  la $t0, -2156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2216($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2220($s8)
  lw $t0, 24($s8)
  li $t1, 0
  bne $t0, $t1, label682
  lw $t0, 20($s8)
  li $t1, 0
  bne $t0, $t1, label682
  j label683
label682:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2220($s8)
label683:
  lw $t0, -2220($s8)
  lw $t1, -2216($s8)
  sw $t0, 0($t1)
  lw $t0, -2216($s8)
  lw $t1, 0($t0)
  sw $t1, -2224($s8)
  lw $t0, -2224($s8)
  move $t1, $t0
  sw $t1, -2228($s8)
  lw $t0, -1428($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -1428($s8)
  la $t0, -2156($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2232($s8)
  lw $t0, -2232($s8)
  lw $t1, 0($t0)
  sw $t1, -2236($s8)
  lw $t0, -2236($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2240($s8)
  la $t0, -1392($s8)
  lw $t1, -2240($s8)
  add $t2, $t0, $t1
  sw $t2, -2244($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2248($s8)
  lw $t0, 24($s8)
  li $t1, 1430102171
  bge $t0, $t1, label684
  j label685
label684:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2248($s8)
label685:
  lw $t0, -2248($s8)
  lw $t1, -2244($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2252($s8)
  lw $t0, -2252($s8)
  lw $t1, 0($t0)
  sw $t1, -2256($s8)
  lw $t0, -2256($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2260($s8)
  la $t0, -2156($s8)
  lw $t1, -2260($s8)
  add $t2, $t0, $t1
  sw $t2, -2264($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 16($s8)
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  li $t3, 990036021
  sw $t3, 12($sp)
  lw $t4, 24($s8)
  sw $t4, 16($sp)
  li $t5, -1486835360
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2268($s8)
  lw $t0, -2268($s8)
  lw $t1, -2264($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2272($s8)
  la $t0, -2156($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2276($s8)
  lw $t0, -2276($s8)
  lw $t1, 0($t0)
  sw $t1, -2280($s8)
  lw $t0, -2280($s8)
  lw $t1, -2272($s8)
  sw $t0, 0($t1)
  lw $t0, -2272($s8)
  lw $t1, 0($t0)
  sw $t1, -2284($s8)
  lw $t0, -2284($s8)
  move $t1, $t0
  sw $t1, -2288($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2288($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2292($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2296($s8)
  lw $t0, -2296($s8)
  lw $t1, 0($t0)
  sw $t1, -2300($s8)
  lw $t0, -2300($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2304($s8)
  la $t0, -2156($s8)
  lw $t1, -2304($s8)
  add $t2, $t0, $t1
  sw $t2, -2308($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2312($s8)
  lw $t0, 24($s8)
  li $t1, 0
  bne $t0, $t1, label687
  j label686
label686:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2312($s8)
label687:
  lw $t0, -2312($s8)
  lw $t1, -2308($s8)
  sw $t0, 0($t1)
  la $t0, -2156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2316($s8)
  lw $t0, -2316($s8)
  lw $t1, 0($t0)
  sw $t1, -2320($s8)
  lw $t0, -2320($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2324($s8)
  la $t0, -1392($s8)
  lw $t1, -2324($s8)
  add $t2, $t0, $t1
  sw $t2, -2328($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2332($s8)
  lw $t0, 24($s8)
  li $t1, -152187666
  bne $t0, $t1, label688
  j label689
label688:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2332($s8)
label689:
  lw $t0, -2332($s8)
  lw $t1, -2328($s8)
  sw $t0, 0($t1)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2336($s8)
  lw $t0, -2336($s8)
  lw $t1, 0($t0)
  sw $t1, -2340($s8)
  lw $t0, -2340($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2344($s8)
  la $t0, -2156($s8)
  lw $t1, -2344($s8)
  add $t2, $t0, $t1
  sw $t2, -2348($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2352($s8)
  lw $t0, 24($s8)
  lw $t1, 20($s8)
  bge $t0, $t1, label690
  j label691
label690:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2352($s8)
label691:
  lw $t0, -2352($s8)
  lw $t1, -2348($s8)
  sw $t0, 0($t1)
  la $t0, -2156($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2356($s8)
  lw $t0, -2356($s8)
  lw $t1, 0($t0)
  sw $t1, -2360($s8)
  lw $t0, -2360($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2364($s8)
  la $t0, -1392($s8)
  lw $t1, -2364($s8)
  add $t2, $t0, $t1
  sw $t2, -2368($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2372($s8)
  lw $t0, 24($s8)
  lw $t1, 20($s8)
  bge $t0, $t1, label692
  j label693
label692:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2372($s8)
label693:
  lw $t0, -2372($s8)
  lw $t1, -2368($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2376($s8)
  lw $t0, -2376($s8)
  lw $t1, 0($t0)
  sw $t1, -2380($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2380($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2384($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2388($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2392($s8)
  lw $t0, -2392($s8)
  lw $t1, 0($t0)
  sw $t1, -2396($s8)
  lw $t0, -2396($s8)
  lw $t1, 24($s8)
  bgt $t0, $t1, label694
  j label695
label694:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2388($s8)
label695:
  li $t0, 0
  move $t1, $t0
  sw $t1, -2400($s8)
  lw $t0, 20($s8)
  lw $t1, 16($s8)
  bne $t0, $t1, label696
  j label697
label696:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2400($s8)
label697:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2400($s8)
  sw $t1, 4($sp)
  lw $t2, -2388($s8)
  sw $t2, 8($sp)
  lw $t3, -2384($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2404($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2408($s8)
  lw $t0, -2408($s8)
  lw $t1, 0($t0)
  sw $t1, -2412($s8)
  lw $t0, -2412($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2416($s8)
  la $t0, -1392($s8)
  lw $t1, -2416($s8)
  add $t2, $t0, $t1
  sw $t2, -2420($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  li $t2, -955722580
  sw $t2, 8($sp)
  lw $t3, 24($s8)
  sw $t3, 12($sp)
  li $t4, 1277859059
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2424($s8)
  lw $t0, -2424($s8)
  lw $t1, -2420($s8)
  sw $t0, 0($t1)
  lw $t0, -2172($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -2228($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label674
label675:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label698:
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2428($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 463750691
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2432($s8)
  lw $t0, -2432($s8)
  lw $t1, -2428($s8)
  sw $t0, 0($t1)
  lw $t0, -2428($s8)
  lw $t1, 0($t0)
  sw $t1, -2436($s8)
  lw $t0, -2436($s8)
  move $t1, $t0
  sw $t1, -2440($s8)
  lw $t0, -2440($s8)
  li $t1, 0
  beq $t0, $t1, label699
  li $t0, 0
  move $t1, $t0
  sw $t1, -2444($s8)
  lw $t0, -1432($s8)
  li $t1, 10
  blt $t0, $t1, label700
  j label701
label700:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2444($s8)
label701:
  lw $t0, -2444($s8)
  li $t1, 0
  beq $t0, $t1, label699
  la $t0, -2452($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2456($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2460($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2464($s8)
  li $t0, 1475112414
  li $t1, -715715885
  bgt $t0, $t1, label702
  j label703
label702:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2464($s8)
label703:
  lw $t0, -2464($s8)
  lw $t1, -2460($s8)
  sw $t0, 0($t1)
  lw $t0, -2460($s8)
  lw $t1, 0($t0)
  sw $t1, -2468($s8)
  lw $t0, -2468($s8)
  move $t1, $t0
  sw $t1, -2472($s8)
  lw $t0, -2472($s8)
  lw $t1, -2456($s8)
  sw $t0, 0($t1)
  la $t0, -2452($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2476($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2480($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2484($s8)
  lw $t0, 20($s8)
  lw $t1, 16($s8)
  bge $t0, $t1, label704
  j label705
label704:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2484($s8)
label705:
  lw $t0, -2484($s8)
  lw $t1, -2480($s8)
  sw $t0, 0($t1)
  lw $t0, -2480($s8)
  lw $t1, 0($t0)
  sw $t1, -2488($s8)
  lw $t0, -2488($s8)
  move $t1, $t0
  sw $t1, -2492($s8)
  lw $t0, -2492($s8)
  lw $t1, -2476($s8)
  sw $t0, 0($t1)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2496($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2500($s8)
  lw $t0, 24($s8)
  lw $t1, 20($s8)
  bge $t0, $t1, label706
  j label707
label706:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2500($s8)
label707:
  lw $t0, -2500($s8)
  lw $t1, -2496($s8)
  sw $t0, 0($t1)
  lw $t0, -2496($s8)
  lw $t1, 0($t0)
  sw $t1, -2504($s8)
  lw $t0, -2504($s8)
  move $t1, $t0
  sw $t1, -2508($s8)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2512($s8)
  lw $t0, -2512($s8)
  lw $t1, 0($t0)
  sw $t1, -2516($s8)
  la $t0, -2452($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2520($s8)
  lw $t0, -2520($s8)
  lw $t1, 0($t0)
  sw $t1, -2524($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 16($s8)
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  lw $t3, 24($s8)
  sw $t3, 12($sp)
  lw $t4, -2524($s8)
  sw $t4, 16($sp)
  lw $t5, -2516($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2528($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2528($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2532($s8)
  lw $t0, -1432($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -1432($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2536($s8)
  la $t0, -2452($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2540($s8)
  lw $t0, -2540($s8)
  lw $t1, 0($t0)
  sw $t1, -2544($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, 24($s8)
  sw $t2, 8($sp)
  lw $t3, -2544($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2548($s8)
  lw $t0, -2548($s8)
  lw $t1, -2536($s8)
  sw $t0, 0($t1)
  la $t0, -2452($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2552($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2556($s8)
  lw $t0, 24($s8)
  lw $t1, 20($s8)
  blt $t0, $t1, label708
  j label709
label708:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2556($s8)
label709:
  lw $t0, -2556($s8)
  lw $t1, -2552($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2560($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 16($s8)
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  li $t3, -198851258
  sw $t3, 12($sp)
  lw $t4, 24($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2564($s8)
  lw $t0, -2564($s8)
  lw $t1, -2560($s8)
  sw $t0, 0($t1)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2568($s8)
  lw $t0, 20($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_sub
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2572($s8)
  lw $t0, -2572($s8)
  lw $t1, -2568($s8)
  sw $t0, 0($t1)
  la $t0, -2452($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2576($s8)
  li $t0, 347418702
  move $t1, $t0
  sw $t1, -2580($s8)
  lw $t0, -2580($s8)
  lw $t1, -2576($s8)
  sw $t0, 0($t1)
  lw $t0, -2508($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -2532($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label698
label699:
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2584($s8)
  lw $t0, 16($s8)
  move $t1, $t0
  sw $t1, 20($s8)
  lw $t0, 20($s8)
  move $t1, $t0
  sw $t1, -2588($s8)
  lw $t0, -2588($s8)
  lw $t1, -2584($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label710:
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2592($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -8($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, 16($s8)
  sw $t3, 12($sp)
  lw $t4, 20($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2596($s8)
  lw $t0, -2596($s8)
  lw $t1, -2592($s8)
  sw $t0, 0($t1)
  lw $t0, -2592($s8)
  lw $t1, 0($t0)
  sw $t1, -2600($s8)
  lw $t0, -2600($s8)
  move $t1, $t0
  sw $t1, -2604($s8)
  lw $t0, -2604($s8)
  li $t1, 0
  beq $t0, $t1, label711
  li $t0, 0
  move $t1, $t0
  sw $t1, -2608($s8)
  lw $t0, -1436($s8)
  li $t1, 10
  blt $t0, $t1, label712
  j label713
label712:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2608($s8)
label713:
  lw $t0, -2608($s8)
  li $t1, 0
  beq $t0, $t1, label711
  la $t0, -2616($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2624($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2628($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2632($s8)
  lw $t0, 20($s8)
  lw $t1, 16($s8)
  bgt $t0, $t1, label714
  j label715
label714:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2632($s8)
label715:
  lw $t0, -2632($s8)
  lw $t1, -2628($s8)
  sw $t0, 0($t1)
  lw $t0, -2628($s8)
  lw $t1, 0($t0)
  sw $t1, -2636($s8)
  lw $t0, -2636($s8)
  move $t1, $t0
  sw $t1, -2640($s8)
  lw $t0, -2640($s8)
  lw $t1, -2624($s8)
  sw $t0, 0($t1)
  la $t0, -2616($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2644($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2648($s8)
  lw $t0, 20($s8)
  move $t1, $t0
  sw $t1, -2652($s8)
  lw $t0, -2652($s8)
  lw $t1, -2648($s8)
  sw $t0, 0($t1)
  lw $t0, -2648($s8)
  lw $t1, 0($t0)
  sw $t1, -2656($s8)
  lw $t0, -2656($s8)
  move $t1, $t0
  sw $t1, -2660($s8)
  lw $t0, -2660($s8)
  lw $t1, -2644($s8)
  sw $t0, 0($t1)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2664($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2668($s8)
  lw $t0, 24($s8)
  lw $t1, 20($s8)
  beq $t0, $t1, label716
  j label717
label716:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2668($s8)
label717:
  lw $t0, -2668($s8)
  lw $t1, -2664($s8)
  sw $t0, 0($t1)
  lw $t0, -2664($s8)
  lw $t1, 0($t0)
  sw $t1, -2672($s8)
  lw $t0, -2672($s8)
  move $t1, $t0
  sw $t1, -2676($s8)
  la $t0, -2620($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2680($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2684($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2688($s8)
  li $t0, 299875547
  li $t1, 0
  bne $t0, $t1, label719
  j label718
label718:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2688($s8)
label719:
  lw $t0, -2688($s8)
  lw $t1, -2684($s8)
  sw $t0, 0($t1)
  lw $t0, -2684($s8)
  lw $t1, 0($t0)
  sw $t1, -2692($s8)
  lw $t0, -2692($s8)
  move $t1, $t0
  sw $t1, -2696($s8)
  lw $t0, -2696($s8)
  lw $t1, -2680($s8)
  sw $t0, 0($t1)
  lw $t0, -1436($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -1436($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2620($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2700($s8)
  lw $t0, -2700($s8)
  lw $t1, 0($t0)
  sw $t1, -2704($s8)
  lw $t0, -2704($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2708($s8)
  la $t0, -1392($s8)
  lw $t1, -2708($s8)
  add $t2, $t0, $t1
  sw $t2, -2712($s8)
  la $t0, -2616($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2716($s8)
  lw $t0, -2716($s8)
  lw $t1, 0($t0)
  sw $t1, -2720($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 16($s8)
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  lw $t3, 24($s8)
  sw $t3, 12($sp)
  lw $t4, -2720($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2724($s8)
  lw $t0, -2724($s8)
  lw $t1, -2712($s8)
  sw $t0, 0($t1)
  la $t0, -2616($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2728($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2732($s8)
  la $t0, -2620($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2736($s8)
  lw $t0, -2736($s8)
  lw $t1, 0($t0)
  sw $t1, -2740($s8)
  lw $t0, -2740($s8)
  lw $t1, 24($s8)
  blt $t0, $t1, label720
  j label721
label720:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2732($s8)
label721:
  lw $t0, -2732($s8)
  lw $t1, -2728($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2616($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2744($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2748($s8)
  lw $t0, -2748($s8)
  lw $t1, 0($t0)
  sw $t1, -2752($s8)
  la $t0, -2620($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2756($s8)
  lw $t0, -2756($s8)
  lw $t1, 0($t0)
  sw $t1, -2760($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, 24($s8)
  sw $t2, 8($sp)
  li $t3, 1266676021
  sw $t3, 12($sp)
  lw $t4, -2760($s8)
  sw $t4, 16($sp)
  lw $t5, -2752($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2764($s8)
  lw $t0, -2764($s8)
  lw $t1, -2744($s8)
  sw $t0, 0($t1)
  la $t0, -2620($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2768($s8)
  lw $t0, -2768($s8)
  lw $t1, 0($t0)
  sw $t1, -2772($s8)
  lw $t0, -2772($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2776($s8)
  la $t0, -1392($s8)
  lw $t1, -2776($s8)
  add $t2, $t0, $t1
  sw $t2, -2780($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2784($s8)
  la $t0, -2616($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2788($s8)
  lw $t0, -2788($s8)
  lw $t1, 0($t0)
  sw $t1, -2792($s8)
  li $t0, -845925287
  lw $t1, -2792($s8)
  blt $t0, $t1, label722
  j label723
label722:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2784($s8)
label723:
  lw $t0, -2784($s8)
  lw $t1, -2780($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2796($s8)
  lw $t0, -2796($s8)
  lw $t1, 0($t0)
  sw $t1, -2800($s8)
  lw $t0, -2800($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2804($s8)
  la $t0, -2616($s8)
  lw $t1, -2804($s8)
  add $t2, $t0, $t1
  sw $t2, -2808($s8)
  la $t0, -2620($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2812($s8)
  lw $t0, -2812($s8)
  lw $t1, 0($t0)
  sw $t1, -2816($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  lw $t4, 24($s8)
  sw $t4, 16($sp)
  lw $t5, -2816($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2820($s8)
  lw $t0, -2820($s8)
  lw $t1, -2808($s8)
  sw $t0, 0($t1)
  la $t0, -2620($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2824($s8)
  lw $t0, -2824($s8)
  lw $t1, 0($t0)
  sw $t1, -2828($s8)
  lw $t0, -2828($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2832($s8)
  la $t0, -1392($s8)
  lw $t1, -2832($s8)
  add $t2, $t0, $t1
  sw $t2, -2836($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2840($s8)
  li $t0, 1557695669
  li $t1, 0
  beq $t0, $t1, label725
  la $t0, -2616($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2844($s8)
  lw $t0, -2844($s8)
  lw $t1, 0($t0)
  sw $t1, -2848($s8)
  lw $t0, -2848($s8)
  li $t1, 0
  bne $t0, $t1, label724
  j label725
label724:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2840($s8)
label725:
  lw $t0, -2840($s8)
  lw $t1, -2836($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2620($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2852($s8)
  lw $t0, -2852($s8)
  lw $t1, 0($t0)
  sw $t1, -2856($s8)
  lw $t0, -2856($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2860($s8)
  la $t0, -1392($s8)
  lw $t1, -2860($s8)
  add $t2, $t0, $t1
  sw $t2, -2864($s8)
  la $t0, -2616($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2868($s8)
  lw $t0, -2868($s8)
  lw $t1, 0($t0)
  sw $t1, -2872($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 16($s8)
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  lw $t3, 24($s8)
  sw $t3, 12($sp)
  li $t4, -1142839413
  sw $t4, 16($sp)
  lw $t5, -2872($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2876($s8)
  lw $t0, -2876($s8)
  lw $t1, -2864($s8)
  sw $t0, 0($t1)
  la $t0, -2616($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2880($s8)
  lw $t0, -2880($s8)
  lw $t1, 0($t0)
  sw $t1, -2884($s8)
  lw $t0, -2884($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2888($s8)
  la $t0, -1392($s8)
  lw $t1, -2888($s8)
  add $t2, $t0, $t1
  sw $t2, -2892($s8)
  la $t0, -2620($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2896($s8)
  lw $t0, -2896($s8)
  lw $t1, 0($t0)
  sw $t1, -2900($s8)
  li $t0, -881282945
  lw $t1, -2900($s8)
  add $t2, $t0, $t1
  sw $t2, -2904($s8)
  lw $t0, -2904($s8)
  lw $t1, -2892($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2616($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2908($s8)
  la $t0, -2620($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2912($s8)
  lw $t0, -2912($s8)
  lw $t1, 0($t0)
  sw $t1, -2916($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  lw $t4, 24($s8)
  sw $t4, 16($sp)
  lw $t5, -2916($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2920($s8)
  lw $t0, -2920($s8)
  lw $t1, -2908($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2616($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2924($s8)
  la $t0, -2620($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2928($s8)
  lw $t0, -2928($s8)
  lw $t1, 0($t0)
  sw $t1, -2932($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  lw $t4, 24($s8)
  sw $t4, 16($sp)
  lw $t5, -2932($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2936($s8)
  lw $t0, -2936($s8)
  lw $t1, -2924($s8)
  sw $t0, 0($t1)
  lw $t0, -2676($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label710
label711:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2940($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2944($s8)
  lw $t0, -2944($s8)
  lw $t1, 0($t0)
  sw $t1, -2948($s8)
  lw $t0, -2948($s8)
  li $t1, 0
  bne $t0, $t1, label726
  lw $t0, 24($s8)
  li $t1, 0
  bne $t0, $t1, label726
  j label727
label726:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2940($s8)
label727:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2940($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2952($s8)
  la $t0, -1392($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2956($s8)
  li $t0, 2007178914
  move $t1, $t0
  sw $t1, -2960($s8)
  lw $t0, -2960($s8)
  lw $t1, -2956($s8)
  sw $t0, 0($t1)
  lw $t0, -1400($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -1408($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label634
label635:
  li $t0, 0
  move $t1, $t0
  sw $t1, -2964($s8)
  lw $t0, 20($s8)
  lw $t1, 16($s8)
  bgt $t0, $t1, label728
  j label729
label728:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2964($s8)
label729:
  lw $t0, -2964($s8)
  move $t1, $t0
  sw $t1, 24($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2968($s8)
  lw $t0, 20($s8)
  lw $t1, 16($s8)
  bge $t0, $t1, label730
  j label731
label730:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2968($s8)
label731:
  lw $t0, -2968($s8)
  move $t1, $t0
  sw $t1, 24($s8)
  lw $t0, -8($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -16($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -20($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  li $t4, 267277478
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 24($s8)
  lw $t0, 24($s8)
  move $t1, $t0
  sw $t1, -2972($s8)
  lw $t0, -2972($s8)
  move $v0, $t0
  move $sp, $s8
  lw $s8, 0($sp)
  addi $sp, $sp, 4
  jr $ra

i_func_153:
  addi $sp, $sp, -4
  sw $s8, 0($sp)
  move $s8, $sp
  addi $sp, $sp, -4096
  lw $t0, 8($s8)
  li $t1, 0
  bgt $t0, $t1, label732
  li $t0, 1884267042
  move $v0, $t0
  move $sp, $s8
  lw $s8, 0($sp)
  addi $sp, $sp, 4
  jr $ra
  j label733
label732:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label733:
  li $t0, 1492401049
  move $t1, $t0
  sw $t1, -4($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 12($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -12($s8)
  lw $t0, -4($s8)
  li $t1, -879168730
  bgt $t0, $t1, label734
  j label735
label734:
  li $t0, 1
  move $t1, $t0
  sw $t1, -12($s8)
label735:
  lw $t0, -12($s8)
  move $t1, $t0
  sw $t1, 12($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -16($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 12($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -20($s8)
  li $t0, -148170841
  move $t1, $t0
  sw $t1, -24($s8)
  li $t0, -554255662
  move $t1, $t0
  sw $t1, -28($s8)
  li $t0, -1493605085
  move $t1, $t0
  sw $t1, -32($s8)
  li $t0, -1245199375
  move $t1, $t0
  sw $t1, -36($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -40($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -44($s8)
  lw $t0, -4($s8)
  li $t1, 1723042820
  add $t2, $t0, $t1
  sw $t2, 12($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -48($s8)
  lw $t0, -4($s8)
  lw $t1, -8($s8)
  beq $t0, $t1, label736
  j label737
label736:
  li $t0, 1
  move $t1, $t0
  sw $t1, -48($s8)
label737:
  lw $t0, -48($s8)
  move $t1, $t0
  sw $t1, 12($s8)
label738:
  lw $t0, -4($s8)
  lw $t1, -8($s8)
  add $t2, $t0, $t1
  sw $t2, 12($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -52($s8)
  lw $t0, -52($s8)
  li $t1, 0
  beq $t0, $t1, label739
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -60($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -72($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 12($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -76($s8)
  lw $t0, -76($s8)
  lw $t1, -72($s8)
  sw $t0, 0($t1)
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -80($s8)
  lw $t0, -4($s8)
  li $t1, 1111228252
  add $t2, $t0, $t1
  sw $t2, 12($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -84($s8)
  lw $t0, -84($s8)
  lw $t1, -80($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -68($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -88($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -92($s8)
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -96($s8)
  lw $t0, -96($s8)
  lw $t1, 0($t0)
  sw $t1, -100($s8)
  lw $t0, -100($s8)
  li $t1, -1175723466
  blt $t0, $t1, label740
  j label741
label740:
  li $t0, 1
  move $t1, $t0
  sw $t1, -92($s8)
label741:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -92($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -104($s8)
  lw $t0, -104($s8)
  lw $t1, -88($s8)
  sw $t0, 0($t1)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -108($s8)
  lw $t0, 12($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -112($s8)
  la $t0, -60($s8)
  lw $t1, -112($s8)
  add $t2, $t0, $t1
  sw $t2, -116($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -120($s8)
  lw $t0, -4($s8)
  li $t1, -163702520
  bge $t0, $t1, label742
  j label743
label742:
  li $t0, 1
  move $t1, $t0
  sw $t1, -120($s8)
label743:
  lw $t0, -120($s8)
  lw $t1, -116($s8)
  sw $t0, 0($t1)
  lw $t0, -116($s8)
  lw $t1, 0($t0)
  sw $t1, -124($s8)
  lw $t0, -124($s8)
  move $t1, $t0
  sw $t1, -128($s8)
  lw $t0, -128($s8)
  lw $t1, -108($s8)
  sw $t0, 0($t1)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -132($s8)
  lw $t0, -132($s8)
  lw $t1, 0($t0)
  sw $t1, -136($s8)
  lw $t0, -136($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -140($s8)
  la $t0, -60($s8)
  lw $t1, -140($s8)
  add $t2, $t0, $t1
  sw $t2, -144($s8)
  lw $t0, -4($s8)
  move $t1, $t0
  sw $t1, 12($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -148($s8)
  lw $t0, -148($s8)
  lw $t1, -144($s8)
  sw $t0, 0($t1)
  lw $t0, -144($s8)
  lw $t1, 0($t0)
  sw $t1, -152($s8)
  lw $t0, -152($s8)
  move $t1, $t0
  sw $t1, -156($s8)
  li $t0, -1221826216
  move $t1, $t0
  sw $t1, -160($s8)
  li $t0, 1944512848
  move $t1, $t0
  sw $t1, -164($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -168($s8)
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -172($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -176($s8)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -180($s8)
  lw $t0, -180($s8)
  lw $t1, 0($t0)
  sw $t1, -184($s8)
  lw $t0, -184($s8)
  lw $t1, 12($s8)
  beq $t0, $t1, label744
  j label745
label744:
  li $t0, 1
  move $t1, $t0
  sw $t1, -176($s8)
label745:
  lw $t0, -176($s8)
  lw $t1, -172($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -68($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -188($s8)
  lw $t0, -188($s8)
  lw $t1, 0($t0)
  sw $t1, -192($s8)
  lw $t0, -192($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -196($s8)
  la $t0, -60($s8)
  lw $t1, -196($s8)
  add $t2, $t0, $t1
  sw $t2, -200($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  lw $t2, -8($s8)
  sw $t2, 8($sp)
  lw $t3, -4($s8)
  sw $t3, 12($sp)
  lw $t4, 12($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -204($s8)
  lw $t0, -204($s8)
  lw $t1, -200($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -68($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -208($s8)
  lw $t0, -208($s8)
  lw $t1, 0($t0)
  sw $t1, -212($s8)
  lw $t0, -212($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -216($s8)
  la $t0, -60($s8)
  lw $t1, -216($s8)
  add $t2, $t0, $t1
  sw $t2, -220($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -8($s8)
  sw $t1, 4($sp)
  lw $t2, -4($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  li $t4, 1039304157
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -224($s8)
  lw $t0, -224($s8)
  lw $t1, -220($s8)
  sw $t0, 0($t1)
label746:
  la $t0, -68($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -228($s8)
  lw $t0, -228($s8)
  lw $t1, 0($t0)
  sw $t1, -232($s8)
  lw $t0, -232($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -236($s8)
  la $t0, -60($s8)
  lw $t1, -236($s8)
  add $t2, $t0, $t1
  sw $t2, -240($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -244($s8)
  lw $t0, 12($s8)
  lw $t1, -4($s8)
  blt $t0, $t1, label748
  j label749
label748:
  li $t0, 1
  move $t1, $t0
  sw $t1, -244($s8)
label749:
  lw $t0, -244($s8)
  lw $t1, -240($s8)
  sw $t0, 0($t1)
  lw $t0, -240($s8)
  lw $t1, 0($t0)
  sw $t1, -248($s8)
  lw $t0, -248($s8)
  move $t1, $t0
  sw $t1, -252($s8)
  lw $t0, -252($s8)
  li $t1, 0
  beq $t0, $t1, label747
  la $t0, -260($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -280($s8)
  la $t0, -68($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -284($s8)
  lw $t0, -284($s8)
  lw $t1, 0($t0)
  sw $t1, -288($s8)
  lw $t0, -288($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -292($s8)
  la $t0, -60($s8)
  lw $t1, -292($s8)
  add $t2, $t0, $t1
  sw $t2, -296($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -300($s8)
  lw $t0, -300($s8)
  lw $t1, -296($s8)
  sw $t0, 0($t1)
  lw $t0, -296($s8)
  lw $t1, 0($t0)
  sw $t1, -304($s8)
  lw $t0, -304($s8)
  move $t1, $t0
  sw $t1, -308($s8)
  lw $t0, -308($s8)
  lw $t1, -280($s8)
  sw $t0, 0($t1)
  la $t0, -260($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -312($s8)
  la $t0, -60($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -316($s8)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -320($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -324($s8)
  lw $t0, -324($s8)
  lw $t1, -320($s8)
  sw $t0, 0($t1)
  lw $t0, -320($s8)
  lw $t1, 0($t0)
  sw $t1, -328($s8)
  lw $t0, -328($s8)
  move $t1, $t0
  sw $t1, -332($s8)
  lw $t0, -332($s8)
  lw $t1, -316($s8)
  sw $t0, 0($t1)
  lw $t0, -316($s8)
  lw $t1, 0($t0)
  sw $t1, -336($s8)
  lw $t0, -336($s8)
  move $t1, $t0
  sw $t1, -340($s8)
  lw $t0, -340($s8)
  lw $t1, -312($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -268($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -344($s8)
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -348($s8)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -352($s8)
  lw $t0, -352($s8)
  lw $t1, 0($t0)
  sw $t1, -356($s8)
  la $t0, -260($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -360($s8)
  lw $t0, -360($s8)
  lw $t1, 0($t0)
  sw $t1, -364($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  li $t3, -417408435
  sw $t3, 12($sp)
  lw $t4, -364($s8)
  sw $t4, 16($sp)
  lw $t5, -356($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -368($s8)
  lw $t0, -368($s8)
  lw $t1, -348($s8)
  sw $t0, 0($t1)
  lw $t0, -348($s8)
  lw $t1, 0($t0)
  sw $t1, -372($s8)
  lw $t0, -372($s8)
  move $t1, $t0
  sw $t1, -376($s8)
  lw $t0, -376($s8)
  lw $t1, -344($s8)
  sw $t0, 0($t1)
  la $t0, -268($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -380($s8)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -384($s8)
  lw $t0, -384($s8)
  lw $t1, 0($t0)
  sw $t1, -388($s8)
  lw $t0, -388($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -392($s8)
  la $t0, -60($s8)
  lw $t1, -392($s8)
  add $t2, $t0, $t1
  sw $t2, -396($s8)
  li $t0, 461031644
  move $t1, $t0
  sw $t1, -400($s8)
  lw $t0, -400($s8)
  lw $t1, -396($s8)
  sw $t0, 0($t1)
  lw $t0, -396($s8)
  lw $t1, 0($t0)
  sw $t1, -404($s8)
  lw $t0, -404($s8)
  move $t1, $t0
  sw $t1, -408($s8)
  lw $t0, -408($s8)
  lw $t1, -380($s8)
  sw $t0, 0($t1)
  la $t0, -276($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -412($s8)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -416($s8)
  lw $t0, -416($s8)
  lw $t1, 0($t0)
  sw $t1, -420($s8)
  lw $t0, -420($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -424($s8)
  la $t0, -60($s8)
  lw $t1, -424($s8)
  add $t2, $t0, $t1
  sw $t2, -428($s8)
  li $t0, -753436653
  move $t1, $t0
  sw $t1, -432($s8)
  lw $t0, -432($s8)
  lw $t1, -428($s8)
  sw $t0, 0($t1)
  lw $t0, -428($s8)
  lw $t1, 0($t0)
  sw $t1, -436($s8)
  lw $t0, -436($s8)
  move $t1, $t0
  sw $t1, -440($s8)
  lw $t0, -440($s8)
  lw $t1, -412($s8)
  sw $t0, 0($t1)
  la $t0, -276($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -444($s8)
  la $t0, -68($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -448($s8)
  lw $t0, -448($s8)
  lw $t1, 0($t0)
  sw $t1, -452($s8)
  lw $t0, -452($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -456($s8)
  la $t0, -60($s8)
  lw $t1, -456($s8)
  add $t2, $t0, $t1
  sw $t2, -460($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -464($s8)
  la $t0, -260($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -468($s8)
  lw $t0, -468($s8)
  lw $t1, 0($t0)
  sw $t1, -472($s8)
  la $t0, -268($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -476($s8)
  lw $t0, -476($s8)
  lw $t1, 0($t0)
  sw $t1, -480($s8)
  lw $t0, -472($s8)
  lw $t1, -480($s8)
  ble $t0, $t1, label750
  j label751
label750:
  li $t0, 1
  move $t1, $t0
  sw $t1, -464($s8)
label751:
  lw $t0, -464($s8)
  lw $t1, -460($s8)
  sw $t0, 0($t1)
  lw $t0, -460($s8)
  lw $t1, 0($t0)
  sw $t1, -484($s8)
  lw $t0, -484($s8)
  move $t1, $t0
  sw $t1, -488($s8)
  lw $t0, -488($s8)
  lw $t1, -444($s8)
  sw $t0, 0($t1)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -492($s8)
  lw $t0, -492($s8)
  lw $t1, 0($t0)
  sw $t1, -496($s8)
  lw $t0, -496($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -500($s8)
  la $t0, -60($s8)
  lw $t1, -500($s8)
  add $t2, $t0, $t1
  sw $t2, -504($s8)
  la $t0, -260($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -508($s8)
  la $t0, -268($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -512($s8)
  lw $t0, -512($s8)
  lw $t1, 0($t0)
  sw $t1, -516($s8)
  lw $t0, -516($s8)
  lw $t1, -508($s8)
  sw $t0, 0($t1)
  lw $t0, -508($s8)
  lw $t1, 0($t0)
  sw $t1, -520($s8)
  lw $t0, -520($s8)
  move $t1, $t0
  sw $t1, -524($s8)
  lw $t0, -524($s8)
  lw $t1, -504($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -528($s8)
  lw $t0, -528($s8)
  lw $t1, 0($t0)
  sw $t1, -532($s8)
  lw $t0, -532($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -536($s8)
  la $t0, -60($s8)
  lw $t1, -536($s8)
  add $t2, $t0, $t1
  sw $t2, -540($s8)
  la $t0, -260($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -544($s8)
  lw $t0, -544($s8)
  lw $t1, 0($t0)
  sw $t1, -548($s8)
  la $t0, -268($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -552($s8)
  lw $t0, -552($s8)
  lw $t1, 0($t0)
  sw $t1, -556($s8)
  la $t0, -276($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -560($s8)
  lw $t0, -560($s8)
  lw $t1, 0($t0)
  sw $t1, -564($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, -564($s8)
  sw $t2, 8($sp)
  lw $t3, -556($s8)
  sw $t3, 12($sp)
  li $t4, -795907124
  sw $t4, 16($sp)
  lw $t5, -548($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -568($s8)
  lw $t0, -568($s8)
  lw $t1, -540($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -68($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -572($s8)
  lw $t0, -572($s8)
  lw $t1, 0($t0)
  sw $t1, -576($s8)
  lw $t0, -576($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -580($s8)
  la $t0, -60($s8)
  lw $t1, -580($s8)
  add $t2, $t0, $t1
  sw $t2, -584($s8)
  la $t0, -260($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -588($s8)
  lw $t0, -588($s8)
  lw $t1, 0($t0)
  sw $t1, -592($s8)
  la $t0, -268($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -596($s8)
  lw $t0, -596($s8)
  lw $t1, 0($t0)
  sw $t1, -600($s8)
  la $t0, -276($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -604($s8)
  lw $t0, -604($s8)
  lw $t1, 0($t0)
  sw $t1, -608($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -608($s8)
  sw $t1, 4($sp)
  lw $t2, -600($s8)
  sw $t2, 8($sp)
  lw $t3, -592($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -612($s8)
  lw $t0, -612($s8)
  lw $t1, -584($s8)
  sw $t0, 0($t1)
  la $t0, -68($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -616($s8)
  lw $t0, -616($s8)
  lw $t1, 0($t0)
  sw $t1, -620($s8)
  lw $t0, -620($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -624($s8)
  la $t0, -60($s8)
  lw $t1, -624($s8)
  add $t2, $t0, $t1
  sw $t2, -628($s8)
  la $t0, -260($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -632($s8)
  lw $t0, -632($s8)
  lw $t1, 0($t0)
  sw $t1, -636($s8)
  la $t0, -268($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -640($s8)
  lw $t0, -640($s8)
  lw $t1, 0($t0)
  sw $t1, -644($s8)
  lw $t0, -636($s8)
  lw $t1, -644($s8)
  sub $t2, $t0, $t1
  sw $t2, -648($s8)
  lw $t0, -648($s8)
  lw $t1, -628($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -652($s8)
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -656($s8)
  lw $t0, -656($s8)
  lw $t1, 0($t0)
  sw $t1, -660($s8)
  la $t0, -68($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -664($s8)
  lw $t0, -664($s8)
  lw $t1, 0($t0)
  sw $t1, -668($s8)
  lw $t0, -660($s8)
  lw $t1, -668($s8)
  bne $t0, $t1, label752
  j label753
label752:
  li $t0, 1
  move $t1, $t0
  sw $t1, -652($s8)
label753:
  li $t0, 0
  move $t1, $t0
  sw $t1, -672($s8)
  la $t0, -260($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -676($s8)
  lw $t0, -676($s8)
  lw $t1, 0($t0)
  sw $t1, -680($s8)
  la $t0, -268($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -684($s8)
  lw $t0, -684($s8)
  lw $t1, 0($t0)
  sw $t1, -688($s8)
  lw $t0, -680($s8)
  lw $t1, -688($s8)
  ble $t0, $t1, label754
  j label755
label754:
  li $t0, 1
  move $t1, $t0
  sw $t1, -672($s8)
label755:
  li $t0, 0
  move $t1, $t0
  sw $t1, -692($s8)
  la $t0, -276($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -696($s8)
  lw $t0, -696($s8)
  lw $t1, 0($t0)
  sw $t1, -700($s8)
  lw $t0, -700($s8)
  lw $t1, 12($s8)
  bgt $t0, $t1, label756
  j label757
label756:
  li $t0, 1
  move $t1, $t0
  sw $t1, -692($s8)
label757:
  lw $t0, -8($s8)
  move $t1, $t0
  sw $t1, -4($s8)
  lw $t0, -4($s8)
  move $t1, $t0
  sw $t1, -704($s8)
  lw $t0, -16($s8)
  lw $t1, -20($s8)
  mul $t2, $t0, $t1
  sw $t2, -708($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -708($s8)
  sw $t1, 4($sp)
  lw $t2, -704($s8)
  sw $t2, 8($sp)
  lw $t3, -692($s8)
  sw $t3, 12($sp)
  lw $t4, -672($s8)
  sw $t4, 16($sp)
  lw $t5, -652($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -712($s8)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -716($s8)
  lw $t0, -716($s8)
  lw $t1, 0($t0)
  sw $t1, -720($s8)
  lw $t0, -720($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -724($s8)
  la $t0, -60($s8)
  lw $t1, -724($s8)
  add $t2, $t0, $t1
  sw $t2, -728($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -732($s8)
  la $t0, -260($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -736($s8)
  lw $t0, -736($s8)
  lw $t1, 0($t0)
  sw $t1, -740($s8)
  la $t0, -268($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -744($s8)
  lw $t0, -744($s8)
  lw $t1, 0($t0)
  sw $t1, -748($s8)
  lw $t0, -740($s8)
  lw $t1, -748($s8)
  bgt $t0, $t1, label758
  j label759
label758:
  li $t0, 1
  move $t1, $t0
  sw $t1, -732($s8)
label759:
  lw $t0, -732($s8)
  lw $t1, -728($s8)
  sw $t0, 0($t1)
  la $t0, -60($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -752($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -756($s8)
  la $t0, -68($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -760($s8)
  lw $t0, -760($s8)
  lw $t1, 0($t0)
  sw $t1, -764($s8)
  la $t0, -260($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -768($s8)
  lw $t0, -768($s8)
  lw $t1, 0($t0)
  sw $t1, -772($s8)
  lw $t0, -764($s8)
  lw $t1, -772($s8)
  bne $t0, $t1, label760
  j label761
label760:
  li $t0, 1
  move $t1, $t0
  sw $t1, -756($s8)
label761:
  lw $t0, -756($s8)
  lw $t1, -752($s8)
  sw $t0, 0($t1)
  la $t0, -68($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -776($s8)
  lw $t0, -776($s8)
  lw $t1, 0($t0)
  sw $t1, -780($s8)
  lw $t0, -780($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -784($s8)
  la $t0, -60($s8)
  lw $t1, -784($s8)
  add $t2, $t0, $t1
  sw $t2, -788($s8)
  la $t0, -260($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -792($s8)
  lw $t0, -792($s8)
  lw $t1, 0($t0)
  sw $t1, -796($s8)
  la $t0, -268($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -800($s8)
  lw $t0, -800($s8)
  lw $t1, 0($t0)
  sw $t1, -804($s8)
  lw $t0, -796($s8)
  lw $t1, -804($s8)
  sub $t2, $t0, $t1
  sw $t2, -808($s8)
  lw $t0, -808($s8)
  lw $t1, -788($s8)
  sw $t0, 0($t1)
  j label746
label747:
  la $t0, -68($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -812($s8)
  lw $t0, -812($s8)
  lw $t1, 0($t0)
  sw $t1, -816($s8)
  lw $t0, -816($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -820($s8)
  la $t0, -60($s8)
  lw $t1, -820($s8)
  add $t2, $t0, $t1
  sw $t2, -824($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -828($s8)
  lw $t0, 12($s8)
  li $t1, 0
  beq $t0, $t1, label763
  lw $t0, -4($s8)
  li $t1, 0
  bne $t0, $t1, label762
  j label763
label762:
  li $t0, 1
  move $t1, $t0
  sw $t1, -828($s8)
label763:
  lw $t0, -828($s8)
  lw $t1, -824($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -60($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -832($s8)
  lw $t0, -832($s8)
  lw $t1, 0($t0)
  sw $t1, -836($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -836($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -840($s8)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -844($s8)
  la $t0, -60($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -848($s8)
  lw $t0, -848($s8)
  lw $t1, 0($t0)
  sw $t1, -852($s8)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -856($s8)
  lw $t0, -856($s8)
  lw $t1, 0($t0)
  sw $t1, -860($s8)
  lw $t0, -852($s8)
  lw $t1, -860($s8)
  ble $t0, $t1, label764
  j label765
label764:
  li $t0, 1
  move $t1, $t0
  sw $t1, -844($s8)
label765:
  li $t0, 557098066
  lw $t1, 12($s8)
  add $t2, $t0, $t1
  sw $t2, -864($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -868($s8)
  li $t0, 1172464559
  lw $t1, -4($s8)
  bgt $t0, $t1, label766
  j label767
label766:
  li $t0, 1
  move $t1, $t0
  sw $t1, -868($s8)
label767:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -20($s8)
  sw $t1, 4($sp)
  lw $t2, -16($s8)
  sw $t2, 8($sp)
  lw $t3, -8($s8)
  sw $t3, 12($sp)
  li $t4, 1253711185
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -872($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -164($s8)
  sw $t1, 4($sp)
  lw $t2, -160($s8)
  sw $t2, 8($sp)
  lw $t3, -156($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -876($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -876($s8)
  sw $t1, 4($sp)
  lw $t2, -872($s8)
  sw $t2, 8($sp)
  lw $t3, -868($s8)
  sw $t3, 12($sp)
  lw $t4, -864($s8)
  sw $t4, 16($sp)
  lw $t5, -844($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -880($s8)
  la $t0, -68($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -884($s8)
  lw $t0, -884($s8)
  lw $t1, 0($t0)
  sw $t1, -888($s8)
  lw $t0, -888($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -892($s8)
  la $t0, -60($s8)
  lw $t1, -892($s8)
  add $t2, $t0, $t1
  sw $t2, -896($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -900($s8)
  li $t0, 664405373
  lw $t1, 12($s8)
  bne $t0, $t1, label768
  j label769
label768:
  li $t0, 1
  move $t1, $t0
  sw $t1, -900($s8)
label769:
  lw $t0, -900($s8)
  lw $t1, -896($s8)
  sw $t0, 0($t1)
  la $t0, -68($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -904($s8)
  lw $t0, -904($s8)
  lw $t1, 0($t0)
  sw $t1, -908($s8)
  lw $t0, -908($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -912($s8)
  la $t0, -60($s8)
  lw $t1, -912($s8)
  add $t2, $t0, $t1
  sw $t2, -916($s8)
  lw $t0, 12($s8)
  li $t1, 998981166
  mul $t2, $t0, $t1
  sw $t2, -920($s8)
  lw $t0, -920($s8)
  lw $t1, -916($s8)
  sw $t0, 0($t1)
  la $t0, -68($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -924($s8)
  lw $t0, -924($s8)
  lw $t1, 0($t0)
  sw $t1, -928($s8)
  lw $t0, -928($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -932($s8)
  la $t0, -60($s8)
  lw $t1, -932($s8)
  add $t2, $t0, $t1
  sw $t2, -936($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -940($s8)
  lw $t0, 12($s8)
  lw $t1, -4($s8)
  bge $t0, $t1, label770
  j label771
label770:
  li $t0, 1
  move $t1, $t0
  sw $t1, -940($s8)
label771:
  lw $t0, -940($s8)
  lw $t1, -936($s8)
  sw $t0, 0($t1)
  lw $t0, -156($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -160($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -164($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label738
label739:
  li $t0, 413095122
  move $t1, $t0
  sw $t1, -4($s8)
  lw $t0, -4($s8)
  move $t1, $t0
  sw $t1, 12($s8)
  lw $t0, 8($s8)
  li $t1, 4
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label772:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -8($s8)
  sw $t1, 4($sp)
  lw $t2, -4($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -944($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -24($s8)
  sw $t1, 4($sp)
  lw $t2, -20($s8)
  sw $t2, 8($sp)
  lw $t3, -16($s8)
  sw $t3, 12($sp)
  li $t4, -1707176566
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -948($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -36($s8)
  sw $t1, 4($sp)
  lw $t2, -32($s8)
  sw $t2, 8($sp)
  lw $t3, -28($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -952($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -191127566
  sw $t1, 4($sp)
  lw $t2, -952($s8)
  sw $t2, 8($sp)
  lw $t3, -948($s8)
  sw $t3, 12($sp)
  lw $t4, -944($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -956($s8)
  lw $t0, -956($s8)
  li $t1, 0
  beq $t0, $t1, label773
  li $t0, 0
  move $t1, $t0
  sw $t1, -960($s8)
  lw $t0, -4($s8)
  lw $t1, -8($s8)
  blt $t0, $t1, label774
  j label775
label774:
  li $t0, 1
  move $t1, $t0
  sw $t1, -960($s8)
label775:
  lw $t0, -960($s8)
  move $t1, $t0
  sw $t1, 12($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -964($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 12($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -968($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 12($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -972($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -976($s8)
  lw $t0, -4($s8)
  lw $t1, -8($s8)
  mul $t2, $t0, $t1
  sw $t2, 12($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -24($s8)
  sw $t1, 4($sp)
  lw $t2, -20($s8)
  sw $t2, 8($sp)
  lw $t3, -16($s8)
  sw $t3, 12($sp)
  lw $t4, -8($s8)
  sw $t4, 16($sp)
  lw $t5, -4($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 12($s8)
  lw $t0, 8($s8)
  li $t1, 18
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -980($s8)
  lw $t0, -4($s8)
  lw $t1, -8($s8)
  blt $t0, $t1, label778
  j label779
label778:
  li $t0, 1
  move $t1, $t0
  sw $t1, -980($s8)
label779:
  lw $t0, -980($s8)
  move $t1, $t0
  sw $t1, 12($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -984($s8)
  lw $t0, -984($s8)
  li $t1, 0
  beq $t0, $t1, label776
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -20($s8)
  sw $t1, 4($sp)
  lw $t2, -16($s8)
  sw $t2, 8($sp)
  lw $t3, -8($s8)
  sw $t3, 12($sp)
  lw $t4, -4($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 12($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -996($s8)
  la $t0, -988($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1000($s8)
  li $t0, -1016315
  move $t1, $t0
  sw $t1, 12($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -1004($s8)
  lw $t0, -1004($s8)
  lw $t1, -1000($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -992($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1008($s8)
  lw $t0, 12($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1012($s8)
  la $t0, -988($s8)
  lw $t1, -1012($s8)
  add $t2, $t0, $t1
  sw $t2, -1016($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 1360310478
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1020($s8)
  lw $t0, -1020($s8)
  lw $t1, -1016($s8)
  sw $t0, 0($t1)
  lw $t0, -1016($s8)
  lw $t1, 0($t0)
  sw $t1, -1024($s8)
  lw $t0, -1024($s8)
  move $t1, $t0
  sw $t1, -1028($s8)
  lw $t0, -1028($s8)
  lw $t1, -1008($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -988($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1032($s8)
  lw $t0, -1032($s8)
  lw $t1, 0($t0)
  sw $t1, -1036($s8)
  la $t0, -992($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1040($s8)
  lw $t0, -1040($s8)
  lw $t1, 0($t0)
  sw $t1, -1044($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  li $t2, -477024171
  sw $t2, 8($sp)
  lw $t3, -1044($s8)
  sw $t3, 12($sp)
  lw $t4, -1036($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1048($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1052($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1056($s8)
  lw $t0, -8($s8)
  lw $t1, -16($s8)
  beq $t0, $t1, label780
  j label781
label780:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1056($s8)
label781:
  li $t0, 0
  move $t1, $t0
  sw $t1, -1060($s8)
  lw $t0, -20($s8)
  li $t1, 0
  bne $t0, $t1, label782
  lw $t0, -24($s8)
  li $t1, 0
  bne $t0, $t1, label782
  j label783
label782:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1060($s8)
label783:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1060($s8)
  sw $t1, 4($sp)
  lw $t2, -1056($s8)
  sw $t2, 8($sp)
  lw $t3, -1052($s8)
  sw $t3, 12($sp)
  lw $t4, -1048($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1064($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -992($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1068($s8)
  lw $t0, -1068($s8)
  lw $t1, 0($t0)
  sw $t1, -1072($s8)
  lw $t0, -1072($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1076($s8)
  la $t0, -988($s8)
  lw $t1, -1076($s8)
  add $t2, $t0, $t1
  sw $t2, -1080($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1084($s8)
  lw $t0, -1084($s8)
  lw $t1, -1080($s8)
  sw $t0, 0($t1)
  la $t0, -992($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1088($s8)
  lw $t0, -1088($s8)
  lw $t1, 0($t0)
  sw $t1, -1092($s8)
  lw $t0, -1092($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1096($s8)
  la $t0, -988($s8)
  lw $t1, -1096($s8)
  add $t2, $t0, $t1
  sw $t2, -1100($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1104($s8)
  li $t0, 353465598
  li $t1, 0
  beq $t0, $t1, label785
  li $t0, -1169114235
  li $t1, 0
  bne $t0, $t1, label784
  j label785
label784:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1104($s8)
label785:
  lw $t0, -1104($s8)
  lw $t1, -1100($s8)
  sw $t0, 0($t1)
  la $t0, -988($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1108($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1112($s8)
  la $t0, -992($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1116($s8)
  lw $t0, -1116($s8)
  lw $t1, 0($t0)
  sw $t1, -1120($s8)
  lw $t0, -1120($s8)
  li $t1, 0
  bne $t0, $t1, label787
  j label786
label786:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1112($s8)
label787:
  lw $t0, -1112($s8)
  lw $t1, -1108($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -992($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1124($s8)
  lw $t0, -1124($s8)
  lw $t1, 0($t0)
  sw $t1, -1128($s8)
  lw $t0, -1128($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1132($s8)
  la $t0, -988($s8)
  lw $t1, -1132($s8)
  add $t2, $t0, $t1
  sw $t2, -1136($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -8($s8)
  sw $t1, 4($sp)
  lw $t2, -4($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1140($s8)
  lw $t0, -1140($s8)
  lw $t1, -1136($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -992($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1144($s8)
  lw $t0, -1144($s8)
  lw $t1, 0($t0)
  sw $t1, -1148($s8)
  lw $t0, -1148($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1152($s8)
  la $t0, -988($s8)
  lw $t1, -1152($s8)
  add $t2, $t0, $t1
  sw $t2, -1156($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -20($s8)
  sw $t1, 4($sp)
  lw $t2, -16($s8)
  sw $t2, 8($sp)
  lw $t3, -8($s8)
  sw $t3, 12($sp)
  lw $t4, -4($s8)
  sw $t4, 16($sp)
  lw $t5, 12($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1160($s8)
  lw $t0, -1160($s8)
  lw $t1, -1156($s8)
  sw $t0, 0($t1)
  la $t0, -992($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1164($s8)
  lw $t0, -1164($s8)
  lw $t1, 0($t0)
  sw $t1, -1168($s8)
  lw $t0, -1168($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1172($s8)
  la $t0, -988($s8)
  lw $t1, -1172($s8)
  add $t2, $t0, $t1
  sw $t2, -1176($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1180($s8)
  lw $t0, 12($s8)
  lw $t1, -4($s8)
  blt $t0, $t1, label788
  j label789
label788:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1180($s8)
label789:
  lw $t0, -1180($s8)
  lw $t1, -1176($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -992($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1184($s8)
  lw $t0, -1184($s8)
  lw $t1, 0($t0)
  sw $t1, -1188($s8)
  lw $t0, -1188($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1192($s8)
  la $t0, -988($s8)
  lw $t1, -1192($s8)
  add $t2, $t0, $t1
  sw $t2, -1196($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -8($s8)
  sw $t1, 4($sp)
  li $t2, 1449584085
  sw $t2, 8($sp)
  lw $t3, -4($s8)
  sw $t3, 12($sp)
  lw $t4, 12($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1200($s8)
  lw $t0, -1200($s8)
  lw $t1, -1196($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -988($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1204($s8)
  la $t0, -992($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1208($s8)
  lw $t0, -1208($s8)
  lw $t1, 0($t0)
  sw $t1, -1212($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1212($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1216($s8)
  lw $t0, -1216($s8)
  lw $t1, -1204($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -992($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1220($s8)
  lw $t0, -1220($s8)
  lw $t1, 0($t0)
  sw $t1, -1224($s8)
  lw $t0, -1224($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1228($s8)
  la $t0, -988($s8)
  lw $t1, -1228($s8)
  add $t2, $t0, $t1
  sw $t2, -1232($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -1935672727
  sw $t1, 4($sp)
  li $t2, -1659521811
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1236($s8)
  lw $t0, -1236($s8)
  lw $t1, -1232($s8)
  sw $t0, 0($t1)
  lw $t0, -996($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label777
label776:
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1248($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -24($s8)
  sw $t1, 4($sp)
  lw $t2, -20($s8)
  sw $t2, 8($sp)
  lw $t3, -16($s8)
  sw $t3, 12($sp)
  lw $t4, -8($s8)
  sw $t4, 16($sp)
  lw $t5, -4($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1252($s8)
  lw $t0, -32($s8)
  move $t1, $t0
  sw $t1, -28($s8)
  lw $t0, -28($s8)
  move $t1, $t0
  sw $t1, -1256($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1256($s8)
  sw $t1, 4($sp)
  lw $t2, -1252($s8)
  sw $t2, 8($sp)
  lw $t3, -1248($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1260($s8)
  la $t0, -1240($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1264($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1268($s8)
  lw $t0, -4($s8)
  lw $t1, -8($s8)
  bge $t0, $t1, label790
  j label791
label790:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1268($s8)
label791:
  lw $t0, -1268($s8)
  move $t1, $t0
  sw $t1, 12($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -1272($s8)
  lw $t0, -1272($s8)
  lw $t1, -1264($s8)
  sw $t0, 0($t1)
  la $t0, -1244($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1276($s8)
  lw $t0, 12($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1280($s8)
  la $t0, -1240($s8)
  lw $t1, -1280($s8)
  add $t2, $t0, $t1
  sw $t2, -1284($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1288($s8)
  lw $t0, -4($s8)
  li $t1, 748773251
  bge $t0, $t1, label792
  j label793
label792:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1288($s8)
label793:
  lw $t0, -1288($s8)
  lw $t1, -1284($s8)
  sw $t0, 0($t1)
  lw $t0, -1284($s8)
  lw $t1, 0($t0)
  sw $t1, -1292($s8)
  lw $t0, -1292($s8)
  move $t1, $t0
  sw $t1, -1296($s8)
  lw $t0, -1296($s8)
  lw $t1, -1276($s8)
  sw $t0, 0($t1)
  la $t0, -1240($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1300($s8)
  la $t0, -1244($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1304($s8)
  lw $t0, -1304($s8)
  lw $t1, 0($t0)
  sw $t1, -1308($s8)
  lw $t0, -1308($s8)
  lw $t1, 12($s8)
  add $t2, $t0, $t1
  sw $t2, -1312($s8)
  lw $t0, -1312($s8)
  lw $t1, -1300($s8)
  sw $t0, 0($t1)
  la $t0, -1244($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1316($s8)
  lw $t0, -1316($s8)
  lw $t1, 0($t0)
  sw $t1, -1320($s8)
  lw $t0, -1320($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1324($s8)
  la $t0, -1240($s8)
  lw $t1, -1324($s8)
  add $t2, $t0, $t1
  sw $t2, -1328($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1332($s8)
  lw $t0, 12($s8)
  lw $t1, -4($s8)
  blt $t0, $t1, label794
  j label795
label794:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1332($s8)
label795:
  lw $t0, -1332($s8)
  lw $t1, -1328($s8)
  sw $t0, 0($t1)
  la $t0, -1244($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1336($s8)
  lw $t0, -1336($s8)
  lw $t1, 0($t0)
  sw $t1, -1340($s8)
  lw $t0, -1340($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1344($s8)
  la $t0, -1240($s8)
  lw $t1, -1344($s8)
  add $t2, $t0, $t1
  sw $t2, -1348($s8)
  lw $t0, 12($s8)
  lw $t1, -4($s8)
  sub $t2, $t0, $t1
  sw $t2, -1352($s8)
  lw $t0, -1352($s8)
  lw $t1, -1348($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1244($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1356($s8)
  lw $t0, -1356($s8)
  lw $t1, 0($t0)
  sw $t1, -1360($s8)
  lw $t0, -1360($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1364($s8)
  la $t0, -1240($s8)
  lw $t1, -1364($s8)
  add $t2, $t0, $t1
  sw $t2, -1368($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1372($s8)
  lw $t0, -1372($s8)
  lw $t1, -1368($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1240($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1376($s8)
  lw $t0, -1376($s8)
  lw $t1, 0($t0)
  sw $t1, -1380($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1380($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1384($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1384($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1388($s8)
  la $t0, -1244($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1392($s8)
  lw $t0, -1392($s8)
  lw $t1, 0($t0)
  sw $t1, -1396($s8)
  lw $t0, -1396($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1400($s8)
  la $t0, -1240($s8)
  lw $t1, -1400($s8)
  add $t2, $t0, $t1
  sw $t2, -1404($s8)
  lw $t0, 12($s8)
  lw $t1, -4($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -1408($s8)
  lw $t0, -1408($s8)
  lw $t1, -1404($s8)
  sw $t0, 0($t1)
  la $t0, -1240($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1412($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1416($s8)
  la $t0, -1244($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1420($s8)
  lw $t0, -1420($s8)
  lw $t1, 0($t0)
  sw $t1, -1424($s8)
  lw $t0, -1424($s8)
  lw $t1, 12($s8)
  blt $t0, $t1, label796
  j label797
label796:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1416($s8)
label797:
  lw $t0, -1416($s8)
  lw $t1, -1412($s8)
  sw $t0, 0($t1)
  la $t0, -1244($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1428($s8)
  lw $t0, -1428($s8)
  lw $t1, 0($t0)
  sw $t1, -1432($s8)
  lw $t0, -1432($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1436($s8)
  la $t0, -1240($s8)
  lw $t1, -1436($s8)
  add $t2, $t0, $t1
  sw $t2, -1440($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1444($s8)
  lw $t0, 12($s8)
  lw $t1, -4($s8)
  bge $t0, $t1, label798
  j label799
label798:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1444($s8)
label799:
  lw $t0, -1444($s8)
  lw $t1, -1440($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1244($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1448($s8)
  lw $t0, -1448($s8)
  lw $t1, 0($t0)
  sw $t1, -1452($s8)
  lw $t0, -1452($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1456($s8)
  la $t0, -1240($s8)
  lw $t1, -1456($s8)
  add $t2, $t0, $t1
  sw $t2, -1460($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -8($s8)
  sw $t1, 4($sp)
  lw $t2, -4($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1464($s8)
  lw $t0, -1464($s8)
  lw $t1, -1460($s8)
  sw $t0, 0($t1)
  lw $t0, -1260($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
label777:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 12($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 1938196319
  sw $t1, 4($sp)
  lw $t2, -4($s8)
  sw $t2, 8($sp)
  li $t3, 1331805543
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 12($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1468($s8)
  lw $t0, -4($s8)
  lw $t1, -8($s8)
  bne $t0, $t1, label800
  j label801
label800:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1468($s8)
label801:
  lw $t0, -1468($s8)
  move $t1, $t0
  sw $t1, 12($s8)
label802:
  li $t0, 0
  move $t1, $t0
  sw $t1, -1472($s8)
  lw $t0, -4($s8)
  li $t1, 0
  bne $t0, $t1, label804
  lw $t0, -8($s8)
  li $t1, 0
  bne $t0, $t1, label804
  j label805
label804:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1472($s8)
label805:
  lw $t0, -1472($s8)
  move $t1, $t0
  sw $t1, 12($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -1476($s8)
  lw $t0, -1476($s8)
  li $t1, 0
  beq $t0, $t1, label803
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1480($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1488($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 12($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -1492($s8)
  lw $t0, -1492($s8)
  lw $t1, -1488($s8)
  sw $t0, 0($t1)
  lw $t0, 12($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1496($s8)
  la $t0, -1480($s8)
  lw $t1, -1496($s8)
  add $t2, $t0, $t1
  sw $t2, -1500($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1504($s8)
  lw $t0, -4($s8)
  lw $t1, -8($s8)
  beq $t0, $t1, label806
  j label807
label806:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1504($s8)
label807:
  lw $t0, -1504($s8)
  lw $t1, -1500($s8)
  sw $t0, 0($t1)
  lw $t0, -1500($s8)
  lw $t1, 0($t0)
  sw $t1, -1508($s8)
  lw $t0, -1508($s8)
  move $t1, $t0
  sw $t1, -1512($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1484($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1516($s8)
  lw $t0, 12($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1520($s8)
  la $t0, -1480($s8)
  lw $t1, -1520($s8)
  add $t2, $t0, $t1
  sw $t2, -1524($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -635542821
  sw $t1, 4($sp)
  li $t2, -195483089
  sw $t2, 8($sp)
  lw $t3, -4($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1528($s8)
  lw $t0, -1528($s8)
  lw $t1, -1524($s8)
  sw $t0, 0($t1)
  lw $t0, -1524($s8)
  lw $t1, 0($t0)
  sw $t1, -1532($s8)
  lw $t0, -1532($s8)
  move $t1, $t0
  sw $t1, -1536($s8)
  lw $t0, -1536($s8)
  lw $t1, -1516($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1484($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1540($s8)
  lw $t0, -1540($s8)
  lw $t1, 0($t0)
  sw $t1, -1544($s8)
  lw $t0, -1544($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1548($s8)
  la $t0, -1480($s8)
  lw $t1, -1548($s8)
  add $t2, $t0, $t1
  sw $t2, -1552($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1556($s8)
  lw $t0, -1556($s8)
  lw $t1, -1552($s8)
  sw $t0, 0($t1)
  la $t0, -1484($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1560($s8)
  lw $t0, -1560($s8)
  lw $t1, 0($t0)
  sw $t1, -1564($s8)
  lw $t0, -1564($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1568($s8)
  la $t0, -1480($s8)
  lw $t1, -1568($s8)
  add $t2, $t0, $t1
  sw $t2, -1572($s8)
  lw $t0, 12($s8)
  lw $t1, -4($s8)
  mul $t2, $t0, $t1
  sw $t2, -1576($s8)
  lw $t0, -1576($s8)
  lw $t1, -1572($s8)
  sw $t0, 0($t1)
  la $t0, -1484($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1580($s8)
  lw $t0, -1580($s8)
  lw $t1, 0($t0)
  sw $t1, -1584($s8)
  lw $t0, -1584($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1588($s8)
  la $t0, -1480($s8)
  lw $t1, -1588($s8)
  add $t2, $t0, $t1
  sw $t2, -1592($s8)
  lw $t0, 12($s8)
  lw $t1, -4($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -1596($s8)
  lw $t0, -1596($s8)
  lw $t1, -1592($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1484($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1600($s8)
  lw $t0, -1600($s8)
  lw $t1, 0($t0)
  sw $t1, -1604($s8)
  lw $t0, -1604($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1608($s8)
  la $t0, -1480($s8)
  lw $t1, -1608($s8)
  add $t2, $t0, $t1
  sw $t2, -1612($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -20($s8)
  sw $t1, 4($sp)
  lw $t2, -16($s8)
  sw $t2, 8($sp)
  lw $t3, -8($s8)
  sw $t3, 12($sp)
  lw $t4, -4($s8)
  sw $t4, 16($sp)
  lw $t5, 12($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1616($s8)
  lw $t0, -1616($s8)
  lw $t1, -1612($s8)
  sw $t0, 0($t1)
  la $t0, -1480($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1620($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1624($s8)
  la $t0, -1484($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1628($s8)
  lw $t0, -1628($s8)
  lw $t1, 0($t0)
  sw $t1, -1632($s8)
  lw $t0, -1632($s8)
  li $t1, -18406196
  bgt $t0, $t1, label808
  j label809
label808:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1624($s8)
label809:
  lw $t0, -1624($s8)
  lw $t1, -1620($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1636($s8)
  la $t0, -1480($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1640($s8)
  lw $t0, -1640($s8)
  lw $t1, 0($t0)
  sw $t1, -1644($s8)
  lw $t0, -1644($s8)
  li $t1, 0
  bne $t0, $t1, label810
  la $t0, -1484($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1648($s8)
  lw $t0, -1648($s8)
  lw $t1, 0($t0)
  sw $t1, -1652($s8)
  lw $t0, -1652($s8)
  li $t1, 0
  bne $t0, $t1, label810
  j label811
label810:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1636($s8)
label811:
  lw $t0, 12($s8)
  lw $t1, -4($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -1656($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1660($s8)
  lw $t0, -8($s8)
  li $t1, 0
  bne $t0, $t1, label813
  j label812
label812:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1660($s8)
label813:
  li $t0, 0
  move $t1, $t0
  sw $t1, -1664($s8)
  lw $t0, -16($s8)
  li $t1, -552523420
  ble $t0, $t1, label814
  j label815
label814:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1664($s8)
label815:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1664($s8)
  sw $t1, 4($sp)
  lw $t2, -1660($s8)
  sw $t2, 8($sp)
  lw $t3, -1656($s8)
  sw $t3, 12($sp)
  lw $t4, -1636($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1668($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1484($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1672($s8)
  lw $t0, -1672($s8)
  lw $t1, 0($t0)
  sw $t1, -1676($s8)
  lw $t0, -1676($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1680($s8)
  la $t0, -1480($s8)
  lw $t1, -1680($s8)
  add $t2, $t0, $t1
  sw $t2, -1684($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  lw $t2, -8($s8)
  sw $t2, 8($sp)
  lw $t3, -4($s8)
  sw $t3, 12($sp)
  lw $t4, 12($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1688($s8)
  lw $t0, -1688($s8)
  lw $t1, -1684($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1484($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1692($s8)
  lw $t0, -1692($s8)
  lw $t1, 0($t0)
  sw $t1, -1696($s8)
  lw $t0, -1696($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1700($s8)
  la $t0, -1480($s8)
  lw $t1, -1700($s8)
  add $t2, $t0, $t1
  sw $t2, -1704($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -20($s8)
  sw $t1, 4($sp)
  lw $t2, -16($s8)
  sw $t2, 8($sp)
  lw $t3, -8($s8)
  sw $t3, 12($sp)
  lw $t4, -4($s8)
  sw $t4, 16($sp)
  lw $t5, 12($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1708($s8)
  lw $t0, -1708($s8)
  lw $t1, -1704($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1484($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1712($s8)
  lw $t0, -1712($s8)
  lw $t1, 0($t0)
  sw $t1, -1716($s8)
  lw $t0, -1716($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1720($s8)
  la $t0, -1480($s8)
  lw $t1, -1720($s8)
  add $t2, $t0, $t1
  sw $t2, -1724($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -8($s8)
  sw $t1, 4($sp)
  lw $t2, -4($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1728($s8)
  lw $t0, -1728($s8)
  lw $t1, -1724($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1484($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1732($s8)
  lw $t0, -1732($s8)
  lw $t1, 0($t0)
  sw $t1, -1736($s8)
  lw $t0, -1736($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1740($s8)
  la $t0, -1480($s8)
  lw $t1, -1740($s8)
  add $t2, $t0, $t1
  sw $t2, -1744($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 58238055
  sw $t1, 4($sp)
  lw $t2, -4($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1748($s8)
  lw $t0, -1748($s8)
  lw $t1, -1744($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1484($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1752($s8)
  lw $t0, -1752($s8)
  lw $t1, 0($t0)
  sw $t1, -1756($s8)
  lw $t0, -1756($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1760($s8)
  la $t0, -1480($s8)
  lw $t1, -1760($s8)
  add $t2, $t0, $t1
  sw $t2, -1764($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -4385596
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1768($s8)
  lw $t0, -1768($s8)
  lw $t1, -1764($s8)
  sw $t0, 0($t1)
  la $t0, -1484($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1772($s8)
  lw $t0, -1772($s8)
  lw $t1, 0($t0)
  sw $t1, -1776($s8)
  lw $t0, -1776($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1780($s8)
  la $t0, -1480($s8)
  lw $t1, -1780($s8)
  add $t2, $t0, $t1
  sw $t2, -1784($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1788($s8)
  lw $t0, 12($s8)
  li $t1, 1337269735
  bne $t0, $t1, label816
  j label817
label816:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1788($s8)
label817:
  lw $t0, -1788($s8)
  lw $t1, -1784($s8)
  sw $t0, 0($t1)
  lw $t0, -1512($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label802
label803:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 12($s8)
  lw $t0, -964($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -968($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -972($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label772
label773:
  li $t0, 0
  move $t1, $t0
  sw $t1, -1792($s8)
  li $t0, -2059882513
  lw $t1, -4($s8)
  bne $t0, $t1, label818
  j label819
label818:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1792($s8)
label819:
  lw $t0, -1792($s8)
  move $t1, $t0
  sw $t1, 12($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1796($s8)
  lw $t0, -4($s8)
  lw $t1, -8($s8)
  bgt $t0, $t1, label820
  j label821
label820:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1796($s8)
label821:
  lw $t0, -1796($s8)
  move $t1, $t0
  sw $t1, 12($s8)
  li $t0, 1680335727
  move $t1, $t0
  sw $t1, 12($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  lw $t2, -8($s8)
  sw $t2, 8($sp)
  li $t3, -2093455875
  sw $t3, 12($sp)
  lw $t4, -4($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 12($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 12($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 12($s8)
  lw $t0, -4($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -8($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -16($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -20($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -24($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -28($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -32($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -36($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  li $t0, 0
  move $t1, $t0
  sw $t1, -1800($s8)
  lw $t0, -4($s8)
  lw $t1, -8($s8)
  ble $t0, $t1, label822
  j label823
label822:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1800($s8)
label823:
  lw $t0, -1800($s8)
  move $t1, $t0
  sw $t1, 12($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -1804($s8)
  lw $t0, -1804($s8)
  move $v0, $t0
  move $sp, $s8
  lw $s8, 0($sp)
  addi $sp, $sp, 4
  jr $ra

i_func_154:
  addi $sp, $sp, -4
  sw $s8, 0($sp)
  move $s8, $sp
  addi $sp, $sp, -4096
  lw $t0, 8($s8)
  li $t1, 0
  bgt $t0, $t1, label824
  li $t0, -53871331
  move $v0, $t0
  move $sp, $s8
  lw $s8, 0($sp)
  addi $sp, $sp, 4
  jr $ra
  j label825
label824:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label825:
  li $t0, 1914038852
  move $t1, $t0
  sw $t1, -8($s8)
  li $t0, 863962311
  move $t1, $t0
  sw $t1, -12($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -12($s8)
  sw $t1, 4($sp)
  lw $t2, -8($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  lw $t4, 16($s8)
  sw $t4, 16($sp)
  lw $t5, 20($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, 24($s8)
  lw $t0, 24($s8)
  move $t1, $t0
  sw $t1, -16($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -20($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -24($s8)
  li $t0, -1991679275
  li $t1, 0
  bne $t0, $t1, label826
  lw $t0, 20($s8)
  li $t1, 0
  bne $t0, $t1, label826
  j label827
label826:
  li $t0, 1
  move $t1, $t0
  sw $t1, -24($s8)
label827:
  lw $t0, -24($s8)
  move $t1, $t0
  sw $t1, 24($s8)
  lw $t0, 24($s8)
  move $t1, $t0
  sw $t1, -28($s8)
  lw $t0, -28($s8)
  lw $t1, -20($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -32($s8)
  li $t0, -764217893
  move $t1, $t0
  sw $t1, -36($s8)
  lw $t0, -36($s8)
  lw $t1, -32($s8)
  sw $t0, 0($t1)
  lw $t0, -32($s8)
  lw $t1, 0($t0)
  sw $t1, -40($s8)
  lw $t0, -40($s8)
  move $t1, $t0
  sw $t1, -44($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -48($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -52($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_mul
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -56($s8)
  lw $t0, -56($s8)
  lw $t1, -52($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -60($s8)
  li $t0, 1134335278
  move $t1, $t0
  sw $t1, -64($s8)
  lw $t0, -64($s8)
  lw $t1, -60($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -68($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -72($s8)
  lw $t0, 20($s8)
  lw $t1, 16($s8)
  beq $t0, $t1, label828
  j label829
label828:
  li $t0, 1
  move $t1, $t0
  sw $t1, -72($s8)
label829:
  lw $t0, -72($s8)
  lw $t1, -68($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -76($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -1993850537
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, 16($s8)
  sw $t3, 12($sp)
  lw $t4, 20($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -80($s8)
  lw $t0, -80($s8)
  lw $t1, -76($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -84($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -88($s8)
  lw $t0, 20($s8)
  li $t1, 0
  beq $t0, $t1, label831
  lw $t0, 16($s8)
  li $t1, 0
  bne $t0, $t1, label830
  j label831
label830:
  li $t0, 1
  move $t1, $t0
  sw $t1, -88($s8)
label831:
  lw $t0, -88($s8)
  lw $t1, -84($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -92($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -799876443
  sw $t1, 4($sp)
  lw $t2, -8($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  lw $t4, 16($s8)
  sw $t4, 16($sp)
  lw $t5, 20($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -96($s8)
  lw $t0, -96($s8)
  lw $t1, -92($s8)
  sw $t0, 0($t1)
label832:
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -100($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -104($s8)
  lw $t0, 20($s8)
  lw $t1, 16($s8)
  beq $t0, $t1, label834
  j label835
label834:
  li $t0, 1
  move $t1, $t0
  sw $t1, -104($s8)
label835:
  lw $t0, -104($s8)
  lw $t1, -100($s8)
  sw $t0, 0($t1)
  lw $t0, -100($s8)
  lw $t1, 0($t0)
  sw $t1, -108($s8)
  lw $t0, -108($s8)
  move $t1, $t0
  sw $t1, -112($s8)
  lw $t0, -112($s8)
  li $t1, 0
  beq $t0, $t1, label833
  li $t0, 0
  move $t1, $t0
  sw $t1, -116($s8)
  lw $t0, -48($s8)
  li $t1, 10
  blt $t0, $t1, label836
  j label837
label836:
  li $t0, 1
  move $t1, $t0
  sw $t1, -116($s8)
label837:
  lw $t0, -116($s8)
  li $t1, 0
  beq $t0, $t1, label833
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -124($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -128($s8)
  lw $t0, 20($s8)
  lw $t1, 16($s8)
  bgt $t0, $t1, label838
  j label839
label838:
  li $t0, 1
  move $t1, $t0
  sw $t1, -128($s8)
label839:
  lw $t0, -128($s8)
  lw $t1, -124($s8)
  sw $t0, 0($t1)
  lw $t0, -124($s8)
  lw $t1, 0($t0)
  sw $t1, -132($s8)
  lw $t0, -132($s8)
  move $t1, $t0
  sw $t1, -136($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -140($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  lw $t4, 24($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -144($s8)
  lw $t0, -144($s8)
  lw $t1, -140($s8)
  sw $t0, 0($t1)
  lw $t0, -140($s8)
  lw $t1, 0($t0)
  sw $t1, -148($s8)
  lw $t0, -148($s8)
  move $t1, $t0
  sw $t1, -152($s8)
  la $t0, -120($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -156($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -160($s8)
  lw $t0, 24($s8)
  lw $t1, 20($s8)
  add $t2, $t0, $t1
  sw $t2, -164($s8)
  lw $t0, -164($s8)
  lw $t1, -160($s8)
  sw $t0, 0($t1)
  lw $t0, -160($s8)
  lw $t1, 0($t0)
  sw $t1, -168($s8)
  lw $t0, -168($s8)
  move $t1, $t0
  sw $t1, -172($s8)
  lw $t0, -172($s8)
  lw $t1, -156($s8)
  sw $t0, 0($t1)
  li $t0, 0
  move $t1, $t0
  sw $t1, -176($s8)
  lw $t0, -48($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -48($s8)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -180($s8)
  lw $t0, -180($s8)
  lw $t1, 0($t0)
  sw $t1, -184($s8)
  la $t0, -120($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -188($s8)
  lw $t0, -188($s8)
  lw $t1, 0($t0)
  sw $t1, -192($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  lw $t2, -192($s8)
  sw $t2, 8($sp)
  lw $t3, -184($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -196($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -200($s8)
  lw $t0, 20($s8)
  lw $t1, 16($s8)
  blt $t0, $t1, label840
  j label841
label840:
  li $t0, 1
  move $t1, $t0
  sw $t1, -200($s8)
label841:
  li $t0, 0
  move $t1, $t0
  sw $t1, -204($s8)
  lw $t0, 12($s8)
  lw $t1, -8($s8)
  bgt $t0, $t1, label842
  j label843
label842:
  li $t0, 1
  move $t1, $t0
  sw $t1, -204($s8)
label843:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -204($s8)
  sw $t1, 4($sp)
  lw $t2, -200($s8)
  sw $t2, 8($sp)
  lw $t3, -196($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -208($s8)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -212($s8)
  lw $t0, -212($s8)
  lw $t1, 0($t0)
  sw $t1, -216($s8)
  la $t0, -120($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -220($s8)
  lw $t0, -220($s8)
  lw $t1, 0($t0)
  sw $t1, -224($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, 24($s8)
  sw $t2, 8($sp)
  lw $t3, -224($s8)
  sw $t3, 12($sp)
  lw $t4, -216($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -228($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -228($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -232($s8)
label844:
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -236($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -240($s8)
  li $t0, -1292748220
  lw $t1, 24($s8)
  bgt $t0, $t1, label846
  j label847
label846:
  li $t0, 1
  move $t1, $t0
  sw $t1, -240($s8)
label847:
  lw $t0, -240($s8)
  lw $t1, -236($s8)
  sw $t0, 0($t1)
  lw $t0, -236($s8)
  lw $t1, 0($t0)
  sw $t1, -244($s8)
  lw $t0, -244($s8)
  move $t1, $t0
  sw $t1, -248($s8)
  lw $t0, -248($s8)
  li $t1, 0
  beq $t0, $t1, label845
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -252($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -256($s8)
  lw $t0, -256($s8)
  lw $t1, 0($t0)
  sw $t1, -260($s8)
  lw $t0, -260($s8)
  li $t1, 0
  beq $t0, $t1, label849
  la $t0, -120($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -264($s8)
  lw $t0, -264($s8)
  lw $t1, 0($t0)
  sw $t1, -268($s8)
  lw $t0, -268($s8)
  li $t1, 0
  bne $t0, $t1, label848
  j label849
label848:
  li $t0, 1
  move $t1, $t0
  sw $t1, -252($s8)
label849:
  lw $t0, 24($s8)
  lw $t1, 20($s8)
  mul $t2, $t0, $t1
  sw $t2, -272($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -276($s8)
  lw $t0, 16($s8)
  lw $t1, 12($s8)
  bgt $t0, $t1, label850
  j label851
label850:
  li $t0, 1
  move $t1, $t0
  sw $t1, -276($s8)
label851:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -276($s8)
  sw $t1, 4($sp)
  lw $t2, -272($s8)
  sw $t2, 8($sp)
  lw $t3, -252($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -280($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -120($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -284($s8)
  lw $t0, -284($s8)
  lw $t1, 0($t0)
  sw $t1, -288($s8)
  lw $t0, -288($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -292($s8)
  la $t0, -4($s8)
  lw $t1, -292($s8)
  add $t2, $t0, $t1
  sw $t2, -296($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 16($s8)
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  li $t3, -220949137
  sw $t3, 12($sp)
  li $t4, 702082081
  sw $t4, 16($sp)
  lw $t5, 24($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -300($s8)
  lw $t0, -300($s8)
  lw $t1, -296($s8)
  sw $t0, 0($t1)
  lw $t0, -296($s8)
  lw $t1, 0($t0)
  sw $t1, -304($s8)
  lw $t0, -304($s8)
  move $t1, $t0
  sw $t1, -308($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -312($s8)
  la $t0, -120($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -316($s8)
  lw $t0, -316($s8)
  lw $t1, 0($t0)
  sw $t1, -320($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, 24($s8)
  sw $t2, 8($sp)
  li $t3, -1518738687
  sw $t3, 12($sp)
  lw $t4, -320($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -324($s8)
  lw $t0, -324($s8)
  lw $t1, -312($s8)
  sw $t0, 0($t1)
  lw $t0, -312($s8)
  lw $t1, 0($t0)
  sw $t1, -328($s8)
  lw $t0, -328($s8)
  move $t1, $t0
  sw $t1, -332($s8)
  la $t0, -120($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -336($s8)
  lw $t0, -336($s8)
  lw $t1, 0($t0)
  sw $t1, -340($s8)
  lw $t0, -340($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -344($s8)
  la $t0, -4($s8)
  lw $t1, -344($s8)
  add $t2, $t0, $t1
  sw $t2, -348($s8)
  lw $t0, 20($s8)
  move $t1, $t0
  sw $t1, 24($s8)
  lw $t0, 24($s8)
  move $t1, $t0
  sw $t1, -352($s8)
  lw $t0, -352($s8)
  lw $t1, -348($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -356($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -360($s8)
  la $t0, -120($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -364($s8)
  lw $t0, -364($s8)
  lw $t1, 0($t0)
  sw $t1, -368($s8)
  lw $t0, -368($s8)
  lw $t1, 24($s8)
  bne $t0, $t1, label852
  j label853
label852:
  li $t0, 1
  move $t1, $t0
  sw $t1, -360($s8)
label853:
  lw $t0, -360($s8)
  lw $t1, -356($s8)
  sw $t0, 0($t1)
  la $t0, -120($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -372($s8)
  lw $t0, -372($s8)
  lw $t1, 0($t0)
  sw $t1, -376($s8)
  lw $t0, -376($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -380($s8)
  la $t0, -4($s8)
  lw $t1, -380($s8)
  add $t2, $t0, $t1
  sw $t2, -384($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -388($s8)
  li $t0, 405079778
  lw $t1, 24($s8)
  blt $t0, $t1, label854
  j label855
label854:
  li $t0, 1
  move $t1, $t0
  sw $t1, -388($s8)
label855:
  lw $t0, -388($s8)
  lw $t1, -384($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -120($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -392($s8)
  lw $t0, -392($s8)
  lw $t1, 0($t0)
  sw $t1, -396($s8)
  lw $t0, -396($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -400($s8)
  la $t0, -4($s8)
  lw $t1, -400($s8)
  add $t2, $t0, $t1
  sw $t2, -404($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -1149274913
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -408($s8)
  lw $t0, -408($s8)
  lw $t1, -404($s8)
  sw $t0, 0($t1)
  la $t0, -120($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -412($s8)
  lw $t0, -412($s8)
  lw $t1, 0($t0)
  sw $t1, -416($s8)
  lw $t0, -416($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -420($s8)
  la $t0, -4($s8)
  lw $t1, -420($s8)
  add $t2, $t0, $t1
  sw $t2, -424($s8)
  lw $t0, 24($s8)
  move $t1, $t0
  sw $t1, -428($s8)
  lw $t0, -428($s8)
  lw $t1, -424($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -120($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -432($s8)
  lw $t0, -432($s8)
  lw $t1, 0($t0)
  sw $t1, -436($s8)
  lw $t0, -436($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -440($s8)
  la $t0, -4($s8)
  lw $t1, -440($s8)
  add $t2, $t0, $t1
  sw $t2, -444($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -1144614242
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  lw $t3, 24($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -448($s8)
  lw $t0, -448($s8)
  lw $t1, -444($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -120($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -452($s8)
  lw $t0, -452($s8)
  lw $t1, 0($t0)
  sw $t1, -456($s8)
  lw $t0, -456($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -460($s8)
  la $t0, -4($s8)
  lw $t1, -460($s8)
  add $t2, $t0, $t1
  sw $t2, -464($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  lw $t4, 24($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -468($s8)
  lw $t0, -468($s8)
  lw $t1, -464($s8)
  sw $t0, 0($t1)
  lw $t0, -280($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -308($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -332($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label844
label845:
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -472($s8)
  lw $t0, 24($s8)
  lw $t1, 20($s8)
  add $t2, $t0, $t1
  sw $t2, -476($s8)
  lw $t0, -476($s8)
  lw $t1, -472($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -480($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  lw $t4, 24($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -484($s8)
  lw $t0, -484($s8)
  lw $t1, -480($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -488($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -533987997
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -492($s8)
  lw $t0, -492($s8)
  lw $t1, -488($s8)
  sw $t0, 0($t1)
  lw $t0, -136($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -152($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label832
label833:
  lw $t0, -8($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -12($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -16($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -44($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -496($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -500($s8)
  lw $t0, -500($s8)
  lw $t1, -496($s8)
  sw $t0, 0($t1)
  lw $t0, -496($s8)
  lw $t1, 0($t0)
  sw $t1, -504($s8)
  lw $t0, -504($s8)
  move $t1, $t0
  sw $t1, -508($s8)
  lw $t0, -508($s8)
  move $v0, $t0
  move $sp, $s8
  lw $s8, 0($sp)
  addi $sp, $sp, 4
  jr $ra

i_func_155:
  addi $sp, $sp, -4
  sw $s8, 0($sp)
  move $s8, $sp
  addi $sp, $sp, -4096
  lw $t0, 16($s8)
  li $t1, 0
  bgt $t0, $t1, label856
  li $t0, 982171747
  move $v0, $t0
  move $sp, $s8
  lw $s8, 0($sp)
  addi $sp, $sp, 4
  jr $ra
  j label857
label856:
  lw $t0, 16($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
label857:
  li $t0, 1188866827
  move $t1, $t0
  sw $t1, -24($s8)
  li $t0, -1378650622
  move $t1, $t0
  sw $t1, -28($s8)
  lw $t0, 16($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
  la $t0, -8($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -32($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -36($s8)
  lw $t0, 32($s8)
  li $t1, 0
  beq $t0, $t1, label859
  lw $t0, 28($s8)
  li $t1, 0
  bne $t0, $t1, label858
  j label859
label858:
  li $t0, 1
  move $t1, $t0
  sw $t1, -36($s8)
label859:
  li $t0, 0
  move $t1, $t0
  sw $t1, -40($s8)
  lw $t0, 24($s8)
  lw $t1, 20($s8)
  beq $t0, $t1, label860
  j label861
label860:
  li $t0, 1
  move $t1, $t0
  sw $t1, -40($s8)
label861:
  li $t0, 0
  move $t1, $t0
  sw $t1, -44($s8)
  lw $t0, -24($s8)
  lw $t1, -28($s8)
  beq $t0, $t1, label862
  j label863
label862:
  li $t0, 1
  move $t1, $t0
  sw $t1, -44($s8)
label863:
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, -44($s8)
  sw $t1, 4($sp)
  lw $t2, -40($s8)
  sw $t2, 8($sp)
  lw $t3, -36($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -48($s8)
  lw $t0, -48($s8)
  lw $t1, -32($s8)
  sw $t0, 0($t1)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -52($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -56($s8)
  lw $t0, 28($s8)
  lw $t1, 24($s8)
  bne $t0, $t1, label864
  j label865
label864:
  li $t0, 1
  move $t1, $t0
  sw $t1, -56($s8)
label865:
  lw $t0, -56($s8)
  move $t1, $t0
  sw $t1, 32($s8)
  lw $t0, 32($s8)
  move $t1, $t0
  sw $t1, -60($s8)
  lw $t0, -60($s8)
  lw $t1, -52($s8)
  sw $t0, 0($t1)
  lw $t0, 16($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -64($s8)
  la $t0, -8($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -68($s8)
  lw $t0, 32($s8)
  move $t1, $t0
  sw $t1, -72($s8)
  lw $t0, -72($s8)
  lw $t1, -68($s8)
  sw $t0, 0($t1)
  lw $t0, -68($s8)
  lw $t1, 0($t0)
  sw $t1, -76($s8)
  lw $t0, -76($s8)
  move $t1, $t0
  sw $t1, -80($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, -80($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -84($s8)
  lw $t0, -84($s8)
  lw $t1, -64($s8)
  sw $t0, 0($t1)
  lw $t0, 16($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
  la $t0, -20($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -88($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -92($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, 24($s8)
  sw $t1, 4($sp)
  lw $t2, 28($s8)
  sw $t2, 8($sp)
  li $t3, -1246311589
  sw $t3, 12($sp)
  lw $t4, 32($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -96($s8)
  lw $t0, -96($s8)
  lw $t1, -92($s8)
  sw $t0, 0($t1)
  lw $t0, -92($s8)
  lw $t1, 0($t0)
  sw $t1, -100($s8)
  lw $t0, -100($s8)
  move $t1, $t0
  sw $t1, -104($s8)
  lw $t0, -104($s8)
  lw $t1, -88($s8)
  sw $t0, 0($t1)
  la $t0, -20($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -108($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -112($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -116($s8)
  lw $t0, 32($s8)
  lw $t1, 28($s8)
  bge $t0, $t1, label866
  j label867
label866:
  li $t0, 1
  move $t1, $t0
  sw $t1, -116($s8)
label867:
  lw $t0, -116($s8)
  lw $t1, -112($s8)
  sw $t0, 0($t1)
  lw $t0, -112($s8)
  lw $t1, 0($t0)
  sw $t1, -120($s8)
  lw $t0, -120($s8)
  move $t1, $t0
  sw $t1, -124($s8)
  lw $t0, -124($s8)
  lw $t1, -108($s8)
  sw $t0, 0($t1)
  li $t0, 0
  move $t1, $t0
  sw $t1, -128($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -132($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -136($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -140($s8)
  lw $t0, -140($s8)
  lw $t1, 0($t0)
  sw $t1, -144($s8)
  la $t0, -20($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -148($s8)
  lw $t0, -148($s8)
  lw $t1, 0($t0)
  sw $t1, -152($s8)
  lw $t0, -144($s8)
  lw $t1, -152($s8)
  bgt $t0, $t1, label868
  j label869
label868:
  li $t0, 1
  move $t1, $t0
  sw $t1, -136($s8)
label869:
  lw $t0, -136($s8)
  lw $t1, -132($s8)
  sw $t0, 0($t1)
  lw $t0, 16($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -156($s8)
  lw $t0, -156($s8)
  lw $t1, 0($t0)
  sw $t1, -160($s8)
  lw $t0, -160($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -164($s8)
  la $t0, -8($s8)
  lw $t1, -164($s8)
  add $t2, $t0, $t1
  sw $t2, -168($s8)
  la $t0, -20($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -172($s8)
  lw $t0, -172($s8)
  lw $t1, 0($t0)
  sw $t1, -176($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, -176($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -180($s8)
  lw $t0, -180($s8)
  lw $t1, -168($s8)
  sw $t0, 0($t1)
  lw $t0, 16($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
label870:
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -184($s8)
  lw $t0, -184($s8)
  lw $t1, 0($t0)
  sw $t1, -188($s8)
  la $t0, -8($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -192($s8)
  lw $t0, -192($s8)
  lw $t1, 0($t0)
  sw $t1, -196($s8)
  la $t0, -20($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -200($s8)
  lw $t0, -200($s8)
  lw $t1, 0($t0)
  sw $t1, -204($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, 32($s8)
  sw $t1, 4($sp)
  lw $t2, -204($s8)
  sw $t2, 8($sp)
  lw $t3, -196($s8)
  sw $t3, 12($sp)
  lw $t4, -188($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -208($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, -208($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -212($s8)
  lw $t0, -212($s8)
  li $t1, 0
  beq $t0, $t1, label871
  li $t0, 0
  move $t1, $t0
  sw $t1, -216($s8)
  lw $t0, -128($s8)
  li $t1, 10
  blt $t0, $t1, label872
  j label873
label872:
  li $t0, 1
  move $t1, $t0
  sw $t1, -216($s8)
label873:
  lw $t0, -216($s8)
  li $t1, 0
  beq $t0, $t1, label871
  lw $t0, 16($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
  la $t0, -8($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -232($s8)
  la $t0, -20($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -236($s8)
  lw $t0, -236($s8)
  lw $t1, 0($t0)
  sw $t1, -240($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, -240($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -244($s8)
  lw $t0, -244($s8)
  lw $t1, -232($s8)
  sw $t0, 0($t1)
  lw $t0, -232($s8)
  lw $t1, 0($t0)
  sw $t1, -248($s8)
  lw $t0, -248($s8)
  move $t1, $t0
  sw $t1, -252($s8)
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -256($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -260($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -264($s8)
  la $t0, -20($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -268($s8)
  lw $t0, -268($s8)
  lw $t1, 0($t0)
  sw $t1, -272($s8)
  li $t0, -1099639304
  lw $t1, -272($s8)
  beq $t0, $t1, label874
  j label875
label874:
  li $t0, 1
  move $t1, $t0
  sw $t1, -264($s8)
label875:
  lw $t0, -264($s8)
  lw $t1, -260($s8)
  sw $t0, 0($t1)
  lw $t0, -260($s8)
  lw $t1, 0($t0)
  sw $t1, -276($s8)
  lw $t0, -276($s8)
  move $t1, $t0
  sw $t1, -280($s8)
  lw $t0, -280($s8)
  lw $t1, -256($s8)
  sw $t0, 0($t1)
  la $t0, -228($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -284($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -288($s8)
  li $t0, 1052392896
  move $t1, $t0
  sw $t1, -292($s8)
  lw $t0, -292($s8)
  lw $t1, -288($s8)
  sw $t0, 0($t1)
  lw $t0, -288($s8)
  lw $t1, 0($t0)
  sw $t1, -296($s8)
  lw $t0, -296($s8)
  move $t1, $t0
  sw $t1, -300($s8)
  lw $t0, -300($s8)
  lw $t1, -284($s8)
  sw $t0, 0($t1)
  la $t0, -228($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -304($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -308($s8)
  li $t0, -1244430133
  move $t1, $t0
  sw $t1, -312($s8)
  lw $t0, -312($s8)
  lw $t1, -308($s8)
  sw $t0, 0($t1)
  lw $t0, -308($s8)
  lw $t1, 0($t0)
  sw $t1, -316($s8)
  lw $t0, -316($s8)
  move $t1, $t0
  sw $t1, -320($s8)
  lw $t0, -320($s8)
  lw $t1, -304($s8)
  sw $t0, 0($t1)
  li $t0, 0
  move $t1, $t0
  sw $t1, -324($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -328($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -332($s8)
  lw $t0, -128($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -128($s8)
  lw $t0, 16($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
label876:
  li $t0, 0
  move $t1, $t0
  sw $t1, -336($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -340($s8)
  lw $t0, -340($s8)
  lw $t1, 0($t0)
  sw $t1, -344($s8)
  lw $t0, -344($s8)
  li $t1, 0
  bne $t0, $t1, label878
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -348($s8)
  lw $t0, -348($s8)
  lw $t1, 0($t0)
  sw $t1, -352($s8)
  lw $t0, -352($s8)
  li $t1, 0
  bne $t0, $t1, label878
  j label879
label878:
  li $t0, 1
  move $t1, $t0
  sw $t1, -336($s8)
label879:
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, -336($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -356($s8)
  lw $t0, -356($s8)
  li $t1, 0
  beq $t0, $t1, label877
  li $t0, 0
  move $t1, $t0
  sw $t1, -360($s8)
  lw $t0, -324($s8)
  li $t1, 10
  blt $t0, $t1, label880
  j label881
label880:
  li $t0, 1
  move $t1, $t0
  sw $t1, -360($s8)
label881:
  lw $t0, -360($s8)
  li $t1, 0
  beq $t0, $t1, label877
  lw $t0, 16($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
  la $t0, -368($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -384($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -388($s8)
  la $t0, -20($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -392($s8)
  lw $t0, -392($s8)
  lw $t1, 0($t0)
  sw $t1, -396($s8)
  la $t0, -228($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -400($s8)
  lw $t0, -400($s8)
  lw $t1, 0($t0)
  sw $t1, -404($s8)
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -408($s8)
  lw $t0, -408($s8)
  lw $t1, 0($t0)
  sw $t1, -412($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  li $t1, -257141477
  sw $t1, 4($sp)
  lw $t2, -412($s8)
  sw $t2, 8($sp)
  lw $t3, -404($s8)
  sw $t3, 12($sp)
  lw $t4, -396($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -416($s8)
  lw $t0, -416($s8)
  lw $t1, -388($s8)
  sw $t0, 0($t1)
  lw $t0, -388($s8)
  lw $t1, 0($t0)
  sw $t1, -420($s8)
  lw $t0, -420($s8)
  move $t1, $t0
  sw $t1, -424($s8)
  lw $t0, -424($s8)
  lw $t1, -384($s8)
  sw $t0, 0($t1)
  la $t0, -368($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -428($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -432($s8)
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -436($s8)
  lw $t0, -436($s8)
  lw $t1, 0($t0)
  sw $t1, -440($s8)
  lw $t0, -440($s8)
  lw $t1, -432($s8)
  sw $t0, 0($t1)
  lw $t0, -432($s8)
  lw $t1, 0($t0)
  sw $t1, -444($s8)
  lw $t0, -444($s8)
  move $t1, $t0
  sw $t1, -448($s8)
  lw $t0, -448($s8)
  lw $t1, -428($s8)
  sw $t0, 0($t1)
  la $t0, -376($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -452($s8)
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -456($s8)
  lw $t0, -456($s8)
  lw $t1, 0($t0)
  sw $t1, -460($s8)
  lw $t0, -460($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -464($s8)
  la $t0, -12($s8)
  lw $t1, -464($s8)
  add $t2, $t0, $t1
  sw $t2, -468($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -472($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -476($s8)
  lw $t0, -476($s8)
  lw $t1, 0($t0)
  sw $t1, -480($s8)
  la $t0, -20($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -484($s8)
  lw $t0, -484($s8)
  lw $t1, 0($t0)
  sw $t1, -488($s8)
  lw $t0, -480($s8)
  lw $t1, -488($s8)
  beq $t0, $t1, label882
  j label883
label882:
  li $t0, 1
  move $t1, $t0
  sw $t1, -472($s8)
label883:
  lw $t0, -472($s8)
  lw $t1, -468($s8)
  sw $t0, 0($t1)
  lw $t0, -468($s8)
  lw $t1, 0($t0)
  sw $t1, -492($s8)
  lw $t0, -492($s8)
  move $t1, $t0
  sw $t1, -496($s8)
  lw $t0, -496($s8)
  lw $t1, -452($s8)
  sw $t0, 0($t1)
  lw $t0, 16($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
  la $t0, -376($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -500($s8)
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -504($s8)
  lw $t0, -504($s8)
  lw $t1, 0($t0)
  sw $t1, -508($s8)
  lw $t0, -508($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -512($s8)
  la $t0, -12($s8)
  lw $t1, -512($s8)
  add $t2, $t0, $t1
  sw $t2, -516($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -520($s8)
  lw $t0, -520($s8)
  lw $t1, 0($t0)
  sw $t1, -524($s8)
  la $t0, -20($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -528($s8)
  lw $t0, -528($s8)
  lw $t1, 0($t0)
  sw $t1, -532($s8)
  la $t0, -228($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -536($s8)
  lw $t0, -536($s8)
  lw $t1, 0($t0)
  sw $t1, -540($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, -540($s8)
  sw $t1, 4($sp)
  lw $t2, -532($s8)
  sw $t2, 8($sp)
  li $t3, -1002560035
  sw $t3, 12($sp)
  lw $t4, -524($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_155
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -544($s8)
  lw $t0, -544($s8)
  lw $t1, -516($s8)
  sw $t0, 0($t1)
  lw $t0, -516($s8)
  lw $t1, 0($t0)
  sw $t1, -548($s8)
  lw $t0, -548($s8)
  move $t1, $t0
  sw $t1, -552($s8)
  lw $t0, -552($s8)
  lw $t1, -500($s8)
  sw $t0, 0($t1)
  la $t0, -380($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -556($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -560($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -564($s8)
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -568($s8)
  lw $t0, -568($s8)
  lw $t1, 0($t0)
  sw $t1, -572($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -576($s8)
  lw $t0, -576($s8)
  lw $t1, 0($t0)
  sw $t1, -580($s8)
  lw $t0, -572($s8)
  lw $t1, -580($s8)
  ble $t0, $t1, label884
  j label885
label884:
  li $t0, 1
  move $t1, $t0
  sw $t1, -564($s8)
label885:
  lw $t0, -564($s8)
  lw $t1, -560($s8)
  sw $t0, 0($t1)
  lw $t0, -560($s8)
  lw $t1, 0($t0)
  sw $t1, -584($s8)
  lw $t0, -584($s8)
  move $t1, $t0
  sw $t1, -588($s8)
  lw $t0, -588($s8)
  lw $t1, -556($s8)
  sw $t0, 0($t1)
  lw $t0, -324($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -324($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -592($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -596($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -600($s8)
  lw $t0, -600($s8)
  lw $t1, 0($t0)
  sw $t1, -604($s8)
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -608($s8)
  lw $t0, -608($s8)
  lw $t1, 0($t0)
  sw $t1, -612($s8)
  lw $t0, -604($s8)
  lw $t1, -612($s8)
  blt $t0, $t1, label886
  j label887
label886:
  li $t0, 1
  move $t1, $t0
  sw $t1, -596($s8)
label887:
  lw $t0, -596($s8)
  lw $t1, -592($s8)
  sw $t0, 0($t1)
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -616($s8)
  lw $t0, -616($s8)
  lw $t1, 0($t0)
  sw $t1, -620($s8)
  lw $t0, -620($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -624($s8)
  la $t0, -12($s8)
  lw $t1, -624($s8)
  add $t2, $t0, $t1
  sw $t2, -628($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -632($s8)
  la $t0, -8($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -636($s8)
  lw $t0, -636($s8)
  lw $t1, 0($t0)
  sw $t1, -640($s8)
  la $t0, -380($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -644($s8)
  lw $t0, -644($s8)
  lw $t1, 0($t0)
  sw $t1, -648($s8)
  lw $t0, -640($s8)
  lw $t1, -648($s8)
  blt $t0, $t1, label888
  j label889
label888:
  li $t0, 1
  move $t1, $t0
  sw $t1, -632($s8)
label889:
  lw $t0, -632($s8)
  lw $t1, -628($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -652($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -656($s8)
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -660($s8)
  lw $t0, -660($s8)
  lw $t1, 0($t0)
  sw $t1, -664($s8)
  lw $t0, -664($s8)
  li $t1, 690416670
  beq $t0, $t1, label890
  j label891
label890:
  li $t0, 1
  move $t1, $t0
  sw $t1, -656($s8)
label891:
  lw $t0, -656($s8)
  lw $t1, -652($s8)
  sw $t0, 0($t1)
  lw $t0, 16($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -668($s8)
  lw $t0, -668($s8)
  lw $t1, 0($t0)
  sw $t1, -672($s8)
  lw $t0, -672($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -676($s8)
  la $t0, -12($s8)
  lw $t1, -676($s8)
  add $t2, $t0, $t1
  sw $t2, -680($s8)
  la $t0, -380($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -684($s8)
  lw $t0, -684($s8)
  lw $t1, 0($t0)
  sw $t1, -688($s8)
  la $t0, -8($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -692($s8)
  lw $t0, -692($s8)
  lw $t1, 0($t0)
  sw $t1, -696($s8)
  la $t0, -20($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -700($s8)
  lw $t0, -700($s8)
  lw $t1, 0($t0)
  sw $t1, -704($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  li $t1, -437199781
  sw $t1, 4($sp)
  lw $t2, -704($s8)
  sw $t2, 8($sp)
  lw $t3, -696($s8)
  sw $t3, 12($sp)
  lw $t4, -688($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_155
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -708($s8)
  lw $t0, -708($s8)
  lw $t1, -680($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -712($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -716($s8)
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -720($s8)
  lw $t0, -720($s8)
  lw $t1, 0($t0)
  sw $t1, -724($s8)
  la $t0, -380($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -728($s8)
  lw $t0, -728($s8)
  lw $t1, 0($t0)
  sw $t1, -732($s8)
  lw $t0, -724($s8)
  lw $t1, -732($s8)
  bgt $t0, $t1, label892
  j label893
label892:
  li $t0, 1
  move $t1, $t0
  sw $t1, -716($s8)
label893:
  lw $t0, -716($s8)
  lw $t1, -712($s8)
  sw $t0, 0($t1)
  lw $t0, 16($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -736($s8)
  lw $t0, -736($s8)
  lw $t1, 0($t0)
  sw $t1, -740($s8)
  lw $t0, -740($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -744($s8)
  la $t0, -12($s8)
  lw $t1, -744($s8)
  add $t2, $t0, $t1
  sw $t2, -748($s8)
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -752($s8)
  lw $t0, -752($s8)
  lw $t1, 0($t0)
  sw $t1, -756($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, -756($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -760($s8)
  lw $t0, -760($s8)
  lw $t1, -748($s8)
  sw $t0, 0($t1)
  lw $t0, 16($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -764($s8)
  lw $t0, -764($s8)
  lw $t1, 0($t0)
  sw $t1, -768($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -772($s8)
  lw $t0, -772($s8)
  lw $t1, 0($t0)
  sw $t1, -776($s8)
  la $t0, -20($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -780($s8)
  lw $t0, -780($s8)
  lw $t1, 0($t0)
  sw $t1, -784($s8)
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -788($s8)
  lw $t0, -788($s8)
  lw $t1, 0($t0)
  sw $t1, -792($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, -792($s8)
  sw $t1, 4($sp)
  lw $t2, -784($s8)
  sw $t2, 8($sp)
  lw $t3, -776($s8)
  sw $t3, 12($sp)
  lw $t4, -768($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_155
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -796($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -800($s8)
  la $t0, -228($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -804($s8)
  lw $t0, -804($s8)
  lw $t1, 0($t0)
  sw $t1, -808($s8)
  la $t0, -380($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -812($s8)
  lw $t0, -812($s8)
  lw $t1, 0($t0)
  sw $t1, -816($s8)
  lw $t0, -808($s8)
  lw $t1, -816($s8)
  ble $t0, $t1, label894
  j label895
label894:
  li $t0, 1
  move $t1, $t0
  sw $t1, -800($s8)
label895:
  la $t0, -368($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -820($s8)
  lw $t0, -820($s8)
  lw $t1, 0($t0)
  sw $t1, -824($s8)
  la $t0, -376($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -828($s8)
  lw $t0, -828($s8)
  lw $t1, 0($t0)
  sw $t1, -832($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, 32($s8)
  sw $t1, 4($sp)
  lw $t2, -832($s8)
  sw $t2, 8($sp)
  lw $t3, -824($s8)
  sw $t3, 12($sp)
  li $t4, 1124846846
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -836($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, -836($s8)
  sw $t1, 4($sp)
  lw $t2, -800($s8)
  sw $t2, 8($sp)
  lw $t3, -796($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -840($s8)
  lw $t0, 16($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -844($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -848($s8)
  lw $t0, -848($s8)
  lw $t1, 0($t0)
  sw $t1, -852($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -856($s8)
  lw $t0, -856($s8)
  lw $t1, 0($t0)
  sw $t1, -860($s8)
  lw $t0, -852($s8)
  lw $t1, -860($s8)
  beq $t0, $t1, label896
  j label897
label896:
  li $t0, 1
  move $t1, $t0
  sw $t1, -844($s8)
label897:
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -864($s8)
  lw $t0, -864($s8)
  lw $t1, 0($t0)
  sw $t1, -868($s8)
  la $t0, -20($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -872($s8)
  lw $t0, -872($s8)
  lw $t1, 0($t0)
  sw $t1, -876($s8)
  la $t0, -228($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -880($s8)
  lw $t0, -880($s8)
  lw $t1, 0($t0)
  sw $t1, -884($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, -884($s8)
  sw $t1, 4($sp)
  lw $t2, -876($s8)
  sw $t2, 8($sp)
  lw $t3, -868($s8)
  sw $t3, 12($sp)
  li $t4, 865483928
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -888($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -892($s8)
  la $t0, -380($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -896($s8)
  lw $t0, -896($s8)
  lw $t1, 0($t0)
  sw $t1, -900($s8)
  la $t0, -368($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -904($s8)
  lw $t0, -904($s8)
  lw $t1, 0($t0)
  sw $t1, -908($s8)
  lw $t0, -900($s8)
  lw $t1, -908($s8)
  bne $t0, $t1, label898
  j label899
label898:
  li $t0, 1
  move $t1, $t0
  sw $t1, -892($s8)
label899:
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, -892($s8)
  sw $t1, 4($sp)
  li $t2, 1502081424
  sw $t2, 8($sp)
  lw $t3, -888($s8)
  sw $t3, 12($sp)
  lw $t4, -844($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -912($s8)
  lw $t0, 16($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -916($s8)
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -920($s8)
  lw $t0, -920($s8)
  lw $t1, 0($t0)
  sw $t1, -924($s8)
  la $t0, -20($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -928($s8)
  lw $t0, -928($s8)
  lw $t1, 0($t0)
  sw $t1, -932($s8)
  la $t0, -228($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -936($s8)
  lw $t0, -936($s8)
  lw $t1, 0($t0)
  sw $t1, -940($s8)
  la $t0, -368($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -944($s8)
  lw $t0, -944($s8)
  lw $t1, 0($t0)
  sw $t1, -948($s8)
  la $t0, -380($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -952($s8)
  lw $t0, -952($s8)
  lw $t1, 0($t0)
  sw $t1, -956($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, -956($s8)
  sw $t1, 4($sp)
  lw $t2, -948($s8)
  sw $t2, 8($sp)
  lw $t3, -940($s8)
  sw $t3, 12($sp)
  lw $t4, -932($s8)
  sw $t4, 16($sp)
  lw $t5, -924($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -960($s8)
  lw $t0, -960($s8)
  lw $t1, -916($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -964($s8)
  la $t0, -20($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -968($s8)
  lw $t0, -968($s8)
  lw $t1, 0($t0)
  sw $t1, -972($s8)
  la $t0, -228($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -976($s8)
  lw $t0, -976($s8)
  lw $t1, 0($t0)
  sw $t1, -980($s8)
  lw $t0, -972($s8)
  lw $t1, -980($s8)
  add $t2, $t0, $t1
  sw $t2, -984($s8)
  lw $t0, -984($s8)
  lw $t1, -964($s8)
  sw $t0, 0($t1)
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -988($s8)
  lw $t0, -988($s8)
  lw $t1, 0($t0)
  sw $t1, -992($s8)
  lw $t0, -992($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -996($s8)
  la $t0, -12($s8)
  lw $t1, -996($s8)
  add $t2, $t0, $t1
  sw $t2, -1000($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1004($s8)
  li $t0, -1168564915
  li $t1, -1501357611
  bne $t0, $t1, label900
  j label901
label900:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1004($s8)
label901:
  lw $t0, -1004($s8)
  lw $t1, -1000($s8)
  sw $t0, 0($t1)
  j label876
label877:
  lw $t0, 16($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
  la $t0, -8($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1008($s8)
  lw $t0, -1008($s8)
  lw $t1, 0($t0)
  sw $t1, -1012($s8)
  lw $t0, -1012($s8)
  sw $t0, 0($sp)
  li $t1, -344580289
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_sub
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1016($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1020($s8)
  la $t0, -20($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1024($s8)
  lw $t0, -1024($s8)
  lw $t1, 0($t0)
  sw $t1, -1028($s8)
  lw $t0, -1028($s8)
  li $t1, 287155417
  ble $t0, $t1, label902
  j label903
label902:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1020($s8)
label903:
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1032($s8)
  lw $t0, -1032($s8)
  lw $t1, 0($t0)
  sw $t1, -1036($s8)
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1040($s8)
  lw $t0, -1040($s8)
  lw $t1, 0($t0)
  sw $t1, -1044($s8)
  la $t0, -228($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1048($s8)
  lw $t0, -1048($s8)
  lw $t1, 0($t0)
  sw $t1, -1052($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, 32($s8)
  sw $t1, 4($sp)
  lw $t2, -1052($s8)
  sw $t2, 8($sp)
  lw $t3, -1044($s8)
  sw $t3, 12($sp)
  lw $t4, -1036($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1056($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, -1056($s8)
  sw $t1, 4($sp)
  lw $t2, -1020($s8)
  sw $t2, 8($sp)
  lw $t3, -1016($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1060($s8)
label904:
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1064($s8)
  la $t0, -20($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1068($s8)
  lw $t0, -1068($s8)
  lw $t1, 0($t0)
  sw $t1, -1072($s8)
  lw $t0, -1072($s8)
  sw $t0, 0($sp)
  li $t1, 2510838
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_div
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1076($s8)
  lw $t0, -1076($s8)
  lw $t1, -1064($s8)
  sw $t0, 0($t1)
  lw $t0, -1064($s8)
  lw $t1, 0($t0)
  sw $t1, -1080($s8)
  lw $t0, -1080($s8)
  move $t1, $t0
  sw $t1, -1084($s8)
  lw $t0, -1084($s8)
  li $t1, 0
  beq $t0, $t1, label905
  li $t0, 0
  move $t1, $t0
  sw $t1, -1088($s8)
  lw $t0, -328($s8)
  li $t1, 10
  blt $t0, $t1, label906
  j label907
label906:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1088($s8)
label907:
  lw $t0, -1088($s8)
  li $t1, 0
  beq $t0, $t1, label905
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1092($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1096($s8)
  la $t0, -20($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1100($s8)
  lw $t0, -1100($s8)
  lw $t1, 0($t0)
  sw $t1, -1104($s8)
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1108($s8)
  lw $t0, -1108($s8)
  lw $t1, 0($t0)
  sw $t1, -1112($s8)
  lw $t0, -1104($s8)
  lw $t1, -1112($s8)
  ble $t0, $t1, label908
  j label909
label908:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1096($s8)
label909:
  lw $t0, -1096($s8)
  lw $t1, -1092($s8)
  sw $t0, 0($t1)
  lw $t0, -1092($s8)
  lw $t1, 0($t0)
  sw $t1, -1116($s8)
  lw $t0, -1116($s8)
  move $t1, $t0
  sw $t1, -1120($s8)
  lw $t0, 16($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1124($s8)
  la $t0, -20($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1128($s8)
  lw $t0, -1128($s8)
  lw $t1, 0($t0)
  sw $t1, -1132($s8)
  la $t0, -228($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1136($s8)
  lw $t0, -1136($s8)
  lw $t1, 0($t0)
  sw $t1, -1140($s8)
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1144($s8)
  lw $t0, -1144($s8)
  lw $t1, 0($t0)
  sw $t1, -1148($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, 32($s8)
  sw $t1, 4($sp)
  lw $t2, -1148($s8)
  sw $t2, 8($sp)
  lw $t3, -1140($s8)
  sw $t3, 12($sp)
  lw $t4, -1132($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_155
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1152($s8)
  lw $t0, -1152($s8)
  lw $t1, -1124($s8)
  sw $t0, 0($t1)
  lw $t0, -1124($s8)
  lw $t1, 0($t0)
  sw $t1, -1156($s8)
  lw $t0, -1156($s8)
  move $t1, $t0
  sw $t1, -1160($s8)
  lw $t0, 16($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
  la $t0, -20($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1164($s8)
  lw $t0, -1164($s8)
  lw $t1, 0($t0)
  sw $t1, -1168($s8)
  lw $t0, -1168($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1172($s8)
  la $t0, -8($s8)
  lw $t1, -1172($s8)
  add $t2, $t0, $t1
  sw $t2, -1176($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1180($s8)
  lw $t0, -1180($s8)
  lw $t1, 0($t0)
  sw $t1, -1184($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, -1184($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1188($s8)
  lw $t0, -1188($s8)
  lw $t1, -1176($s8)
  sw $t0, 0($t1)
  lw $t0, -1176($s8)
  lw $t1, 0($t0)
  sw $t1, -1192($s8)
  lw $t0, -1192($s8)
  move $t1, $t0
  sw $t1, -1196($s8)
  lw $t0, -328($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -328($s8)
  lw $t0, 16($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
  la $t0, -20($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1200($s8)
  lw $t0, -1200($s8)
  lw $t1, 0($t0)
  sw $t1, -1204($s8)
  lw $t0, -1204($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1208($s8)
  la $t0, -8($s8)
  lw $t1, -1208($s8)
  add $t2, $t0, $t1
  sw $t2, -1212($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1216($s8)
  lw $t0, -1216($s8)
  lw $t1, 0($t0)
  sw $t1, -1220($s8)
  la $t0, -228($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1224($s8)
  lw $t0, -1224($s8)
  lw $t1, 0($t0)
  sw $t1, -1228($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, -1228($s8)
  sw $t1, 4($sp)
  lw $t2, -1220($s8)
  sw $t2, 8($sp)
  li $t3, 244997044
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1232($s8)
  lw $t0, -1232($s8)
  lw $t1, -1212($s8)
  sw $t0, 0($t1)
  lw $t0, 16($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1236($s8)
  la $t0, -20($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1240($s8)
  lw $t0, -1240($s8)
  lw $t1, 0($t0)
  sw $t1, -1244($s8)
  la $t0, -228($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1248($s8)
  lw $t0, -1248($s8)
  lw $t1, 0($t0)
  sw $t1, -1252($s8)
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1256($s8)
  lw $t0, -1256($s8)
  lw $t1, 0($t0)
  sw $t1, -1260($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, -1260($s8)
  sw $t1, 4($sp)
  lw $t2, -1252($s8)
  sw $t2, 8($sp)
  li $t3, 1223330961
  sw $t3, 12($sp)
  lw $t4, -1244($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_155
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1264($s8)
  lw $t0, -1264($s8)
  lw $t1, -1236($s8)
  sw $t0, 0($t1)
  lw $t0, 16($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1268($s8)
  la $t0, -8($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1272($s8)
  lw $t0, -1272($s8)
  lw $t1, 0($t0)
  sw $t1, -1276($s8)
  lw $t0, -1276($s8)
  li $t1, 0
  bne $t0, $t1, label910
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1280($s8)
  lw $t0, -1280($s8)
  lw $t1, 0($t0)
  sw $t1, -1284($s8)
  lw $t0, -1284($s8)
  li $t1, 0
  bne $t0, $t1, label910
  j label911
label910:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1268($s8)
label911:
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, -1268($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1288($s8)
  lw $t0, 16($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1292($s8)
  lw $t0, -1292($s8)
  lw $t1, 0($t0)
  sw $t1, -1296($s8)
  la $t0, -20($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1300($s8)
  lw $t0, -1300($s8)
  lw $t1, 0($t0)
  sw $t1, -1304($s8)
  la $t0, -228($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1308($s8)
  lw $t0, -1308($s8)
  lw $t1, 0($t0)
  sw $t1, -1312($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1316($s8)
  lw $t0, -1316($s8)
  lw $t1, 0($t0)
  sw $t1, -1320($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, -1320($s8)
  sw $t1, 4($sp)
  lw $t2, -1312($s8)
  sw $t2, 8($sp)
  lw $t3, -1304($s8)
  sw $t3, 12($sp)
  lw $t4, -1296($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1324($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, -1324($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1328($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1332($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1336($s8)
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1340($s8)
  lw $t0, -1340($s8)
  lw $t1, 0($t0)
  sw $t1, -1344($s8)
  lw $t0, -1344($s8)
  li $t1, 0
  bne $t0, $t1, label912
  la $t0, -20($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1348($s8)
  lw $t0, -1348($s8)
  lw $t1, 0($t0)
  sw $t1, -1352($s8)
  lw $t0, -1352($s8)
  li $t1, 0
  bne $t0, $t1, label912
  j label913
label912:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1336($s8)
label913:
  lw $t0, -1336($s8)
  lw $t1, -1332($s8)
  sw $t0, 0($t1)
  lw $t0, -1120($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -1160($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -1196($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label904
label905:
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1356($s8)
  lw $t0, -1356($s8)
  lw $t1, 0($t0)
  sw $t1, -1360($s8)
  lw $t0, -1360($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1364($s8)
  la $t0, -12($s8)
  lw $t1, -1364($s8)
  add $t2, $t0, $t1
  sw $t2, -1368($s8)
  la $t0, -8($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1372($s8)
  lw $t0, -1372($s8)
  lw $t1, 0($t0)
  sw $t1, -1376($s8)
  la $t0, -20($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1380($s8)
  lw $t0, -1380($s8)
  lw $t1, 0($t0)
  sw $t1, -1384($s8)
  lw $t0, -1384($s8)
  sw $t0, 0($sp)
  lw $t1, -1376($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_mul
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1388($s8)
  lw $t0, -1388($s8)
  lw $t1, -1368($s8)
  sw $t0, 0($t1)
  lw $t0, -1368($s8)
  lw $t1, 0($t0)
  sw $t1, -1392($s8)
  lw $t0, -1392($s8)
  move $t1, $t0
  sw $t1, -1396($s8)
  lw $t0, -1396($s8)
  li $t1, 0
  beq $t0, $t1, label915
  li $t0, 0
  move $t1, $t0
  sw $t1, -1400($s8)
  lw $t0, -332($s8)
  li $t1, 10
  blt $t0, $t1, label916
  j label917
label916:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1400($s8)
label917:
  lw $t0, -1400($s8)
  li $t1, 0
  beq $t0, $t1, label915
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1420($s8)
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1424($s8)
  lw $t0, -1424($s8)
  lw $t1, 0($t0)
  sw $t1, -1428($s8)
  la $t0, -20($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1432($s8)
  lw $t0, -1432($s8)
  lw $t1, 0($t0)
  sw $t1, -1436($s8)
  lw $t0, -1428($s8)
  lw $t1, -1436($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -1440($s8)
  lw $t0, -1440($s8)
  lw $t1, -1420($s8)
  sw $t0, 0($t1)
  lw $t0, -1420($s8)
  lw $t1, 0($t0)
  sw $t1, -1444($s8)
  lw $t0, -1444($s8)
  move $t1, $t0
  sw $t1, -1448($s8)
  la $t0, -1408($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1452($s8)
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1456($s8)
  lw $t0, -1456($s8)
  lw $t1, 0($t0)
  sw $t1, -1460($s8)
  lw $t0, -1460($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1464($s8)
  la $t0, -12($s8)
  lw $t1, -1464($s8)
  add $t2, $t0, $t1
  sw $t2, -1468($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1472($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1476($s8)
  lw $t0, -1476($s8)
  lw $t1, 0($t0)
  sw $t1, -1480($s8)
  la $t0, -20($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1484($s8)
  lw $t0, -1484($s8)
  lw $t1, 0($t0)
  sw $t1, -1488($s8)
  lw $t0, -1480($s8)
  lw $t1, -1488($s8)
  bge $t0, $t1, label918
  j label919
label918:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1472($s8)
label919:
  lw $t0, -1472($s8)
  lw $t1, -1468($s8)
  sw $t0, 0($t1)
  lw $t0, -1468($s8)
  lw $t1, 0($t0)
  sw $t1, -1492($s8)
  lw $t0, -1492($s8)
  move $t1, $t0
  sw $t1, -1496($s8)
  lw $t0, -1496($s8)
  lw $t1, -1452($s8)
  sw $t0, 0($t1)
  lw $t0, 16($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
  la $t0, -1408($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1500($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1504($s8)
  lw $t0, -1504($s8)
  lw $t1, 0($t0)
  sw $t1, -1508($s8)
  lw $t0, -1508($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1512($s8)
  la $t0, -8($s8)
  lw $t1, -1512($s8)
  add $t2, $t0, $t1
  sw $t2, -1516($s8)
  la $t0, -20($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1520($s8)
  lw $t0, -1520($s8)
  lw $t1, 0($t0)
  sw $t1, -1524($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, -1524($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1528($s8)
  lw $t0, -1528($s8)
  lw $t1, -1516($s8)
  sw $t0, 0($t1)
  lw $t0, -1516($s8)
  lw $t1, 0($t0)
  sw $t1, -1532($s8)
  lw $t0, -1532($s8)
  move $t1, $t0
  sw $t1, -1536($s8)
  lw $t0, -1536($s8)
  lw $t1, -1500($s8)
  sw $t0, 0($t1)
  la $t0, -1416($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1540($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1544($s8)
  la $t0, -228($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1548($s8)
  lw $t0, -1548($s8)
  lw $t1, 0($t0)
  sw $t1, -1552($s8)
  lw $t0, -1552($s8)
  lw $t1, -1544($s8)
  sw $t0, 0($t1)
  lw $t0, -1544($s8)
  lw $t1, 0($t0)
  sw $t1, -1556($s8)
  lw $t0, -1556($s8)
  move $t1, $t0
  sw $t1, -1560($s8)
  lw $t0, -1560($s8)
  lw $t1, -1540($s8)
  sw $t0, 0($t1)
  la $t0, -1416($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1564($s8)
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1568($s8)
  lw $t0, -1568($s8)
  lw $t1, 0($t0)
  sw $t1, -1572($s8)
  lw $t0, -1572($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1576($s8)
  la $t0, -12($s8)
  lw $t1, -1576($s8)
  add $t2, $t0, $t1
  sw $t2, -1580($s8)
  la $t0, -8($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1584($s8)
  la $t0, -20($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1588($s8)
  lw $t0, -1588($s8)
  lw $t1, 0($t0)
  sw $t1, -1592($s8)
  lw $t0, -1592($s8)
  lw $t1, -1584($s8)
  sw $t0, 0($t1)
  lw $t0, -1584($s8)
  lw $t1, 0($t0)
  sw $t1, -1596($s8)
  lw $t0, -1596($s8)
  move $t1, $t0
  sw $t1, -1600($s8)
  lw $t0, -1600($s8)
  lw $t1, -1580($s8)
  sw $t0, 0($t1)
  lw $t0, -1580($s8)
  lw $t1, 0($t0)
  sw $t1, -1604($s8)
  lw $t0, -1604($s8)
  move $t1, $t0
  sw $t1, -1608($s8)
  lw $t0, -1608($s8)
  lw $t1, -1564($s8)
  sw $t0, 0($t1)
  lw $t0, -332($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -332($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1612($s8)
  lw $t0, -1612($s8)
  lw $t1, 0($t0)
  sw $t1, -1616($s8)
  lw $t0, -1616($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1620($s8)
  la $t0, -8($s8)
  lw $t1, -1620($s8)
  add $t2, $t0, $t1
  sw $t2, -1624($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1628($s8)
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1632($s8)
  lw $t0, -1632($s8)
  lw $t1, 0($t0)
  sw $t1, -1636($s8)
  li $t0, 1095067954
  lw $t1, -1636($s8)
  beq $t0, $t1, label920
  j label921
label920:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1628($s8)
label921:
  lw $t0, -1628($s8)
  lw $t1, -1624($s8)
  sw $t0, 0($t1)
  lw $t0, 16($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1640($s8)
  lw $t0, -1640($s8)
  lw $t1, 0($t0)
  sw $t1, -1644($s8)
  lw $t0, -1644($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1648($s8)
  la $t0, -12($s8)
  lw $t1, -1648($s8)
  add $t2, $t0, $t1
  sw $t2, -1652($s8)
  la $t0, -8($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1656($s8)
  lw $t0, -1656($s8)
  lw $t1, 0($t0)
  sw $t1, -1660($s8)
  la $t0, -20($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1664($s8)
  lw $t0, -1664($s8)
  lw $t1, 0($t0)
  sw $t1, -1668($s8)
  la $t0, -228($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1672($s8)
  lw $t0, -1672($s8)
  lw $t1, 0($t0)
  sw $t1, -1676($s8)
  la $t0, -1408($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1680($s8)
  lw $t0, -1680($s8)
  lw $t1, 0($t0)
  sw $t1, -1684($s8)
  la $t0, -1416($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1688($s8)
  lw $t0, -1688($s8)
  lw $t1, 0($t0)
  sw $t1, -1692($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, -1692($s8)
  sw $t1, 4($sp)
  lw $t2, -1684($s8)
  sw $t2, 8($sp)
  lw $t3, -1676($s8)
  sw $t3, 12($sp)
  lw $t4, -1668($s8)
  sw $t4, 16($sp)
  lw $t5, -1660($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1696($s8)
  lw $t0, -1696($s8)
  lw $t1, -1652($s8)
  sw $t0, 0($t1)
  lw $t0, 16($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1700($s8)
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1704($s8)
  lw $t0, -1704($s8)
  lw $t1, 0($t0)
  sw $t1, -1708($s8)
  la $t0, -20($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1712($s8)
  lw $t0, -1712($s8)
  lw $t1, 0($t0)
  sw $t1, -1716($s8)
  la $t0, -228($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1720($s8)
  lw $t0, -1720($s8)
  lw $t1, 0($t0)
  sw $t1, -1724($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, -1724($s8)
  sw $t1, 4($sp)
  lw $t2, -1716($s8)
  sw $t2, 8($sp)
  li $t3, 1793830977
  sw $t3, 12($sp)
  lw $t4, -1708($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1728($s8)
  lw $t0, -1728($s8)
  lw $t1, -1700($s8)
  sw $t0, 0($t1)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1732($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1736($s8)
  la $t0, -20($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1740($s8)
  lw $t0, -1740($s8)
  lw $t1, 0($t0)
  sw $t1, -1744($s8)
  la $t0, -228($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1748($s8)
  lw $t0, -1748($s8)
  lw $t1, 0($t0)
  sw $t1, -1752($s8)
  lw $t0, -1744($s8)
  lw $t1, -1752($s8)
  ble $t0, $t1, label922
  j label923
label922:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1736($s8)
label923:
  lw $t0, -1736($s8)
  lw $t1, -1732($s8)
  sw $t0, 0($t1)
  lw $t0, 16($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1756($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1760($s8)
  lw $t0, -1760($s8)
  lw $t1, 0($t0)
  sw $t1, -1764($s8)
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1768($s8)
  lw $t0, -1768($s8)
  lw $t1, 0($t0)
  sw $t1, -1772($s8)
  la $t0, -20($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1776($s8)
  lw $t0, -1776($s8)
  lw $t1, 0($t0)
  sw $t1, -1780($s8)
  la $t0, -228($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1784($s8)
  lw $t0, -1784($s8)
  lw $t1, 0($t0)
  sw $t1, -1788($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, -1788($s8)
  sw $t1, 4($sp)
  lw $t2, -1780($s8)
  sw $t2, 8($sp)
  lw $t3, -1772($s8)
  sw $t3, 12($sp)
  lw $t4, -1764($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1792($s8)
  lw $t0, -1792($s8)
  lw $t1, -1756($s8)
  sw $t0, 0($t1)
  lw $t0, 16($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1796($s8)
  la $t0, -20($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1800($s8)
  lw $t0, -1800($s8)
  lw $t1, 0($t0)
  sw $t1, -1804($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, -1804($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1808($s8)
  lw $t0, -1808($s8)
  lw $t1, -1796($s8)
  sw $t0, 0($t1)
  lw $t0, -1448($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label905
label915:
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1812($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1816($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1820($s8)
  lw $t0, -1820($s8)
  lw $t1, 0($t0)
  sw $t1, -1824($s8)
  la $t0, -228($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1828($s8)
  lw $t0, -1828($s8)
  lw $t1, 0($t0)
  sw $t1, -1832($s8)
  lw $t0, -1824($s8)
  lw $t1, -1832($s8)
  beq $t0, $t1, label924
  j label925
label924:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1816($s8)
label925:
  lw $t0, -1816($s8)
  lw $t1, -1812($s8)
  sw $t0, 0($t1)
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1836($s8)
  lw $t0, -1836($s8)
  lw $t1, 0($t0)
  sw $t1, -1840($s8)
  lw $t0, -1840($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1844($s8)
  la $t0, -12($s8)
  lw $t1, -1844($s8)
  add $t2, $t0, $t1
  sw $t2, -1848($s8)
  li $t0, -1784572718
  move $t1, $t0
  sw $t1, -1852($s8)
  lw $t0, -1852($s8)
  lw $t1, -1848($s8)
  sw $t0, 0($t1)
  lw $t0, 16($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
  la $t0, -8($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1856($s8)
  lw $t0, -1856($s8)
  lw $t1, 0($t0)
  sw $t1, -1860($s8)
  lw $t0, -1860($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1864($s8)
  la $t0, -12($s8)
  lw $t1, -1864($s8)
  add $t2, $t0, $t1
  sw $t2, -1868($s8)
  la $t0, -20($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1872($s8)
  lw $t0, -1872($s8)
  lw $t1, 0($t0)
  sw $t1, -1876($s8)
  la $t0, -228($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1880($s8)
  lw $t0, -1880($s8)
  lw $t1, 0($t0)
  sw $t1, -1884($s8)
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1888($s8)
  lw $t0, -1888($s8)
  lw $t1, 0($t0)
  sw $t1, -1892($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  li $t1, 729970243
  sw $t1, 4($sp)
  lw $t2, 32($s8)
  sw $t2, 8($sp)
  lw $t3, -1892($s8)
  sw $t3, 12($sp)
  lw $t4, -1884($s8)
  sw $t4, 16($sp)
  lw $t5, -1876($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1896($s8)
  lw $t0, -1896($s8)
  lw $t1, -1868($s8)
  sw $t0, 0($t1)
  lw $t0, 16($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
  la $t0, -20($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1900($s8)
  lw $t0, -1900($s8)
  lw $t1, 0($t0)
  sw $t1, -1904($s8)
  lw $t0, -1904($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1908($s8)
  la $t0, -8($s8)
  lw $t1, -1908($s8)
  add $t2, $t0, $t1
  sw $t2, -1912($s8)
  la $t0, -228($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1916($s8)
  lw $t0, -1916($s8)
  lw $t1, 0($t0)
  sw $t1, -1920($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1924($s8)
  lw $t0, -1924($s8)
  lw $t1, 0($t0)
  sw $t1, -1928($s8)
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1932($s8)
  lw $t0, -1932($s8)
  lw $t1, 0($t0)
  sw $t1, -1936($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  li $t1, -380256217
  sw $t1, 4($sp)
  lw $t2, 32($s8)
  sw $t2, 8($sp)
  lw $t3, -1936($s8)
  sw $t3, 12($sp)
  lw $t4, -1928($s8)
  sw $t4, 16($sp)
  lw $t5, -1920($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1940($s8)
  lw $t0, -1940($s8)
  lw $t1, -1912($s8)
  sw $t0, 0($t1)
  lw $t0, 16($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
  la $t0, -20($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1944($s8)
  lw $t0, -1944($s8)
  lw $t1, 0($t0)
  sw $t1, -1948($s8)
  lw $t0, -1948($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1952($s8)
  la $t0, -8($s8)
  lw $t1, -1952($s8)
  add $t2, $t0, $t1
  sw $t2, -1956($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1960($s8)
  lw $t0, -1960($s8)
  lw $t1, 0($t0)
  sw $t1, -1964($s8)
  la $t0, -220($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1968($s8)
  lw $t0, -1968($s8)
  lw $t1, 0($t0)
  sw $t1, -1972($s8)
  la $t0, -228($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1976($s8)
  lw $t0, -1976($s8)
  lw $t1, 0($t0)
  sw $t1, -1980($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, 32($s8)
  sw $t1, 4($sp)
  lw $t2, -1980($s8)
  sw $t2, 8($sp)
  lw $t3, -1972($s8)
  sw $t3, 12($sp)
  lw $t4, -1964($s8)
  sw $t4, 16($sp)
  li $t5, 902655091
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1984($s8)
  lw $t0, -1984($s8)
  lw $t1, -1956($s8)
  sw $t0, 0($t1)
  lw $t0, -252($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label870
label871:
  lw $t0, 16($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
  la $t0, -8($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1988($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1992($s8)
  lw $t0, -1992($s8)
  lw $t1, 0($t0)
  sw $t1, -1996($s8)
  la $t0, -20($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2000($s8)
  lw $t0, -2000($s8)
  lw $t1, 0($t0)
  sw $t1, -2004($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, -2004($s8)
  sw $t1, 4($sp)
  li $t2, -145746711
  sw $t2, 8($sp)
  lw $t3, -1996($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2008($s8)
  lw $t0, -2008($s8)
  lw $t1, -1988($s8)
  sw $t0, 0($t1)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2012($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2016($s8)
  la $t0, -20($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2020($s8)
  lw $t0, -2020($s8)
  lw $t1, 0($t0)
  sw $t1, -2024($s8)
  lw $t0, -2024($s8)
  li $t1, 0
  bne $t0, $t1, label927
  j label926
label926:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2016($s8)
label927:
  lw $t0, -2016($s8)
  lw $t1, -2012($s8)
  sw $t0, 0($t1)
  lw $t0, 16($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2028($s8)
  lw $t0, -2028($s8)
  lw $t1, 0($t0)
  sw $t1, -2032($s8)
  lw $t0, -2032($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2036($s8)
  la $t0, -12($s8)
  lw $t1, -2036($s8)
  add $t2, $t0, $t1
  sw $t2, -2040($s8)
  la $t0, -20($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2044($s8)
  lw $t0, -2044($s8)
  lw $t1, 0($t0)
  sw $t1, -2048($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, 28($s8)
  sw $t1, 4($sp)
  li $t2, -1885087665
  sw $t2, 8($sp)
  lw $t3, 32($s8)
  sw $t3, 12($sp)
  lw $t4, -2048($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2052($s8)
  lw $t0, -2052($s8)
  lw $t1, -2040($s8)
  sw $t0, 0($t1)
  lw $t0, 16($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
  la $t0, -8($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2056($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2060($s8)
  lw $t0, -2060($s8)
  lw $t1, 0($t0)
  sw $t1, -2064($s8)
  lw $t0, -2064($s8)
  lw $t1, -2056($s8)
  sw $t0, 0($t1)
  lw $t0, -2056($s8)
  lw $t1, 0($t0)
  sw $t1, -2068($s8)
  lw $t0, -2068($s8)
  move $t1, $t0
  sw $t1, -2072($s8)
  la $t0, -20($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2076($s8)
  lw $t0, -2076($s8)
  lw $t1, 0($t0)
  sw $t1, -2080($s8)
  lw $t0, -2080($s8)
  lw $t1, 32($s8)
  sub $t2, $t0, $t1
  sw $t2, -2084($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2088($s8)
  li $t0, 1922954729
  lw $t1, 28($s8)
  bge $t0, $t1, label928
  j label929
label928:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2088($s8)
label929:
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, -28($s8)
  sw $t1, 4($sp)
  lw $t2, -24($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  lw $t4, 24($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2092($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, -2092($s8)
  sw $t1, 4($sp)
  lw $t2, -2088($s8)
  sw $t2, 8($sp)
  lw $t3, -2084($s8)
  sw $t3, 12($sp)
  lw $t4, -2072($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2096($s8)
  lw $t0, -24($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -28($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, 16($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 16($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2100($s8)
  lw $t0, -2100($s8)
  lw $t1, 0($t0)
  sw $t1, -2104($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2108($s8)
  lw $t0, -2108($s8)
  lw $t1, 0($t0)
  sw $t1, -2112($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, -2112($s8)
  sw $t1, 4($sp)
  li $t2, 548786796
  sw $t2, 8($sp)
  lw $t3, -2104($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2116($s8)
  la $t0, -20($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2120($s8)
  lw $t0, -2120($s8)
  lw $t1, 0($t0)
  sw $t1, -2124($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  li $t1, -1042383093
  sw $t1, 4($sp)
  lw $t2, 24($s8)
  sw $t2, 8($sp)
  lw $t3, 28($s8)
  sw $t3, 12($sp)
  lw $t4, 32($s8)
  sw $t4, 16($sp)
  lw $t5, -2124($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2128($s8)
  lw $t0, 16($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, -2128($s8)
  sw $t2, 8($sp)
  lw $t3, -2116($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2132($s8)
  lw $t0, -2132($s8)
  move $v0, $t0
  move $sp, $s8
  lw $s8, 0($sp)
  addi $sp, $sp, 4
  jr $ra

i_func_156:
  addi $sp, $sp, -4
  sw $s8, 0($sp)
  move $s8, $sp
  addi $sp, $sp, -4096
  lw $t0, 8($s8)
  li $t1, 0
  bgt $t0, $t1, label930
  li $t0, 436285986
  move $v0, $t0
  move $sp, $s8
  lw $s8, 0($sp)
  addi $sp, $sp, 4
  jr $ra
  j label931
label930:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label931:
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -12($s8)
  li $t0, -476420236
  move $t1, $t0
  sw $t1, 20($s8)
  lw $t0, 20($s8)
  move $t1, $t0
  sw $t1, -16($s8)
  lw $t0, -16($s8)
  lw $t1, -12($s8)
  sw $t0, 0($t1)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -20($s8)
  lw $t0, 20($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -24($s8)
  la $t0, -4($s8)
  lw $t1, -24($s8)
  add $t2, $t0, $t1
  sw $t2, -28($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -32($s8)
  lw $t0, 16($s8)
  lw $t1, 12($s8)
  ble $t0, $t1, label932
  j label933
label932:
  li $t0, 1
  move $t1, $t0
  sw $t1, -32($s8)
label933:
  lw $t0, -32($s8)
  lw $t1, -28($s8)
  sw $t0, 0($t1)
  lw $t0, -28($s8)
  lw $t1, 0($t0)
  sw $t1, -36($s8)
  lw $t0, -36($s8)
  move $t1, $t0
  sw $t1, -40($s8)
  lw $t0, -40($s8)
  lw $t1, -20($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -44($s8)
  lw $t0, -44($s8)
  lw $t1, 0($t0)
  sw $t1, -48($s8)
  lw $t0, -48($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -52($s8)
  la $t0, -4($s8)
  lw $t1, -52($s8)
  add $t2, $t0, $t1
  sw $t2, -56($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  li $t3, 425133613
  sw $t3, 12($sp)
  lw $t4, 20($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_155
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -60($s8)
  lw $t0, -60($s8)
  lw $t1, -56($s8)
  sw $t0, 0($t1)
  lw $t0, -56($s8)
  lw $t1, 0($t0)
  sw $t1, -64($s8)
  lw $t0, -64($s8)
  move $t1, $t0
  sw $t1, -68($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -72($s8)
  lw $t0, -72($s8)
  lw $t1, 0($t0)
  sw $t1, -76($s8)
  lw $t0, -76($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -80($s8)
  la $t0, -4($s8)
  lw $t1, -80($s8)
  add $t2, $t0, $t1
  sw $t2, -84($s8)
  li $t0, -1360986040
  move $t1, $t0
  sw $t1, -88($s8)
  lw $t0, -88($s8)
  lw $t1, -84($s8)
  sw $t0, 0($t1)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -92($s8)
  lw $t0, -92($s8)
  lw $t1, 0($t0)
  sw $t1, -96($s8)
  lw $t0, -96($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -100($s8)
  la $t0, -4($s8)
  lw $t1, -100($s8)
  add $t2, $t0, $t1
  sw $t2, -104($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -108($s8)
  lw $t0, 20($s8)
  lw $t1, 16($s8)
  ble $t0, $t1, label934
  j label935
label934:
  li $t0, 1
  move $t1, $t0
  sw $t1, -108($s8)
label935:
  lw $t0, -108($s8)
  lw $t1, -104($s8)
  sw $t0, 0($t1)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -112($s8)
  lw $t0, -112($s8)
  lw $t1, 0($t0)
  sw $t1, -116($s8)
  lw $t0, -116($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -120($s8)
  la $t0, -4($s8)
  lw $t1, -120($s8)
  add $t2, $t0, $t1
  sw $t2, -124($s8)
  li $t0, 403129847
  lw $t1, 20($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -128($s8)
  lw $t0, -128($s8)
  lw $t1, -124($s8)
  sw $t0, 0($t1)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -132($s8)
  lw $t0, -132($s8)
  lw $t1, 0($t0)
  sw $t1, -136($s8)
  lw $t0, -136($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -140($s8)
  la $t0, -4($s8)
  lw $t1, -140($s8)
  add $t2, $t0, $t1
  sw $t2, -144($s8)
  lw $t0, 20($s8)
  lw $t1, 16($s8)
  mul $t2, $t0, $t1
  sw $t2, -148($s8)
  lw $t0, -148($s8)
  lw $t1, -144($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 31
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -152($s8)
  lw $t0, -152($s8)
  lw $t1, 0($t0)
  sw $t1, -156($s8)
  lw $t0, -156($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -160($s8)
  la $t0, -4($s8)
  lw $t1, -160($s8)
  add $t2, $t0, $t1
  sw $t2, -164($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -617297309
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, 16($s8)
  sw $t3, 12($sp)
  lw $t4, 20($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -168($s8)
  lw $t0, -168($s8)
  lw $t1, -164($s8)
  sw $t0, 0($t1)
  lw $t0, -164($s8)
  lw $t1, 0($t0)
  sw $t1, -172($s8)
  lw $t0, -172($s8)
  move $t1, $t0
  sw $t1, -176($s8)
  lw $t0, -176($s8)
  li $t1, 0
  beq $t0, $t1, label936
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -184($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -188($s8)
  lw $t0, -188($s8)
  lw $t1, 0($t0)
  sw $t1, -192($s8)
  lw $t0, -192($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -196($s8)
  la $t0, -4($s8)
  lw $t1, -196($s8)
  add $t2, $t0, $t1
  sw $t2, -200($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -204($s8)
  lw $t0, 20($s8)
  li $t1, 659233427
  bne $t0, $t1, label938
  j label939
label938:
  li $t0, 1
  move $t1, $t0
  sw $t1, -204($s8)
label939:
  lw $t0, -204($s8)
  lw $t1, -200($s8)
  sw $t0, 0($t1)
  lw $t0, -200($s8)
  lw $t1, 0($t0)
  sw $t1, -208($s8)
  lw $t0, -208($s8)
  move $t1, $t0
  sw $t1, -212($s8)
  lw $t0, -212($s8)
  lw $t1, -184($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -216($s8)
  lw $t0, -216($s8)
  lw $t1, 0($t0)
  sw $t1, -220($s8)
  lw $t0, -220($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -224($s8)
  la $t0, -4($s8)
  lw $t1, -224($s8)
  add $t2, $t0, $t1
  sw $t2, -228($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -232($s8)
  lw $t0, -232($s8)
  lw $t1, 0($t0)
  sw $t1, -236($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -236($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -240($s8)
  lw $t0, -240($s8)
  lw $t1, -228($s8)
  sw $t0, 0($t1)
  lw $t0, -228($s8)
  lw $t1, 0($t0)
  sw $t1, -244($s8)
  lw $t0, -244($s8)
  move $t1, $t0
  sw $t1, -248($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -252($s8)
  lw $t0, -252($s8)
  lw $t1, 0($t0)
  sw $t1, -256($s8)
  lw $t0, -256($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -260($s8)
  la $t0, -4($s8)
  lw $t1, -260($s8)
  add $t2, $t0, $t1
  sw $t2, -264($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -268($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -272($s8)
  lw $t0, -272($s8)
  lw $t1, 0($t0)
  sw $t1, -276($s8)
  lw $t0, -276($s8)
  lw $t1, 20($s8)
  ble $t0, $t1, label940
  j label941
label940:
  li $t0, 1
  move $t1, $t0
  sw $t1, -268($s8)
label941:
  lw $t0, -268($s8)
  lw $t1, -264($s8)
  sw $t0, 0($t1)
  lw $t0, -264($s8)
  lw $t1, 0($t0)
  sw $t1, -280($s8)
  lw $t0, -280($s8)
  move $t1, $t0
  sw $t1, -284($s8)
  li $t0, 1383293296
  move $t1, $t0
  sw $t1, -288($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -292($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -296($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -300($s8)
label942:
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -304($s8)
  lw $t0, -304($s8)
  lw $t1, 0($t0)
  sw $t1, -308($s8)
  lw $t0, -308($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -312($s8)
  la $t0, -4($s8)
  lw $t1, -312($s8)
  add $t2, $t0, $t1
  sw $t2, -316($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -320($s8)
  lw $t0, -320($s8)
  lw $t1, 0($t0)
  sw $t1, -324($s8)
  lw $t0, -324($s8)
  lw $t1, 20($s8)
  sub $t2, $t0, $t1
  sw $t2, -328($s8)
  lw $t0, -328($s8)
  lw $t1, -316($s8)
  sw $t0, 0($t1)
  lw $t0, -316($s8)
  lw $t1, 0($t0)
  sw $t1, -332($s8)
  lw $t0, -332($s8)
  move $t1, $t0
  sw $t1, -336($s8)
  lw $t0, -336($s8)
  li $t1, 0
  beq $t0, $t1, label943
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -340($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -352($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -356($s8)
  li $t0, 2134483450
  li $t1, 0
  bne $t0, $t1, label944
  li $t0, 1171316686
  li $t1, 0
  bne $t0, $t1, label944
  j label945
label944:
  li $t0, 1
  move $t1, $t0
  sw $t1, -356($s8)
label945:
  li $t0, 0
  move $t1, $t0
  sw $t1, -360($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -364($s8)
  lw $t0, -364($s8)
  lw $t1, 0($t0)
  sw $t1, -368($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -372($s8)
  lw $t0, -372($s8)
  lw $t1, 0($t0)
  sw $t1, -376($s8)
  lw $t0, -368($s8)
  lw $t1, -376($s8)
  bgt $t0, $t1, label946
  j label947
label946:
  li $t0, 1
  move $t1, $t0
  sw $t1, -360($s8)
label947:
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -380($s8)
  lw $t0, -380($s8)
  lw $t1, 0($t0)
  sw $t1, -384($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  li $t2, 1
  sw $t2, 8($sp)
  li $t3, 1313260890
  sw $t3, 12($sp)
  li $t4, -972596181
  sw $t4, 16($sp)
  lw $t5, -384($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -388($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -388($s8)
  sw $t1, 4($sp)
  lw $t2, -360($s8)
  sw $t2, 8($sp)
  lw $t3, -356($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -392($s8)
  lw $t0, -392($s8)
  lw $t1, -352($s8)
  sw $t0, 0($t1)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -396($s8)
  lw $t0, -396($s8)
  lw $t1, 0($t0)
  sw $t1, -400($s8)
  lw $t0, -400($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -404($s8)
  la $t0, -4($s8)
  lw $t1, -404($s8)
  add $t2, $t0, $t1
  sw $t2, -408($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -412($s8)
  la $t0, -340($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -416($s8)
  lw $t0, -416($s8)
  lw $t1, 0($t0)
  sw $t1, -420($s8)
  lw $t0, -420($s8)
  lw $t1, -412($s8)
  sw $t0, 0($t1)
  lw $t0, -412($s8)
  lw $t1, 0($t0)
  sw $t1, -424($s8)
  lw $t0, -424($s8)
  move $t1, $t0
  sw $t1, -428($s8)
  lw $t0, -428($s8)
  lw $t1, -408($s8)
  sw $t0, 0($t1)
  lw $t0, -408($s8)
  lw $t1, 0($t0)
  sw $t1, -432($s8)
  lw $t0, -432($s8)
  move $t1, $t0
  sw $t1, -436($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -348($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -440($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -444($s8)
  lw $t0, -444($s8)
  lw $t1, 0($t0)
  sw $t1, -448($s8)
  lw $t0, -448($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -452($s8)
  la $t0, -4($s8)
  lw $t1, -452($s8)
  add $t2, $t0, $t1
  sw $t2, -456($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -460($s8)
  lw $t0, -460($s8)
  lw $t1, 0($t0)
  sw $t1, -464($s8)
  la $t0, -340($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -468($s8)
  lw $t0, -468($s8)
  lw $t1, 0($t0)
  sw $t1, -472($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, -472($s8)
  sw $t2, 8($sp)
  li $t3, -1404462221
  sw $t3, 12($sp)
  lw $t4, -464($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -476($s8)
  lw $t0, -476($s8)
  lw $t1, -456($s8)
  sw $t0, 0($t1)
  lw $t0, -456($s8)
  lw $t1, 0($t0)
  sw $t1, -480($s8)
  lw $t0, -480($s8)
  move $t1, $t0
  sw $t1, -484($s8)
  lw $t0, -484($s8)
  lw $t1, -440($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -348($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -488($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -492($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -496($s8)
  lw $t0, -496($s8)
  lw $t1, 0($t0)
  sw $t1, -500($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -504($s8)
  lw $t0, -504($s8)
  lw $t1, 0($t0)
  sw $t1, -508($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -1479062957
  sw $t1, 4($sp)
  lw $t2, -508($s8)
  sw $t2, 8($sp)
  lw $t3, -500($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_156
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -512($s8)
  lw $t0, -512($s8)
  lw $t1, -492($s8)
  sw $t0, 0($t1)
  lw $t0, -492($s8)
  lw $t1, 0($t0)
  sw $t1, -516($s8)
  lw $t0, -516($s8)
  move $t1, $t0
  sw $t1, -520($s8)
  lw $t0, -520($s8)
  lw $t1, -488($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -524($s8)
  lw $t0, -524($s8)
  lw $t1, 0($t0)
  sw $t1, -528($s8)
  lw $t0, -528($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -532($s8)
  la $t0, -348($s8)
  lw $t1, -532($s8)
  add $t2, $t0, $t1
  sw $t2, -536($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -540($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -544($s8)
  lw $t0, -544($s8)
  lw $t1, 0($t0)
  sw $t1, -548($s8)
  lw $t0, -548($s8)
  li $t1, 0
  bne $t0, $t1, label949
  j label948
label948:
  li $t0, 1
  move $t1, $t0
  sw $t1, -540($s8)
label949:
  lw $t0, -540($s8)
  lw $t1, -536($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -552($s8)
  lw $t0, -552($s8)
  lw $t1, 0($t0)
  sw $t1, -556($s8)
  lw $t0, -556($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -560($s8)
  la $t0, -4($s8)
  lw $t1, -560($s8)
  add $t2, $t0, $t1
  sw $t2, -564($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -568($s8)
  lw $t0, -568($s8)
  lw $t1, 0($t0)
  sw $t1, -572($s8)
  la $t0, -348($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -576($s8)
  lw $t0, -576($s8)
  lw $t1, 0($t0)
  sw $t1, -580($s8)
  la $t0, -340($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -584($s8)
  lw $t0, -584($s8)
  lw $t1, 0($t0)
  sw $t1, -588($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, -588($s8)
  sw $t2, 8($sp)
  lw $t3, -580($s8)
  sw $t3, 12($sp)
  lw $t4, -572($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_155
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -592($s8)
  lw $t0, -592($s8)
  lw $t1, -564($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -596($s8)
  lw $t0, -596($s8)
  lw $t1, 0($t0)
  sw $t1, -600($s8)
  lw $t0, -600($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -604($s8)
  la $t0, -348($s8)
  lw $t1, -604($s8)
  add $t2, $t0, $t1
  sw $t2, -608($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -612($s8)
  lw $t0, -612($s8)
  lw $t1, 0($t0)
  sw $t1, -616($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -620($s8)
  lw $t0, -620($s8)
  lw $t1, 0($t0)
  sw $t1, -624($s8)
  la $t0, -340($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -628($s8)
  lw $t0, -628($s8)
  lw $t1, 0($t0)
  sw $t1, -632($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -632($s8)
  sw $t1, 4($sp)
  lw $t2, -624($s8)
  sw $t2, 8($sp)
  lw $t3, -616($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -636($s8)
  lw $t0, -636($s8)
  lw $t1, -608($s8)
  sw $t0, 0($t1)
  la $t0, -348($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -640($s8)
  lw $t0, -640($s8)
  lw $t1, 0($t0)
  sw $t1, -644($s8)
  lw $t0, -644($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -648($s8)
  la $t0, -4($s8)
  lw $t1, -648($s8)
  add $t2, $t0, $t1
  sw $t2, -652($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -656($s8)
  lw $t0, -656($s8)
  lw $t1, 0($t0)
  sw $t1, -660($s8)
  li $t0, 1547521884
  lw $t1, -660($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -664($s8)
  lw $t0, -664($s8)
  lw $t1, -652($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -668($s8)
  lw $t0, -668($s8)
  lw $t1, 0($t0)
  sw $t1, -672($s8)
  lw $t0, -672($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -676($s8)
  la $t0, -348($s8)
  lw $t1, -676($s8)
  add $t2, $t0, $t1
  sw $t2, -680($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -684($s8)
  lw $t0, -684($s8)
  lw $t1, 0($t0)
  sw $t1, -688($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -688($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -692($s8)
  lw $t0, -692($s8)
  lw $t1, -680($s8)
  sw $t0, 0($t1)
  la $t0, -348($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -696($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -700($s8)
  lw $t0, -700($s8)
  lw $t1, 0($t0)
  sw $t1, -704($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -708($s8)
  lw $t0, -708($s8)
  lw $t1, 0($t0)
  sw $t1, -712($s8)
  lw $t0, -704($s8)
  lw $t1, -712($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -716($s8)
  lw $t0, -716($s8)
  lw $t1, -696($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -720($s8)
  lw $t0, -720($s8)
  lw $t1, 0($t0)
  sw $t1, -724($s8)
  lw $t0, -724($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -728($s8)
  la $t0, -4($s8)
  lw $t1, -728($s8)
  add $t2, $t0, $t1
  sw $t2, -732($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -736($s8)
  lw $t0, -736($s8)
  lw $t1, 0($t0)
  sw $t1, -740($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -740($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -744($s8)
  lw $t0, -744($s8)
  lw $t1, -732($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -748($s8)
  lw $t0, -748($s8)
  lw $t1, 0($t0)
  sw $t1, -752($s8)
  lw $t0, -752($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -756($s8)
  la $t0, -348($s8)
  lw $t1, -756($s8)
  add $t2, $t0, $t1
  sw $t2, -760($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -764($s8)
  lw $t0, -764($s8)
  lw $t1, 0($t0)
  sw $t1, -768($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -772($s8)
  lw $t0, -772($s8)
  lw $t1, 0($t0)
  sw $t1, -776($s8)
  la $t0, -340($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -780($s8)
  lw $t0, -780($s8)
  lw $t1, 0($t0)
  sw $t1, -784($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, -784($s8)
  sw $t2, 8($sp)
  lw $t3, -776($s8)
  sw $t3, 12($sp)
  lw $t4, -768($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_155
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -788($s8)
  lw $t0, -788($s8)
  lw $t1, -760($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -792($s8)
  lw $t0, -792($s8)
  lw $t1, 0($t0)
  sw $t1, -796($s8)
  lw $t0, -796($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -800($s8)
  la $t0, -4($s8)
  lw $t1, -800($s8)
  add $t2, $t0, $t1
  sw $t2, -804($s8)
  la $t0, -348($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -808($s8)
  lw $t0, -808($s8)
  lw $t1, 0($t0)
  sw $t1, -812($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -816($s8)
  lw $t0, -816($s8)
  lw $t1, 0($t0)
  sw $t1, -820($s8)
  la $t0, -340($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -824($s8)
  lw $t0, -824($s8)
  lw $t1, 0($t0)
  sw $t1, -828($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, -828($s8)
  sw $t2, 8($sp)
  lw $t3, -820($s8)
  sw $t3, 12($sp)
  lw $t4, -812($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_155
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -832($s8)
  lw $t0, -832($s8)
  lw $t1, -804($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -348($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -836($s8)
  lw $t0, -836($s8)
  lw $t1, 0($t0)
  sw $t1, -840($s8)
  lw $t0, -840($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -844($s8)
  la $t0, -4($s8)
  lw $t1, -844($s8)
  add $t2, $t0, $t1
  sw $t2, -848($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -852($s8)
  lw $t0, -852($s8)
  lw $t1, 0($t0)
  sw $t1, -856($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -860($s8)
  lw $t0, -860($s8)
  lw $t1, 0($t0)
  sw $t1, -864($s8)
  la $t0, -340($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -868($s8)
  lw $t0, -868($s8)
  lw $t1, 0($t0)
  sw $t1, -872($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, -872($s8)
  sw $t2, 8($sp)
  lw $t3, -864($s8)
  sw $t3, 12($sp)
  lw $t4, -856($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -876($s8)
  lw $t0, -876($s8)
  lw $t1, -848($s8)
  sw $t0, 0($t1)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -880($s8)
  lw $t0, -880($s8)
  lw $t1, 0($t0)
  sw $t1, -884($s8)
  lw $t0, -884($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -888($s8)
  la $t0, -4($s8)
  lw $t1, -888($s8)
  add $t2, $t0, $t1
  sw $t2, -892($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -896($s8)
  la $t0, -348($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -900($s8)
  lw $t0, -900($s8)
  lw $t1, 0($t0)
  sw $t1, -904($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -908($s8)
  lw $t0, -908($s8)
  lw $t1, 0($t0)
  sw $t1, -912($s8)
  lw $t0, -904($s8)
  lw $t1, -912($s8)
  bge $t0, $t1, label950
  j label951
label950:
  li $t0, 1
  move $t1, $t0
  sw $t1, -896($s8)
label951:
  lw $t0, -896($s8)
  lw $t1, -892($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -916($s8)
  lw $t0, -916($s8)
  lw $t1, 0($t0)
  sw $t1, -920($s8)
  lw $t0, -920($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -924($s8)
  la $t0, -348($s8)
  lw $t1, -924($s8)
  add $t2, $t0, $t1
  sw $t2, -928($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -932($s8)
  lw $t0, -932($s8)
  lw $t1, 0($t0)
  sw $t1, -936($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -940($s8)
  lw $t0, -940($s8)
  lw $t1, 0($t0)
  sw $t1, -944($s8)
  la $t0, -340($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -948($s8)
  lw $t0, -948($s8)
  lw $t1, 0($t0)
  sw $t1, -952($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 16($s8)
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  lw $t3, -952($s8)
  sw $t3, 12($sp)
  lw $t4, -944($s8)
  sw $t4, 16($sp)
  lw $t5, -936($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -956($s8)
  lw $t0, -956($s8)
  lw $t1, -928($s8)
  sw $t0, 0($t1)
  lw $t0, -436($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label942
label943:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -960($s8)
  lw $t0, -960($s8)
  lw $t1, 0($t0)
  sw $t1, -964($s8)
  lw $t0, -964($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -968($s8)
  la $t0, -4($s8)
  lw $t1, -968($s8)
  add $t2, $t0, $t1
  sw $t2, -972($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -976($s8)
  lw $t0, -976($s8)
  lw $t1, 0($t0)
  sw $t1, -980($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -364326300
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  lw $t3, -980($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -984($s8)
  lw $t0, -984($s8)
  lw $t1, -972($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -988($s8)
  lw $t0, -988($s8)
  lw $t1, 0($t0)
  sw $t1, -992($s8)
  lw $t0, -992($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -996($s8)
  la $t0, -4($s8)
  lw $t1, -996($s8)
  add $t2, $t0, $t1
  sw $t2, -1000($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1004($s8)
  lw $t0, -1004($s8)
  lw $t1, 0($t0)
  sw $t1, -1008($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1008($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1012($s8)
  lw $t0, -1012($s8)
  lw $t1, -1000($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1016($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1020($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1024($s8)
  lw $t0, -1024($s8)
  lw $t1, 0($t0)
  sw $t1, -1028($s8)
  lw $t0, -1028($s8)
  li $t1, 0
  beq $t0, $t1, label953
  li $t0, -1650778212
  li $t1, 0
  bne $t0, $t1, label952
  j label953
label952:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1020($s8)
label953:
  lw $t0, -1020($s8)
  lw $t1, -1016($s8)
  sw $t0, 0($t1)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1032($s8)
  lw $t0, -1032($s8)
  lw $t1, 0($t0)
  sw $t1, -1036($s8)
  lw $t0, -1036($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1040($s8)
  la $t0, -4($s8)
  lw $t1, -1040($s8)
  add $t2, $t0, $t1
  sw $t2, -1044($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1048($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1052($s8)
  lw $t0, -1052($s8)
  lw $t1, 0($t0)
  sw $t1, -1056($s8)
  lw $t0, -1056($s8)
  lw $t1, 20($s8)
  ble $t0, $t1, label954
  j label955
label954:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1048($s8)
label955:
  lw $t0, -1048($s8)
  lw $t1, -1044($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1060($s8)
  lw $t0, -1060($s8)
  lw $t1, 0($t0)
  sw $t1, -1064($s8)
  lw $t0, -1064($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1068($s8)
  la $t0, -4($s8)
  lw $t1, -1068($s8)
  add $t2, $t0, $t1
  sw $t2, -1072($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -1067508645
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1076($s8)
  lw $t0, -1076($s8)
  lw $t1, -1072($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1080($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1084($s8)
  lw $t0, -1084($s8)
  lw $t1, 0($t0)
  sw $t1, -1088($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1092($s8)
  lw $t0, -1092($s8)
  lw $t1, 0($t0)
  sw $t1, -1096($s8)
  lw $t0, -1088($s8)
  lw $t1, -1096($s8)
  beq $t0, $t1, label956
  j label957
label956:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1080($s8)
label957:
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1100($s8)
  lw $t0, -1100($s8)
  lw $t1, 0($t0)
  sw $t1, -1104($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 16($s8)
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  lw $t3, -1104($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_156
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1108($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -284($s8)
  sw $t1, 4($sp)
  lw $t2, -248($s8)
  sw $t2, 8($sp)
  lw $t3, -68($s8)
  sw $t3, 12($sp)
  lw $t4, 12($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1112($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1116($s8)
  li $t0, 523141823
  lw $t1, -288($s8)
  bne $t0, $t1, label958
  j label959
label958:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1116($s8)
label959:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1116($s8)
  sw $t1, 4($sp)
  lw $t2, -1112($s8)
  sw $t2, 8($sp)
  lw $t3, -1108($s8)
  sw $t3, 12($sp)
  lw $t4, -1080($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_155
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1120($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1124($s8)
  lw $t0, -1124($s8)
  lw $t1, 0($t0)
  sw $t1, -1128($s8)
  lw $t0, -1128($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1132($s8)
  la $t0, -4($s8)
  lw $t1, -1132($s8)
  add $t2, $t0, $t1
  sw $t2, -1136($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1140($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1144($s8)
  lw $t0, -1144($s8)
  lw $t1, 0($t0)
  sw $t1, -1148($s8)
  lw $t0, -1148($s8)
  lw $t1, 20($s8)
  bgt $t0, $t1, label960
  j label961
label960:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1140($s8)
label961:
  lw $t0, -1140($s8)
  lw $t1, -1136($s8)
  sw $t0, 0($t1)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1152($s8)
  lw $t0, -1152($s8)
  lw $t1, 0($t0)
  sw $t1, -1156($s8)
  lw $t0, -1156($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1160($s8)
  la $t0, -4($s8)
  lw $t1, -1160($s8)
  add $t2, $t0, $t1
  sw $t2, -1164($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1168($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1172($s8)
  lw $t0, -1172($s8)
  lw $t1, 0($t0)
  sw $t1, -1176($s8)
  lw $t0, -1176($s8)
  li $t1, 0
  bne $t0, $t1, label962
  lw $t0, 20($s8)
  li $t1, 0
  bne $t0, $t1, label962
  j label963
label962:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1168($s8)
label963:
  lw $t0, -1168($s8)
  lw $t1, -1164($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label964:
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1180($s8)
  lw $t0, -1180($s8)
  lw $t1, 0($t0)
  sw $t1, -1184($s8)
  lw $t0, -1184($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1188($s8)
  la $t0, -4($s8)
  lw $t1, -1188($s8)
  add $t2, $t0, $t1
  sw $t2, -1192($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1196($s8)
  lw $t0, -1196($s8)
  lw $t1, 0($t0)
  sw $t1, -1200($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  lw $t4, -1200($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1204($s8)
  lw $t0, -1204($s8)
  lw $t1, -1192($s8)
  sw $t0, 0($t1)
  lw $t0, -1192($s8)
  lw $t1, 0($t0)
  sw $t1, -1208($s8)
  lw $t0, -1208($s8)
  move $t1, $t0
  sw $t1, -1212($s8)
  lw $t0, -1212($s8)
  li $t1, 0
  beq $t0, $t1, label965
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1216($s8)
  lw $t0, -1216($s8)
  lw $t1, 0($t0)
  sw $t1, -1220($s8)
  lw $t0, -1220($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1224($s8)
  la $t0, -4($s8)
  lw $t1, -1224($s8)
  add $t2, $t0, $t1
  sw $t2, -1228($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1232($s8)
  lw $t0, -1232($s8)
  lw $t1, 0($t0)
  sw $t1, -1236($s8)
  lw $t0, -1236($s8)
  lw $t1, -1228($s8)
  sw $t0, 0($t1)
  lw $t0, -1228($s8)
  lw $t1, 0($t0)
  sw $t1, -1240($s8)
  lw $t0, -1240($s8)
  move $t1, $t0
  sw $t1, -1244($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1248($s8)
  lw $t0, -1248($s8)
  lw $t1, 0($t0)
  sw $t1, -1252($s8)
  lw $t0, -1252($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1256($s8)
  la $t0, -4($s8)
  lw $t1, -1256($s8)
  add $t2, $t0, $t1
  sw $t2, -1260($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1264($s8)
  lw $t0, -1264($s8)
  lw $t1, 0($t0)
  sw $t1, -1268($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1268($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1272($s8)
  lw $t0, -1272($s8)
  lw $t1, -1260($s8)
  sw $t0, 0($t1)
  lw $t0, -1260($s8)
  lw $t1, 0($t0)
  sw $t1, -1276($s8)
  lw $t0, -1276($s8)
  move $t1, $t0
  sw $t1, -1280($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1284($s8)
  lw $t0, -1284($s8)
  lw $t1, 0($t0)
  sw $t1, -1288($s8)
  lw $t0, -1288($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1292($s8)
  la $t0, -4($s8)
  lw $t1, -1292($s8)
  add $t2, $t0, $t1
  sw $t2, -1296($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1300($s8)
  lw $t0, -1300($s8)
  lw $t1, 0($t0)
  sw $t1, -1304($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  li $t2, 2143156383
  sw $t2, 8($sp)
  lw $t3, 16($s8)
  sw $t3, 12($sp)
  lw $t4, 20($s8)
  sw $t4, 16($sp)
  lw $t5, -1304($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1308($s8)
  lw $t0, -1308($s8)
  lw $t1, -1296($s8)
  sw $t0, 0($t1)
  lw $t0, -1296($s8)
  lw $t1, 0($t0)
  sw $t1, -1312($s8)
  lw $t0, -1312($s8)
  move $t1, $t0
  sw $t1, -1316($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1320($s8)
  lw $t0, -1320($s8)
  lw $t1, 0($t0)
  sw $t1, -1324($s8)
  lw $t0, -1324($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1328($s8)
  la $t0, -4($s8)
  lw $t1, -1328($s8)
  add $t2, $t0, $t1
  sw $t2, -1332($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1336($s8)
  lw $t0, -1336($s8)
  lw $t1, 0($t0)
  sw $t1, -1340($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  li $t2, 1717148522
  sw $t2, 8($sp)
  lw $t3, 16($s8)
  sw $t3, 12($sp)
  lw $t4, 20($s8)
  sw $t4, 16($sp)
  lw $t5, -1340($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1344($s8)
  lw $t0, -1344($s8)
  lw $t1, -1332($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1348($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1352($s8)
  lw $t0, -1352($s8)
  lw $t1, 0($t0)
  sw $t1, -1356($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1360($s8)
  lw $t0, -1360($s8)
  lw $t1, 0($t0)
  sw $t1, -1364($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -988048506
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  lw $t3, -1364($s8)
  sw $t3, 12($sp)
  lw $t4, -1356($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1368($s8)
  lw $t0, -1368($s8)
  lw $t1, -1348($s8)
  sw $t0, 0($t1)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1372($s8)
  lw $t0, -1372($s8)
  lw $t1, 0($t0)
  sw $t1, -1376($s8)
  lw $t0, -1376($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1380($s8)
  la $t0, -4($s8)
  lw $t1, -1380($s8)
  add $t2, $t0, $t1
  sw $t2, -1384($s8)
  li $t0, 11
  move $t1, $t0
  sw $t1, -1388($s8)
  lw $t0, -1388($s8)
  lw $t1, -1384($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 4
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1392($s8)
  lw $t0, -1392($s8)
  lw $t1, 0($t0)
  sw $t1, -1396($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1400($s8)
  lw $t0, -1400($s8)
  lw $t1, 0($t0)
  sw $t1, -1404($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1408($s8)
  lw $t0, -1408($s8)
  lw $t1, 0($t0)
  sw $t1, -1412($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  li $t2, -583249387
  sw $t2, 8($sp)
  lw $t3, -1412($s8)
  sw $t3, 12($sp)
  lw $t4, -1404($s8)
  sw $t4, 16($sp)
  lw $t5, -1396($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1416($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 2100986550
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1420($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1424($s8)
  lw $t0, 16($s8)
  lw $t1, 12($s8)
  bge $t0, $t1, label966
  j label967
label966:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1424($s8)
label967:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -113167842
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1428($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1428($s8)
  sw $t1, 4($sp)
  lw $t2, -1424($s8)
  sw $t2, 8($sp)
  lw $t3, -1420($s8)
  sw $t3, 12($sp)
  lw $t4, -1416($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1432($s8)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1436($s8)
  lw $t0, -1436($s8)
  lw $t1, 0($t0)
  sw $t1, -1440($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1440($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1444($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1448($s8)
  lw $t0, -1448($s8)
  lw $t1, 0($t0)
  sw $t1, -1452($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1452($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1456($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1460($s8)
  lw $t0, -1460($s8)
  lw $t1, 0($t0)
  sw $t1, -1464($s8)
  lw $t0, -1464($s8)
  lw $t1, 20($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -1468($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1472($s8)
  lw $t0, 16($s8)
  li $t1, 0
  bne $t0, $t1, label968
  lw $t0, 12($s8)
  li $t1, 0
  bne $t0, $t1, label968
  j label969
label968:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1472($s8)
label969:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1472($s8)
  sw $t1, 4($sp)
  lw $t2, -1468($s8)
  sw $t2, 8($sp)
  lw $t3, -1456($s8)
  sw $t3, 12($sp)
  lw $t4, -1444($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1476($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1480($s8)
  lw $t0, -1480($s8)
  lw $t1, 0($t0)
  sw $t1, -1484($s8)
  lw $t0, -1484($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1488($s8)
  la $t0, -4($s8)
  lw $t1, -1488($s8)
  add $t2, $t0, $t1
  sw $t2, -1492($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1496($s8)
  lw $t0, -1496($s8)
  lw $t1, 0($t0)
  sw $t1, -1500($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 16($s8)
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  lw $t3, -1500($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1504($s8)
  lw $t0, -1504($s8)
  lw $t1, -1492($s8)
  sw $t0, 0($t1)
  lw $t0, -1244($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -1280($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -1316($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label964
label965:
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1508($s8)
  lw $t0, -1508($s8)
  lw $t1, 0($t0)
  sw $t1, -1512($s8)
  lw $t0, -1512($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1516($s8)
  la $t0, -4($s8)
  lw $t1, -1516($s8)
  add $t2, $t0, $t1
  sw $t2, -1520($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1524($s8)
  lw $t0, -1524($s8)
  lw $t1, 0($t0)
  sw $t1, -1528($s8)
  lw $t0, -1528($s8)
  lw $t1, 20($s8)
  sub $t2, $t0, $t1
  sw $t2, -1532($s8)
  lw $t0, -1532($s8)
  lw $t1, -1520($s8)
  sw $t0, 0($t1)
  lw $t0, -1520($s8)
  lw $t1, 0($t0)
  sw $t1, -1536($s8)
  lw $t0, -1536($s8)
  move $t1, $t0
  sw $t1, -1540($s8)
  lw $t0, -1540($s8)
  li $t1, 0
  beq $t0, $t1, label971
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1560($s8)
  lw $t0, -1560($s8)
  lw $t1, 0($t0)
  sw $t1, -1564($s8)
  lw $t0, -1564($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1568($s8)
  la $t0, -4($s8)
  lw $t1, -1568($s8)
  add $t2, $t0, $t1
  sw $t2, -1572($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1576($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1580($s8)
  lw $t0, -1580($s8)
  lw $t1, 0($t0)
  sw $t1, -1584($s8)
  lw $t0, -1584($s8)
  lw $t1, 20($s8)
  bne $t0, $t1, label972
  j label973
label972:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1576($s8)
label973:
  lw $t0, -1576($s8)
  lw $t1, -1572($s8)
  sw $t0, 0($t1)
  lw $t0, -1572($s8)
  lw $t1, 0($t0)
  sw $t1, -1588($s8)
  lw $t0, -1588($s8)
  move $t1, $t0
  sw $t1, -1592($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1548($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1596($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1600($s8)
  lw $t0, -1600($s8)
  lw $t1, 0($t0)
  sw $t1, -1604($s8)
  lw $t0, -1604($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1608($s8)
  la $t0, -4($s8)
  lw $t1, -1608($s8)
  add $t2, $t0, $t1
  sw $t2, -1612($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1616($s8)
  lw $t0, -1616($s8)
  lw $t1, 0($t0)
  sw $t1, -1620($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 16($s8)
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  li $t3, -302115719
  sw $t3, 12($sp)
  lw $t4, -1620($s8)
  sw $t4, 16($sp)
  li $t5, 31049238
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1624($s8)
  lw $t0, -1624($s8)
  lw $t1, -1612($s8)
  sw $t0, 0($t1)
  lw $t0, -1612($s8)
  lw $t1, 0($t0)
  sw $t1, -1628($s8)
  lw $t0, -1628($s8)
  move $t1, $t0
  sw $t1, -1632($s8)
  lw $t0, -1632($s8)
  lw $t1, -1596($s8)
  sw $t0, 0($t1)
  la $t0, -1548($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1636($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1640($s8)
  lw $t0, -1640($s8)
  lw $t1, 0($t0)
  sw $t1, -1644($s8)
  lw $t0, -1644($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1648($s8)
  la $t0, -4($s8)
  lw $t1, -1648($s8)
  add $t2, $t0, $t1
  sw $t2, -1652($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1656($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1660($s8)
  lw $t0, -1660($s8)
  lw $t1, 0($t0)
  sw $t1, -1664($s8)
  lw $t0, -1664($s8)
  lw $t1, 20($s8)
  ble $t0, $t1, label974
  j label975
label974:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1656($s8)
label975:
  lw $t0, -1656($s8)
  lw $t1, -1652($s8)
  sw $t0, 0($t1)
  lw $t0, -1652($s8)
  lw $t1, 0($t0)
  sw $t1, -1668($s8)
  lw $t0, -1668($s8)
  move $t1, $t0
  sw $t1, -1672($s8)
  lw $t0, -1672($s8)
  lw $t1, -1636($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1556($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1676($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1680($s8)
  lw $t0, -1680($s8)
  lw $t1, 0($t0)
  sw $t1, -1684($s8)
  lw $t0, -1684($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1688($s8)
  la $t0, -1548($s8)
  lw $t1, -1688($s8)
  add $t2, $t0, $t1
  sw $t2, -1692($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1696($s8)
  lw $t0, -1696($s8)
  lw $t1, 0($t0)
  sw $t1, -1700($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1704($s8)
  lw $t0, -1704($s8)
  lw $t1, 0($t0)
  sw $t1, -1708($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  lw $t4, -1708($s8)
  sw $t4, 16($sp)
  lw $t5, -1700($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1712($s8)
  lw $t0, -1712($s8)
  lw $t1, -1692($s8)
  sw $t0, 0($t1)
  lw $t0, -1692($s8)
  lw $t1, 0($t0)
  sw $t1, -1716($s8)
  lw $t0, -1716($s8)
  move $t1, $t0
  sw $t1, -1720($s8)
  lw $t0, -1720($s8)
  lw $t1, -1676($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1556($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1724($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1728($s8)
  lw $t0, -1728($s8)
  lw $t1, 0($t0)
  sw $t1, -1732($s8)
  lw $t0, -1732($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1736($s8)
  la $t0, -1548($s8)
  lw $t1, -1736($s8)
  add $t2, $t0, $t1
  sw $t2, -1740($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1744($s8)
  lw $t0, -1744($s8)
  lw $t1, 0($t0)
  sw $t1, -1748($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1752($s8)
  lw $t0, -1752($s8)
  lw $t1, 0($t0)
  sw $t1, -1756($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 16($s8)
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  lw $t3, -1756($s8)
  sw $t3, 12($sp)
  lw $t4, -1748($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_155
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1760($s8)
  lw $t0, -1760($s8)
  lw $t1, -1740($s8)
  sw $t0, 0($t1)
  lw $t0, -1740($s8)
  lw $t1, 0($t0)
  sw $t1, -1764($s8)
  lw $t0, -1764($s8)
  move $t1, $t0
  sw $t1, -1768($s8)
  lw $t0, -1768($s8)
  lw $t1, -1724($s8)
  sw $t0, 0($t1)
  la $t0, -1548($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1772($s8)
  lw $t0, -1772($s8)
  lw $t1, 0($t0)
  sw $t1, -1776($s8)
  lw $t0, -1776($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1780($s8)
  la $t0, -4($s8)
  lw $t1, -1780($s8)
  add $t2, $t0, $t1
  sw $t2, -1784($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1788($s8)
  la $t0, -1556($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1792($s8)
  lw $t0, -1792($s8)
  lw $t1, 0($t0)
  sw $t1, -1796($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1800($s8)
  lw $t0, -1800($s8)
  lw $t1, 0($t0)
  sw $t1, -1804($s8)
  lw $t0, -1796($s8)
  lw $t1, -1804($s8)
  beq $t0, $t1, label976
  j label977
label976:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1788($s8)
label977:
  lw $t0, -1788($s8)
  lw $t1, -1784($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1548($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1808($s8)
  lw $t0, -1808($s8)
  lw $t1, 0($t0)
  sw $t1, -1812($s8)
  lw $t0, -1812($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1816($s8)
  la $t0, -4($s8)
  lw $t1, -1816($s8)
  add $t2, $t0, $t1
  sw $t2, -1820($s8)
  la $t0, -1556($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1824($s8)
  lw $t0, -1824($s8)
  lw $t1, 0($t0)
  sw $t1, -1828($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1832($s8)
  lw $t0, -1832($s8)
  lw $t1, 0($t0)
  sw $t1, -1836($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1840($s8)
  lw $t0, -1840($s8)
  lw $t1, 0($t0)
  sw $t1, -1844($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, -1844($s8)
  sw $t2, 8($sp)
  lw $t3, -1836($s8)
  sw $t3, 12($sp)
  lw $t4, -1828($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1848($s8)
  lw $t0, -1848($s8)
  lw $t1, -1820($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1556($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1852($s8)
  lw $t0, -1852($s8)
  lw $t1, 0($t0)
  sw $t1, -1856($s8)
  lw $t0, -1856($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1860($s8)
  la $t0, -1548($s8)
  lw $t1, -1860($s8)
  add $t2, $t0, $t1
  sw $t2, -1864($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1868($s8)
  lw $t0, -1868($s8)
  lw $t1, 0($t0)
  sw $t1, -1872($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1876($s8)
  lw $t0, -1876($s8)
  lw $t1, 0($t0)
  sw $t1, -1880($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1884($s8)
  lw $t0, -1884($s8)
  lw $t1, 0($t0)
  sw $t1, -1888($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, -1888($s8)
  sw $t2, 8($sp)
  lw $t3, -1880($s8)
  sw $t3, 12($sp)
  lw $t4, -1872($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_155
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1892($s8)
  lw $t0, -1892($s8)
  lw $t1, -1864($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1548($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1896($s8)
  la $t0, -1556($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1900($s8)
  lw $t0, -1900($s8)
  lw $t1, 0($t0)
  sw $t1, -1904($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1908($s8)
  lw $t0, -1908($s8)
  lw $t1, 0($t0)
  sw $t1, -1912($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1916($s8)
  lw $t0, -1916($s8)
  lw $t1, 0($t0)
  sw $t1, -1920($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1924($s8)
  lw $t0, -1924($s8)
  lw $t1, 0($t0)
  sw $t1, -1928($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, -1928($s8)
  sw $t2, 8($sp)
  lw $t3, -1920($s8)
  sw $t3, 12($sp)
  lw $t4, -1912($s8)
  sw $t4, 16($sp)
  lw $t5, -1904($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1932($s8)
  lw $t0, -1932($s8)
  lw $t1, -1896($s8)
  sw $t0, 0($t1)
  la $t0, -1548($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1936($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1940($s8)
  lw $t0, -1940($s8)
  lw $t1, 0($t0)
  sw $t1, -1944($s8)
  lw $t0, -1944($s8)
  lw $t1, -1936($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1948($s8)
  lw $t0, -1948($s8)
  lw $t1, 0($t0)
  sw $t1, -1952($s8)
  la $t0, -1548($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1956($s8)
  lw $t0, -1956($s8)
  lw $t1, 0($t0)
  sw $t1, -1960($s8)
  lw $t0, -1952($s8)
  lw $t1, -1960($s8)
  mul $t2, $t0, $t1
  sw $t2, -1964($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1968($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1972($s8)
  lw $t0, -1972($s8)
  lw $t1, 0($t0)
  sw $t1, -1976($s8)
  lw $t0, -1976($s8)
  li $t1, 0
  beq $t0, $t1, label979
  li $t0, -848991729
  li $t1, 0
  bne $t0, $t1, label978
  j label979
label978:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1968($s8)
label979:
  la $t0, -1556($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1980($s8)
  lw $t0, -1980($s8)
  lw $t1, 0($t0)
  sw $t1, -1984($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1984($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1988($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1988($s8)
  sw $t1, 4($sp)
  lw $t2, -1968($s8)
  sw $t2, 8($sp)
  lw $t3, -1964($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_156
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1992($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1996($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2000($s8)
  lw $t0, -2000($s8)
  lw $t1, 0($t0)
  sw $t1, -2004($s8)
  la $t0, -1548($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2008($s8)
  lw $t0, -2008($s8)
  lw $t1, 0($t0)
  sw $t1, -2012($s8)
  lw $t0, -2004($s8)
  lw $t1, -2012($s8)
  beq $t0, $t1, label980
  j label981
label980:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1996($s8)
label981:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1996($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2016($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1548($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2020($s8)
  lw $t0, -2020($s8)
  lw $t1, 0($t0)
  sw $t1, -2024($s8)
  lw $t0, -2024($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2028($s8)
  la $t0, -4($s8)
  lw $t1, -2028($s8)
  add $t2, $t0, $t1
  sw $t2, -2032($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2036($s8)
  lw $t0, -2036($s8)
  lw $t1, 0($t0)
  sw $t1, -2040($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2040($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2044($s8)
  lw $t0, -2044($s8)
  lw $t1, -2032($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2048($s8)
  lw $t0, -2048($s8)
  lw $t1, 0($t0)
  sw $t1, -2052($s8)
  lw $t0, -2052($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2056($s8)
  la $t0, -4($s8)
  lw $t1, -2056($s8)
  add $t2, $t0, $t1
  sw $t2, -2060($s8)
  la $t0, -1548($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2064($s8)
  lw $t0, -2064($s8)
  lw $t1, 0($t0)
  sw $t1, -2068($s8)
  la $t0, -1556($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2072($s8)
  lw $t0, -2072($s8)
  lw $t1, 0($t0)
  sw $t1, -2076($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2080($s8)
  lw $t0, -2080($s8)
  lw $t1, 0($t0)
  sw $t1, -2084($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, -2084($s8)
  sw $t2, 8($sp)
  lw $t3, -2076($s8)
  sw $t3, 12($sp)
  lw $t4, -2068($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_155
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2088($s8)
  lw $t0, -2088($s8)
  lw $t1, -2060($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1548($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2092($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2096($s8)
  lw $t0, -2096($s8)
  lw $t1, 0($t0)
  sw $t1, -2100($s8)
  la $t0, -1556($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2104($s8)
  lw $t0, -2104($s8)
  lw $t1, 0($t0)
  sw $t1, -2108($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2112($s8)
  lw $t0, -2112($s8)
  lw $t1, 0($t0)
  sw $t1, -2116($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2120($s8)
  lw $t0, -2120($s8)
  lw $t1, 0($t0)
  sw $t1, -2124($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2124($s8)
  sw $t1, 4($sp)
  lw $t2, -2116($s8)
  sw $t2, 8($sp)
  lw $t3, -2108($s8)
  sw $t3, 12($sp)
  lw $t4, -2100($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2128($s8)
  lw $t0, -2128($s8)
  lw $t1, -2092($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1548($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2132($s8)
  lw $t0, -2132($s8)
  lw $t1, 0($t0)
  sw $t1, -2136($s8)
  lw $t0, -2136($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2140($s8)
  la $t0, -4($s8)
  lw $t1, -2140($s8)
  add $t2, $t0, $t1
  sw $t2, -2144($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2148($s8)
  lw $t0, -2148($s8)
  lw $t1, 0($t0)
  sw $t1, -2152($s8)
  la $t0, -180($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2156($s8)
  lw $t0, -2156($s8)
  lw $t1, 0($t0)
  sw $t1, -2160($s8)
  la $t0, -1556($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2164($s8)
  lw $t0, -2164($s8)
  lw $t1, 0($t0)
  sw $t1, -2168($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2168($s8)
  sw $t1, 4($sp)
  lw $t2, -2160($s8)
  sw $t2, 8($sp)
  lw $t3, -2152($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_156
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2172($s8)
  lw $t0, -2172($s8)
  lw $t1, -2144($s8)
  sw $t0, 0($t1)
  la $t0, -1556($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2176($s8)
  lw $t0, -2176($s8)
  lw $t1, 0($t0)
  sw $t1, -2180($s8)
  lw $t0, -2180($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2184($s8)
  la $t0, -1548($s8)
  lw $t1, -2184($s8)
  add $t2, $t0, $t1
  sw $t2, -2188($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2192($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2196($s8)
  lw $t0, -2196($s8)
  lw $t1, 0($t0)
  sw $t1, -2200($s8)
  lw $t0, -2200($s8)
  li $t1, 0
  bne $t0, $t1, label982
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2204($s8)
  lw $t0, -2204($s8)
  lw $t1, 0($t0)
  sw $t1, -2208($s8)
  lw $t0, -2208($s8)
  li $t1, 0
  bne $t0, $t1, label982
  j label983
label982:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2192($s8)
label983:
  lw $t0, -2192($s8)
  lw $t1, -2188($s8)
  sw $t0, 0($t1)
  lw $t0, -1592($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label965
label971:
  lw $t0, -248($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -284($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -288($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label937
label936:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2212($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2220($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2224($s8)
  lw $t0, -2224($s8)
  lw $t1, 0($t0)
  sw $t1, -2228($s8)
  lw $t0, -2228($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2232($s8)
  la $t0, -4($s8)
  lw $t1, -2232($s8)
  add $t2, $t0, $t1
  sw $t2, -2236($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -68($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, 16($s8)
  sw $t3, 12($sp)
  lw $t4, 20($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2240($s8)
  lw $t0, -2240($s8)
  lw $t1, -2236($s8)
  sw $t0, 0($t1)
  lw $t0, -2236($s8)
  lw $t1, 0($t0)
  sw $t1, -2244($s8)
  lw $t0, -2244($s8)
  move $t1, $t0
  sw $t1, -2248($s8)
  lw $t0, -2248($s8)
  lw $t1, -2220($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2252($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2256($s8)
  lw $t0, -2256($s8)
  lw $t1, 0($t0)
  sw $t1, -2260($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2264($s8)
  lw $t0, -2264($s8)
  lw $t1, 0($t0)
  sw $t1, -2268($s8)
  lw $t0, -2260($s8)
  lw $t1, -2268($s8)
  bgt $t0, $t1, label984
  j label985
label984:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2252($s8)
label985:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -591006213
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2272($s8)
  la $t0, -2212($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2276($s8)
  lw $t0, -2276($s8)
  lw $t1, 0($t0)
  sw $t1, -2280($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2280($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2284($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2284($s8)
  sw $t1, 4($sp)
  lw $t2, -2272($s8)
  sw $t2, 8($sp)
  lw $t3, -2252($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2288($s8)
  la $t0, -2216($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2292($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2296($s8)
  lw $t0, -2296($s8)
  lw $t1, 0($t0)
  sw $t1, -2300($s8)
  lw $t0, -2300($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2304($s8)
  la $t0, -4($s8)
  lw $t1, -2304($s8)
  add $t2, $t0, $t1
  sw $t2, -2308($s8)
  la $t0, -2212($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2312($s8)
  lw $t0, -2312($s8)
  lw $t1, 0($t0)
  sw $t1, -2316($s8)
  lw $t0, -2316($s8)
  lw $t1, 20($s8)
  sub $t2, $t0, $t1
  sw $t2, -2320($s8)
  lw $t0, -2320($s8)
  lw $t1, -2308($s8)
  sw $t0, 0($t1)
  lw $t0, -2308($s8)
  lw $t1, 0($t0)
  sw $t1, -2324($s8)
  lw $t0, -2324($s8)
  move $t1, $t0
  sw $t1, -2328($s8)
  lw $t0, -2328($s8)
  lw $t1, -2292($s8)
  sw $t0, 0($t1)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2332($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2336($s8)
  lw $t0, -2336($s8)
  lw $t1, 0($t0)
  sw $t1, -2340($s8)
  lw $t0, -2340($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2344($s8)
  la $t0, -4($s8)
  lw $t1, -2344($s8)
  add $t2, $t0, $t1
  sw $t2, -2348($s8)
  la $t0, -2212($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2352($s8)
  lw $t0, -2352($s8)
  lw $t1, 0($t0)
  sw $t1, -2356($s8)
  lw $t0, -2356($s8)
  li $t1, 1881501030
  sub $t2, $t0, $t1
  sw $t2, -2360($s8)
  lw $t0, -2360($s8)
  lw $t1, -2348($s8)
  sw $t0, 0($t1)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2364($s8)
  lw $t0, -2364($s8)
  lw $t1, 0($t0)
  sw $t1, -2368($s8)
  lw $t0, -2368($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2372($s8)
  la $t0, -4($s8)
  lw $t1, -2372($s8)
  add $t2, $t0, $t1
  sw $t2, -2376($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2380($s8)
  la $t0, -2212($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2384($s8)
  lw $t0, -2384($s8)
  lw $t1, 0($t0)
  sw $t1, -2388($s8)
  la $t0, -2216($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2392($s8)
  lw $t0, -2392($s8)
  lw $t1, 0($t0)
  sw $t1, -2396($s8)
  lw $t0, -2388($s8)
  lw $t1, -2396($s8)
  bne $t0, $t1, label986
  j label987
label986:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2380($s8)
label987:
  lw $t0, -2380($s8)
  lw $t1, -2376($s8)
  sw $t0, 0($t1)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2400($s8)
  lw $t0, -2400($s8)
  lw $t1, 0($t0)
  sw $t1, -2404($s8)
  lw $t0, -2404($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2408($s8)
  la $t0, -4($s8)
  lw $t1, -2408($s8)
  add $t2, $t0, $t1
  sw $t2, -2412($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2416($s8)
  la $t0, -2212($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2420($s8)
  lw $t0, -2420($s8)
  lw $t1, 0($t0)
  sw $t1, -2424($s8)
  lw $t0, -2424($s8)
  li $t1, 0
  beq $t0, $t1, label989
  la $t0, -2216($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2428($s8)
  lw $t0, -2428($s8)
  lw $t1, 0($t0)
  sw $t1, -2432($s8)
  lw $t0, -2432($s8)
  li $t1, 0
  bne $t0, $t1, label988
  j label989
label988:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2416($s8)
label989:
  lw $t0, -2416($s8)
  lw $t1, -2412($s8)
  sw $t0, 0($t1)
label990:
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2436($s8)
  lw $t0, -2436($s8)
  lw $t1, 0($t0)
  sw $t1, -2440($s8)
  lw $t0, -2440($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2444($s8)
  la $t0, -4($s8)
  lw $t1, -2444($s8)
  add $t2, $t0, $t1
  sw $t2, -2448($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2452($s8)
  li $t0, -999216748
  li $t1, -969931912
  bne $t0, $t1, label992
  j label993
label992:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2452($s8)
label993:
  lw $t0, -2452($s8)
  lw $t1, -2448($s8)
  sw $t0, 0($t1)
  lw $t0, -2448($s8)
  lw $t1, 0($t0)
  sw $t1, -2456($s8)
  lw $t0, -2456($s8)
  move $t1, $t0
  sw $t1, -2460($s8)
  lw $t0, -2460($s8)
  li $t1, 0
  beq $t0, $t1, label991
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2464($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2476($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2480($s8)
  lw $t0, -2480($s8)
  lw $t1, 0($t0)
  sw $t1, -2484($s8)
  lw $t0, -2484($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2488($s8)
  la $t0, -4($s8)
  lw $t1, -2488($s8)
  add $t2, $t0, $t1
  sw $t2, -2492($s8)
  la $t0, -2212($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2496($s8)
  lw $t0, -2496($s8)
  lw $t1, 0($t0)
  sw $t1, -2500($s8)
  la $t0, -2216($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2504($s8)
  lw $t0, -2504($s8)
  lw $t1, 0($t0)
  sw $t1, -2508($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, -2508($s8)
  sw $t2, 8($sp)
  lw $t3, -2500($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2512($s8)
  lw $t0, -2512($s8)
  lw $t1, -2492($s8)
  sw $t0, 0($t1)
  lw $t0, -2492($s8)
  lw $t1, 0($t0)
  sw $t1, -2516($s8)
  lw $t0, -2516($s8)
  move $t1, $t0
  sw $t1, -2520($s8)
  lw $t0, -2520($s8)
  lw $t1, -2476($s8)
  sw $t0, 0($t1)
  la $t0, -2472($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2524($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2528($s8)
  lw $t0, -2528($s8)
  lw $t1, 0($t0)
  sw $t1, -2532($s8)
  lw $t0, -2532($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2536($s8)
  la $t0, -4($s8)
  lw $t1, -2536($s8)
  add $t2, $t0, $t1
  sw $t2, -2540($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2544($s8)
  la $t0, -2212($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2548($s8)
  lw $t0, -2548($s8)
  lw $t1, 0($t0)
  sw $t1, -2552($s8)
  lw $t0, -2552($s8)
  li $t1, 0
  bne $t0, $t1, label995
  j label994
label994:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2544($s8)
label995:
  lw $t0, -2544($s8)
  lw $t1, -2540($s8)
  sw $t0, 0($t1)
  lw $t0, -2540($s8)
  lw $t1, 0($t0)
  sw $t1, -2556($s8)
  lw $t0, -2556($s8)
  move $t1, $t0
  sw $t1, -2560($s8)
  lw $t0, -2560($s8)
  lw $t1, -2524($s8)
  sw $t0, 0($t1)
  la $t0, -2472($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2564($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2568($s8)
  lw $t0, -2568($s8)
  lw $t1, 0($t0)
  sw $t1, -2572($s8)
  lw $t0, -2572($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2576($s8)
  la $t0, -4($s8)
  lw $t1, -2576($s8)
  add $t2, $t0, $t1
  sw $t2, -2580($s8)
  la $t0, -2212($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2584($s8)
  lw $t0, -2584($s8)
  lw $t1, 0($t0)
  sw $t1, -2588($s8)
  li $t0, -157860914
  lw $t1, -2588($s8)
  mul $t2, $t0, $t1
  sw $t2, -2592($s8)
  lw $t0, -2592($s8)
  lw $t1, -2580($s8)
  sw $t0, 0($t1)
  lw $t0, -2580($s8)
  lw $t1, 0($t0)
  sw $t1, -2596($s8)
  lw $t0, -2596($s8)
  move $t1, $t0
  sw $t1, -2600($s8)
  lw $t0, -2600($s8)
  lw $t1, -2564($s8)
  sw $t0, 0($t1)
  la $t0, -2472($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2604($s8)
  lw $t0, -2604($s8)
  lw $t1, 0($t0)
  sw $t1, -2608($s8)
  lw $t0, -2608($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2612($s8)
  la $t0, -4($s8)
  lw $t1, -2612($s8)
  add $t2, $t0, $t1
  sw $t2, -2616($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2620($s8)
  lw $t0, -2620($s8)
  lw $t1, 0($t0)
  sw $t1, -2624($s8)
  la $t0, -2212($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2628($s8)
  lw $t0, -2628($s8)
  lw $t1, 0($t0)
  sw $t1, -2632($s8)
  lw $t0, -2624($s8)
  lw $t1, -2632($s8)
  sub $t2, $t0, $t1
  sw $t2, -2636($s8)
  lw $t0, -2636($s8)
  lw $t1, -2616($s8)
  sw $t0, 0($t1)
  lw $t0, -2616($s8)
  lw $t1, 0($t0)
  sw $t1, -2640($s8)
  lw $t0, -2640($s8)
  move $t1, $t0
  sw $t1, -2644($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2648($s8)
  lw $t0, -2648($s8)
  lw $t1, 0($t0)
  sw $t1, -2652($s8)
  lw $t0, -2652($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2656($s8)
  la $t0, -2472($s8)
  lw $t1, -2656($s8)
  add $t2, $t0, $t1
  sw $t2, -2660($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2664($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2668($s8)
  lw $t0, -2668($s8)
  lw $t1, 0($t0)
  sw $t1, -2672($s8)
  lw $t0, -2672($s8)
  li $t1, 0
  bne $t0, $t1, label997
  j label996
label996:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2664($s8)
label997:
  lw $t0, -2664($s8)
  lw $t1, -2660($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2676($s8)
  lw $t0, -2676($s8)
  lw $t1, 0($t0)
  sw $t1, -2680($s8)
  lw $t0, -2680($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2684($s8)
  la $t0, -2472($s8)
  lw $t1, -2684($s8)
  add $t2, $t0, $t1
  sw $t2, -2688($s8)
  li $t0, -1244246895
  move $t1, $t0
  sw $t1, -2692($s8)
  lw $t0, -2692($s8)
  lw $t1, -2688($s8)
  sw $t0, 0($t1)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2696($s8)
  lw $t0, -2696($s8)
  lw $t1, 0($t0)
  sw $t1, -2700($s8)
  lw $t0, -2700($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2704($s8)
  la $t0, -4($s8)
  lw $t1, -2704($s8)
  add $t2, $t0, $t1
  sw $t2, -2708($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2712($s8)
  la $t0, -2472($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2716($s8)
  lw $t0, -2716($s8)
  lw $t1, 0($t0)
  sw $t1, -2720($s8)
  la $t0, -2212($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2724($s8)
  lw $t0, -2724($s8)
  lw $t1, 0($t0)
  sw $t1, -2728($s8)
  lw $t0, -2720($s8)
  lw $t1, -2728($s8)
  bne $t0, $t1, label998
  j label999
label998:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2712($s8)
label999:
  lw $t0, -2712($s8)
  lw $t1, -2708($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2732($s8)
  lw $t0, -2732($s8)
  lw $t1, 0($t0)
  sw $t1, -2736($s8)
  lw $t0, -2736($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2740($s8)
  la $t0, -2472($s8)
  lw $t1, -2740($s8)
  add $t2, $t0, $t1
  sw $t2, -2744($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2748($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2752($s8)
  lw $t0, -2752($s8)
  lw $t1, 0($t0)
  sw $t1, -2756($s8)
  lw $t0, -2756($s8)
  li $t1, -657043643
  bne $t0, $t1, label1000
  j label1001
label1000:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2748($s8)
label1001:
  lw $t0, -2748($s8)
  lw $t1, -2744($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2760($s8)
  lw $t0, -2760($s8)
  lw $t1, 0($t0)
  sw $t1, -2764($s8)
  lw $t0, -2764($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2768($s8)
  la $t0, -2472($s8)
  lw $t1, -2768($s8)
  add $t2, $t0, $t1
  sw $t2, -2772($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2776($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2780($s8)
  lw $t0, -2780($s8)
  lw $t1, 0($t0)
  sw $t1, -2784($s8)
  la $t0, -2212($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2788($s8)
  lw $t0, -2788($s8)
  lw $t1, 0($t0)
  sw $t1, -2792($s8)
  lw $t0, -2784($s8)
  lw $t1, -2792($s8)
  ble $t0, $t1, label1002
  j label1003
label1002:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2776($s8)
label1003:
  lw $t0, -2776($s8)
  lw $t1, -2772($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2796($s8)
  lw $t0, -2796($s8)
  lw $t1, 0($t0)
  sw $t1, -2800($s8)
  lw $t0, -2800($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2804($s8)
  la $t0, -4($s8)
  lw $t1, -2804($s8)
  add $t2, $t0, $t1
  sw $t2, -2808($s8)
  la $t0, -2212($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2812($s8)
  lw $t0, -2812($s8)
  lw $t1, 0($t0)
  sw $t1, -2816($s8)
  la $t0, -2216($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2820($s8)
  lw $t0, -2820($s8)
  lw $t1, 0($t0)
  sw $t1, -2824($s8)
  la $t0, -2464($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2828($s8)
  lw $t0, -2828($s8)
  lw $t1, 0($t0)
  sw $t1, -2832($s8)
  la $t0, -2472($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2836($s8)
  lw $t0, -2836($s8)
  lw $t1, 0($t0)
  sw $t1, -2840($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  lw $t2, -2840($s8)
  sw $t2, 8($sp)
  lw $t3, -2832($s8)
  sw $t3, 12($sp)
  lw $t4, -2824($s8)
  sw $t4, 16($sp)
  lw $t5, -2816($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2844($s8)
  lw $t0, -2844($s8)
  lw $t1, -2808($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2848($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2852($s8)
  lw $t0, -2852($s8)
  lw $t1, 0($t0)
  sw $t1, -2856($s8)
  la $t0, -2212($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2860($s8)
  lw $t0, -2860($s8)
  lw $t1, 0($t0)
  sw $t1, -2864($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2864($s8)
  sw $t1, 4($sp)
  lw $t2, -2856($s8)
  sw $t2, 8($sp)
  li $t3, 1256553780
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_156
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2868($s8)
  lw $t0, -2868($s8)
  lw $t1, -2848($s8)
  sw $t0, 0($t1)
  lw $t0, -2644($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label990
label991:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2872($s8)
  lw $t0, -2872($s8)
  lw $t1, 0($t0)
  sw $t1, -2876($s8)
  lw $t0, -2876($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2880($s8)
  la $t0, -4($s8)
  lw $t1, -2880($s8)
  add $t2, $t0, $t1
  sw $t2, -2884($s8)
  la $t0, -2212($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2888($s8)
  lw $t0, -2888($s8)
  lw $t1, 0($t0)
  sw $t1, -2892($s8)
  la $t0, -2216($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2896($s8)
  lw $t0, -2896($s8)
  lw $t1, 0($t0)
  sw $t1, -2900($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2900($s8)
  sw $t1, 4($sp)
  li $t2, -1463838063
  sw $t2, 8($sp)
  lw $t3, -2892($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2904($s8)
  lw $t0, -2904($s8)
  lw $t1, -2884($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2908($s8)
  lw $t0, -2908($s8)
  lw $t1, 0($t0)
  sw $t1, -2912($s8)
  lw $t0, -2912($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2916($s8)
  la $t0, -4($s8)
  lw $t1, -2916($s8)
  add $t2, $t0, $t1
  sw $t2, -2920($s8)
  la $t0, -2212($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2924($s8)
  lw $t0, -2924($s8)
  lw $t1, 0($t0)
  sw $t1, -2928($s8)
  la $t0, -2216($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2932($s8)
  lw $t0, -2932($s8)
  lw $t1, 0($t0)
  sw $t1, -2936($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -539246170
  sw $t1, 4($sp)
  lw $t2, 16($s8)
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  lw $t4, -2936($s8)
  sw $t4, 16($sp)
  lw $t5, -2928($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2940($s8)
  lw $t0, -2940($s8)
  lw $t1, -2920($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2944($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2948($s8)
  lw $t0, -2948($s8)
  lw $t1, 0($t0)
  sw $t1, -2952($s8)
  li $t0, 729532525
  lw $t1, -2952($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -2956($s8)
  lw $t0, -2956($s8)
  lw $t1, -2944($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2960($s8)
  lw $t0, -2960($s8)
  lw $t1, 0($t0)
  sw $t1, -2964($s8)
  lw $t0, -2964($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2968($s8)
  la $t0, -4($s8)
  lw $t1, -2968($s8)
  add $t2, $t0, $t1
  sw $t2, -2972($s8)
  la $t0, -2212($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2976($s8)
  lw $t0, -2976($s8)
  lw $t1, 0($t0)
  sw $t1, -2980($s8)
  la $t0, -2216($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2984($s8)
  lw $t0, -2984($s8)
  lw $t1, 0($t0)
  sw $t1, -2988($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 16($s8)
  sw $t1, 4($sp)
  lw $t2, 20($s8)
  sw $t2, 8($sp)
  lw $t3, -2988($s8)
  sw $t3, 12($sp)
  lw $t4, -2980($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2992($s8)
  lw $t0, -2992($s8)
  lw $t1, -2972($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2996($s8)
  lw $t0, -2996($s8)
  lw $t1, 0($t0)
  sw $t1, -3000($s8)
  lw $t0, -3000($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -3004($s8)
  la $t0, -4($s8)
  lw $t1, -3004($s8)
  add $t2, $t0, $t1
  sw $t2, -3008($s8)
  la $t0, -2212($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3012($s8)
  lw $t0, -3012($s8)
  lw $t1, 0($t0)
  sw $t1, -3016($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3016($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3020($s8)
  lw $t0, -3020($s8)
  lw $t1, -3008($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 14
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, -997410117
  move $t1, $t0
  sw $t1, -3040($s8)
  li $t0, -584259248
  move $t1, $t0
  sw $t1, -3044($s8)
  li $t0, -1112125886
  move $t1, $t0
  sw $t1, -3048($s8)
  li $t0, -1299151614
  move $t1, $t0
  sw $t1, -3052($s8)
  li $t0, -585443898
  move $t1, $t0
  sw $t1, -3056($s8)
  lw $t0, 8($s8)
  li $t1, 4
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3028($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3060($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3064($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3068($s8)
  lw $t0, -3068($s8)
  lw $t1, 0($t0)
  sw $t1, -3072($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3076($s8)
  lw $t0, -3076($s8)
  lw $t1, 0($t0)
  sw $t1, -3080($s8)
  lw $t0, -3072($s8)
  lw $t1, -3080($s8)
  blt $t0, $t1, label1004
  j label1005
label1004:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3064($s8)
label1005:
  la $t0, -2212($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3084($s8)
  lw $t0, -3084($s8)
  lw $t1, 0($t0)
  sw $t1, -3088($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3088($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3092($s8)
  la $t0, -2216($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3096($s8)
  lw $t0, -3096($s8)
  lw $t1, 0($t0)
  sw $t1, -3100($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -68($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, 16($s8)
  sw $t3, 12($sp)
  lw $t4, 20($s8)
  sw $t4, 16($sp)
  lw $t5, -3100($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3104($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3048($s8)
  sw $t1, 4($sp)
  lw $t2, -3044($s8)
  sw $t2, 8($sp)
  lw $t3, -3040($s8)
  sw $t3, 12($sp)
  lw $t4, -2288($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3108($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3112($s8)
  lw $t0, -3052($s8)
  lw $t1, -3056($s8)
  bgt $t0, $t1, label1006
  j label1007
label1006:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3112($s8)
label1007:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3112($s8)
  sw $t1, 4($sp)
  lw $t2, -3108($s8)
  sw $t2, 8($sp)
  lw $t3, -3104($s8)
  sw $t3, 12($sp)
  lw $t4, -3092($s8)
  sw $t4, 16($sp)
  lw $t5, -3064($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3116($s8)
  lw $t0, -3116($s8)
  lw $t1, -3060($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3028($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3120($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3124($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3128($s8)
  lw $t0, -3128($s8)
  lw $t1, 0($t0)
  sw $t1, -3132($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3136($s8)
  lw $t0, -3136($s8)
  lw $t1, 0($t0)
  sw $t1, -3140($s8)
  lw $t0, -3132($s8)
  lw $t1, -3140($s8)
  beq $t0, $t1, label1008
  j label1009
label1008:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3124($s8)
label1009:
  la $t0, -2212($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3144($s8)
  lw $t0, -3144($s8)
  lw $t1, 0($t0)
  sw $t1, -3148($s8)
  la $t0, -2216($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3152($s8)
  lw $t0, -3152($s8)
  lw $t1, 0($t0)
  sw $t1, -3156($s8)
  lw $t0, -3148($s8)
  lw $t1, -3156($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -3160($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3164($s8)
  lw $t0, 20($s8)
  li $t1, 0
  bne $t0, $t1, label1010
  lw $t0, 16($s8)
  li $t1, 0
  bne $t0, $t1, label1010
  j label1011
label1010:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3164($s8)
label1011:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3164($s8)
  sw $t1, 4($sp)
  lw $t2, -3160($s8)
  sw $t2, 8($sp)
  lw $t3, -3124($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_156
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3168($s8)
  lw $t0, -3168($s8)
  lw $t1, -3120($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3172($s8)
  la $t0, -3028($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3176($s8)
  lw $t0, -3176($s8)
  lw $t1, 0($t0)
  sw $t1, -3180($s8)
  lw $t0, -3180($s8)
  li $t1, 2102350225
  blt $t0, $t1, label1012
  j label1013
label1012:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3172($s8)
label1013:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3172($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3184($s8)
  la $t0, -3036($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3188($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3192($s8)
  lw $t0, -3192($s8)
  lw $t1, 0($t0)
  sw $t1, -3196($s8)
  lw $t0, -3196($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -3200($s8)
  la $t0, -3028($s8)
  lw $t1, -3200($s8)
  add $t2, $t0, $t1
  sw $t2, -3204($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3208($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3212($s8)
  lw $t0, -3212($s8)
  lw $t1, 0($t0)
  sw $t1, -3216($s8)
  la $t0, -2212($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3220($s8)
  lw $t0, -3220($s8)
  lw $t1, 0($t0)
  sw $t1, -3224($s8)
  lw $t0, -3216($s8)
  lw $t1, -3224($s8)
  ble $t0, $t1, label1014
  j label1015
label1014:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3208($s8)
label1015:
  lw $t0, -3208($s8)
  lw $t1, -3204($s8)
  sw $t0, 0($t1)
  lw $t0, -3204($s8)
  lw $t1, 0($t0)
  sw $t1, -3228($s8)
  lw $t0, -3228($s8)
  move $t1, $t0
  sw $t1, -3232($s8)
  lw $t0, -3232($s8)
  lw $t1, -3188($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3036($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3236($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3240($s8)
  lw $t0, -3240($s8)
  lw $t1, 0($t0)
  sw $t1, -3244($s8)
  lw $t0, -3244($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -3248($s8)
  la $t0, -4($s8)
  lw $t1, -3248($s8)
  add $t2, $t0, $t1
  sw $t2, -3252($s8)
  la $t0, -2212($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3256($s8)
  lw $t0, -3256($s8)
  lw $t1, 0($t0)
  sw $t1, -3260($s8)
  la $t0, -3028($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3264($s8)
  lw $t0, -3264($s8)
  lw $t1, 0($t0)
  sw $t1, -3268($s8)
  la $t0, -2216($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3272($s8)
  lw $t0, -3272($s8)
  lw $t1, 0($t0)
  sw $t1, -3276($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3276($s8)
  sw $t1, 4($sp)
  lw $t2, -3268($s8)
  sw $t2, 8($sp)
  lw $t3, -3260($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_156
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3280($s8)
  lw $t0, -3280($s8)
  lw $t1, -3252($s8)
  sw $t0, 0($t1)
  lw $t0, -3252($s8)
  lw $t1, 0($t0)
  sw $t1, -3284($s8)
  lw $t0, -3284($s8)
  move $t1, $t0
  sw $t1, -3288($s8)
  lw $t0, -3288($s8)
  lw $t1, -3236($s8)
  sw $t0, 0($t1)
  la $t0, -3028($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3292($s8)
  lw $t0, -3292($s8)
  lw $t1, 0($t0)
  sw $t1, -3296($s8)
  lw $t0, -3296($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -3300($s8)
  la $t0, -4($s8)
  lw $t1, -3300($s8)
  add $t2, $t0, $t1
  sw $t2, -3304($s8)
  la $t0, -3036($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3308($s8)
  lw $t0, -3308($s8)
  lw $t1, 0($t0)
  sw $t1, -3312($s8)
  lw $t0, -3312($s8)
  lw $t1, -3304($s8)
  sw $t0, 0($t1)
  la $t0, -3028($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3316($s8)
  lw $t0, -3316($s8)
  lw $t1, 0($t0)
  sw $t1, -3320($s8)
  lw $t0, -3320($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -3324($s8)
  la $t0, -4($s8)
  lw $t1, -3324($s8)
  add $t2, $t0, $t1
  sw $t2, -3328($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3332($s8)
  lw $t0, -3332($s8)
  lw $t1, 0($t0)
  sw $t1, -3336($s8)
  la $t0, -2212($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3340($s8)
  lw $t0, -3340($s8)
  lw $t1, 0($t0)
  sw $t1, -3344($s8)
  lw $t0, -3336($s8)
  lw $t1, -3344($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -3348($s8)
  lw $t0, -3348($s8)
  lw $t1, -3328($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3352($s8)
  la $t0, -3028($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3356($s8)
  lw $t0, -3356($s8)
  lw $t1, 0($t0)
  sw $t1, -3360($s8)
  la $t0, -3036($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3364($s8)
  lw $t0, -3364($s8)
  lw $t1, 0($t0)
  sw $t1, -3368($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3372($s8)
  lw $t0, -3372($s8)
  lw $t1, 0($t0)
  sw $t1, -3376($s8)
  la $t0, -2212($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3380($s8)
  lw $t0, -3380($s8)
  lw $t1, 0($t0)
  sw $t1, -3384($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3384($s8)
  sw $t1, 4($sp)
  lw $t2, -3376($s8)
  sw $t2, 8($sp)
  li $t3, -1477462237
  sw $t3, 12($sp)
  lw $t4, -3368($s8)
  sw $t4, 16($sp)
  lw $t5, -3360($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3388($s8)
  lw $t0, -3388($s8)
  lw $t1, -3352($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3392($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3396($s8)
  lw $t0, -3396($s8)
  lw $t1, 0($t0)
  sw $t1, -3400($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3400($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3404($s8)
  lw $t0, -3404($s8)
  lw $t1, -3392($s8)
  sw $t0, 0($t1)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3408($s8)
  lw $t0, -3408($s8)
  lw $t1, 0($t0)
  sw $t1, -3412($s8)
  lw $t0, -3412($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -3416($s8)
  la $t0, -4($s8)
  lw $t1, -3416($s8)
  add $t2, $t0, $t1
  sw $t2, -3420($s8)
  la $t0, -3028($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3424($s8)
  lw $t0, -3424($s8)
  lw $t1, 0($t0)
  sw $t1, -3428($s8)
  lw $t0, -3428($s8)
  lw $t1, -3420($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3036($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3432($s8)
  lw $t0, -3432($s8)
  lw $t1, 0($t0)
  sw $t1, -3436($s8)
  lw $t0, -3436($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -3440($s8)
  la $t0, -3028($s8)
  lw $t1, -3440($s8)
  add $t2, $t0, $t1
  sw $t2, -3444($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3448($s8)
  lw $t0, -3448($s8)
  lw $t1, 0($t0)
  sw $t1, -3452($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3452($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3456($s8)
  lw $t0, -3456($s8)
  lw $t1, -3444($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3460($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3464($s8)
  la $t0, -3028($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3468($s8)
  lw $t0, -3468($s8)
  lw $t1, 0($t0)
  sw $t1, -3472($s8)
  la $t0, -3036($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3476($s8)
  lw $t0, -3476($s8)
  lw $t1, 0($t0)
  sw $t1, -3480($s8)
  lw $t0, -3472($s8)
  lw $t1, -3480($s8)
  blt $t0, $t1, label1016
  j label1017
label1016:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3464($s8)
label1017:
  lw $t0, -3464($s8)
  lw $t1, -3460($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3028($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3484($s8)
  lw $t0, -3484($s8)
  lw $t1, 0($t0)
  sw $t1, -3488($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3492($s8)
  la $t0, -3036($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3496($s8)
  lw $t0, -3496($s8)
  lw $t1, 0($t0)
  sw $t1, -3500($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3504($s8)
  lw $t0, -3504($s8)
  lw $t1, 0($t0)
  sw $t1, -3508($s8)
  lw $t0, -3500($s8)
  lw $t1, -3508($s8)
  beq $t0, $t1, label1018
  j label1019
label1018:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3492($s8)
label1019:
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3512($s8)
  lw $t0, -3512($s8)
  lw $t1, 0($t0)
  sw $t1, -3516($s8)
  li $t0, -1410287523
  lw $t1, -3516($s8)
  sub $t2, $t0, $t1
  sw $t2, -3520($s8)
  la $t0, -2212($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3524($s8)
  lw $t0, -3524($s8)
  lw $t1, 0($t0)
  sw $t1, -3528($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3528($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3532($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3532($s8)
  sw $t1, 4($sp)
  lw $t2, -3520($s8)
  sw $t2, 8($sp)
  lw $t3, -3492($s8)
  sw $t3, 12($sp)
  lw $t4, -3488($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3536($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3540($s8)
  lw $t0, -3540($s8)
  lw $t1, 0($t0)
  sw $t1, -3544($s8)
  lw $t0, -3544($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -3548($s8)
  la $t0, -3028($s8)
  lw $t1, -3548($s8)
  add $t2, $t0, $t1
  sw $t2, -3552($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3556($s8)
  lw $t0, -3556($s8)
  lw $t1, 0($t0)
  sw $t1, -3560($s8)
  lw $t0, -3560($s8)
  lw $t1, -3552($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3028($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3564($s8)
  lw $t0, -3564($s8)
  lw $t1, 0($t0)
  sw $t1, -3568($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3572($s8)
  lw $t0, -3572($s8)
  lw $t1, 0($t0)
  sw $t1, -3576($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3580($s8)
  lw $t0, -3580($s8)
  lw $t1, 0($t0)
  sw $t1, -3584($s8)
  la $t0, -2212($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3588($s8)
  lw $t0, -3588($s8)
  lw $t1, 0($t0)
  sw $t1, -3592($s8)
  la $t0, -3036($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3596($s8)
  lw $t0, -3596($s8)
  lw $t1, 0($t0)
  sw $t1, -3600($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3600($s8)
  sw $t1, 4($sp)
  lw $t2, -3592($s8)
  sw $t2, 8($sp)
  lw $t3, -3584($s8)
  sw $t3, 12($sp)
  lw $t4, -3576($s8)
  sw $t4, 16($sp)
  lw $t5, -3568($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3604($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3608($s8)
  la $t0, -2216($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3612($s8)
  lw $t0, -3612($s8)
  lw $t1, 0($t0)
  sw $t1, -3616($s8)
  lw $t0, -3616($s8)
  lw $t1, 20($s8)
  blt $t0, $t1, label1020
  j label1021
label1020:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3608($s8)
label1021:
  li $t0, 0
  move $t1, $t0
  sw $t1, -3620($s8)
  lw $t0, 16($s8)
  lw $t1, 12($s8)
  blt $t0, $t1, label1022
  j label1023
label1022:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3620($s8)
label1023:
  li $t0, -299634688
  lw $t1, -68($s8)
  add $t2, $t0, $t1
  sw $t2, -3624($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3624($s8)
  sw $t1, 4($sp)
  lw $t2, -3620($s8)
  sw $t2, 8($sp)
  lw $t3, -3608($s8)
  sw $t3, 12($sp)
  lw $t4, -3604($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3628($s8)
  lw $t0, -3040($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -3044($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -3048($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -3052($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -3056($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -3184($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -2288($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
label937:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3632($s8)
  lw $t0, -3632($s8)
  lw $t1, 0($t0)
  sw $t1, -3636($s8)
  lw $t0, -3636($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -3640($s8)
  la $t0, -4($s8)
  lw $t1, -3640($s8)
  add $t2, $t0, $t1
  sw $t2, -3644($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 941374044
  sw $t1, 4($sp)
  li $t2, 451578932
  sw $t2, 8($sp)
  lw $t3, 20($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3648($s8)
  lw $t0, -3648($s8)
  lw $t1, -3644($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 4
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3652($s8)
  lw $t0, -3652($s8)
  lw $t1, 0($t0)
  sw $t1, -3656($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3656($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3660($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 1253688895
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3664($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3668($s8)
  lw $t0, -3668($s8)
  lw $t1, 0($t0)
  sw $t1, -3672($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  li $t2, -1635046137
  sw $t2, 8($sp)
  li $t3, 67756194
  sw $t3, 12($sp)
  lw $t4, -3672($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_155
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3676($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3676($s8)
  sw $t1, 4($sp)
  lw $t2, -3664($s8)
  sw $t2, 8($sp)
  lw $t3, -3660($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_156
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3680($s8)
  lw $t0, -68($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3684($s8)
  lw $t0, -3684($s8)
  lw $t1, 0($t0)
  sw $t1, -3688($s8)
  lw $t0, -3688($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -3692($s8)
  la $t0, -4($s8)
  lw $t1, -3692($s8)
  add $t2, $t0, $t1
  sw $t2, -3696($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 20($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3700($s8)
  lw $t0, -3700($s8)
  lw $t1, -3696($s8)
  sw $t0, 0($t1)
  lw $t0, -3696($s8)
  lw $t1, 0($t0)
  sw $t1, -3704($s8)
  lw $t0, -3704($s8)
  move $t1, $t0
  sw $t1, -3708($s8)
  lw $t0, -3708($s8)
  move $v0, $t0
  move $sp, $s8
  lw $s8, 0($sp)
  addi $sp, $sp, 4
  jr $ra

i_func_157:
  addi $sp, $sp, -4
  sw $s8, 0($sp)
  move $s8, $sp
  addi $sp, $sp, -4096
  lw $t0, 8($s8)
  li $t1, 0
  bgt $t0, $t1, label1024
  li $t0, -849649821
  move $v0, $t0
  move $sp, $s8
  lw $s8, 0($sp)
  addi $sp, $sp, 4
  jr $ra
  j label1025
label1024:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label1025:
  li $t0, 1616614256
  move $t1, $t0
  sw $t1, -16($s8)
  li $t0, 1351933116
  move $t1, $t0
  sw $t1, -20($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -24($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -28($s8)
  lw $t0, -16($s8)
  lw $t1, -20($s8)
  ble $t0, $t1, label1026
  j label1027
label1026:
  li $t0, 1
  move $t1, $t0
  sw $t1, -28($s8)
label1027:
  lw $t0, -28($s8)
  move $t1, $t0
  sw $t1, 12($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -32($s8)
  lw $t0, -32($s8)
  lw $t1, -24($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  lw $t0, 12($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -36($s8)
  la $t0, -4($s8)
  lw $t1, -36($s8)
  add $t2, $t0, $t1
  sw $t2, -40($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -20230329
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -44($s8)
  lw $t0, -44($s8)
  lw $t1, -40($s8)
  sw $t0, 0($t1)
  lw $t0, -40($s8)
  lw $t1, 0($t0)
  sw $t1, -48($s8)
  lw $t0, -48($s8)
  move $t1, $t0
  sw $t1, -52($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -56($s8)
  lw $t0, 12($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -60($s8)
  la $t0, -4($s8)
  lw $t1, -60($s8)
  add $t2, $t0, $t1
  sw $t2, -64($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 1936253420
  sw $t1, 4($sp)
  li $t2, -2109143774
  sw $t2, 8($sp)
  lw $t3, -20($s8)
  sw $t3, 12($sp)
  lw $t4, -16($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -68($s8)
  lw $t0, -68($s8)
  lw $t1, -64($s8)
  sw $t0, 0($t1)
  lw $t0, -64($s8)
  lw $t1, 0($t0)
  sw $t1, -72($s8)
  lw $t0, -72($s8)
  move $t1, $t0
  sw $t1, -76($s8)
  lw $t0, -76($s8)
  lw $t1, -56($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -80($s8)
  lw $t0, 12($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -84($s8)
  la $t0, -4($s8)
  lw $t1, -84($s8)
  add $t2, $t0, $t1
  sw $t2, -88($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -92($s8)
  lw $t0, -16($s8)
  lw $t1, -20($s8)
  ble $t0, $t1, label1028
  j label1029
label1028:
  li $t0, 1
  move $t1, $t0
  sw $t1, -92($s8)
label1029:
  lw $t0, -92($s8)
  lw $t1, -88($s8)
  sw $t0, 0($t1)
  lw $t0, -88($s8)
  lw $t1, 0($t0)
  sw $t1, -96($s8)
  lw $t0, -96($s8)
  move $t1, $t0
  sw $t1, -100($s8)
  lw $t0, -100($s8)
  lw $t1, -80($s8)
  sw $t0, 0($t1)
  li $t0, 0
  move $t1, $t0
  sw $t1, -104($s8)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -108($s8)
  lw $t0, -108($s8)
  lw $t1, 0($t0)
  sw $t1, -112($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -116($s8)
  lw $t0, -116($s8)
  lw $t1, 0($t0)
  sw $t1, -120($s8)
  lw $t0, -112($s8)
  lw $t1, -120($s8)
  mul $t2, $t0, $t1
  sw $t2, -124($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  li $t2, -517028655
  sw $t2, 8($sp)
  li $t3, -2031771181
  sw $t3, 12($sp)
  lw $t4, 12($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -128($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 1477612025
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_157
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -132($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -136($s8)
  lw $t0, -20($s8)
  li $t1, 0
  bne $t0, $t1, label1030
  lw $t0, -52($s8)
  li $t1, 0
  bne $t0, $t1, label1030
  j label1031
label1030:
  li $t0, 1
  move $t1, $t0
  sw $t1, -136($s8)
label1031:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -136($s8)
  sw $t1, 4($sp)
  lw $t2, -132($s8)
  sw $t2, 8($sp)
  lw $t3, -128($s8)
  sw $t3, 12($sp)
  lw $t4, -124($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -140($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -144($s8)
  lw $t0, -144($s8)
  lw $t1, 0($t0)
  sw $t1, -148($s8)
  lw $t0, -148($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -152($s8)
  la $t0, -4($s8)
  lw $t1, -152($s8)
  add $t2, $t0, $t1
  sw $t2, -156($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -160($s8)
  lw $t0, 12($s8)
  lw $t1, -16($s8)
  beq $t0, $t1, label1032
  j label1033
label1032:
  li $t0, 1
  move $t1, $t0
  sw $t1, -160($s8)
label1033:
  lw $t0, -160($s8)
  lw $t1, -156($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -164($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -168($s8)
  lw $t0, 12($s8)
  lw $t1, -16($s8)
  bgt $t0, $t1, label1034
  j label1035
label1034:
  li $t0, 1
  move $t1, $t0
  sw $t1, -168($s8)
label1035:
  lw $t0, -168($s8)
  lw $t1, -164($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -172($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -176($s8)
  lw $t0, -176($s8)
  lw $t1, 0($t0)
  sw $t1, -180($s8)
  lw $t0, -180($s8)
  lw $t1, 12($s8)
  sub $t2, $t0, $t1
  sw $t2, -184($s8)
  lw $t0, -184($s8)
  lw $t1, -172($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 14
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -188($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -192($s8)
  lw $t0, 12($s8)
  lw $t1, -16($s8)
  ble $t0, $t1, label1038
  j label1039
label1038:
  li $t0, 1
  move $t1, $t0
  sw $t1, -192($s8)
label1039:
  lw $t0, -192($s8)
  lw $t1, -188($s8)
  sw $t0, 0($t1)
  lw $t0, -188($s8)
  lw $t1, 0($t0)
  sw $t1, -196($s8)
  lw $t0, -196($s8)
  move $t1, $t0
  sw $t1, -200($s8)
  lw $t0, -200($s8)
  li $t1, 0
  beq $t0, $t1, label1036
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -208($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -212($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -216($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -220($s8)
  lw $t0, -220($s8)
  lw $t1, -216($s8)
  sw $t0, 0($t1)
  lw $t0, -216($s8)
  lw $t1, 0($t0)
  sw $t1, -224($s8)
  lw $t0, -224($s8)
  move $t1, $t0
  sw $t1, -228($s8)
  lw $t0, -228($s8)
  lw $t1, -212($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -208($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -232($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -236($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -240($s8)
  lw $t0, -240($s8)
  lw $t1, 0($t0)
  sw $t1, -244($s8)
  lw $t0, -244($s8)
  li $t1, 0
  beq $t0, $t1, label1041
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -248($s8)
  lw $t0, -248($s8)
  lw $t1, 0($t0)
  sw $t1, -252($s8)
  lw $t0, -252($s8)
  li $t1, 0
  bne $t0, $t1, label1040
  j label1041
label1040:
  li $t0, 1
  move $t1, $t0
  sw $t1, -236($s8)
label1041:
  li $t0, 0
  move $t1, $t0
  sw $t1, -256($s8)
  lw $t0, 12($s8)
  lw $t1, -16($s8)
  bne $t0, $t1, label1042
  j label1043
label1042:
  li $t0, 1
  move $t1, $t0
  sw $t1, -256($s8)
label1043:
  li $t0, 0
  move $t1, $t0
  sw $t1, -260($s8)
  lw $t0, -20($s8)
  lw $t1, -52($s8)
  bgt $t0, $t1, label1044
  j label1045
label1044:
  li $t0, 1
  move $t1, $t0
  sw $t1, -260($s8)
label1045:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -260($s8)
  sw $t1, 4($sp)
  lw $t2, -256($s8)
  sw $t2, 8($sp)
  lw $t3, -236($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_156
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -264($s8)
  lw $t0, -264($s8)
  lw $t1, -232($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -268($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -272($s8)
  la $t0, -208($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -276($s8)
  lw $t0, -276($s8)
  lw $t1, 0($t0)
  sw $t1, -280($s8)
  li $t0, 726499044
  lw $t1, -280($s8)
  bge $t0, $t1, label1046
  j label1047
label1046:
  li $t0, 1
  move $t1, $t0
  sw $t1, -272($s8)
label1047:
  lw $t0, -272($s8)
  lw $t1, -268($s8)
  sw $t0, 0($t1)
  lw $t0, -268($s8)
  lw $t1, 0($t0)
  sw $t1, -284($s8)
  lw $t0, -284($s8)
  move $t1, $t0
  sw $t1, -288($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -292($s8)
  lw $t0, -292($s8)
  lw $t1, 0($t0)
  sw $t1, -296($s8)
  lw $t0, -296($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -300($s8)
  la $t0, -12($s8)
  lw $t1, -300($s8)
  add $t2, $t0, $t1
  sw $t2, -304($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -308($s8)
  la $t0, -208($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -312($s8)
  lw $t0, -312($s8)
  lw $t1, 0($t0)
  sw $t1, -316($s8)
  lw $t0, -316($s8)
  lw $t1, 12($s8)
  bge $t0, $t1, label1048
  j label1049
label1048:
  li $t0, 1
  move $t1, $t0
  sw $t1, -308($s8)
label1049:
  lw $t0, -308($s8)
  lw $t1, -304($s8)
  sw $t0, 0($t1)
  lw $t0, -304($s8)
  lw $t1, 0($t0)
  sw $t1, -320($s8)
  lw $t0, -320($s8)
  move $t1, $t0
  sw $t1, -324($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -328($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -332($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -336($s8)
  lw $t0, -336($s8)
  lw $t1, 0($t0)
  sw $t1, -340($s8)
  lw $t0, -340($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -344($s8)
  la $t0, -4($s8)
  lw $t1, -344($s8)
  add $t2, $t0, $t1
  sw $t2, -348($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -352($s8)
  la $t0, -208($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -356($s8)
  lw $t0, -356($s8)
  lw $t1, 0($t0)
  sw $t1, -360($s8)
  lw $t0, -360($s8)
  li $t1, 0
  bne $t0, $t1, label1050
  li $t0, -286187741
  li $t1, 0
  bne $t0, $t1, label1050
  j label1051
label1050:
  li $t0, 1
  move $t1, $t0
  sw $t1, -352($s8)
label1051:
  lw $t0, -352($s8)
  lw $t1, -348($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -364($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -368($s8)
  li $t0, 542344799
  li $t1, 0
  beq $t0, $t1, label1053
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -372($s8)
  lw $t0, -372($s8)
  lw $t1, 0($t0)
  sw $t1, -376($s8)
  lw $t0, -376($s8)
  li $t1, 0
  bne $t0, $t1, label1052
  j label1053
label1052:
  li $t0, 1
  move $t1, $t0
  sw $t1, -368($s8)
label1053:
  lw $t0, -368($s8)
  lw $t1, -364($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -380($s8)
  lw $t0, -380($s8)
  lw $t1, 0($t0)
  sw $t1, -384($s8)
  lw $t0, -384($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -388($s8)
  la $t0, -4($s8)
  lw $t1, -388($s8)
  add $t2, $t0, $t1
  sw $t2, -392($s8)
  la $t0, -208($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -396($s8)
  lw $t0, -396($s8)
  lw $t1, 0($t0)
  sw $t1, -400($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, -400($s8)
  sw $t3, 12($sp)
  li $t4, -1219510383
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -404($s8)
  lw $t0, -404($s8)
  lw $t1, -392($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -408($s8)
  li $t0, 596709612
  move $t1, $t0
  sw $t1, -412($s8)
  lw $t0, -412($s8)
  lw $t1, -408($s8)
  sw $t0, 0($t1)
label1054:
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -416($s8)
  la $t0, -208($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -420($s8)
  lw $t0, -420($s8)
  lw $t1, 0($t0)
  sw $t1, -424($s8)
  lw $t0, 12($s8)
  sw $t0, 0($sp)
  lw $t1, -424($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_div
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -428($s8)
  lw $t0, -428($s8)
  lw $t1, -416($s8)
  sw $t0, 0($t1)
  lw $t0, -416($s8)
  lw $t1, 0($t0)
  sw $t1, -432($s8)
  lw $t0, -432($s8)
  move $t1, $t0
  sw $t1, -436($s8)
  lw $t0, -436($s8)
  li $t1, 0
  beq $t0, $t1, label1055
  li $t0, 0
  move $t1, $t0
  sw $t1, -440($s8)
  lw $t0, -328($s8)
  li $t1, 10
  blt $t0, $t1, label1056
  j label1057
label1056:
  li $t0, 1
  move $t1, $t0
  sw $t1, -440($s8)
label1057:
  lw $t0, -440($s8)
  li $t1, 0
  beq $t0, $t1, label1055
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -448($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -452($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -456($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -460($s8)
  lw $t0, -460($s8)
  lw $t1, 0($t0)
  sw $t1, -464($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -20($s8)
  sw $t1, 4($sp)
  lw $t2, -16($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  lw $t4, -464($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -468($s8)
  lw $t0, -468($s8)
  lw $t1, -456($s8)
  sw $t0, 0($t1)
  lw $t0, -456($s8)
  lw $t1, 0($t0)
  sw $t1, -472($s8)
  lw $t0, -472($s8)
  move $t1, $t0
  sw $t1, -476($s8)
  lw $t0, -476($s8)
  lw $t1, -452($s8)
  sw $t0, 0($t1)
  la $t0, -448($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -480($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -484($s8)
  lw $t0, -484($s8)
  lw $t1, 0($t0)
  sw $t1, -488($s8)
  lw $t0, -488($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -492($s8)
  la $t0, -4($s8)
  lw $t1, -492($s8)
  add $t2, $t0, $t1
  sw $t2, -496($s8)
  la $t0, -208($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -500($s8)
  lw $t0, -500($s8)
  lw $t1, 0($t0)
  sw $t1, -504($s8)
  lw $t0, -504($s8)
  lw $t1, -496($s8)
  sw $t0, 0($t1)
  lw $t0, -496($s8)
  lw $t1, 0($t0)
  sw $t1, -508($s8)
  lw $t0, -508($s8)
  move $t1, $t0
  sw $t1, -512($s8)
  lw $t0, -512($s8)
  lw $t1, -480($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -516($s8)
  li $t0, 1648168006
  move $t1, $t0
  sw $t1, -520($s8)
  lw $t0, -520($s8)
  lw $t1, -516($s8)
  sw $t0, 0($t1)
  lw $t0, -516($s8)
  lw $t1, 0($t0)
  sw $t1, -524($s8)
  lw $t0, -524($s8)
  move $t1, $t0
  sw $t1, -528($s8)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -532($s8)
  lw $t0, -532($s8)
  lw $t1, 0($t0)
  sw $t1, -536($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -540($s8)
  lw $t0, -540($s8)
  lw $t1, 0($t0)
  sw $t1, -544($s8)
  lw $t0, -536($s8)
  lw $t1, -544($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -548($s8)
  la $t0, -208($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -552($s8)
  lw $t0, -552($s8)
  lw $t1, 0($t0)
  sw $t1, -556($s8)
  la $t0, -448($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -560($s8)
  lw $t0, -560($s8)
  lw $t1, 0($t0)
  sw $t1, -564($s8)
  lw $t0, -564($s8)
  sw $t0, 0($sp)
  lw $t1, -556($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_mul
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -568($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  li $t3, 1503621229
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_156
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -572($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -288($s8)
  sw $t1, 4($sp)
  lw $t2, -52($s8)
  sw $t2, 8($sp)
  lw $t3, -20($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -576($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -576($s8)
  sw $t1, 4($sp)
  lw $t2, -572($s8)
  sw $t2, 8($sp)
  lw $t3, -568($s8)
  sw $t3, 12($sp)
  lw $t4, -548($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -580($s8)
  lw $t0, -328($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -328($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -584($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -588($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -592($s8)
  lw $t0, -592($s8)
  lw $t1, 0($t0)
  sw $t1, -596($s8)
  lw $t0, -596($s8)
  li $t1, 0
  bne $t0, $t1, label1059
  j label1058
label1058:
  li $t0, 1
  move $t1, $t0
  sw $t1, -588($s8)
label1059:
  lw $t0, -588($s8)
  lw $t1, -584($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -600($s8)
  la $t0, -208($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -604($s8)
  lw $t0, -604($s8)
  lw $t1, 0($t0)
  sw $t1, -608($s8)
  la $t0, -448($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -612($s8)
  lw $t0, -612($s8)
  lw $t1, 0($t0)
  sw $t1, -616($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, -616($s8)
  sw $t3, 12($sp)
  li $t4, 93910623
  sw $t4, 16($sp)
  lw $t5, -608($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -620($s8)
  lw $t0, -620($s8)
  lw $t1, -600($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -624($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -628($s8)
  la $t0, -448($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -632($s8)
  lw $t0, -632($s8)
  lw $t1, 0($t0)
  sw $t1, -636($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -640($s8)
  lw $t0, -640($s8)
  lw $t1, 0($t0)
  sw $t1, -644($s8)
  lw $t0, -636($s8)
  lw $t1, -644($s8)
  beq $t0, $t1, label1060
  j label1061
label1060:
  li $t0, 1
  move $t1, $t0
  sw $t1, -628($s8)
label1061:
  lw $t0, -628($s8)
  lw $t1, -624($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 4
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -648($s8)
  lw $t0, -648($s8)
  lw $t1, 0($t0)
  sw $t1, -652($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -652($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_157
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -656($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -660($s8)
  lw $t0, -660($s8)
  lw $t1, 0($t0)
  sw $t1, -664($s8)
  la $t0, -208($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -668($s8)
  lw $t0, -668($s8)
  lw $t1, 0($t0)
  sw $t1, -672($s8)
  la $t0, -448($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -676($s8)
  lw $t0, -676($s8)
  lw $t1, 0($t0)
  sw $t1, -680($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -680($s8)
  sw $t1, 4($sp)
  lw $t2, -672($s8)
  sw $t2, 8($sp)
  lw $t3, -664($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -684($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -52($s8)
  sw $t1, 4($sp)
  lw $t2, -20($s8)
  sw $t2, 8($sp)
  lw $t3, -16($s8)
  sw $t3, 12($sp)
  lw $t4, 12($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -688($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -692($s8)
  lw $t0, -288($s8)
  li $t1, 0
  bne $t0, $t1, label1063
  j label1062
label1062:
  li $t0, 1
  move $t1, $t0
  sw $t1, -692($s8)
label1063:
  li $t0, 0
  move $t1, $t0
  sw $t1, -696($s8)
  lw $t0, -324($s8)
  lw $t1, -528($s8)
  beq $t0, $t1, label1064
  j label1065
label1064:
  li $t0, 1
  move $t1, $t0
  sw $t1, -696($s8)
label1065:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -696($s8)
  sw $t1, 4($sp)
  lw $t2, -692($s8)
  sw $t2, 8($sp)
  lw $t3, -688($s8)
  sw $t3, 12($sp)
  lw $t4, -684($s8)
  sw $t4, 16($sp)
  lw $t5, -656($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -700($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -704($s8)
  la $t0, -208($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -708($s8)
  lw $t0, -708($s8)
  lw $t1, 0($t0)
  sw $t1, -712($s8)
  la $t0, -448($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -716($s8)
  lw $t0, -716($s8)
  lw $t1, 0($t0)
  sw $t1, -720($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -724($s8)
  lw $t0, -724($s8)
  lw $t1, 0($t0)
  sw $t1, -728($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, -728($s8)
  sw $t2, 8($sp)
  lw $t3, -720($s8)
  sw $t3, 12($sp)
  lw $t4, -712($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -732($s8)
  lw $t0, -732($s8)
  lw $t1, -704($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -736($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -740($s8)
  la $t0, -448($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -744($s8)
  lw $t0, -744($s8)
  lw $t1, 0($t0)
  sw $t1, -748($s8)
  lw $t0, -748($s8)
  li $t1, 0
  bne $t0, $t1, label1066
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -752($s8)
  lw $t0, -752($s8)
  lw $t1, 0($t0)
  sw $t1, -756($s8)
  lw $t0, -756($s8)
  li $t1, 0
  bne $t0, $t1, label1066
  j label1067
label1066:
  li $t0, 1
  move $t1, $t0
  sw $t1, -740($s8)
label1067:
  lw $t0, -740($s8)
  lw $t1, -736($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -760($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -764($s8)
  la $t0, -448($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -768($s8)
  lw $t0, -768($s8)
  lw $t1, 0($t0)
  sw $t1, -772($s8)
  lw $t0, -772($s8)
  lw $t1, -764($s8)
  sw $t0, 0($t1)
  lw $t0, -764($s8)
  lw $t1, 0($t0)
  sw $t1, -776($s8)
  lw $t0, -776($s8)
  move $t1, $t0
  sw $t1, -780($s8)
  lw $t0, -780($s8)
  lw $t1, -760($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -784($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -788($s8)
  la $t0, -448($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -792($s8)
  lw $t0, -792($s8)
  lw $t1, 0($t0)
  sw $t1, -796($s8)
  lw $t0, -796($s8)
  lw $t1, -788($s8)
  sw $t0, 0($t1)
  lw $t0, -788($s8)
  lw $t1, 0($t0)
  sw $t1, -800($s8)
  lw $t0, -800($s8)
  move $t1, $t0
  sw $t1, -804($s8)
  lw $t0, -804($s8)
  lw $t1, -784($s8)
  sw $t0, 0($t1)
  lw $t0, -528($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -580($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label1054
label1055:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label1068:
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -808($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -812($s8)
  lw $t0, -812($s8)
  lw $t1, 0($t0)
  sw $t1, -816($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 1076468056
  sw $t1, 4($sp)
  lw $t2, -816($s8)
  sw $t2, 8($sp)
  li $t3, -561975159
  sw $t3, 12($sp)
  li $t4, -1414146780
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -820($s8)
  lw $t0, -820($s8)
  lw $t1, -808($s8)
  sw $t0, 0($t1)
  lw $t0, -808($s8)
  lw $t1, 0($t0)
  sw $t1, -824($s8)
  lw $t0, -824($s8)
  move $t1, $t0
  sw $t1, -828($s8)
  lw $t0, -828($s8)
  li $t1, 0
  beq $t0, $t1, label1069
  li $t0, 0
  move $t1, $t0
  sw $t1, -832($s8)
  lw $t0, -332($s8)
  li $t1, 10
  blt $t0, $t1, label1070
  j label1071
label1070:
  li $t0, 1
  move $t1, $t0
  sw $t1, -832($s8)
label1071:
  lw $t0, -832($s8)
  li $t1, 0
  beq $t0, $t1, label1069
  la $t0, -836($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -844($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -848($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -852($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -856($s8)
  lw $t0, -856($s8)
  lw $t1, 0($t0)
  sw $t1, -860($s8)
  lw $t0, -860($s8)
  lw $t1, 12($s8)
  blt $t0, $t1, label1072
  j label1073
label1072:
  li $t0, 1
  move $t1, $t0
  sw $t1, -852($s8)
label1073:
  lw $t0, -852($s8)
  lw $t1, -848($s8)
  sw $t0, 0($t1)
  lw $t0, -848($s8)
  lw $t1, 0($t0)
  sw $t1, -864($s8)
  lw $t0, -864($s8)
  move $t1, $t0
  sw $t1, -868($s8)
  lw $t0, -868($s8)
  lw $t1, -844($s8)
  sw $t0, 0($t1)
  la $t0, -840($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -872($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -876($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -880($s8)
  lw $t0, -880($s8)
  lw $t1, 0($t0)
  sw $t1, -884($s8)
  la $t0, -208($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -888($s8)
  lw $t0, -888($s8)
  lw $t1, 0($t0)
  sw $t1, -892($s8)
  lw $t0, -884($s8)
  lw $t1, -892($s8)
  mul $t2, $t0, $t1
  sw $t2, -896($s8)
  lw $t0, -896($s8)
  lw $t1, -876($s8)
  sw $t0, 0($t1)
  lw $t0, -876($s8)
  lw $t1, 0($t0)
  sw $t1, -900($s8)
  lw $t0, -900($s8)
  move $t1, $t0
  sw $t1, -904($s8)
  lw $t0, -904($s8)
  lw $t1, -872($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -908($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -912($s8)
  la $t0, -836($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -916($s8)
  lw $t0, -916($s8)
  lw $t1, 0($t0)
  sw $t1, -920($s8)
  la $t0, -840($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -924($s8)
  lw $t0, -924($s8)
  lw $t1, 0($t0)
  sw $t1, -928($s8)
  lw $t0, -920($s8)
  lw $t1, -928($s8)
  blt $t0, $t1, label1074
  j label1075
label1074:
  li $t0, 1
  move $t1, $t0
  sw $t1, -912($s8)
label1075:
  lw $t0, -912($s8)
  lw $t1, -908($s8)
  sw $t0, 0($t1)
  lw $t0, -908($s8)
  lw $t1, 0($t0)
  sw $t1, -932($s8)
  lw $t0, -932($s8)
  move $t1, $t0
  sw $t1, -936($s8)
  lw $t0, -332($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -332($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -940($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -944($s8)
  lw $t0, -944($s8)
  lw $t1, 0($t0)
  sw $t1, -948($s8)
  la $t0, -836($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -952($s8)
  lw $t0, -952($s8)
  lw $t1, 0($t0)
  sw $t1, -956($s8)
  la $t0, -840($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -960($s8)
  lw $t0, -960($s8)
  lw $t1, 0($t0)
  sw $t1, -964($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, -964($s8)
  sw $t2, 8($sp)
  lw $t3, -956($s8)
  sw $t3, 12($sp)
  lw $t4, -948($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -968($s8)
  lw $t0, -968($s8)
  lw $t1, -940($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -972($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -976($s8)
  la $t0, -836($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -980($s8)
  lw $t0, -980($s8)
  lw $t1, 0($t0)
  sw $t1, -984($s8)
  la $t0, -208($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -988($s8)
  lw $t0, -988($s8)
  lw $t1, 0($t0)
  sw $t1, -992($s8)
  lw $t0, -984($s8)
  lw $t1, -992($s8)
  blt $t0, $t1, label1076
  j label1077
label1076:
  li $t0, 1
  move $t1, $t0
  sw $t1, -976($s8)
label1077:
  lw $t0, -976($s8)
  lw $t1, -972($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -996($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1000($s8)
  lw $t0, -1000($s8)
  lw $t1, 0($t0)
  sw $t1, -1004($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1008($s8)
  lw $t0, -1008($s8)
  lw $t1, 0($t0)
  sw $t1, -1012($s8)
  lw $t0, -1004($s8)
  lw $t1, -1012($s8)
  bge $t0, $t1, label1078
  j label1079
label1078:
  li $t0, 1
  move $t1, $t0
  sw $t1, -996($s8)
label1079:
  la $t0, -208($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1016($s8)
  lw $t0, -1016($s8)
  lw $t1, 0($t0)
  sw $t1, -1020($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1024($s8)
  la $t0, -836($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1028($s8)
  lw $t0, -1028($s8)
  lw $t1, 0($t0)
  sw $t1, -1032($s8)
  la $t0, -840($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1036($s8)
  lw $t0, -1036($s8)
  lw $t1, 0($t0)
  sw $t1, -1040($s8)
  lw $t0, -1032($s8)
  lw $t1, -1040($s8)
  bge $t0, $t1, label1080
  j label1081
label1080:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1024($s8)
label1081:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -1008174978
  sw $t1, 4($sp)
  lw $t2, -1024($s8)
  sw $t2, 8($sp)
  lw $t3, -1020($s8)
  sw $t3, 12($sp)
  lw $t4, -996($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1044($s8)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1048($s8)
  lw $t0, -1048($s8)
  lw $t1, 0($t0)
  sw $t1, -1052($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1052($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_157
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1056($s8)
  la $t0, -208($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1060($s8)
  lw $t0, -1060($s8)
  lw $t1, 0($t0)
  sw $t1, -1064($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1068($s8)
  lw $t0, -1068($s8)
  lw $t1, 0($t0)
  sw $t1, -1072($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1072($s8)
  sw $t1, 4($sp)
  li $t2, -266473864
  sw $t2, 8($sp)
  lw $t3, -1064($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1076($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1080($s8)
  la $t0, -836($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1084($s8)
  lw $t0, -1084($s8)
  lw $t1, 0($t0)
  sw $t1, -1088($s8)
  la $t0, -840($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1092($s8)
  lw $t0, -1092($s8)
  lw $t1, 0($t0)
  sw $t1, -1096($s8)
  lw $t0, -1088($s8)
  lw $t1, -1096($s8)
  bgt $t0, $t1, label1082
  j label1083
label1082:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1080($s8)
label1083:
  li $t0, 1316262654
  move $t1, $t0
  sw $t1, 12($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -1100($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1100($s8)
  sw $t1, 4($sp)
  lw $t2, -1080($s8)
  sw $t2, 8($sp)
  lw $t3, -1076($s8)
  sw $t3, 12($sp)
  lw $t4, -1056($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_155
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1104($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1108($s8)
  lw $t0, -1108($s8)
  lw $t1, 0($t0)
  sw $t1, -1112($s8)
  lw $t0, -1112($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1116($s8)
  la $t0, -12($s8)
  lw $t1, -1116($s8)
  add $t2, $t0, $t1
  sw $t2, -1120($s8)
  la $t0, -208($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1124($s8)
  la $t0, -836($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1128($s8)
  lw $t0, -1128($s8)
  lw $t1, 0($t0)
  sw $t1, -1132($s8)
  lw $t0, -1132($s8)
  lw $t1, -1124($s8)
  sw $t0, 0($t1)
  lw $t0, -1124($s8)
  lw $t1, 0($t0)
  sw $t1, -1136($s8)
  lw $t0, -1136($s8)
  move $t1, $t0
  sw $t1, -1140($s8)
  lw $t0, -1140($s8)
  lw $t1, -1120($s8)
  sw $t0, 0($t1)
  lw $t0, -936($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label1068
label1069:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1144($s8)
  lw $t0, -1144($s8)
  lw $t1, 0($t0)
  sw $t1, -1148($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1148($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1152($s8)
  lw $t0, -288($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -324($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label1037
label1036:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1160($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1164($s8)
  lw $t0, -1164($s8)
  lw $t1, 0($t0)
  sw $t1, -1168($s8)
  lw $t0, -1168($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1172($s8)
  la $t0, -4($s8)
  lw $t1, -1172($s8)
  add $t2, $t0, $t1
  sw $t2, -1176($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 1111070591
  sw $t1, 4($sp)
  lw $t2, -20($s8)
  sw $t2, 8($sp)
  lw $t3, -16($s8)
  sw $t3, 12($sp)
  lw $t4, 12($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1180($s8)
  lw $t0, -1180($s8)
  lw $t1, -1176($s8)
  sw $t0, 0($t1)
  lw $t0, -1176($s8)
  lw $t1, 0($t0)
  sw $t1, -1184($s8)
  lw $t0, -1184($s8)
  move $t1, $t0
  sw $t1, -1188($s8)
  lw $t0, -1188($s8)
  lw $t1, -1160($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -723514303
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1192($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1196($s8)
  lw $t0, -1196($s8)
  lw $t1, 0($t0)
  sw $t1, -1200($s8)
  lw $t0, -1200($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1204($s8)
  la $t0, -12($s8)
  lw $t1, -1204($s8)
  add $t2, $t0, $t1
  sw $t2, -1208($s8)
  la $t0, -1156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1212($s8)
  lw $t0, -1212($s8)
  lw $t1, 0($t0)
  sw $t1, -1216($s8)
  lw $t0, -1216($s8)
  lw $t1, 12($s8)
  mul $t2, $t0, $t1
  sw $t2, -1220($s8)
  lw $t0, -1220($s8)
  lw $t1, -1208($s8)
  sw $t0, 0($t1)
  lw $t0, -1208($s8)
  lw $t1, 0($t0)
  sw $t1, -1224($s8)
  lw $t0, -1224($s8)
  move $t1, $t0
  sw $t1, -1228($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1232($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1236($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1240($s8)
  lw $t0, -1240($s8)
  lw $t1, 0($t0)
  sw $t1, -1244($s8)
  lw $t0, -1244($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1248($s8)
  la $t0, -4($s8)
  lw $t1, -1248($s8)
  add $t2, $t0, $t1
  sw $t2, -1252($s8)
  la $t0, -1156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1256($s8)
  lw $t0, -1256($s8)
  lw $t1, 0($t0)
  sw $t1, -1260($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -81754061
  sw $t1, 4($sp)
  li $t2, 625525995
  sw $t2, 8($sp)
  lw $t3, -16($s8)
  sw $t3, 12($sp)
  lw $t4, 12($s8)
  sw $t4, 16($sp)
  lw $t5, -1260($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1264($s8)
  lw $t0, -1264($s8)
  lw $t1, -1252($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1268($s8)
  lw $t0, -1268($s8)
  lw $t1, 0($t0)
  sw $t1, -1272($s8)
  lw $t0, -1272($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1276($s8)
  la $t0, -12($s8)
  lw $t1, -1276($s8)
  add $t2, $t0, $t1
  sw $t2, -1280($s8)
  la $t0, -1156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1284($s8)
  lw $t0, -1284($s8)
  lw $t1, 0($t0)
  sw $t1, -1288($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -20($s8)
  sw $t1, 4($sp)
  li $t2, -899577818
  sw $t2, 8($sp)
  lw $t3, -16($s8)
  sw $t3, 12($sp)
  lw $t4, 12($s8)
  sw $t4, 16($sp)
  lw $t5, -1288($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1292($s8)
  lw $t0, -1292($s8)
  lw $t1, -1280($s8)
  sw $t0, 0($t1)
label1084:
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1296($s8)
  lw $t0, -1296($s8)
  lw $t1, 0($t0)
  sw $t1, -1300($s8)
  lw $t0, -1300($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1304($s8)
  la $t0, -4($s8)
  lw $t1, -1304($s8)
  add $t2, $t0, $t1
  sw $t2, -1308($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1312($s8)
  la $t0, -1156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1316($s8)
  lw $t0, -1316($s8)
  lw $t1, 0($t0)
  sw $t1, -1320($s8)
  lw $t0, -1320($s8)
  lw $t1, 12($s8)
  ble $t0, $t1, label1086
  j label1087
label1086:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1312($s8)
label1087:
  lw $t0, -1312($s8)
  lw $t1, -1308($s8)
  sw $t0, 0($t1)
  lw $t0, -1308($s8)
  lw $t1, 0($t0)
  sw $t1, -1324($s8)
  lw $t0, -1324($s8)
  move $t1, $t0
  sw $t1, -1328($s8)
  lw $t0, -1328($s8)
  li $t1, 0
  beq $t0, $t1, label1085
  la $t0, -1336($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1348($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1352($s8)
  lw $t0, -1352($s8)
  lw $t1, 0($t0)
  sw $t1, -1356($s8)
  lw $t0, -1356($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1360($s8)
  la $t0, -12($s8)
  lw $t1, -1360($s8)
  add $t2, $t0, $t1
  sw $t2, -1364($s8)
  la $t0, -1156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1368($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -1372($s8)
  lw $t0, -1372($s8)
  lw $t1, -1368($s8)
  sw $t0, 0($t1)
  lw $t0, -1368($s8)
  lw $t1, 0($t0)
  sw $t1, -1376($s8)
  lw $t0, -1376($s8)
  move $t1, $t0
  sw $t1, -1380($s8)
  lw $t0, -1380($s8)
  lw $t1, -1364($s8)
  sw $t0, 0($t1)
  lw $t0, -1364($s8)
  lw $t1, 0($t0)
  sw $t1, -1384($s8)
  lw $t0, -1384($s8)
  move $t1, $t0
  sw $t1, -1388($s8)
  lw $t0, -1388($s8)
  lw $t1, -1348($s8)
  sw $t0, 0($t1)
  la $t0, -1336($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1392($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1396($s8)
  lw $t0, -1396($s8)
  lw $t1, 0($t0)
  sw $t1, -1400($s8)
  lw $t0, -1400($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1404($s8)
  la $t0, -4($s8)
  lw $t1, -1404($s8)
  add $t2, $t0, $t1
  sw $t2, -1408($s8)
  la $t0, -1156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1412($s8)
  lw $t0, -1412($s8)
  lw $t1, 0($t0)
  sw $t1, -1416($s8)
  lw $t0, -1416($s8)
  lw $t1, 12($s8)
  add $t2, $t0, $t1
  sw $t2, -1420($s8)
  lw $t0, -1420($s8)
  lw $t1, -1408($s8)
  sw $t0, 0($t1)
  lw $t0, -1408($s8)
  lw $t1, 0($t0)
  sw $t1, -1424($s8)
  lw $t0, -1424($s8)
  move $t1, $t0
  sw $t1, -1428($s8)
  lw $t0, -1428($s8)
  lw $t1, -1392($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1344($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1432($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1436($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1440($s8)
  lw $t0, -1440($s8)
  lw $t1, 0($t0)
  sw $t1, -1444($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1444($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1448($s8)
  lw $t0, -1448($s8)
  lw $t1, -1436($s8)
  sw $t0, 0($t1)
  lw $t0, -1436($s8)
  lw $t1, 0($t0)
  sw $t1, -1452($s8)
  lw $t0, -1452($s8)
  move $t1, $t0
  sw $t1, -1456($s8)
  lw $t0, -1456($s8)
  lw $t1, -1432($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1344($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1460($s8)
  la $t0, -1156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1464($s8)
  lw $t0, -1464($s8)
  lw $t1, 0($t0)
  sw $t1, -1468($s8)
  lw $t0, -1468($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1472($s8)
  la $t0, -4($s8)
  lw $t1, -1472($s8)
  add $t2, $t0, $t1
  sw $t2, -1476($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1480($s8)
  lw $t0, -1480($s8)
  lw $t1, 0($t0)
  sw $t1, -1484($s8)
  la $t0, -1336($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1488($s8)
  lw $t0, -1488($s8)
  lw $t1, 0($t0)
  sw $t1, -1492($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 1042948742
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, -1492($s8)
  sw $t3, 12($sp)
  lw $t4, -1484($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1496($s8)
  lw $t0, -1496($s8)
  lw $t1, -1476($s8)
  sw $t0, 0($t1)
  lw $t0, -1476($s8)
  lw $t1, 0($t0)
  sw $t1, -1500($s8)
  lw $t0, -1500($s8)
  move $t1, $t0
  sw $t1, -1504($s8)
  lw $t0, -1504($s8)
  lw $t1, -1460($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1508($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1512($s8)
  lw $t0, -1512($s8)
  lw $t1, 0($t0)
  sw $t1, -1516($s8)
  la $t0, -1336($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1520($s8)
  lw $t0, -1520($s8)
  lw $t1, 0($t0)
  sw $t1, -1524($s8)
  lw $t0, -1516($s8)
  lw $t1, -1524($s8)
  beq $t0, $t1, label1088
  j label1089
label1088:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1508($s8)
label1089:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1508($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1528($s8)
  la $t0, -1336($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1532($s8)
  lw $t0, -1532($s8)
  lw $t1, 0($t0)
  sw $t1, -1536($s8)
  lw $t0, -1536($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1540($s8)
  la $t0, -12($s8)
  lw $t1, -1540($s8)
  add $t2, $t0, $t1
  sw $t2, -1544($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1548($s8)
  lw $t0, -1548($s8)
  lw $t1, 0($t0)
  sw $t1, -1552($s8)
  lw $t0, -1552($s8)
  lw $t1, -1544($s8)
  sw $t0, 0($t1)
  la $t0, -1336($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1556($s8)
  lw $t0, -1556($s8)
  lw $t1, 0($t0)
  sw $t1, -1560($s8)
  lw $t0, -1560($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1564($s8)
  la $t0, -12($s8)
  lw $t1, -1564($s8)
  add $t2, $t0, $t1
  sw $t2, -1568($s8)
  la $t0, -1344($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1572($s8)
  lw $t0, -1572($s8)
  lw $t1, 0($t0)
  sw $t1, -1576($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1580($s8)
  lw $t0, -1580($s8)
  lw $t1, 0($t0)
  sw $t1, -1584($s8)
  lw $t0, -1576($s8)
  lw $t1, -1584($s8)
  sub $t2, $t0, $t1
  sw $t2, -1588($s8)
  lw $t0, -1588($s8)
  lw $t1, -1568($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1592($s8)
  lw $t0, -1592($s8)
  lw $t1, 0($t0)
  sw $t1, -1596($s8)
  lw $t0, -1596($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1600($s8)
  la $t0, -12($s8)
  lw $t1, -1600($s8)
  add $t2, $t0, $t1
  sw $t2, -1604($s8)
  la $t0, -1336($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1608($s8)
  lw $t0, -1608($s8)
  lw $t1, 0($t0)
  sw $t1, -1612($s8)
  la $t0, -1156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1616($s8)
  lw $t0, -1616($s8)
  lw $t1, 0($t0)
  sw $t1, -1620($s8)
  la $t0, -1344($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1624($s8)
  lw $t0, -1624($s8)
  lw $t1, 0($t0)
  sw $t1, -1628($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1628($s8)
  sw $t1, 4($sp)
  lw $t2, -1620($s8)
  sw $t2, 8($sp)
  lw $t3, -1612($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1632($s8)
  lw $t0, -1632($s8)
  lw $t1, -1604($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1636($s8)
  lw $t0, -1636($s8)
  lw $t1, 0($t0)
  sw $t1, -1640($s8)
  lw $t0, -1640($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1644($s8)
  la $t0, -4($s8)
  lw $t1, -1644($s8)
  add $t2, $t0, $t1
  sw $t2, -1648($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1652($s8)
  lw $t0, -1652($s8)
  lw $t1, 0($t0)
  sw $t1, -1656($s8)
  la $t0, -1336($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1660($s8)
  lw $t0, -1660($s8)
  lw $t1, 0($t0)
  sw $t1, -1664($s8)
  la $t0, -1344($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1668($s8)
  lw $t0, -1668($s8)
  lw $t1, 0($t0)
  sw $t1, -1672($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, -1672($s8)
  sw $t2, 8($sp)
  lw $t3, -1664($s8)
  sw $t3, 12($sp)
  lw $t4, -1656($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1676($s8)
  lw $t0, -1676($s8)
  lw $t1, -1648($s8)
  sw $t0, 0($t1)
  la $t0, -1156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1680($s8)
  lw $t0, -1680($s8)
  lw $t1, 0($t0)
  sw $t1, -1684($s8)
  lw $t0, -1684($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1688($s8)
  la $t0, -4($s8)
  lw $t1, -1688($s8)
  add $t2, $t0, $t1
  sw $t2, -1692($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1696($s8)
  lw $t0, -1696($s8)
  lw $t1, 0($t0)
  sw $t1, -1700($s8)
  la $t0, -1336($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1704($s8)
  lw $t0, -1704($s8)
  lw $t1, 0($t0)
  sw $t1, -1708($s8)
  lw $t0, -1700($s8)
  lw $t1, -1708($s8)
  add $t2, $t0, $t1
  sw $t2, -1712($s8)
  lw $t0, -1712($s8)
  lw $t1, -1692($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1716($s8)
  lw $t0, -1716($s8)
  lw $t1, 0($t0)
  sw $t1, -1720($s8)
  lw $t0, -1720($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1724($s8)
  la $t0, -12($s8)
  lw $t1, -1724($s8)
  add $t2, $t0, $t1
  sw $t2, -1728($s8)
  la $t0, -1156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1732($s8)
  lw $t0, -1732($s8)
  lw $t1, 0($t0)
  sw $t1, -1736($s8)
  la $t0, -1336($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1740($s8)
  lw $t0, -1740($s8)
  lw $t1, 0($t0)
  sw $t1, -1744($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1744($s8)
  sw $t1, 4($sp)
  li $t2, -1881381908
  sw $t2, 8($sp)
  lw $t3, -1736($s8)
  sw $t3, 12($sp)
  li $t4, -1916844266
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1748($s8)
  lw $t0, -1748($s8)
  lw $t1, -1728($s8)
  sw $t0, 0($t1)
  lw $t0, -1528($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label1084
label1085:
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1752($s8)
  lw $t0, -1752($s8)
  lw $t1, 0($t0)
  sw $t1, -1756($s8)
  lw $t0, -1756($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1760($s8)
  la $t0, -12($s8)
  lw $t1, -1760($s8)
  add $t2, $t0, $t1
  sw $t2, -1764($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1768($s8)
  la $t0, -1156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1772($s8)
  lw $t0, -1772($s8)
  lw $t1, 0($t0)
  sw $t1, -1776($s8)
  lw $t0, -1776($s8)
  lw $t1, 12($s8)
  ble $t0, $t1, label1092
  j label1093
label1092:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1768($s8)
label1093:
  lw $t0, -1768($s8)
  lw $t1, -1764($s8)
  sw $t0, 0($t1)
  lw $t0, -1764($s8)
  lw $t1, 0($t0)
  sw $t1, -1780($s8)
  lw $t0, -1780($s8)
  move $t1, $t0
  sw $t1, -1784($s8)
  lw $t0, -1784($s8)
  li $t1, 0
  beq $t0, $t1, label1091
  la $t0, -1792($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1808($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1812($s8)
  lw $t0, -1812($s8)
  lw $t1, 0($t0)
  sw $t1, -1816($s8)
  lw $t0, -1816($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1820($s8)
  la $t0, -4($s8)
  lw $t1, -1820($s8)
  add $t2, $t0, $t1
  sw $t2, -1824($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1828($s8)
  la $t0, -1156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1832($s8)
  lw $t0, -1832($s8)
  lw $t1, 0($t0)
  sw $t1, -1836($s8)
  lw $t0, -1836($s8)
  li $t1, 0
  beq $t0, $t1, label1095
  lw $t0, 12($s8)
  li $t1, 0
  bne $t0, $t1, label1094
  j label1095
label1094:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1828($s8)
label1095:
  lw $t0, -1828($s8)
  lw $t1, -1824($s8)
  sw $t0, 0($t1)
  lw $t0, -1824($s8)
  lw $t1, 0($t0)
  sw $t1, -1840($s8)
  lw $t0, -1840($s8)
  move $t1, $t0
  sw $t1, -1844($s8)
  lw $t0, -1844($s8)
  lw $t1, -1808($s8)
  sw $t0, 0($t1)
  la $t0, -1792($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1848($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1852($s8)
  lw $t0, -1852($s8)
  lw $t1, 0($t0)
  sw $t1, -1856($s8)
  lw $t0, -1856($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1860($s8)
  la $t0, -12($s8)
  lw $t1, -1860($s8)
  add $t2, $t0, $t1
  sw $t2, -1864($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1868($s8)
  la $t0, -1156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1872($s8)
  lw $t0, -1872($s8)
  lw $t1, 0($t0)
  sw $t1, -1876($s8)
  lw $t0, -1876($s8)
  lw $t1, 12($s8)
  blt $t0, $t1, label1096
  j label1097
label1096:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1868($s8)
label1097:
  lw $t0, -1868($s8)
  lw $t1, -1864($s8)
  sw $t0, 0($t1)
  lw $t0, -1864($s8)
  lw $t1, 0($t0)
  sw $t1, -1880($s8)
  lw $t0, -1880($s8)
  move $t1, $t0
  sw $t1, -1884($s8)
  lw $t0, -1884($s8)
  lw $t1, -1848($s8)
  sw $t0, 0($t1)
  la $t0, -1796($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1888($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1892($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1896($s8)
  la $t0, -1156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1900($s8)
  lw $t0, -1900($s8)
  lw $t1, 0($t0)
  sw $t1, -1904($s8)
  li $t0, -1516032084
  lw $t1, -1904($s8)
  bge $t0, $t1, label1098
  j label1099
label1098:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1896($s8)
label1099:
  lw $t0, -1896($s8)
  lw $t1, -1892($s8)
  sw $t0, 0($t1)
  lw $t0, -1892($s8)
  lw $t1, 0($t0)
  sw $t1, -1908($s8)
  lw $t0, -1908($s8)
  move $t1, $t0
  sw $t1, -1912($s8)
  lw $t0, -1912($s8)
  lw $t1, -1888($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1804($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1916($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1920($s8)
  lw $t0, -1920($s8)
  lw $t1, 0($t0)
  sw $t1, -1924($s8)
  lw $t0, -1924($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1928($s8)
  la $t0, -12($s8)
  lw $t1, -1928($s8)
  add $t2, $t0, $t1
  sw $t2, -1932($s8)
  la $t0, -1792($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1936($s8)
  lw $t0, -1936($s8)
  lw $t1, 0($t0)
  sw $t1, -1940($s8)
  la $t0, -1156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1944($s8)
  lw $t0, -1944($s8)
  lw $t1, 0($t0)
  sw $t1, -1948($s8)
  la $t0, -1796($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1952($s8)
  lw $t0, -1952($s8)
  lw $t1, 0($t0)
  sw $t1, -1956($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, -1956($s8)
  sw $t2, 8($sp)
  lw $t3, -1948($s8)
  sw $t3, 12($sp)
  lw $t4, -1940($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1960($s8)
  lw $t0, -1960($s8)
  lw $t1, -1932($s8)
  sw $t0, 0($t1)
  lw $t0, -1932($s8)
  lw $t1, 0($t0)
  sw $t1, -1964($s8)
  lw $t0, -1964($s8)
  move $t1, $t0
  sw $t1, -1968($s8)
  lw $t0, -1968($s8)
  lw $t1, -1916($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1804($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1972($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1976($s8)
  lw $t0, -1976($s8)
  lw $t1, 0($t0)
  sw $t1, -1980($s8)
  lw $t0, -1980($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1984($s8)
  la $t0, -12($s8)
  lw $t1, -1984($s8)
  add $t2, $t0, $t1
  sw $t2, -1988($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -380795841
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1992($s8)
  lw $t0, -1992($s8)
  lw $t1, -1988($s8)
  sw $t0, 0($t1)
  lw $t0, -1988($s8)
  lw $t1, 0($t0)
  sw $t1, -1996($s8)
  lw $t0, -1996($s8)
  move $t1, $t0
  sw $t1, -2000($s8)
  lw $t0, -2000($s8)
  lw $t1, -1972($s8)
  sw $t0, 0($t1)
  la $t0, -1792($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2004($s8)
  lw $t0, -2004($s8)
  lw $t1, 0($t0)
  sw $t1, -2008($s8)
  lw $t0, -2008($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2012($s8)
  la $t0, -12($s8)
  lw $t1, -2012($s8)
  add $t2, $t0, $t1
  sw $t2, -2016($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2020($s8)
  la $t0, -1804($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2024($s8)
  lw $t0, -2024($s8)
  lw $t1, 0($t0)
  sw $t1, -2028($s8)
  lw $t0, -2028($s8)
  li $t1, 0
  bne $t0, $t1, label1101
  j label1100
label1100:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2020($s8)
label1101:
  lw $t0, -2020($s8)
  lw $t1, -2016($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1792($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2032($s8)
  lw $t0, -2032($s8)
  lw $t1, 0($t0)
  sw $t1, -2036($s8)
  lw $t0, -2036($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2040($s8)
  la $t0, -12($s8)
  lw $t1, -2040($s8)
  add $t2, $t0, $t1
  sw $t2, -2044($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -1215391053
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2048($s8)
  lw $t0, -2048($s8)
  lw $t1, -2044($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2052($s8)
  lw $t0, -2052($s8)
  lw $t1, 0($t0)
  sw $t1, -2056($s8)
  lw $t0, -2056($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2060($s8)
  la $t0, -4($s8)
  lw $t1, -2060($s8)
  add $t2, $t0, $t1
  sw $t2, -2064($s8)
  la $t0, -1796($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2068($s8)
  lw $t0, -2068($s8)
  lw $t1, 0($t0)
  sw $t1, -2072($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2076($s8)
  lw $t0, -2076($s8)
  lw $t1, 0($t0)
  sw $t1, -2080($s8)
  la $t0, -1792($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2084($s8)
  lw $t0, -2084($s8)
  lw $t1, 0($t0)
  sw $t1, -2088($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2088($s8)
  sw $t1, 4($sp)
  li $t2, 985463743
  sw $t2, 8($sp)
  lw $t3, -2080($s8)
  sw $t3, 12($sp)
  lw $t4, -2072($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2092($s8)
  lw $t0, -2092($s8)
  lw $t1, -2064($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2096($s8)
  lw $t0, -2096($s8)
  lw $t1, 0($t0)
  sw $t1, -2100($s8)
  la $t0, -1156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2104($s8)
  lw $t0, -2104($s8)
  lw $t1, 0($t0)
  sw $t1, -2108($s8)
  la $t0, -1796($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2112($s8)
  lw $t0, -2112($s8)
  lw $t1, 0($t0)
  sw $t1, -2116($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2116($s8)
  sw $t1, 4($sp)
  lw $t2, -2108($s8)
  sw $t2, 8($sp)
  lw $t3, -2100($s8)
  sw $t3, 12($sp)
  li $t4, 2112727093
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2120($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2120($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_157
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2124($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2128($s8)
  lw $t0, -2128($s8)
  lw $t1, 0($t0)
  sw $t1, -2132($s8)
  lw $t0, -2132($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2136($s8)
  la $t0, -4($s8)
  lw $t1, -2136($s8)
  add $t2, $t0, $t1
  sw $t2, -2140($s8)
  la $t0, -1792($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2144($s8)
  lw $t0, -2144($s8)
  lw $t1, 0($t0)
  sw $t1, -2148($s8)
  li $t0, 137668686
  lw $t1, -2148($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -2152($s8)
  lw $t0, -2152($s8)
  lw $t1, -2140($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2156($s8)
  li $t0, 758444906
  move $t1, $t0
  sw $t1, -2160($s8)
  lw $t0, -2160($s8)
  lw $t1, -2156($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2164($s8)
  lw $t0, -2164($s8)
  lw $t1, 0($t0)
  sw $t1, -2168($s8)
  lw $t0, -2168($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2172($s8)
  la $t0, -4($s8)
  lw $t1, -2172($s8)
  add $t2, $t0, $t1
  sw $t2, -2176($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2180($s8)
  la $t0, -1156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2184($s8)
  lw $t0, -2184($s8)
  lw $t1, 0($t0)
  sw $t1, -2188($s8)
  lw $t0, -2188($s8)
  li $t1, 0
  beq $t0, $t1, label1103
  la $t0, -1792($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2192($s8)
  lw $t0, -2192($s8)
  lw $t1, 0($t0)
  sw $t1, -2196($s8)
  lw $t0, -2196($s8)
  li $t1, 0
  bne $t0, $t1, label1102
  j label1103
label1102:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2180($s8)
label1103:
  lw $t0, -2180($s8)
  lw $t1, -2176($s8)
  sw $t0, 0($t1)
  la $t0, -1156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2200($s8)
  lw $t0, -2200($s8)
  lw $t1, 0($t0)
  sw $t1, -2204($s8)
  lw $t0, -2204($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2208($s8)
  la $t0, -4($s8)
  lw $t1, -2208($s8)
  add $t2, $t0, $t1
  sw $t2, -2212($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2216($s8)
  li $t0, 1753598249
  li $t1, -1200897295
  bge $t0, $t1, label1104
  j label1105
label1104:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2216($s8)
label1105:
  lw $t0, -2216($s8)
  lw $t1, -2212($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1792($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2220($s8)
  lw $t0, -2220($s8)
  lw $t1, 0($t0)
  sw $t1, -2224($s8)
  lw $t0, -2224($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2228($s8)
  la $t0, -12($s8)
  lw $t1, -2228($s8)
  add $t2, $t0, $t1
  sw $t2, -2232($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2236($s8)
  lw $t0, -2236($s8)
  lw $t1, 0($t0)
  sw $t1, -2240($s8)
  la $t0, -1156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2244($s8)
  lw $t0, -2244($s8)
  lw $t1, 0($t0)
  sw $t1, -2248($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2248($s8)
  sw $t1, 4($sp)
  lw $t2, -2240($s8)
  sw $t2, 8($sp)
  li $t3, 200189894
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2252($s8)
  lw $t0, -2252($s8)
  lw $t1, -2232($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2256($s8)
  lw $t0, -2256($s8)
  lw $t1, 0($t0)
  sw $t1, -2260($s8)
  lw $t0, -2260($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2264($s8)
  la $t0, -12($s8)
  lw $t1, -2264($s8)
  add $t2, $t0, $t1
  sw $t2, -2268($s8)
  la $t0, -1792($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2272($s8)
  lw $t0, -2272($s8)
  lw $t1, 0($t0)
  sw $t1, -2276($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2276($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2280($s8)
  lw $t0, -2280($s8)
  lw $t1, -2268($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2284($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2288($s8)
  lw $t0, -2288($s8)
  lw $t1, 0($t0)
  sw $t1, -2292($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2292($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2296($s8)
  lw $t0, -2296($s8)
  lw $t1, -2284($s8)
  sw $t0, 0($t1)
  j label1085
label1091:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2300($s8)
  lw $t0, -2300($s8)
  lw $t1, 0($t0)
  sw $t1, -2304($s8)
  lw $t0, -2304($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2308($s8)
  la $t0, -4($s8)
  lw $t1, -2308($s8)
  add $t2, $t0, $t1
  sw $t2, -2312($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2316($s8)
  lw $t0, -2316($s8)
  lw $t1, 0($t0)
  sw $t1, -2320($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  li $t2, -1718060770
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  lw $t4, -2320($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2324($s8)
  lw $t0, -2324($s8)
  lw $t1, -2312($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2328($s8)
  lw $t0, -2328($s8)
  lw $t1, 0($t0)
  sw $t1, -2332($s8)
  lw $t0, -2332($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2336($s8)
  la $t0, -12($s8)
  lw $t1, -2336($s8)
  add $t2, $t0, $t1
  sw $t2, -2340($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2344($s8)
  la $t0, -1156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2348($s8)
  lw $t0, -2348($s8)
  lw $t1, 0($t0)
  sw $t1, -2352($s8)
  lw $t0, -2352($s8)
  lw $t1, 12($s8)
  ble $t0, $t1, label1106
  j label1107
label1106:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2344($s8)
label1107:
  lw $t0, -2344($s8)
  lw $t1, -2340($s8)
  sw $t0, 0($t1)
  la $t0, -1156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2356($s8)
  lw $t0, -2356($s8)
  lw $t1, 0($t0)
  sw $t1, -2360($s8)
  lw $t0, -2360($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2364($s8)
  la $t0, -4($s8)
  lw $t1, -2364($s8)
  add $t2, $t0, $t1
  sw $t2, -2368($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2372($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2376($s8)
  lw $t0, -2376($s8)
  lw $t1, 0($t0)
  sw $t1, -2380($s8)
  li $t0, 233403190
  lw $t1, -2380($s8)
  bgt $t0, $t1, label1108
  j label1109
label1108:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2372($s8)
label1109:
  lw $t0, -2372($s8)
  lw $t1, -2368($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2384($s8)
  lw $t0, -2384($s8)
  lw $t1, 0($t0)
  sw $t1, -2388($s8)
  lw $t0, -2388($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2392($s8)
  la $t0, -12($s8)
  lw $t1, -2392($s8)
  add $t2, $t0, $t1
  sw $t2, -2396($s8)
  la $t0, -1156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2400($s8)
  lw $t0, -2400($s8)
  lw $t1, 0($t0)
  sw $t1, -2404($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, -2404($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_156
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2408($s8)
  lw $t0, -2408($s8)
  lw $t1, -2396($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2412($s8)
  lw $t0, -2412($s8)
  lw $t1, 0($t0)
  sw $t1, -2416($s8)
  lw $t0, -2416($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2420($s8)
  la $t0, -12($s8)
  lw $t1, -2420($s8)
  add $t2, $t0, $t1
  sw $t2, -2424($s8)
  la $t0, -1156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2428($s8)
  lw $t0, -2428($s8)
  lw $t1, 0($t0)
  sw $t1, -2432($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -52($s8)
  sw $t1, 4($sp)
  lw $t2, -20($s8)
  sw $t2, 8($sp)
  lw $t3, -16($s8)
  sw $t3, 12($sp)
  lw $t4, 12($s8)
  sw $t4, 16($sp)
  lw $t5, -2432($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2436($s8)
  lw $t0, -2436($s8)
  lw $t1, -2424($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2440($s8)
  lw $t0, -2440($s8)
  lw $t1, 0($t0)
  sw $t1, -2444($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2448($s8)
  lw $t0, -2448($s8)
  lw $t1, 0($t0)
  sw $t1, -2452($s8)
  la $t0, -1156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2456($s8)
  lw $t0, -2456($s8)
  lw $t1, 0($t0)
  sw $t1, -2460($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2460($s8)
  sw $t1, 4($sp)
  lw $t2, -2452($s8)
  sw $t2, 8($sp)
  li $t3, -1698230270
  sw $t3, 12($sp)
  lw $t4, -2444($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2464($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2464($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2468($s8)
  la $t0, -1156($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2472($s8)
  lw $t0, -2472($s8)
  lw $t1, 0($t0)
  sw $t1, -2476($s8)
  lw $t0, -2476($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -2480($s8)
  la $t0, -4($s8)
  lw $t1, -2480($s8)
  add $t2, $t0, $t1
  sw $t2, -2484($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2488($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2492($s8)
  lw $t0, -2492($s8)
  lw $t1, 0($t0)
  sw $t1, -2496($s8)
  lw $t0, -2496($s8)
  li $t1, 0
  beq $t0, $t1, label1111
  lw $t0, 12($s8)
  li $t1, 0
  bne $t0, $t1, label1110
  j label1111
label1110:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2488($s8)
label1111:
  lw $t0, -2488($s8)
  lw $t1, -2484($s8)
  sw $t0, 0($t1)
  lw $t0, -1192($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -1228($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
label1037:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2500($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2504($s8)
  lw $t0, -2504($s8)
  lw $t1, -2500($s8)
  sw $t0, 0($t1)
label1112:
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2508($s8)
  lw $t0, 12($s8)
  lw $t1, -16($s8)
  sub $t2, $t0, $t1
  sw $t2, -2512($s8)
  lw $t0, -2512($s8)
  lw $t1, -2508($s8)
  sw $t0, 0($t1)
  lw $t0, -2508($s8)
  lw $t1, 0($t0)
  sw $t1, -2516($s8)
  lw $t0, -2516($s8)
  move $t1, $t0
  sw $t1, -2520($s8)
  lw $t0, -2520($s8)
  li $t1, 0
  beq $t0, $t1, label1113
  li $t0, 0
  move $t1, $t0
  sw $t1, -2524($s8)
  lw $t0, -104($s8)
  li $t1, 10
  blt $t0, $t1, label1114
  j label1115
label1114:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2524($s8)
label1115:
  lw $t0, -2524($s8)
  li $t1, 0
  beq $t0, $t1, label1113
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2540($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2544($s8)
  lw $t0, 12($s8)
  li $t1, 0
  bne $t0, $t1, label1117
  j label1116
label1116:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2544($s8)
label1117:
  lw $t0, -2544($s8)
  lw $t1, -2540($s8)
  sw $t0, 0($t1)
  lw $t0, -2540($s8)
  lw $t1, 0($t0)
  sw $t1, -2548($s8)
  lw $t0, -2548($s8)
  move $t1, $t0
  sw $t1, -2552($s8)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2556($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2560($s8)
  lw $t0, -2560($s8)
  lw $t1, 0($t0)
  sw $t1, -2564($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2568($s8)
  lw $t0, -2568($s8)
  lw $t1, 0($t0)
  sw $t1, -2572($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, -2572($s8)
  sw $t2, 8($sp)
  lw $t3, -2564($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_156
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2576($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2576($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_157
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2580($s8)
  lw $t0, -2580($s8)
  lw $t1, -2556($s8)
  sw $t0, 0($t1)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2584($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2588($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2592($s8)
  lw $t0, -2592($s8)
  lw $t1, 0($t0)
  sw $t1, -2596($s8)
  lw $t0, 12($s8)
  sw $t0, 0($sp)
  lw $t1, -2596($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_mul
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2600($s8)
  lw $t0, -2600($s8)
  lw $t1, -2588($s8)
  sw $t0, 0($t1)
  lw $t0, -2588($s8)
  lw $t1, 0($t0)
  sw $t1, -2604($s8)
  lw $t0, -2604($s8)
  move $t1, $t0
  sw $t1, -2608($s8)
  lw $t0, -2608($s8)
  lw $t1, -2584($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2612($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2616($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2620($s8)
  lw $t0, -2620($s8)
  lw $t1, 0($t0)
  sw $t1, -2624($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, -2624($s8)
  sw $t3, 12($sp)
  li $t4, -2013045943
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_155
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2628($s8)
  lw $t0, -2628($s8)
  lw $t1, -2616($s8)
  sw $t0, 0($t1)
  lw $t0, -2616($s8)
  lw $t1, 0($t0)
  sw $t1, -2632($s8)
  lw $t0, -2632($s8)
  move $t1, $t0
  sw $t1, -2636($s8)
  lw $t0, -2636($s8)
  lw $t1, -2612($s8)
  sw $t0, 0($t1)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2640($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2644($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2648($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2652($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2656($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2660($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2664($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2668($s8)
  lw $t0, -104($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -104($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label1118:
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2672($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2676($s8)
  lw $t0, -2676($s8)
  lw $t1, 0($t0)
  sw $t1, -2680($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2680($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2684($s8)
  lw $t0, -2684($s8)
  lw $t1, -2672($s8)
  sw $t0, 0($t1)
  lw $t0, -2672($s8)
  lw $t1, 0($t0)
  sw $t1, -2688($s8)
  lw $t0, -2688($s8)
  move $t1, $t0
  sw $t1, -2692($s8)
  lw $t0, -2692($s8)
  li $t1, 0
  beq $t0, $t1, label1119
  li $t0, 0
  move $t1, $t0
  sw $t1, -2696($s8)
  lw $t0, -2640($s8)
  li $t1, 10
  blt $t0, $t1, label1120
  j label1121
label1120:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2696($s8)
label1121:
  lw $t0, -2696($s8)
  li $t1, 0
  beq $t0, $t1, label1119
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2704($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2708($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2712($s8)
  lw $t0, -2712($s8)
  lw $t1, 0($t0)
  sw $t1, -2716($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2720($s8)
  lw $t0, -2720($s8)
  lw $t1, 0($t0)
  sw $t1, -2724($s8)
  lw $t0, -2716($s8)
  lw $t1, -2724($s8)
  bgt $t0, $t1, label1122
  j label1123
label1122:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2708($s8)
label1123:
  lw $t0, -2708($s8)
  lw $t1, -2704($s8)
  sw $t0, 0($t1)
  lw $t0, -2704($s8)
  lw $t1, 0($t0)
  sw $t1, -2728($s8)
  lw $t0, -2728($s8)
  move $t1, $t0
  sw $t1, -2732($s8)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2700($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2736($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2740($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2744($s8)
  lw $t0, -2744($s8)
  lw $t1, 0($t0)
  sw $t1, -2748($s8)
  lw $t0, -2748($s8)
  lw $t1, -2740($s8)
  sw $t0, 0($t1)
  lw $t0, -2740($s8)
  lw $t1, 0($t0)
  sw $t1, -2752($s8)
  lw $t0, -2752($s8)
  move $t1, $t0
  sw $t1, -2756($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2760($s8)
  lw $t0, -2760($s8)
  lw $t1, 0($t0)
  sw $t1, -2764($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2768($s8)
  lw $t0, -2768($s8)
  lw $t1, 0($t0)
  sw $t1, -2772($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, -2772($s8)
  sw $t2, 8($sp)
  lw $t3, -2764($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_156
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2776($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2780($s8)
  lw $t0, -16($s8)
  lw $t1, -20($s8)
  bgt $t0, $t1, label1124
  j label1125
label1124:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2780($s8)
label1125:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 833462836
  sw $t1, 4($sp)
  lw $t2, -2780($s8)
  sw $t2, 8($sp)
  lw $t3, -2776($s8)
  sw $t3, 12($sp)
  lw $t4, -2756($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2784($s8)
  lw $t0, -2784($s8)
  lw $t1, -2736($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2788($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2792($s8)
  lw $t0, -2792($s8)
  lw $t1, 0($t0)
  sw $t1, -2796($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2796($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2800($s8)
  lw $t0, -2800($s8)
  lw $t1, -2788($s8)
  sw $t0, 0($t1)
  lw $t0, -2788($s8)
  lw $t1, 0($t0)
  sw $t1, -2804($s8)
  lw $t0, -2804($s8)
  move $t1, $t0
  sw $t1, -2808($s8)
  lw $t0, -2640($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -2640($s8)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2812($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2816($s8)
  lw $t0, -2816($s8)
  lw $t1, 0($t0)
  sw $t1, -2820($s8)
  lw $t0, -2820($s8)
  li $t1, 873109815
  bgt $t0, $t1, label1126
  j label1127
label1126:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2812($s8)
label1127:
  li $t0, 0
  move $t1, $t0
  sw $t1, -2824($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2828($s8)
  lw $t0, -2828($s8)
  lw $t1, 0($t0)
  sw $t1, -2832($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2836($s8)
  lw $t0, -2836($s8)
  lw $t1, 0($t0)
  sw $t1, -2840($s8)
  lw $t0, -2832($s8)
  lw $t1, -2840($s8)
  ble $t0, $t1, label1128
  j label1129
label1128:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2824($s8)
label1129:
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2844($s8)
  lw $t0, -2844($s8)
  lw $t1, 0($t0)
  sw $t1, -2848($s8)
  la $t0, -2700($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2852($s8)
  lw $t0, -2852($s8)
  lw $t1, 0($t0)
  sw $t1, -2856($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, -2856($s8)
  sw $t3, 12($sp)
  lw $t4, -2848($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2860($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2860($s8)
  sw $t1, 4($sp)
  lw $t2, -2824($s8)
  sw $t2, 8($sp)
  lw $t3, -2812($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2864($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2868($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2872($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2876($s8)
  lw $t0, -2876($s8)
  lw $t1, 0($t0)
  sw $t1, -2880($s8)
  lw $t0, -2880($s8)
  li $t1, 0
  beq $t0, $t1, label1131
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2884($s8)
  lw $t0, -2884($s8)
  lw $t1, 0($t0)
  sw $t1, -2888($s8)
  lw $t0, -2888($s8)
  li $t1, 0
  bne $t0, $t1, label1130
  j label1131
label1130:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2872($s8)
label1131:
  lw $t0, -2872($s8)
  lw $t1, -2868($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2892($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2896($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2900($s8)
  lw $t0, -2900($s8)
  lw $t1, 0($t0)
  sw $t1, -2904($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2908($s8)
  lw $t0, -2908($s8)
  lw $t1, 0($t0)
  sw $t1, -2912($s8)
  lw $t0, -2904($s8)
  lw $t1, -2912($s8)
  bge $t0, $t1, label1132
  j label1133
label1132:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2896($s8)
label1133:
  lw $t0, -2896($s8)
  lw $t1, -2892($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2916($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2920($s8)
  lw $t0, -2920($s8)
  lw $t1, 0($t0)
  sw $t1, -2924($s8)
  la $t0, -2700($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2928($s8)
  lw $t0, -2928($s8)
  lw $t1, 0($t0)
  sw $t1, -2932($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2936($s8)
  lw $t0, -2936($s8)
  lw $t1, 0($t0)
  sw $t1, -2940($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, -2940($s8)
  sw $t3, 12($sp)
  lw $t4, -2932($s8)
  sw $t4, 16($sp)
  lw $t5, -2924($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2944($s8)
  lw $t0, -2944($s8)
  lw $t1, -2916($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2948($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -2952($s8)
  lw $t0, -2952($s8)
  lw $t1, 0($t0)
  sw $t1, -2956($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2956($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_157
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -2960($s8)
  lw $t0, -2960($s8)
  lw $t1, -2948($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2964($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2968($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2972($s8)
  lw $t0, -2972($s8)
  lw $t1, 0($t0)
  sw $t1, -2976($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2980($s8)
  lw $t0, -2980($s8)
  lw $t1, 0($t0)
  sw $t1, -2984($s8)
  lw $t0, -2976($s8)
  lw $t1, -2984($s8)
  bge $t0, $t1, label1134
  j label1135
label1134:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2968($s8)
label1135:
  lw $t0, -2968($s8)
  lw $t1, -2964($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2988($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -2992($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -2996($s8)
  lw $t0, -2996($s8)
  lw $t1, 0($t0)
  sw $t1, -3000($s8)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3004($s8)
  lw $t0, -3004($s8)
  lw $t1, 0($t0)
  sw $t1, -3008($s8)
  lw $t0, -3000($s8)
  lw $t1, -3008($s8)
  bge $t0, $t1, label1136
  j label1137
label1136:
  li $t0, 1
  move $t1, $t0
  sw $t1, -2992($s8)
label1137:
  lw $t0, -2992($s8)
  lw $t1, -2988($s8)
  sw $t0, 0($t1)
  lw $t0, -2732($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -2808($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label1118
label1119:
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label1138:
  li $t0, 0
  move $t1, $t0
  sw $t1, -3012($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3016($s8)
  lw $t0, -3016($s8)
  lw $t1, 0($t0)
  sw $t1, -3020($s8)
  li $t0, -278304961
  lw $t1, -3020($s8)
  bge $t0, $t1, label1140
  j label1141
label1140:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3012($s8)
label1141:
  li $t0, 0
  move $t1, $t0
  sw $t1, -3024($s8)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3028($s8)
  lw $t0, -3028($s8)
  lw $t1, 0($t0)
  sw $t1, -3032($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3036($s8)
  lw $t0, -3036($s8)
  lw $t1, 0($t0)
  sw $t1, -3040($s8)
  lw $t0, -3032($s8)
  lw $t1, -3040($s8)
  bgt $t0, $t1, label1142
  j label1143
label1142:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3024($s8)
label1143:
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3044($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -3048($s8)
  lw $t0, -3048($s8)
  lw $t1, -3044($s8)
  sw $t0, 0($t1)
  lw $t0, -3044($s8)
  lw $t1, 0($t0)
  sw $t1, -3052($s8)
  lw $t0, -3052($s8)
  move $t1, $t0
  sw $t1, -3056($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -2552($s8)
  sw $t1, 4($sp)
  lw $t2, -52($s8)
  sw $t2, 8($sp)
  lw $t3, -20($s8)
  sw $t3, 12($sp)
  lw $t4, -16($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_155
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3060($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3060($s8)
  sw $t1, 4($sp)
  lw $t2, -3056($s8)
  sw $t2, 8($sp)
  lw $t3, -3024($s8)
  sw $t3, 12($sp)
  lw $t4, -3012($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3064($s8)
  lw $t0, -3064($s8)
  li $t1, 0
  beq $t0, $t1, label1139
  li $t0, 0
  move $t1, $t0
  sw $t1, -3068($s8)
  lw $t0, -2644($s8)
  li $t1, 10
  blt $t0, $t1, label1144
  j label1145
label1144:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3068($s8)
label1145:
  lw $t0, -3068($s8)
  li $t1, 0
  beq $t0, $t1, label1139
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3072($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3076($s8)
  lw $t0, -3076($s8)
  lw $t1, 0($t0)
  sw $t1, -3080($s8)
  li $t0, 1300330354
  lw $t1, -3080($s8)
  sub $t2, $t0, $t1
  sw $t2, -3084($s8)
  lw $t0, -3084($s8)
  lw $t1, -3072($s8)
  sw $t0, 0($t1)
  lw $t0, -3072($s8)
  lw $t1, 0($t0)
  sw $t1, -3088($s8)
  lw $t0, -3088($s8)
  move $t1, $t0
  sw $t1, -3092($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3096($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3100($s8)
  lw $t0, -3100($s8)
  lw $t1, 0($t0)
  sw $t1, -3104($s8)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3108($s8)
  lw $t0, -3108($s8)
  lw $t1, 0($t0)
  sw $t1, -3112($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  li $t2, 1167685712
  sw $t2, 8($sp)
  lw $t3, -3112($s8)
  sw $t3, 12($sp)
  lw $t4, -3104($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3116($s8)
  lw $t0, -3116($s8)
  lw $t1, -3096($s8)
  sw $t0, 0($t1)
  lw $t0, -3096($s8)
  lw $t1, 0($t0)
  sw $t1, -3120($s8)
  lw $t0, -3120($s8)
  move $t1, $t0
  sw $t1, -3124($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3128($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3132($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3136($s8)
  lw $t0, -3136($s8)
  lw $t1, 0($t0)
  sw $t1, -3140($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3144($s8)
  lw $t0, -3144($s8)
  lw $t1, 0($t0)
  sw $t1, -3148($s8)
  lw $t0, -3140($s8)
  lw $t1, -3148($s8)
  bne $t0, $t1, label1146
  j label1147
label1146:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3132($s8)
label1147:
  lw $t0, -3132($s8)
  lw $t1, -3128($s8)
  sw $t0, 0($t1)
  lw $t0, -3128($s8)
  lw $t1, 0($t0)
  sw $t1, -3152($s8)
  lw $t0, -3152($s8)
  move $t1, $t0
  sw $t1, -3156($s8)
  lw $t0, -2644($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -2644($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3160($s8)
  li $t0, 71519133
  move $t1, $t0
  sw $t1, -3164($s8)
  lw $t0, -3164($s8)
  lw $t1, -3160($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3168($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3172($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3176($s8)
  lw $t0, -3176($s8)
  lw $t1, 0($t0)
  sw $t1, -3180($s8)
  li $t0, 1063590122
  lw $t1, -3180($s8)
  blt $t0, $t1, label1148
  j label1149
label1148:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3172($s8)
label1149:
  lw $t0, -3172($s8)
  lw $t1, -3168($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3184($s8)
  lw $t0, -3184($s8)
  lw $t1, 0($t0)
  sw $t1, -3188($s8)
  lw $t0, -3188($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -3192($s8)
  la $t0, -12($s8)
  lw $t1, -3192($s8)
  add $t2, $t0, $t1
  sw $t2, -3196($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3200($s8)
  lw $t0, -3200($s8)
  lw $t1, 0($t0)
  sw $t1, -3204($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3208($s8)
  lw $t0, -3208($s8)
  lw $t1, 0($t0)
  sw $t1, -3212($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, -3212($s8)
  sw $t2, 8($sp)
  lw $t3, -3204($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_156
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3216($s8)
  lw $t0, -3216($s8)
  lw $t1, -3196($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3220($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3224($s8)
  lw $t0, -3224($s8)
  lw $t1, 0($t0)
  sw $t1, -3228($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3232($s8)
  lw $t0, -3232($s8)
  lw $t1, 0($t0)
  sw $t1, -3236($s8)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3240($s8)
  lw $t0, -3240($s8)
  lw $t1, 0($t0)
  sw $t1, -3244($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, -3244($s8)
  sw $t2, 8($sp)
  lw $t3, -3236($s8)
  sw $t3, 12($sp)
  li $t4, 128239070
  sw $t4, 16($sp)
  lw $t5, -3228($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3248($s8)
  lw $t0, -3248($s8)
  lw $t1, -3220($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3252($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3256($s8)
  lw $t0, -3256($s8)
  lw $t1, 0($t0)
  sw $t1, -3260($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3264($s8)
  lw $t0, -3264($s8)
  lw $t1, 0($t0)
  sw $t1, -3268($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, -3268($s8)
  sw $t2, 8($sp)
  lw $t3, -3260($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_156
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3272($s8)
  lw $t0, -3272($s8)
  lw $t1, -3252($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3276($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3280($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3284($s8)
  lw $t0, -3284($s8)
  lw $t1, 0($t0)
  sw $t1, -3288($s8)
  lw $t0, -3288($s8)
  li $t1, 0
  beq $t0, $t1, label1151
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3292($s8)
  lw $t0, -3292($s8)
  lw $t1, 0($t0)
  sw $t1, -3296($s8)
  lw $t0, -3296($s8)
  li $t1, 0
  bne $t0, $t1, label1150
  j label1151
label1150:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3280($s8)
label1151:
  lw $t0, -3280($s8)
  lw $t1, -3276($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3300($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3304($s8)
  lw $t0, -3304($s8)
  lw $t1, 0($t0)
  sw $t1, -3308($s8)
  lw $t0, -3308($s8)
  lw $t1, -3300($s8)
  sw $t0, 0($t1)
  lw $t0, -3300($s8)
  lw $t1, 0($t0)
  sw $t1, -3312($s8)
  lw $t0, -3312($s8)
  move $t1, $t0
  sw $t1, -3316($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3316($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_157
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3320($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3324($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3328($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3332($s8)
  lw $t0, -3332($s8)
  lw $t1, 0($t0)
  sw $t1, -3336($s8)
  lw $t0, -3336($s8)
  li $t1, 0
  beq $t0, $t1, label1153
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3340($s8)
  lw $t0, -3340($s8)
  lw $t1, 0($t0)
  sw $t1, -3344($s8)
  lw $t0, -3344($s8)
  li $t1, 0
  bne $t0, $t1, label1152
  j label1153
label1152:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3328($s8)
label1153:
  lw $t0, -3328($s8)
  lw $t1, -3324($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3348($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3352($s8)
  lw $t0, -3352($s8)
  lw $t1, 0($t0)
  sw $t1, -3356($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3360($s8)
  lw $t0, -3360($s8)
  lw $t1, 0($t0)
  sw $t1, -3364($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, -3364($s8)
  sw $t2, 8($sp)
  lw $t3, -3356($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_156
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3368($s8)
  lw $t0, -3368($s8)
  lw $t1, -3348($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3372($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3376($s8)
  lw $t0, -3376($s8)
  lw $t1, 0($t0)
  sw $t1, -3380($s8)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3384($s8)
  lw $t0, -3384($s8)
  lw $t1, 0($t0)
  sw $t1, -3388($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, -3388($s8)
  sw $t3, 12($sp)
  lw $t4, -3380($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3392($s8)
  lw $t0, -3392($s8)
  lw $t1, -3372($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3396($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3400($s8)
  lw $t0, -3400($s8)
  lw $t1, 0($t0)
  sw $t1, -3404($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3404($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3408($s8)
  lw $t0, -3408($s8)
  lw $t1, -3396($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3412($s8)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3416($s8)
  lw $t0, -3416($s8)
  lw $t1, 0($t0)
  sw $t1, -3420($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3424($s8)
  lw $t0, -3424($s8)
  lw $t1, 0($t0)
  sw $t1, -3428($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, -3428($s8)
  sw $t3, 12($sp)
  lw $t4, -3420($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_155
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3432($s8)
  lw $t0, -3432($s8)
  lw $t1, -3412($s8)
  sw $t0, 0($t1)
  lw $t0, -3092($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -3124($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -3156($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label1138
label1139:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3436($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3440($s8)
  lw $t0, -3440($s8)
  lw $t1, 0($t0)
  sw $t1, -3444($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3448($s8)
  lw $t0, -3448($s8)
  lw $t1, 0($t0)
  sw $t1, -3452($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, -3452($s8)
  sw $t2, 8($sp)
  lw $t3, -3444($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_156
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3456($s8)
  lw $t0, -3456($s8)
  lw $t1, -3436($s8)
  sw $t0, 0($t1)
label1154:
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3460($s8)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3464($s8)
  lw $t0, -3464($s8)
  lw $t1, 0($t0)
  sw $t1, -3468($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3472($s8)
  lw $t0, -3472($s8)
  lw $t1, 0($t0)
  sw $t1, -3476($s8)
  lw $t0, -3468($s8)
  lw $t1, -3476($s8)
  add $t2, $t0, $t1
  sw $t2, -3480($s8)
  lw $t0, -3480($s8)
  lw $t1, -3460($s8)
  sw $t0, 0($t1)
  lw $t0, -3460($s8)
  lw $t1, 0($t0)
  sw $t1, -3484($s8)
  lw $t0, -3484($s8)
  move $t1, $t0
  sw $t1, -3488($s8)
  lw $t0, -3488($s8)
  li $t1, 0
  beq $t0, $t1, label1155
  li $t0, 0
  move $t1, $t0
  sw $t1, -3492($s8)
  lw $t0, -2648($s8)
  li $t1, 10
  blt $t0, $t1, label1156
  j label1157
label1156:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3492($s8)
label1157:
  lw $t0, -3492($s8)
  li $t1, 0
  beq $t0, $t1, label1155
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3496($s8)
  li $t0, -275887313
  move $t1, $t0
  sw $t1, -3500($s8)
  lw $t0, -3500($s8)
  lw $t1, -3496($s8)
  sw $t0, 0($t1)
  lw $t0, -3496($s8)
  lw $t1, 0($t0)
  sw $t1, -3504($s8)
  lw $t0, -3504($s8)
  move $t1, $t0
  sw $t1, -3508($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3512($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3516($s8)
  lw $t0, -3516($s8)
  lw $t1, 0($t0)
  sw $t1, -3520($s8)
  li $t0, 129583672
  lw $t1, -3520($s8)
  bne $t0, $t1, label1158
  j label1159
label1158:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3512($s8)
label1159:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3512($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3524($s8)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3528($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3532($s8)
  lw $t0, -3532($s8)
  lw $t1, 0($t0)
  sw $t1, -3536($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3540($s8)
  lw $t0, -3540($s8)
  lw $t1, 0($t0)
  sw $t1, -3544($s8)
  lw $t0, -3536($s8)
  lw $t1, -3544($s8)
  bge $t0, $t1, label1160
  j label1161
label1160:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3528($s8)
label1161:
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3548($s8)
  lw $t0, -3548($s8)
  lw $t1, 0($t0)
  sw $t1, -3552($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3556($s8)
  lw $t0, -3556($s8)
  lw $t1, 0($t0)
  sw $t1, -3560($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, -3560($s8)
  sw $t3, 12($sp)
  lw $t4, -3552($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3564($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3568($s8)
  lw $t0, -20($s8)
  lw $t1, -52($s8)
  bgt $t0, $t1, label1162
  j label1163
label1162:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3568($s8)
label1163:
  li $t0, 0
  move $t1, $t0
  sw $t1, -3572($s8)
  lw $t0, -2552($s8)
  li $t1, 0
  bne $t0, $t1, label1165
  j label1164
label1164:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3572($s8)
label1165:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -3508($s8)
  sw $t1, 4($sp)
  lw $t2, -3572($s8)
  sw $t2, 8($sp)
  lw $t3, -3568($s8)
  sw $t3, 12($sp)
  lw $t4, -3564($s8)
  sw $t4, 16($sp)
  lw $t5, -3528($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3576($s8)
  lw $t0, -2648($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -2648($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3580($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3584($s8)
  lw $t0, -3584($s8)
  lw $t1, 0($t0)
  sw $t1, -3588($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3592($s8)
  lw $t0, -3592($s8)
  lw $t1, 0($t0)
  sw $t1, -3596($s8)
  lw $t0, -3596($s8)
  sw $t0, 0($sp)
  lw $t1, -3588($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_add
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3600($s8)
  lw $t0, -3600($s8)
  lw $t1, -3580($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3604($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3608($s8)
  lw $t0, -3608($s8)
  lw $t1, 0($t0)
  sw $t1, -3612($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3616($s8)
  lw $t0, -3616($s8)
  lw $t1, 0($t0)
  sw $t1, -3620($s8)
  lw $t0, -3612($s8)
  lw $t1, -3620($s8)
  sub $t2, $t0, $t1
  sw $t2, -3624($s8)
  lw $t0, -3624($s8)
  lw $t1, -3604($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3628($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3632($s8)
  lw $t0, -3632($s8)
  lw $t1, 0($t0)
  sw $t1, -3636($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3640($s8)
  lw $t0, -3640($s8)
  lw $t1, 0($t0)
  sw $t1, -3644($s8)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3648($s8)
  lw $t0, -3648($s8)
  lw $t1, 0($t0)
  sw $t1, -3652($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, -3652($s8)
  sw $t2, 8($sp)
  lw $t3, -3644($s8)
  sw $t3, 12($sp)
  lw $t4, -3636($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_155
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3656($s8)
  lw $t0, -3656($s8)
  lw $t1, -3628($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3660($s8)
  li $t0, 1237882226
  move $t1, $t0
  sw $t1, -3664($s8)
  lw $t0, -3664($s8)
  lw $t1, -3660($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3668($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3672($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3676($s8)
  lw $t0, -3676($s8)
  lw $t1, 0($t0)
  sw $t1, -3680($s8)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3684($s8)
  lw $t0, -3684($s8)
  lw $t1, 0($t0)
  sw $t1, -3688($s8)
  lw $t0, -3680($s8)
  lw $t1, -3688($s8)
  beq $t0, $t1, label1166
  j label1167
label1166:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3672($s8)
label1167:
  lw $t0, -3672($s8)
  lw $t1, -3668($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3692($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3696($s8)
  lw $t0, -3696($s8)
  lw $t1, 0($t0)
  sw $t1, -3700($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3704($s8)
  lw $t0, -3704($s8)
  lw $t1, 0($t0)
  sw $t1, -3708($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, -3708($s8)
  sw $t3, 12($sp)
  lw $t4, -3700($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3712($s8)
  lw $t0, -3712($s8)
  lw $t1, -3692($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3716($s8)
  lw $t0, -3716($s8)
  lw $t1, 0($t0)
  sw $t1, -3720($s8)
  lw $t0, -3720($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -3724($s8)
  la $t0, -12($s8)
  lw $t1, -3724($s8)
  add $t2, $t0, $t1
  sw $t2, -3728($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3732($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3736($s8)
  lw $t0, -3736($s8)
  lw $t1, 0($t0)
  sw $t1, -3740($s8)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3744($s8)
  lw $t0, -3744($s8)
  lw $t1, 0($t0)
  sw $t1, -3748($s8)
  lw $t0, -3740($s8)
  lw $t1, -3748($s8)
  blt $t0, $t1, label1168
  j label1169
label1168:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3732($s8)
label1169:
  lw $t0, -3732($s8)
  lw $t1, -3728($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3752($s8)
  lw $t0, -3752($s8)
  lw $t1, 0($t0)
  sw $t1, -3756($s8)
  lw $t0, -3756($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -3760($s8)
  la $t0, -12($s8)
  lw $t1, -3760($s8)
  add $t2, $t0, $t1
  sw $t2, -3764($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3768($s8)
  lw $t0, -3768($s8)
  lw $t1, 0($t0)
  sw $t1, -3772($s8)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3776($s8)
  lw $t0, -3776($s8)
  lw $t1, 0($t0)
  sw $t1, -3780($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, -3780($s8)
  sw $t3, 12($sp)
  lw $t4, -3772($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -3784($s8)
  lw $t0, -3784($s8)
  lw $t1, -3764($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3788($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3792($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3796($s8)
  lw $t0, -3796($s8)
  lw $t1, 0($t0)
  sw $t1, -3800($s8)
  lw $t0, -3800($s8)
  li $t1, 0
  beq $t0, $t1, label1171
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3804($s8)
  lw $t0, -3804($s8)
  lw $t1, 0($t0)
  sw $t1, -3808($s8)
  lw $t0, -3808($s8)
  li $t1, 0
  bne $t0, $t1, label1170
  j label1171
label1170:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3792($s8)
label1171:
  lw $t0, -3792($s8)
  lw $t1, -3788($s8)
  sw $t0, 0($t1)
  lw $t0, -3508($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -3524($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -3576($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label1154
label1155:
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3812($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3816($s8)
  lw $t0, -3816($s8)
  lw $t1, 0($t0)
  sw $t1, -3820($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3824($s8)
  lw $t0, -3824($s8)
  lw $t1, 0($t0)
  sw $t1, -3828($s8)
  lw $t0, -3820($s8)
  lw $t1, -3828($s8)
  add $t2, $t0, $t1
  sw $t2, -3832($s8)
  lw $t0, -3832($s8)
  lw $t1, -3812($s8)
  sw $t0, 0($t1)
label1172:
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3836($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3840($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3844($s8)
  lw $t0, -3844($s8)
  lw $t1, 0($t0)
  sw $t1, -3848($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3852($s8)
  lw $t0, -3852($s8)
  lw $t1, 0($t0)
  sw $t1, -3856($s8)
  lw $t0, -3848($s8)
  lw $t1, -3856($s8)
  bgt $t0, $t1, label1174
  j label1175
label1174:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3840($s8)
label1175:
  lw $t0, -3840($s8)
  lw $t1, -3836($s8)
  sw $t0, 0($t1)
  lw $t0, -3836($s8)
  lw $t1, 0($t0)
  sw $t1, -3860($s8)
  lw $t0, -3860($s8)
  move $t1, $t0
  sw $t1, -3864($s8)
  lw $t0, -3864($s8)
  li $t1, 0
  beq $t0, $t1, label1173
  la $t0, -3868($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3880($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3884($s8)
  lw $t0, -3884($s8)
  lw $t1, 0($t0)
  sw $t1, -3888($s8)
  lw $t0, -3888($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -3892($s8)
  la $t0, -4($s8)
  lw $t1, -3892($s8)
  add $t2, $t0, $t1
  sw $t2, -3896($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3900($s8)
  lw $t0, -3900($s8)
  lw $t1, 0($t0)
  sw $t1, -3904($s8)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3908($s8)
  lw $t0, -3908($s8)
  lw $t1, 0($t0)
  sw $t1, -3912($s8)
  lw $t0, -3904($s8)
  lw $t1, -3912($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -3916($s8)
  lw $t0, -3916($s8)
  lw $t1, -3896($s8)
  sw $t0, 0($t1)
  lw $t0, -3896($s8)
  lw $t1, 0($t0)
  sw $t1, -3920($s8)
  lw $t0, -3920($s8)
  move $t1, $t0
  sw $t1, -3924($s8)
  lw $t0, -3924($s8)
  lw $t1, -3880($s8)
  sw $t0, 0($t1)
  la $t0, -3876($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3928($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3932($s8)
  lw $t0, -3932($s8)
  lw $t1, 0($t0)
  sw $t1, -3936($s8)
  lw $t0, -3936($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -3940($s8)
  la $t0, -4($s8)
  lw $t1, -3940($s8)
  add $t2, $t0, $t1
  sw $t2, -3944($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3948($s8)
  la $t0, -3868($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3952($s8)
  lw $t0, -3952($s8)
  lw $t1, 0($t0)
  sw $t1, -3956($s8)
  lw $t0, -3956($s8)
  li $t1, 0
  bne $t0, $t1, label1177
  j label1176
label1176:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3948($s8)
label1177:
  lw $t0, -3948($s8)
  lw $t1, -3944($s8)
  sw $t0, 0($t1)
  lw $t0, -3944($s8)
  lw $t1, 0($t0)
  sw $t1, -3960($s8)
  lw $t0, -3960($s8)
  move $t1, $t0
  sw $t1, -3964($s8)
  lw $t0, -3964($s8)
  lw $t1, -3928($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -3876($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3968($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -3972($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3976($s8)
  lw $t0, -3976($s8)
  lw $t1, 0($t0)
  sw $t1, -3980($s8)
  lw $t0, -3980($s8)
  li $t1, 0
  bne $t0, $t1, label1178
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -3984($s8)
  lw $t0, -3984($s8)
  lw $t1, 0($t0)
  sw $t1, -3988($s8)
  lw $t0, -3988($s8)
  li $t1, 0
  bne $t0, $t1, label1178
  j label1179
label1178:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3972($s8)
label1179:
  li $t0, 0
  move $t1, $t0
  sw $t1, -3992($s8)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -3996($s8)
  lw $t0, -3996($s8)
  lw $t1, 0($t0)
  sw $t1, -4000($s8)
  lw $t0, -4000($s8)
  li $t1, 0
  bne $t0, $t1, label1181
  j label1180
label1180:
  li $t0, 1
  move $t1, $t0
  sw $t1, -3992($s8)
label1181:
  li $t0, 0
  move $t1, $t0
  sw $t1, -4004($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4008($s8)
  lw $t0, -4008($s8)
  lw $t1, 0($t0)
  sw $t1, -4012($s8)
  lw $t0, -4012($s8)
  li $t1, 0
  bne $t0, $t1, label1183
  j label1182
label1182:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4004($s8)
label1183:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4004($s8)
  sw $t1, 4($sp)
  lw $t2, -3992($s8)
  sw $t2, 8($sp)
  lw $t3, -3972($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4016($s8)
  lw $t0, -4016($s8)
  lw $t1, -3968($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4020($s8)
  lw $t0, -4020($s8)
  lw $t1, 0($t0)
  sw $t1, -4024($s8)
  lw $t0, -4024($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4028($s8)
  la $t0, -12($s8)
  lw $t1, -4028($s8)
  add $t2, $t0, $t1
  sw $t2, -4032($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4036($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4040($s8)
  lw $t0, -4040($s8)
  lw $t1, 0($t0)
  sw $t1, -4044($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4048($s8)
  lw $t0, -4048($s8)
  lw $t1, 0($t0)
  sw $t1, -4052($s8)
  lw $t0, -4044($s8)
  lw $t1, -4052($s8)
  ble $t0, $t1, label1184
  j label1185
label1184:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4036($s8)
label1185:
  lw $t0, -4036($s8)
  lw $t1, -4032($s8)
  sw $t0, 0($t1)
  lw $t0, -4032($s8)
  lw $t1, 0($t0)
  sw $t1, -4056($s8)
  lw $t0, -4056($s8)
  move $t1, $t0
  sw $t1, -4060($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4064($s8)
  lw $t0, -4064($s8)
  lw $t1, 0($t0)
  sw $t1, -4068($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4072($s8)
  lw $t0, -4072($s8)
  lw $t1, 0($t0)
  sw $t1, -4076($s8)
  lw $t0, -4068($s8)
  lw $t1, -4076($s8)
  add $t2, $t0, $t1
  sw $t2, -4080($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4080($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4084($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4088($s8)
  lw $t0, -4088($s8)
  lw $t1, 0($t0)
  sw $t1, -4092($s8)
  lw $t0, -4092($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4096($s8)
  la $t0, -12($s8)
  lw $t1, -4096($s8)
  add $t2, $t0, $t1
  sw $t2, -4100($s8)
  la $t0, -3876($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4104($s8)
  lw $t0, -4104($s8)
  lw $t1, 0($t0)
  sw $t1, -4108($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4108($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4112($s8)
  lw $t0, -4112($s8)
  lw $t1, -4100($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4116($s8)
  lw $t0, -4116($s8)
  lw $t1, 0($t0)
  sw $t1, -4120($s8)
  lw $t0, -4120($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4124($s8)
  la $t0, -12($s8)
  lw $t1, -4124($s8)
  add $t2, $t0, $t1
  sw $t2, -4128($s8)
  la $t0, -3876($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4132($s8)
  lw $t0, -4132($s8)
  lw $t1, 0($t0)
  sw $t1, -4136($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4140($s8)
  lw $t0, -4140($s8)
  lw $t1, 0($t0)
  sw $t1, -4144($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4148($s8)
  lw $t0, -4148($s8)
  lw $t1, 0($t0)
  sw $t1, -4152($s8)
  la $t0, -3868($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4156($s8)
  lw $t0, -4156($s8)
  lw $t1, 0($t0)
  sw $t1, -4160($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4160($s8)
  sw $t1, 4($sp)
  lw $t2, -4152($s8)
  sw $t2, 8($sp)
  lw $t3, -4144($s8)
  sw $t3, 12($sp)
  lw $t4, -4136($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_155
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4164($s8)
  lw $t0, -4164($s8)
  lw $t1, -4128($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4168($s8)
  lw $t0, -4168($s8)
  lw $t1, 0($t0)
  sw $t1, -4172($s8)
  lw $t0, -4172($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4176($s8)
  la $t0, -12($s8)
  lw $t1, -4176($s8)
  add $t2, $t0, $t1
  sw $t2, -4180($s8)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4184($s8)
  lw $t0, -4184($s8)
  lw $t1, 0($t0)
  sw $t1, -4188($s8)
  la $t0, -3876($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4192($s8)
  lw $t0, -4192($s8)
  lw $t1, 0($t0)
  sw $t1, -4196($s8)
  lw $t0, -4188($s8)
  lw $t1, -4196($s8)
  add $t2, $t0, $t1
  sw $t2, -4200($s8)
  lw $t0, -4200($s8)
  lw $t1, -4180($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4204($s8)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4208($s8)
  lw $t0, -4208($s8)
  lw $t1, 0($t0)
  sw $t1, -4212($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4212($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4216($s8)
  lw $t0, -4216($s8)
  lw $t1, -4204($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4220($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4224($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4228($s8)
  lw $t0, -4228($s8)
  lw $t1, 0($t0)
  sw $t1, -4232($s8)
  lw $t0, -4232($s8)
  li $t1, 0
  bne $t0, $t1, label1187
  j label1186
label1186:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4224($s8)
label1187:
  lw $t0, -4224($s8)
  lw $t1, -4220($s8)
  sw $t0, 0($t1)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4236($s8)
  lw $t0, -4236($s8)
  lw $t1, 0($t0)
  sw $t1, -4240($s8)
  lw $t0, -4240($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4244($s8)
  la $t0, -4($s8)
  lw $t1, -4244($s8)
  add $t2, $t0, $t1
  sw $t2, -4248($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4252($s8)
  la $t0, -3868($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4256($s8)
  lw $t0, -4256($s8)
  lw $t1, 0($t0)
  sw $t1, -4260($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4264($s8)
  lw $t0, -4264($s8)
  lw $t1, 0($t0)
  sw $t1, -4268($s8)
  lw $t0, -4260($s8)
  lw $t1, -4268($s8)
  ble $t0, $t1, label1188
  j label1189
label1188:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4252($s8)
label1189:
  lw $t0, -4252($s8)
  lw $t1, -4248($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4272($s8)
  lw $t0, -4272($s8)
  lw $t1, 0($t0)
  sw $t1, -4276($s8)
  lw $t0, -4276($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4280($s8)
  la $t0, -4($s8)
  lw $t1, -4280($s8)
  add $t2, $t0, $t1
  sw $t2, -4284($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4288($s8)
  lw $t0, -4288($s8)
  lw $t1, 0($t0)
  sw $t1, -4292($s8)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4296($s8)
  lw $t0, -4296($s8)
  lw $t1, 0($t0)
  sw $t1, -4300($s8)
  lw $t0, -4292($s8)
  lw $t1, -4300($s8)
  sub $t2, $t0, $t1
  sw $t2, -4304($s8)
  lw $t0, -4304($s8)
  lw $t1, -4284($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4308($s8)
  lw $t0, -4308($s8)
  lw $t1, 0($t0)
  sw $t1, -4312($s8)
  lw $t0, -4312($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4316($s8)
  la $t0, -12($s8)
  lw $t1, -4316($s8)
  add $t2, $t0, $t1
  sw $t2, -4320($s8)
  la $t0, -3876($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4324($s8)
  lw $t0, -4324($s8)
  lw $t1, 0($t0)
  sw $t1, -4328($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4332($s8)
  lw $t0, -4332($s8)
  lw $t1, 0($t0)
  sw $t1, -4336($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4340($s8)
  lw $t0, -4340($s8)
  lw $t1, 0($t0)
  sw $t1, -4344($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4344($s8)
  sw $t1, 4($sp)
  lw $t2, -4336($s8)
  sw $t2, 8($sp)
  lw $t3, -4328($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_156
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4348($s8)
  lw $t0, -4348($s8)
  lw $t1, -4320($s8)
  sw $t0, 0($t1)
  lw $t0, -4060($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label1172
label1173:
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4352($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4356($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4360($s8)
  lw $t0, -4360($s8)
  lw $t1, 0($t0)
  sw $t1, -4364($s8)
  lw $t0, -4364($s8)
  li $t1, -1372901703
  blt $t0, $t1, label1192
  j label1193
label1192:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4356($s8)
label1193:
  lw $t0, -4356($s8)
  lw $t1, -4352($s8)
  sw $t0, 0($t1)
  lw $t0, -4352($s8)
  lw $t1, 0($t0)
  sw $t1, -4368($s8)
  lw $t0, -4368($s8)
  move $t1, $t0
  sw $t1, -4372($s8)
  lw $t0, -4372($s8)
  li $t1, 0
  beq $t0, $t1, label1191
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4380($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4388($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4392($s8)
  lw $t0, -4392($s8)
  lw $t1, 0($t0)
  sw $t1, -4396($s8)
  lw $t0, -4396($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4400($s8)
  la $t0, -12($s8)
  lw $t1, -4400($s8)
  add $t2, $t0, $t1
  sw $t2, -4404($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4408($s8)
  lw $t0, -4408($s8)
  lw $t1, 0($t0)
  sw $t1, -4412($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4416($s8)
  lw $t0, -4416($s8)
  lw $t1, 0($t0)
  sw $t1, -4420($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, -4420($s8)
  sw $t2, 8($sp)
  lw $t3, -4412($s8)
  sw $t3, 12($sp)
  li $t4, -1508529143
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4424($s8)
  lw $t0, -4424($s8)
  lw $t1, -4404($s8)
  sw $t0, 0($t1)
  lw $t0, -4404($s8)
  lw $t1, 0($t0)
  sw $t1, -4428($s8)
  lw $t0, -4428($s8)
  move $t1, $t0
  sw $t1, -4432($s8)
  lw $t0, -4432($s8)
  lw $t1, -4388($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4380($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4436($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4440($s8)
  lw $t0, -4440($s8)
  lw $t1, 0($t0)
  sw $t1, -4444($s8)
  lw $t0, -4444($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4448($s8)
  la $t0, -4($s8)
  lw $t1, -4448($s8)
  add $t2, $t0, $t1
  sw $t2, -4452($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4456($s8)
  lw $t0, -4456($s8)
  lw $t1, 0($t0)
  sw $t1, -4460($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4460($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_157
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4464($s8)
  lw $t0, -4464($s8)
  lw $t1, -4452($s8)
  sw $t0, 0($t1)
  lw $t0, -4452($s8)
  lw $t1, 0($t0)
  sw $t1, -4468($s8)
  lw $t0, -4468($s8)
  move $t1, $t0
  sw $t1, -4472($s8)
  lw $t0, -4472($s8)
  lw $t1, -4436($s8)
  sw $t0, 0($t1)
  la $t0, -4384($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4476($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4480($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4484($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4488($s8)
  lw $t0, -4488($s8)
  lw $t1, 0($t0)
  sw $t1, -4492($s8)
  lw $t0, -4492($s8)
  li $t1, 0
  bne $t0, $t1, label1195
  j label1194
label1194:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4484($s8)
label1195:
  lw $t0, -4484($s8)
  lw $t1, -4480($s8)
  sw $t0, 0($t1)
  lw $t0, -4480($s8)
  lw $t1, 0($t0)
  sw $t1, -4496($s8)
  lw $t0, -4496($s8)
  move $t1, $t0
  sw $t1, -4500($s8)
  lw $t0, -4500($s8)
  lw $t1, -4476($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4504($s8)
  lw $t0, -4504($s8)
  lw $t1, 0($t0)
  sw $t1, -4508($s8)
  lw $t0, -4508($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4512($s8)
  la $t0, -12($s8)
  lw $t1, -4512($s8)
  add $t2, $t0, $t1
  sw $t2, -4516($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4520($s8)
  lw $t0, -4520($s8)
  lw $t1, 0($t0)
  sw $t1, -4524($s8)
  lw $t0, -4524($s8)
  lw $t1, -4516($s8)
  sw $t0, 0($t1)
  lw $t0, -4516($s8)
  lw $t1, 0($t0)
  sw $t1, -4528($s8)
  lw $t0, -4528($s8)
  move $t1, $t0
  sw $t1, -4532($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4536($s8)
  lw $t0, -4536($s8)
  lw $t1, 0($t0)
  sw $t1, -4540($s8)
  lw $t0, -4540($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4544($s8)
  la $t0, -12($s8)
  lw $t1, -4544($s8)
  add $t2, $t0, $t1
  sw $t2, -4548($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4552($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4556($s8)
  lw $t0, -4556($s8)
  lw $t1, 0($t0)
  sw $t1, -4560($s8)
  lw $t0, -4560($s8)
  li $t1, 0
  bne $t0, $t1, label1196
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4564($s8)
  lw $t0, -4564($s8)
  lw $t1, 0($t0)
  sw $t1, -4568($s8)
  lw $t0, -4568($s8)
  li $t1, 0
  bne $t0, $t1, label1196
  j label1197
label1196:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4552($s8)
label1197:
  lw $t0, -4552($s8)
  lw $t1, -4548($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4572($s8)
  lw $t0, -4572($s8)
  lw $t1, 0($t0)
  sw $t1, -4576($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4580($s8)
  lw $t0, -4580($s8)
  lw $t1, 0($t0)
  sw $t1, -4584($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4588($s8)
  lw $t0, -4588($s8)
  lw $t1, 0($t0)
  sw $t1, -4592($s8)
  la $t0, -4384($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4596($s8)
  lw $t0, -4596($s8)
  lw $t1, 0($t0)
  sw $t1, -4600($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4600($s8)
  sw $t1, 4($sp)
  lw $t2, -4592($s8)
  sw $t2, 8($sp)
  lw $t3, -4584($s8)
  sw $t3, 12($sp)
  lw $t4, -4576($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_155
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4604($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4604($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4608($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4612($s8)
  lw $t0, -4612($s8)
  lw $t1, 0($t0)
  sw $t1, -4616($s8)
  lw $t0, -4616($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4620($s8)
  la $t0, -4($s8)
  lw $t1, -4620($s8)
  add $t2, $t0, $t1
  sw $t2, -4624($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4628($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4632($s8)
  lw $t0, -4632($s8)
  lw $t1, 0($t0)
  sw $t1, -4636($s8)
  lw $t0, -4636($s8)
  li $t1, 0
  bne $t0, $t1, label1199
  j label1198
label1198:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4628($s8)
label1199:
  lw $t0, -4628($s8)
  lw $t1, -4624($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4640($s8)
  lw $t0, -4640($s8)
  lw $t1, 0($t0)
  sw $t1, -4644($s8)
  lw $t0, -4644($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4648($s8)
  la $t0, -4($s8)
  lw $t1, -4648($s8)
  add $t2, $t0, $t1
  sw $t2, -4652($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4656($s8)
  lw $t0, -4656($s8)
  lw $t1, 0($t0)
  sw $t1, -4660($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4664($s8)
  lw $t0, -4664($s8)
  lw $t1, 0($t0)
  sw $t1, -4668($s8)
  la $t0, -4384($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4672($s8)
  lw $t0, -4672($s8)
  lw $t1, 0($t0)
  sw $t1, -4676($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4676($s8)
  sw $t1, 4($sp)
  lw $t2, -4668($s8)
  sw $t2, 8($sp)
  lw $t3, -4660($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4680($s8)
  lw $t0, -4680($s8)
  lw $t1, -4652($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4684($s8)
  lw $t0, -4684($s8)
  lw $t1, 0($t0)
  sw $t1, -4688($s8)
  lw $t0, -4688($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4692($s8)
  la $t0, -12($s8)
  lw $t1, -4692($s8)
  add $t2, $t0, $t1
  sw $t2, -4696($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4700($s8)
  lw $t0, -4700($s8)
  lw $t1, 0($t0)
  sw $t1, -4704($s8)
  la $t0, -4380($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4708($s8)
  lw $t0, -4708($s8)
  lw $t1, 0($t0)
  sw $t1, -4712($s8)
  lw $t0, -4704($s8)
  lw $t1, -4712($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -4716($s8)
  lw $t0, -4716($s8)
  lw $t1, -4696($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4720($s8)
  lw $t0, -4720($s8)
  lw $t1, 0($t0)
  sw $t1, -4724($s8)
  lw $t0, -4724($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4728($s8)
  la $t0, -12($s8)
  lw $t1, -4728($s8)
  add $t2, $t0, $t1
  sw $t2, -4732($s8)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4736($s8)
  lw $t0, -4736($s8)
  lw $t1, 0($t0)
  sw $t1, -4740($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4740($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4744($s8)
  lw $t0, -4744($s8)
  lw $t1, -4732($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4748($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4752($s8)
  lw $t0, -4752($s8)
  lw $t1, 0($t0)
  sw $t1, -4756($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4760($s8)
  lw $t0, -4760($s8)
  lw $t1, 0($t0)
  sw $t1, -4764($s8)
  lw $t0, -4756($s8)
  lw $t1, -4764($s8)
  bne $t0, $t1, label1200
  j label1201
label1200:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4748($s8)
label1201:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4748($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_157
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4768($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4772($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4776($s8)
  lw $t0, -4776($s8)
  lw $t1, 0($t0)
  sw $t1, -4780($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4784($s8)
  lw $t0, -4784($s8)
  lw $t1, 0($t0)
  sw $t1, -4788($s8)
  lw $t0, -4780($s8)
  lw $t1, -4788($s8)
  bne $t0, $t1, label1202
  j label1203
label1202:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4772($s8)
label1203:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4772($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4792($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4796($s8)
  lw $t0, -4796($s8)
  lw $t1, 0($t0)
  sw $t1, -4800($s8)
  lw $t0, -4800($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -4804($s8)
  la $t0, -12($s8)
  lw $t1, -4804($s8)
  add $t2, $t0, $t1
  sw $t2, -4808($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4812($s8)
  lw $t0, -4812($s8)
  lw $t1, 0($t0)
  sw $t1, -4816($s8)
  la $t0, -4380($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4820($s8)
  lw $t0, -4820($s8)
  lw $t1, 0($t0)
  sw $t1, -4824($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4828($s8)
  lw $t0, -4828($s8)
  lw $t1, 0($t0)
  sw $t1, -4832($s8)
  la $t0, -4384($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4836($s8)
  lw $t0, -4836($s8)
  lw $t1, 0($t0)
  sw $t1, -4840($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4840($s8)
  sw $t1, 4($sp)
  lw $t2, -4832($s8)
  sw $t2, 8($sp)
  lw $t3, -4824($s8)
  sw $t3, 12($sp)
  lw $t4, -4816($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_155
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4844($s8)
  lw $t0, -4844($s8)
  lw $t1, -4808($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4848($s8)
  lw $t0, -4848($s8)
  lw $t1, 0($t0)
  sw $t1, -4852($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4852($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4856($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -4860($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4864($s8)
  lw $t0, -4864($s8)
  lw $t1, 0($t0)
  sw $t1, -4868($s8)
  lw $t0, -4868($s8)
  li $t1, 0
  beq $t0, $t1, label1205
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4872($s8)
  lw $t0, -4872($s8)
  lw $t1, 0($t0)
  sw $t1, -4876($s8)
  lw $t0, -4876($s8)
  li $t1, 0
  bne $t0, $t1, label1204
  j label1205
label1204:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4860($s8)
label1205:
  la $t0, -4380($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4880($s8)
  lw $t0, -4880($s8)
  lw $t1, 0($t0)
  sw $t1, -4884($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4888($s8)
  lw $t0, -4888($s8)
  lw $t1, 0($t0)
  sw $t1, -4892($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4892($s8)
  sw $t1, 4($sp)
  lw $t2, -4884($s8)
  sw $t2, 8($sp)
  li $t3, 2016923447
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4896($s8)
  la $t0, -4384($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4900($s8)
  lw $t0, -4900($s8)
  lw $t1, 0($t0)
  sw $t1, -4904($s8)
  li $t0, -297618976
  lw $t1, -4904($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -4908($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4908($s8)
  sw $t1, 4($sp)
  lw $t2, -4896($s8)
  sw $t2, 8($sp)
  lw $t3, -4860($s8)
  sw $t3, 12($sp)
  lw $t4, -4856($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_155
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4912($s8)
  lw $t0, -4532($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label1173
label1191:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label1206:
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4916($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4920($s8)
  lw $t0, -4920($s8)
  lw $t1, 0($t0)
  sw $t1, -4924($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4924($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_157
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4928($s8)
  lw $t0, -4928($s8)
  lw $t1, -4916($s8)
  sw $t0, 0($t1)
  lw $t0, -4916($s8)
  lw $t1, 0($t0)
  sw $t1, -4932($s8)
  lw $t0, -4932($s8)
  move $t1, $t0
  sw $t1, -4936($s8)
  lw $t0, -4936($s8)
  li $t1, 0
  beq $t0, $t1, label1207
  li $t0, 0
  move $t1, $t0
  sw $t1, -4940($s8)
  lw $t0, -2660($s8)
  li $t1, 10
  blt $t0, $t1, label1208
  j label1209
label1208:
  li $t0, 1
  move $t1, $t0
  sw $t1, -4940($s8)
label1209:
  lw $t0, -4940($s8)
  li $t1, 0
  beq $t0, $t1, label1207
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4948($s8)
  lw $t0, -4948($s8)
  lw $t1, 0($t0)
  sw $t1, -4952($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4956($s8)
  lw $t0, -4956($s8)
  lw $t1, 0($t0)
  sw $t1, -4960($s8)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4964($s8)
  lw $t0, -4964($s8)
  lw $t1, 0($t0)
  sw $t1, -4968($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4968($s8)
  sw $t1, 4($sp)
  lw $t2, -4960($s8)
  sw $t2, 8($sp)
  li $t3, -978964679
  sw $t3, 12($sp)
  lw $t4, -4952($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4972($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -4972($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -4976($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4944($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4980($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4984($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -4988($s8)
  lw $t0, -4988($s8)
  lw $t1, 0($t0)
  sw $t1, -4992($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -4996($s8)
  lw $t0, -4996($s8)
  lw $t1, 0($t0)
  sw $t1, -5000($s8)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5004($s8)
  lw $t0, -5004($s8)
  lw $t1, 0($t0)
  sw $t1, -5008($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -5008($s8)
  sw $t1, 4($sp)
  lw $t2, -5000($s8)
  sw $t2, 8($sp)
  lw $t3, -4992($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5012($s8)
  lw $t0, -5012($s8)
  lw $t1, -4984($s8)
  sw $t0, 0($t1)
  lw $t0, -4984($s8)
  lw $t1, 0($t0)
  sw $t1, -5016($s8)
  lw $t0, -5016($s8)
  move $t1, $t0
  sw $t1, -5020($s8)
  lw $t0, -5020($s8)
  lw $t1, -4980($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -1028439394
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5024($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -5024($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5028($s8)
  lw $t0, -2660($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -2660($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5032($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5036($s8)
  lw $t0, -5036($s8)
  lw $t1, 0($t0)
  sw $t1, -5040($s8)
  la $t0, -4944($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5044($s8)
  lw $t0, -5044($s8)
  lw $t1, 0($t0)
  sw $t1, -5048($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5052($s8)
  lw $t0, -5052($s8)
  lw $t1, 0($t0)
  sw $t1, -5056($s8)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5060($s8)
  lw $t0, -5060($s8)
  lw $t1, 0($t0)
  sw $t1, -5064($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -5064($s8)
  sw $t1, 4($sp)
  lw $t2, -5056($s8)
  sw $t2, 8($sp)
  lw $t3, -5048($s8)
  sw $t3, 12($sp)
  lw $t4, -5040($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5068($s8)
  lw $t0, -5068($s8)
  lw $t1, -5032($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5072($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5076($s8)
  lw $t0, -5076($s8)
  lw $t1, 0($t0)
  sw $t1, -5080($s8)
  la $t0, -4944($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5084($s8)
  lw $t0, -5084($s8)
  lw $t1, 0($t0)
  sw $t1, -5088($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5092($s8)
  lw $t0, -5092($s8)
  lw $t1, 0($t0)
  sw $t1, -5096($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -5096($s8)
  sw $t1, 4($sp)
  lw $t2, -5088($s8)
  sw $t2, 8($sp)
  lw $t3, -5080($s8)
  sw $t3, 12($sp)
  li $t4, 740066785
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5100($s8)
  lw $t0, -5100($s8)
  lw $t1, -5072($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5104($s8)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5108($s8)
  lw $t0, -5108($s8)
  lw $t1, 0($t0)
  sw $t1, -5112($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -5112($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5116($s8)
  lw $t0, -5116($s8)
  lw $t1, -5104($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5120($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5124($s8)
  lw $t0, -5124($s8)
  lw $t1, 0($t0)
  sw $t1, -5128($s8)
  lw $t0, -5128($s8)
  lw $t1, -5120($s8)
  sw $t0, 0($t1)
  lw $t0, -5120($s8)
  lw $t1, 0($t0)
  sw $t1, -5132($s8)
  lw $t0, -5132($s8)
  move $t1, $t0
  sw $t1, -5136($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -5140($s8)
  la $t0, -4944($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5144($s8)
  lw $t0, -5144($s8)
  lw $t1, 0($t0)
  sw $t1, -5148($s8)
  li $t0, -2089946557
  lw $t1, -5148($s8)
  ble $t0, $t1, label1210
  j label1211
label1210:
  li $t0, 1
  move $t1, $t0
  sw $t1, -5140($s8)
label1211:
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5152($s8)
  lw $t0, -5152($s8)
  lw $t1, 0($t0)
  sw $t1, -5156($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -5156($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_157
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5160($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -5164($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5168($s8)
  lw $t0, -5168($s8)
  lw $t1, 0($t0)
  sw $t1, -5172($s8)
  lw $t0, -5172($s8)
  li $t1, 0
  bne $t0, $t1, label1213
  j label1212
label1212:
  li $t0, 1
  move $t1, $t0
  sw $t1, -5164($s8)
label1213:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -5164($s8)
  sw $t1, 4($sp)
  lw $t2, -5160($s8)
  sw $t2, 8($sp)
  lw $t3, -5140($s8)
  sw $t3, 12($sp)
  lw $t4, -5136($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5176($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5180($s8)
  lw $t0, -5180($s8)
  lw $t1, 0($t0)
  sw $t1, -5184($s8)
  lw $t0, -5184($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -5188($s8)
  la $t0, -4($s8)
  lw $t1, -5188($s8)
  add $t2, $t0, $t1
  sw $t2, -5192($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5196($s8)
  lw $t0, -5196($s8)
  lw $t1, 0($t0)
  sw $t1, -5200($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5204($s8)
  lw $t0, -5204($s8)
  lw $t1, 0($t0)
  sw $t1, -5208($s8)
  la $t0, -4944($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5212($s8)
  lw $t0, -5212($s8)
  lw $t1, 0($t0)
  sw $t1, -5216($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, -5216($s8)
  sw $t2, 8($sp)
  lw $t3, -5208($s8)
  sw $t3, 12($sp)
  lw $t4, -5200($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_155
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5220($s8)
  lw $t0, -5220($s8)
  lw $t1, -5192($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5224($s8)
  la $t0, -4944($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5228($s8)
  lw $t0, -5228($s8)
  lw $t1, 0($t0)
  sw $t1, -5232($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5236($s8)
  lw $t0, -5236($s8)
  lw $t1, 0($t0)
  sw $t1, -5240($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -460039645
  sw $t1, 4($sp)
  lw $t2, -5240($s8)
  sw $t2, 8($sp)
  lw $t3, -5232($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5244($s8)
  lw $t0, -5244($s8)
  lw $t1, -5224($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 4
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5248($s8)
  lw $t0, -5248($s8)
  lw $t1, 0($t0)
  sw $t1, -5252($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5256($s8)
  lw $t0, -5256($s8)
  lw $t1, 0($t0)
  sw $t1, -5260($s8)
  lw $t0, -5252($s8)
  lw $t1, -5260($s8)
  mul $t2, $t0, $t1
  sw $t2, -5264($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5268($s8)
  lw $t0, -5268($s8)
  lw $t1, 0($t0)
  sw $t1, -5272($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -5272($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_157
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5276($s8)
  la $t0, -4944($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5280($s8)
  lw $t0, -5280($s8)
  lw $t1, 0($t0)
  sw $t1, -5284($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -5284($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5288($s8)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5292($s8)
  lw $t0, -5292($s8)
  lw $t1, 0($t0)
  sw $t1, -5296($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -791707382
  sw $t1, 4($sp)
  lw $t2, -16($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  lw $t4, -5296($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5300($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -5300($s8)
  sw $t1, 4($sp)
  lw $t2, -5288($s8)
  sw $t2, 8($sp)
  lw $t3, -5276($s8)
  sw $t3, 12($sp)
  lw $t4, -5264($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5304($s8)
  lw $t0, -4976($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -5028($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label1206
label1207:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label1214:
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5308($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5312($s8)
  lw $t0, -5312($s8)
  lw $t1, 0($t0)
  sw $t1, -5316($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -5316($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5320($s8)
  lw $t0, -5320($s8)
  lw $t1, -5308($s8)
  sw $t0, 0($t1)
  lw $t0, -5308($s8)
  lw $t1, 0($t0)
  sw $t1, -5324($s8)
  lw $t0, -5324($s8)
  move $t1, $t0
  sw $t1, -5328($s8)
  lw $t0, -5328($s8)
  li $t1, 0
  beq $t0, $t1, label1215
  li $t0, 0
  move $t1, $t0
  sw $t1, -5332($s8)
  lw $t0, -2664($s8)
  li $t1, 10
  blt $t0, $t1, label1216
  j label1217
label1216:
  li $t0, 1
  move $t1, $t0
  sw $t1, -5332($s8)
label1217:
  lw $t0, -5332($s8)
  li $t1, 0
  beq $t0, $t1, label1215
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5340($s8)
  li $t0, -388232762
  move $t1, $t0
  sw $t1, -5344($s8)
  lw $t0, -5344($s8)
  lw $t1, -5340($s8)
  sw $t0, 0($t1)
  lw $t0, -5340($s8)
  lw $t1, 0($t0)
  sw $t1, -5348($s8)
  lw $t0, -5348($s8)
  move $t1, $t0
  sw $t1, -5352($s8)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -5336($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5356($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5360($s8)
  lw $t0, -5360($s8)
  lw $t1, 0($t0)
  sw $t1, -5364($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5368($s8)
  lw $t0, -5368($s8)
  lw $t1, 0($t0)
  sw $t1, -5372($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5376($s8)
  lw $t0, -5376($s8)
  lw $t1, 0($t0)
  sw $t1, -5380($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -1742726677
  sw $t1, 4($sp)
  lw $t2, -5380($s8)
  sw $t2, 8($sp)
  lw $t3, -5372($s8)
  sw $t3, 12($sp)
  lw $t4, -5364($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_155
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5384($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -5388($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5392($s8)
  lw $t0, -5392($s8)
  lw $t1, 0($t0)
  sw $t1, -5396($s8)
  lw $t0, -5396($s8)
  lw $t1, 12($s8)
  ble $t0, $t1, label1218
  j label1219
label1218:
  li $t0, 1
  move $t1, $t0
  sw $t1, -5388($s8)
label1219:
  li $t0, 0
  move $t1, $t0
  sw $t1, -5400($s8)
  lw $t0, -16($s8)
  lw $t1, -20($s8)
  bne $t0, $t1, label1220
  j label1221
label1220:
  li $t0, 1
  move $t1, $t0
  sw $t1, -5400($s8)
label1221:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -5400($s8)
  sw $t1, 4($sp)
  lw $t2, -5388($s8)
  sw $t2, 8($sp)
  lw $t3, -5384($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5404($s8)
  lw $t0, -5404($s8)
  lw $t1, -5356($s8)
  sw $t0, 0($t1)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5408($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5412($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5416($s8)
  lw $t0, -5416($s8)
  lw $t1, 0($t0)
  sw $t1, -5420($s8)
  lw $t0, -5420($s8)
  lw $t1, -5412($s8)
  sw $t0, 0($t1)
  lw $t0, -5412($s8)
  lw $t1, 0($t0)
  sw $t1, -5424($s8)
  lw $t0, -5424($s8)
  move $t1, $t0
  sw $t1, -5428($s8)
  lw $t0, -5428($s8)
  lw $t1, -5408($s8)
  sw $t0, 0($t1)
  lw $t0, -5408($s8)
  lw $t1, 0($t0)
  sw $t1, -5432($s8)
  lw $t0, -5432($s8)
  move $t1, $t0
  sw $t1, -5436($s8)
  lw $t0, -2664($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -2664($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -5440($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5444($s8)
  lw $t0, -5444($s8)
  lw $t1, 0($t0)
  sw $t1, -5448($s8)
  lw $t0, -5448($s8)
  li $t1, 0
  bne $t0, $t1, label1223
  j label1222
label1222:
  li $t0, 1
  move $t1, $t0
  sw $t1, -5440($s8)
label1223:
  li $t0, 0
  move $t1, $t0
  sw $t1, -5452($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5456($s8)
  lw $t0, -5456($s8)
  lw $t1, 0($t0)
  sw $t1, -5460($s8)
  lw $t0, -5460($s8)
  li $t1, 0
  beq $t0, $t1, label1225
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5464($s8)
  lw $t0, -5464($s8)
  lw $t1, 0($t0)
  sw $t1, -5468($s8)
  lw $t0, -5468($s8)
  li $t1, 0
  bne $t0, $t1, label1224
  j label1225
label1224:
  li $t0, 1
  move $t1, $t0
  sw $t1, -5452($s8)
label1225:
  li $t0, 0
  move $t1, $t0
  sw $t1, -5472($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5476($s8)
  lw $t0, -5476($s8)
  lw $t1, 0($t0)
  sw $t1, -5480($s8)
  lw $t0, -5480($s8)
  li $t1, -613273846
  bne $t0, $t1, label1226
  j label1227
label1226:
  li $t0, 1
  move $t1, $t0
  sw $t1, -5472($s8)
label1227:
  li $t0, 0
  move $t1, $t0
  sw $t1, -5484($s8)
  la $t0, -5336($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5488($s8)
  lw $t0, -5488($s8)
  lw $t1, 0($t0)
  sw $t1, -5492($s8)
  lw $t0, -5492($s8)
  lw $t1, 12($s8)
  bne $t0, $t1, label1228
  j label1229
label1228:
  li $t0, 1
  move $t1, $t0
  sw $t1, -5484($s8)
label1229:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -5484($s8)
  sw $t1, 4($sp)
  lw $t2, -5472($s8)
  sw $t2, 8($sp)
  lw $t3, -5452($s8)
  sw $t3, 12($sp)
  lw $t4, -5440($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5496($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5500($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5504($s8)
  lw $t0, -5504($s8)
  lw $t1, 0($t0)
  sw $t1, -5508($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5512($s8)
  lw $t0, -5512($s8)
  lw $t1, 0($t0)
  sw $t1, -5516($s8)
  lw $t0, -5516($s8)
  sw $t0, 0($sp)
  lw $t1, -5508($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_mul
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5520($s8)
  lw $t0, -5520($s8)
  lw $t1, -5500($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5524($s8)
  la $t0, -5336($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5528($s8)
  lw $t0, -5528($s8)
  lw $t1, 0($t0)
  sw $t1, -5532($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5536($s8)
  lw $t0, -5536($s8)
  lw $t1, 0($t0)
  sw $t1, -5540($s8)
  lw $t0, -5540($s8)
  sw $t0, 0($sp)
  lw $t1, -5532($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_mul
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5544($s8)
  lw $t0, -5544($s8)
  lw $t1, -5524($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5548($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5552($s8)
  lw $t0, -5552($s8)
  lw $t1, 0($t0)
  sw $t1, -5556($s8)
  la $t0, -5336($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5560($s8)
  lw $t0, -5560($s8)
  lw $t1, 0($t0)
  sw $t1, -5564($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5568($s8)
  lw $t0, -5568($s8)
  lw $t1, 0($t0)
  sw $t1, -5572($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, -5572($s8)
  sw $t2, 8($sp)
  lw $t3, -5564($s8)
  sw $t3, 12($sp)
  lw $t4, -5556($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_155
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5576($s8)
  lw $t0, -5576($s8)
  lw $t1, -5548($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5580($s8)
  la $t0, -5336($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5584($s8)
  lw $t0, -5584($s8)
  lw $t1, 0($t0)
  sw $t1, -5588($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5592($s8)
  lw $t0, -5592($s8)
  lw $t1, 0($t0)
  sw $t1, -5596($s8)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5600($s8)
  lw $t0, -5600($s8)
  lw $t1, 0($t0)
  sw $t1, -5604($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, -5604($s8)
  sw $t2, 8($sp)
  lw $t3, -5596($s8)
  sw $t3, 12($sp)
  lw $t4, -5588($s8)
  sw $t4, 16($sp)
  li $t5, 2081378909
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5608($s8)
  lw $t0, -5608($s8)
  lw $t1, -5580($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -5612($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5616($s8)
  lw $t0, -5616($s8)
  lw $t1, 0($t0)
  sw $t1, -5620($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5624($s8)
  lw $t0, -5624($s8)
  lw $t1, 0($t0)
  sw $t1, -5628($s8)
  lw $t0, -5620($s8)
  lw $t1, -5628($s8)
  ble $t0, $t1, label1230
  j label1231
label1230:
  li $t0, 1
  move $t1, $t0
  sw $t1, -5612($s8)
label1231:
  li $t0, 0
  move $t1, $t0
  sw $t1, -5632($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5636($s8)
  lw $t0, -5636($s8)
  lw $t1, 0($t0)
  sw $t1, -5640($s8)
  la $t0, -5336($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5644($s8)
  lw $t0, -5644($s8)
  lw $t1, 0($t0)
  sw $t1, -5648($s8)
  lw $t0, -5640($s8)
  lw $t1, -5648($s8)
  blt $t0, $t1, label1232
  j label1233
label1232:
  li $t0, 1
  move $t1, $t0
  sw $t1, -5632($s8)
label1233:
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5652($s8)
  lw $t0, -5652($s8)
  lw $t1, 0($t0)
  sw $t1, -5656($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -5656($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_157
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5660($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -5664($s8)
  lw $t0, 12($s8)
  lw $t1, -16($s8)
  bgt $t0, $t1, label1234
  j label1235
label1234:
  li $t0, 1
  move $t1, $t0
  sw $t1, -5664($s8)
label1235:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -5664($s8)
  sw $t1, 4($sp)
  lw $t2, -5660($s8)
  sw $t2, 8($sp)
  lw $t3, -5632($s8)
  sw $t3, 12($sp)
  lw $t4, -5612($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_155
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5668($s8)
  lw $t0, -5352($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -5436($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label1214
label1215:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5672($s8)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5676($s8)
  lw $t0, -5676($s8)
  lw $t1, 0($t0)
  sw $t1, -5680($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5684($s8)
  lw $t0, -5684($s8)
  lw $t1, 0($t0)
  sw $t1, -5688($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, -5688($s8)
  sw $t2, 8($sp)
  lw $t3, -5680($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5692($s8)
  lw $t0, -5692($s8)
  lw $t1, -5672($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5696($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5700($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5704($s8)
  lw $t0, -5704($s8)
  lw $t1, 0($t0)
  sw $t1, -5708($s8)
  lw $t0, -5708($s8)
  lw $t1, -5700($s8)
  sw $t0, 0($t1)
  lw $t0, -5700($s8)
  lw $t1, 0($t0)
  sw $t1, -5712($s8)
  lw $t0, -5712($s8)
  move $t1, $t0
  sw $t1, -5716($s8)
  lw $t0, -5716($s8)
  lw $t1, -5696($s8)
  sw $t0, 0($t1)
label1236:
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5720($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -5724($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5728($s8)
  lw $t0, -5728($s8)
  lw $t1, 0($t0)
  sw $t1, -5732($s8)
  lw $t0, -5732($s8)
  li $t1, 0
  bne $t0, $t1, label1239
  j label1238
label1238:
  li $t0, 1
  move $t1, $t0
  sw $t1, -5724($s8)
label1239:
  lw $t0, -5724($s8)
  lw $t1, -5720($s8)
  sw $t0, 0($t1)
  lw $t0, -5720($s8)
  lw $t1, 0($t0)
  sw $t1, -5736($s8)
  lw $t0, -5736($s8)
  move $t1, $t0
  sw $t1, -5740($s8)
  lw $t0, -5740($s8)
  li $t1, 0
  beq $t0, $t1, label1237
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5756($s8)
  lw $t0, -5756($s8)
  lw $t1, 0($t0)
  sw $t1, -5760($s8)
  lw $t0, -5760($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -5764($s8)
  la $t0, -4($s8)
  lw $t1, -5764($s8)
  add $t2, $t0, $t1
  sw $t2, -5768($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -5772($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5776($s8)
  lw $t0, -5776($s8)
  lw $t1, 0($t0)
  sw $t1, -5780($s8)
  lw $t0, -5780($s8)
  li $t1, 0
  bne $t0, $t1, label1240
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5784($s8)
  lw $t0, -5784($s8)
  lw $t1, 0($t0)
  sw $t1, -5788($s8)
  lw $t0, -5788($s8)
  li $t1, 0
  bne $t0, $t1, label1240
  j label1241
label1240:
  li $t0, 1
  move $t1, $t0
  sw $t1, -5772($s8)
label1241:
  lw $t0, -5772($s8)
  lw $t1, -5768($s8)
  sw $t0, 0($t1)
  lw $t0, -5768($s8)
  lw $t1, 0($t0)
  sw $t1, -5792($s8)
  lw $t0, -5792($s8)
  move $t1, $t0
  sw $t1, -5796($s8)
  la $t0, -5748($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5800($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5804($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -5808($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5812($s8)
  lw $t0, -5812($s8)
  lw $t1, 0($t0)
  sw $t1, -5816($s8)
  lw $t0, -5816($s8)
  li $t1, -658040949
  blt $t0, $t1, label1242
  j label1243
label1242:
  li $t0, 1
  move $t1, $t0
  sw $t1, -5808($s8)
label1243:
  lw $t0, -5808($s8)
  lw $t1, -5804($s8)
  sw $t0, 0($t1)
  lw $t0, -5804($s8)
  lw $t1, 0($t0)
  sw $t1, -5820($s8)
  lw $t0, -5820($s8)
  move $t1, $t0
  sw $t1, -5824($s8)
  lw $t0, -5824($s8)
  lw $t1, -5800($s8)
  sw $t0, 0($t1)
  la $t0, -5748($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5828($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5832($s8)
  lw $t0, -5832($s8)
  lw $t1, 0($t0)
  sw $t1, -5836($s8)
  lw $t0, -5836($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -5840($s8)
  la $t0, -4($s8)
  lw $t1, -5840($s8)
  add $t2, $t0, $t1
  sw $t2, -5844($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -5848($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5852($s8)
  lw $t0, -5852($s8)
  lw $t1, 0($t0)
  sw $t1, -5856($s8)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5860($s8)
  lw $t0, -5860($s8)
  lw $t1, 0($t0)
  sw $t1, -5864($s8)
  lw $t0, -5856($s8)
  lw $t1, -5864($s8)
  blt $t0, $t1, label1244
  j label1245
label1244:
  li $t0, 1
  move $t1, $t0
  sw $t1, -5848($s8)
label1245:
  lw $t0, -5848($s8)
  lw $t1, -5844($s8)
  sw $t0, 0($t1)
  lw $t0, -5844($s8)
  lw $t1, 0($t0)
  sw $t1, -5868($s8)
  lw $t0, -5868($s8)
  move $t1, $t0
  sw $t1, -5872($s8)
  lw $t0, -5872($s8)
  lw $t1, -5828($s8)
  sw $t0, 0($t1)
  la $t0, -5752($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5876($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5880($s8)
  lw $t0, -5880($s8)
  lw $t1, 0($t0)
  sw $t1, -5884($s8)
  lw $t0, -5884($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -5888($s8)
  la $t0, -4($s8)
  lw $t1, -5888($s8)
  add $t2, $t0, $t1
  sw $t2, -5892($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -5896($s8)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5900($s8)
  lw $t0, -5900($s8)
  lw $t1, 0($t0)
  sw $t1, -5904($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5908($s8)
  lw $t0, -5908($s8)
  lw $t1, 0($t0)
  sw $t1, -5912($s8)
  lw $t0, -5904($s8)
  lw $t1, -5912($s8)
  ble $t0, $t1, label1246
  j label1247
label1246:
  li $t0, 1
  move $t1, $t0
  sw $t1, -5896($s8)
label1247:
  lw $t0, -5896($s8)
  lw $t1, -5892($s8)
  sw $t0, 0($t1)
  lw $t0, -5892($s8)
  lw $t1, 0($t0)
  sw $t1, -5916($s8)
  lw $t0, -5916($s8)
  move $t1, $t0
  sw $t1, -5920($s8)
  lw $t0, -5920($s8)
  lw $t1, -5876($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5924($s8)
  lw $t0, -5924($s8)
  lw $t1, 0($t0)
  sw $t1, -5928($s8)
  lw $t0, -5928($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -5932($s8)
  la $t0, -12($s8)
  lw $t1, -5932($s8)
  add $t2, $t0, $t1
  sw $t2, -5936($s8)
  la $t0, -5748($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5940($s8)
  lw $t0, -5940($s8)
  lw $t1, 0($t0)
  sw $t1, -5944($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5948($s8)
  lw $t0, -5948($s8)
  lw $t1, 0($t0)
  sw $t1, -5952($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5956($s8)
  lw $t0, -5956($s8)
  lw $t1, 0($t0)
  sw $t1, -5960($s8)
  la $t0, -5752($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5964($s8)
  lw $t0, -5964($s8)
  lw $t1, 0($t0)
  sw $t1, -5968($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -5968($s8)
  sw $t1, 4($sp)
  lw $t2, -5960($s8)
  sw $t2, 8($sp)
  lw $t3, -5952($s8)
  sw $t3, 12($sp)
  lw $t4, -5944($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5972($s8)
  lw $t0, -5972($s8)
  lw $t1, -5936($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -5976($s8)
  lw $t0, -5976($s8)
  lw $t1, 0($t0)
  sw $t1, -5980($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -5980($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_157
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -5984($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -5988($s8)
  lw $t0, -5988($s8)
  lw $t1, 0($t0)
  sw $t1, -5992($s8)
  lw $t0, -5992($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -5996($s8)
  la $t0, -4($s8)
  lw $t1, -5996($s8)
  add $t2, $t0, $t1
  sw $t2, -6000($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -6004($s8)
  lw $t0, -6004($s8)
  lw $t1, 0($t0)
  sw $t1, -6008($s8)
  la $t0, -5752($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -6012($s8)
  lw $t0, -6012($s8)
  lw $t1, 0($t0)
  sw $t1, -6016($s8)
  lw $t0, -6008($s8)
  lw $t1, -6016($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -6020($s8)
  lw $t0, -6020($s8)
  lw $t1, -6000($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -6024($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -6028($s8)
  lw $t0, -6028($s8)
  lw $t1, 0($t0)
  sw $t1, -6032($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -6036($s8)
  lw $t0, -6036($s8)
  lw $t1, 0($t0)
  sw $t1, -6040($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -6044($s8)
  lw $t0, -6044($s8)
  lw $t1, 0($t0)
  sw $t1, -6048($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -6048($s8)
  sw $t1, 4($sp)
  lw $t2, -6040($s8)
  sw $t2, 8($sp)
  lw $t3, -6032($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_156
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -6052($s8)
  lw $t0, -6052($s8)
  lw $t1, -6024($s8)
  sw $t0, 0($t1)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -6056($s8)
  lw $t0, -6056($s8)
  lw $t1, 0($t0)
  sw $t1, -6060($s8)
  lw $t0, -6060($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -6064($s8)
  la $t0, -4($s8)
  lw $t1, -6064($s8)
  add $t2, $t0, $t1
  sw $t2, -6068($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -6072($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -6076($s8)
  lw $t0, -6076($s8)
  lw $t1, 0($t0)
  sw $t1, -6080($s8)
  la $t0, -5752($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -6084($s8)
  lw $t0, -6084($s8)
  lw $t1, 0($t0)
  sw $t1, -6088($s8)
  lw $t0, -6080($s8)
  lw $t1, -6088($s8)
  blt $t0, $t1, label1248
  j label1249
label1248:
  li $t0, 1
  move $t1, $t0
  sw $t1, -6072($s8)
label1249:
  lw $t0, -6072($s8)
  lw $t1, -6068($s8)
  sw $t0, 0($t1)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -6092($s8)
  lw $t0, -6092($s8)
  lw $t1, 0($t0)
  sw $t1, -6096($s8)
  lw $t0, -6096($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -6100($s8)
  la $t0, -12($s8)
  lw $t1, -6100($s8)
  add $t2, $t0, $t1
  sw $t2, -6104($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -6108($s8)
  la $t0, -5748($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -6112($s8)
  lw $t0, -6112($s8)
  lw $t1, 0($t0)
  sw $t1, -6116($s8)
  lw $t0, -6116($s8)
  li $t1, 0
  beq $t0, $t1, label1251
  li $t0, -177722160
  li $t1, 0
  bne $t0, $t1, label1250
  j label1251
label1250:
  li $t0, 1
  move $t1, $t0
  sw $t1, -6108($s8)
label1251:
  lw $t0, -6108($s8)
  lw $t1, -6104($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -6120($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -6124($s8)
  lw $t0, -6124($s8)
  lw $t1, 0($t0)
  sw $t1, -6128($s8)
  lw $t0, -6128($s8)
  li $t1, 0
  bne $t0, $t1, label1253
  j label1252
label1252:
  li $t0, 1
  move $t1, $t0
  sw $t1, -6120($s8)
label1253:
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -6132($s8)
  lw $t0, -6132($s8)
  lw $t1, 0($t0)
  sw $t1, -6136($s8)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -6140($s8)
  lw $t0, -6140($s8)
  lw $t1, 0($t0)
  sw $t1, -6144($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -6148($s8)
  lw $t0, -6148($s8)
  lw $t1, 0($t0)
  sw $t1, -6152($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -6152($s8)
  sw $t1, 4($sp)
  li $t2, -1308604301
  sw $t2, 8($sp)
  lw $t3, -6144($s8)
  sw $t3, 12($sp)
  lw $t4, -6136($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -6156($s8)
  la $t0, -5748($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -6160($s8)
  lw $t0, -6160($s8)
  lw $t1, 0($t0)
  sw $t1, -6164($s8)
  la $t0, -5752($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -6168($s8)
  lw $t0, -6168($s8)
  lw $t1, 0($t0)
  sw $t1, -6172($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, -6172($s8)
  sw $t3, 12($sp)
  lw $t4, -6164($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -6176($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -6176($s8)
  sw $t1, 4($sp)
  lw $t2, -6156($s8)
  sw $t2, 8($sp)
  lw $t3, -6120($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_156
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -6180($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -6184($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -6188($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -6192($s8)
  lw $t0, -6192($s8)
  lw $t1, 0($t0)
  sw $t1, -6196($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -6200($s8)
  lw $t0, -6200($s8)
  lw $t1, 0($t0)
  sw $t1, -6204($s8)
  lw $t0, -6196($s8)
  lw $t1, -6204($s8)
  bge $t0, $t1, label1254
  j label1255
label1254:
  li $t0, 1
  move $t1, $t0
  sw $t1, -6188($s8)
label1255:
  lw $t0, -6188($s8)
  lw $t1, -6184($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -6208($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -6212($s8)
  lw $t0, -6212($s8)
  lw $t1, 0($t0)
  sw $t1, -6216($s8)
  la $t0, -2536($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -6220($s8)
  lw $t0, -6220($s8)
  lw $t1, 0($t0)
  sw $t1, -6224($s8)
  lw $t0, -6216($s8)
  lw $t1, -6224($s8)
  bge $t0, $t1, label1256
  j label1257
label1256:
  li $t0, 1
  move $t1, $t0
  sw $t1, -6208($s8)
label1257:
  la $t0, -5748($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -6228($s8)
  lw $t0, -6228($s8)
  lw $t1, 0($t0)
  sw $t1, -6232($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -6236($s8)
  lw $t0, -6236($s8)
  lw $t1, 0($t0)
  sw $t1, -6240($s8)
  lw $t0, -6232($s8)
  lw $t1, -6240($s8)
  add $t2, $t0, $t1
  sw $t2, -6244($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -6248($s8)
  lw $t0, -6248($s8)
  lw $t1, 0($t0)
  sw $t1, -6252($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -6252($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -6256($s8)
  la $t0, -5752($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -6260($s8)
  lw $t0, -6260($s8)
  lw $t1, 0($t0)
  sw $t1, -6264($s8)
  li $t0, 1477012277
  lw $t1, -6264($s8)
  sub $t2, $t0, $t1
  sw $t2, -6268($s8)
  lw $t0, 12($s8)
  lw $t1, -16($s8)
  add $t2, $t0, $t1
  sw $t2, -6272($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -6272($s8)
  sw $t1, 4($sp)
  lw $t2, -6268($s8)
  sw $t2, 8($sp)
  lw $t3, -6256($s8)
  sw $t3, 12($sp)
  lw $t4, -6244($s8)
  sw $t4, 16($sp)
  lw $t5, -6208($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -6276($s8)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -6280($s8)
  lw $t0, -6280($s8)
  lw $t1, 0($t0)
  sw $t1, -6284($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -6284($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -6288($s8)
  la $t0, -2528($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -6292($s8)
  lw $t0, -6292($s8)
  lw $t1, 0($t0)
  sw $t1, -6296($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -6300($s8)
  lw $t0, -6300($s8)
  lw $t1, 0($t0)
  sw $t1, -6304($s8)
  lw $t0, -6296($s8)
  lw $t1, -6304($s8)
  mul $t2, $t0, $t1
  sw $t2, -6308($s8)
  la $t0, -5752($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -6312($s8)
  lw $t0, -6312($s8)
  lw $t1, 0($t0)
  sw $t1, -6316($s8)
  la $t0, -2536($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -6320($s8)
  lw $t0, -6320($s8)
  lw $t1, 0($t0)
  sw $t1, -6324($s8)
  la $t0, -5748($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -6328($s8)
  lw $t0, -6328($s8)
  lw $t1, 0($t0)
  sw $t1, -6332($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  lw $t2, -6332($s8)
  sw $t2, 8($sp)
  lw $t3, -6324($s8)
  sw $t3, 12($sp)
  lw $t4, -6316($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_155
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -6336($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -6336($s8)
  sw $t1, 4($sp)
  lw $t2, -6308($s8)
  sw $t2, 8($sp)
  lw $t3, -6288($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -6340($s8)
  lw $t0, -5796($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label1236
label1237:
  lw $t0, -2552($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label1112
label1113:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -6344($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -6348($s8)
  lw $t0, -6348($s8)
  lw $t1, 0($t0)
  sw $t1, -6352($s8)
  li $t0, 761895050
  lw $t1, -6352($s8)
  blt $t0, $t1, label1258
  j label1259
label1258:
  li $t0, 1
  move $t1, $t0
  sw $t1, -6344($s8)
label1259:
  li $t0, 0
  move $t1, $t0
  sw $t1, -6356($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -6360($s8)
  lw $t0, -6360($s8)
  lw $t1, 0($t0)
  sw $t1, -6364($s8)
  lw $t0, -6364($s8)
  lw $t1, 12($s8)
  ble $t0, $t1, label1260
  j label1261
label1260:
  li $t0, 1
  move $t1, $t0
  sw $t1, -6356($s8)
label1261:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 999988474
  sw $t1, 4($sp)
  lw $t2, -6356($s8)
  sw $t2, 8($sp)
  lw $t3, -6344($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -6368($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -6372($s8)
  la $t0, -12($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -6376($s8)
  lw $t0, -6376($s8)
  lw $t1, 0($t0)
  sw $t1, -6380($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -6384($s8)
  lw $t0, -6384($s8)
  lw $t1, 0($t0)
  sw $t1, -6388($s8)
  lw $t0, -6380($s8)
  lw $t1, -6388($s8)
  bne $t0, $t1, label1262
  j label1263
label1262:
  li $t0, 1
  move $t1, $t0
  sw $t1, -6372($s8)
label1263:
  lw $t0, -16($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_add
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -6392($s8)
  lw $t0, -20($s8)
  lw $t1, -52($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -6396($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -6396($s8)
  sw $t1, 4($sp)
  lw $t2, -6392($s8)
  sw $t2, 8($sp)
  lw $t3, -6372($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_156
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -6400($s8)
  lw $t0, -16($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -20($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -52($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -6404($s8)
  lw $t0, -6404($s8)
  lw $t1, 0($t0)
  sw $t1, -6408($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -6412($s8)
  la $t0, -12($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -6416($s8)
  lw $t0, -6416($s8)
  lw $t1, 0($t0)
  sw $t1, -6420($s8)
  lw $t0, -6420($s8)
  li $t1, 0
  beq $t0, $t1, label1265
  li $t0, -1013945185
  li $t1, 0
  bne $t0, $t1, label1264
  j label1265
label1264:
  li $t0, 1
  move $t1, $t0
  sw $t1, -6412($s8)
label1265:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -20($s8)
  sw $t1, 4($sp)
  lw $t2, -16($s8)
  sw $t2, 8($sp)
  li $t3, 12180874
  sw $t3, 12($sp)
  lw $t4, 12($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -6424($s8)
  lw $t0, -52($s8)
  sw $t0, 0($sp)
  li $t1, -303350479
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_mul
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -6428($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -6428($s8)
  sw $t1, 4($sp)
  lw $t2, -6424($s8)
  sw $t2, 8($sp)
  lw $t3, -6412($s8)
  sw $t3, 12($sp)
  lw $t4, -6408($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -6432($s8)
  lw $t0, -6432($s8)
  move $v0, $t0
  move $sp, $s8
  lw $s8, 0($sp)
  addi $sp, $sp, 4
  jr $ra

i_func_158:
  addi $sp, $sp, -4
  sw $s8, 0($sp)
  move $s8, $sp
  addi $sp, $sp, -4096
  lw $t0, 8($s8)
  li $t1, 0
  bgt $t0, $t1, label1266
  li $t0, 277111877
  move $v0, $t0
  move $sp, $s8
  lw $s8, 0($sp)
  addi $sp, $sp, 4
  jr $ra
  j label1267
label1266:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label1267:
  li $t0, 1067902804
  move $t1, $t0
  sw $t1, -8($s8)
  lw $t0, -8($s8)
  move $t1, $t0
  sw $t1, -12($s8)
  lw $t0, -12($s8)
  move $t1, $t0
  sw $t1, 12($s8)
  lw $t0, 12($s8)
  move $t1, $t0
  sw $t1, -16($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -20($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -24($s8)
  lw $t0, 12($s8)
  li $t1, 132595832
  ble $t0, $t1, label1268
  j label1269
label1268:
  li $t0, 1
  move $t1, $t0
  sw $t1, -24($s8)
label1269:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -24($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_157
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -28($s8)
  lw $t0, -28($s8)
  lw $t1, -20($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -32($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -8($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_158
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -36($s8)
  lw $t0, -36($s8)
  lw $t1, -32($s8)
  sw $t0, 0($t1)
  lw $t0, -32($s8)
  lw $t1, 0($t0)
  sw $t1, -40($s8)
  lw $t0, -40($s8)
  move $t1, $t0
  sw $t1, -44($s8)
  li $t0, 1943839943
  move $t1, $t0
  sw $t1, -48($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -52($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -56($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -60($s8)
  lw $t0, -8($s8)
  lw $t1, -12($s8)
  bge $t0, $t1, label1270
  j label1271
label1270:
  li $t0, 1
  move $t1, $t0
  sw $t1, -60($s8)
label1271:
  lw $t0, -60($s8)
  lw $t1, -56($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -64($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -48($s8)
  sw $t1, 4($sp)
  lw $t2, -44($s8)
  sw $t2, 8($sp)
  lw $t3, -16($s8)
  sw $t3, 12($sp)
  lw $t4, -12($s8)
  sw $t4, 16($sp)
  lw $t5, -8($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -68($s8)
  lw $t0, -68($s8)
  lw $t1, -64($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -72($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -76($s8)
  lw $t0, -8($s8)
  lw $t1, -12($s8)
  bne $t0, $t1, label1272
  j label1273
label1272:
  li $t0, 1
  move $t1, $t0
  sw $t1, -76($s8)
label1273:
  lw $t0, -76($s8)
  lw $t1, -72($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label1274:
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -80($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -1071420608
  sw $t1, 4($sp)
  lw $t2, -44($s8)
  sw $t2, 8($sp)
  lw $t3, -16($s8)
  sw $t3, 12($sp)
  lw $t4, -12($s8)
  sw $t4, 16($sp)
  lw $t5, -8($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -84($s8)
  lw $t0, -84($s8)
  lw $t1, -80($s8)
  sw $t0, 0($t1)
  lw $t0, -80($s8)
  lw $t1, 0($t0)
  sw $t1, -88($s8)
  lw $t0, -88($s8)
  move $t1, $t0
  sw $t1, -92($s8)
  lw $t0, -92($s8)
  li $t1, 0
  beq $t0, $t1, label1275
  li $t0, 0
  move $t1, $t0
  sw $t1, -96($s8)
  lw $t0, -52($s8)
  li $t1, 10
  blt $t0, $t1, label1276
  j label1277
label1276:
  li $t0, 1
  move $t1, $t0
  sw $t1, -96($s8)
label1277:
  lw $t0, -96($s8)
  li $t1, 0
  beq $t0, $t1, label1275
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -104($s8)
  li $t0, 197497739
  sw $t0, 0($sp)
  lw $t1, -8($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_mul
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -108($s8)
  lw $t0, -108($s8)
  lw $t1, -104($s8)
  sw $t0, 0($t1)
  lw $t0, -104($s8)
  lw $t1, 0($t0)
  sw $t1, -112($s8)
  lw $t0, -112($s8)
  move $t1, $t0
  sw $t1, -116($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -120($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -124($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -128($s8)
  lw $t0, -8($s8)
  li $t1, 1413161421
  bgt $t0, $t1, label1278
  j label1279
label1278:
  li $t0, 1
  move $t1, $t0
  sw $t1, -128($s8)
label1279:
  lw $t0, -128($s8)
  lw $t1, -124($s8)
  sw $t0, 0($t1)
  lw $t0, -124($s8)
  lw $t1, 0($t0)
  sw $t1, -132($s8)
  lw $t0, -132($s8)
  move $t1, $t0
  sw $t1, -136($s8)
  lw $t0, -136($s8)
  lw $t1, -120($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -140($s8)
  lw $t0, -140($s8)
  lw $t1, 0($t0)
  sw $t1, -144($s8)
  lw $t0, -144($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -148($s8)
  la $t0, -4($s8)
  lw $t1, -148($s8)
  add $t2, $t0, $t1
  sw $t2, -152($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -156($s8)
  lw $t0, -156($s8)
  lw $t1, -152($s8)
  sw $t0, 0($t1)
  lw $t0, -152($s8)
  lw $t1, 0($t0)
  sw $t1, -160($s8)
  lw $t0, -160($s8)
  move $t1, $t0
  sw $t1, -164($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -168($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -172($s8)
  lw $t0, -52($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -52($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -176($s8)
  lw $t0, -176($s8)
  lw $t1, 0($t0)
  sw $t1, -180($s8)
  lw $t0, -180($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -184($s8)
  la $t0, -4($s8)
  lw $t1, -184($s8)
  add $t2, $t0, $t1
  sw $t2, -188($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -192($s8)
  lw $t0, 12($s8)
  li $t1, 0
  beq $t0, $t1, label1281
  li $t0, -1148580316
  li $t1, 0
  bne $t0, $t1, label1280
  j label1281
label1280:
  li $t0, 1
  move $t1, $t0
  sw $t1, -192($s8)
label1281:
  lw $t0, -192($s8)
  lw $t1, -188($s8)
  sw $t0, 0($t1)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -196($s8)
  lw $t0, -196($s8)
  lw $t1, 0($t0)
  sw $t1, -200($s8)
  lw $t0, -200($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -204($s8)
  la $t0, -4($s8)
  lw $t1, -204($s8)
  add $t2, $t0, $t1
  sw $t2, -208($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -212($s8)
  lw $t0, 12($s8)
  lw $t1, -8($s8)
  bge $t0, $t1, label1282
  j label1283
label1282:
  li $t0, 1
  move $t1, $t0
  sw $t1, -212($s8)
label1283:
  lw $t0, -212($s8)
  lw $t1, -208($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -216($s8)
  lw $t0, -216($s8)
  lw $t1, 0($t0)
  sw $t1, -220($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -220($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -224($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -224($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_157
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -228($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -232($s8)
  lw $t0, -232($s8)
  lw $t1, 0($t0)
  sw $t1, -236($s8)
  lw $t0, -236($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -240($s8)
  la $t0, -4($s8)
  lw $t1, -240($s8)
  add $t2, $t0, $t1
  sw $t2, -244($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 1
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_158
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -248($s8)
  lw $t0, -248($s8)
  lw $t1, -244($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -252($s8)
  lw $t0, -252($s8)
  lw $t1, 0($t0)
  sw $t1, -256($s8)
  lw $t0, -256($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -260($s8)
  la $t0, -4($s8)
  lw $t1, -260($s8)
  add $t2, $t0, $t1
  sw $t2, -264($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -268($s8)
  lw $t0, -268($s8)
  lw $t1, -264($s8)
  sw $t0, 0($t1)
label1284:
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -272($s8)
  lw $t0, -272($s8)
  lw $t1, 0($t0)
  sw $t1, -276($s8)
  lw $t0, -276($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -280($s8)
  la $t0, -4($s8)
  lw $t1, -280($s8)
  add $t2, $t0, $t1
  sw $t2, -284($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -288($s8)
  lw $t0, 12($s8)
  li $t1, 1480909855
  ble $t0, $t1, label1286
  j label1287
label1286:
  li $t0, 1
  move $t1, $t0
  sw $t1, -288($s8)
label1287:
  lw $t0, -288($s8)
  lw $t1, -284($s8)
  sw $t0, 0($t1)
  lw $t0, -284($s8)
  lw $t1, 0($t0)
  sw $t1, -292($s8)
  lw $t0, -292($s8)
  move $t1, $t0
  sw $t1, -296($s8)
  lw $t0, -296($s8)
  li $t1, 0
  beq $t0, $t1, label1285
  li $t0, 0
  move $t1, $t0
  sw $t1, -300($s8)
  lw $t0, -168($s8)
  li $t1, 10
  blt $t0, $t1, label1288
  j label1289
label1288:
  li $t0, 1
  move $t1, $t0
  sw $t1, -300($s8)
label1289:
  lw $t0, -300($s8)
  li $t1, 0
  beq $t0, $t1, label1285
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -308($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -312($s8)
  lw $t0, -312($s8)
  lw $t1, 0($t0)
  sw $t1, -316($s8)
  lw $t0, -316($s8)
  lw $t1, 12($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -320($s8)
  lw $t0, -320($s8)
  lw $t1, -308($s8)
  sw $t0, 0($t1)
  lw $t0, -308($s8)
  lw $t1, 0($t0)
  sw $t1, -324($s8)
  lw $t0, -324($s8)
  move $t1, $t0
  sw $t1, -328($s8)
  la $t0, -304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -332($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -336($s8)
  lw $t0, -336($s8)
  lw $t1, 0($t0)
  sw $t1, -340($s8)
  lw $t0, -340($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -344($s8)
  la $t0, -4($s8)
  lw $t1, -344($s8)
  add $t2, $t0, $t1
  sw $t2, -348($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -352($s8)
  lw $t0, 12($s8)
  lw $t1, -8($s8)
  beq $t0, $t1, label1290
  j label1291
label1290:
  li $t0, 1
  move $t1, $t0
  sw $t1, -352($s8)
label1291:
  lw $t0, -352($s8)
  lw $t1, -348($s8)
  sw $t0, 0($t1)
  lw $t0, -348($s8)
  lw $t1, 0($t0)
  sw $t1, -356($s8)
  lw $t0, -356($s8)
  move $t1, $t0
  sw $t1, -360($s8)
  lw $t0, -360($s8)
  lw $t1, -332($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -364($s8)
  lw $t0, -364($s8)
  lw $t1, 0($t0)
  sw $t1, -368($s8)
  lw $t0, -368($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -372($s8)
  la $t0, -4($s8)
  lw $t1, -372($s8)
  add $t2, $t0, $t1
  sw $t2, -376($s8)
  la $t0, -304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -380($s8)
  lw $t0, -380($s8)
  lw $t1, 0($t0)
  sw $t1, -384($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  lw $t2, -12($s8)
  sw $t2, 8($sp)
  lw $t3, -8($s8)
  sw $t3, 12($sp)
  lw $t4, 12($s8)
  sw $t4, 16($sp)
  lw $t5, -384($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -388($s8)
  lw $t0, -388($s8)
  lw $t1, -376($s8)
  sw $t0, 0($t1)
  lw $t0, -376($s8)
  lw $t1, 0($t0)
  sw $t1, -392($s8)
  lw $t0, -392($s8)
  move $t1, $t0
  sw $t1, -396($s8)
  lw $t0, -168($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -168($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -400($s8)
  lw $t0, -400($s8)
  lw $t1, 0($t0)
  sw $t1, -404($s8)
  lw $t0, -404($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -408($s8)
  la $t0, -4($s8)
  lw $t1, -408($s8)
  add $t2, $t0, $t1
  sw $t2, -412($s8)
  la $t0, -304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -416($s8)
  lw $t0, -416($s8)
  lw $t1, 0($t0)
  sw $t1, -420($s8)
  lw $t0, -420($s8)
  lw $t1, -412($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -424($s8)
  lw $t0, -424($s8)
  lw $t1, 0($t0)
  sw $t1, -428($s8)
  lw $t0, -428($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -432($s8)
  la $t0, -4($s8)
  lw $t1, -432($s8)
  add $t2, $t0, $t1
  sw $t2, -436($s8)
  la $t0, -304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -440($s8)
  lw $t0, -440($s8)
  lw $t1, 0($t0)
  sw $t1, -444($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -444($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_158
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -448($s8)
  lw $t0, -448($s8)
  lw $t1, -436($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -452($s8)
  lw $t0, -452($s8)
  lw $t1, 0($t0)
  sw $t1, -456($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -460($s8)
  lw $t0, -460($s8)
  lw $t1, 0($t0)
  sw $t1, -464($s8)
  la $t0, -304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -468($s8)
  lw $t0, -468($s8)
  lw $t1, 0($t0)
  sw $t1, -472($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -472($s8)
  sw $t1, 4($sp)
  lw $t2, -464($s8)
  sw $t2, 8($sp)
  lw $t3, -456($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -476($s8)
  lw $t0, 12($s8)
  lw $t1, -8($s8)
  add $t2, $t0, $t1
  sw $t2, -480($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -480($s8)
  sw $t1, 4($sp)
  li $t2, -144012121
  sw $t2, 8($sp)
  lw $t3, -476($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_156
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -484($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -488($s8)
  lw $t0, -488($s8)
  lw $t1, 0($t0)
  sw $t1, -492($s8)
  lw $t0, -492($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -496($s8)
  la $t0, -4($s8)
  lw $t1, -496($s8)
  add $t2, $t0, $t1
  sw $t2, -500($s8)
  la $t0, -304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -504($s8)
  lw $t0, -504($s8)
  lw $t1, 0($t0)
  sw $t1, -508($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -508($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_157
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -512($s8)
  lw $t0, -512($s8)
  lw $t1, -500($s8)
  sw $t0, 0($t1)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -516($s8)
  lw $t0, -516($s8)
  lw $t1, 0($t0)
  sw $t1, -520($s8)
  lw $t0, -520($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -524($s8)
  la $t0, -4($s8)
  lw $t1, -524($s8)
  add $t2, $t0, $t1
  sw $t2, -528($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -532($s8)
  la $t0, -304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -536($s8)
  lw $t0, -536($s8)
  lw $t1, 0($t0)
  sw $t1, -540($s8)
  lw $t0, -540($s8)
  lw $t1, 12($s8)
  bge $t0, $t1, label1292
  j label1293
label1292:
  li $t0, 1
  move $t1, $t0
  sw $t1, -532($s8)
label1293:
  lw $t0, -532($s8)
  lw $t1, -528($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -544($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -548($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -552($s8)
  lw $t0, -552($s8)
  lw $t1, 0($t0)
  sw $t1, -556($s8)
  la $t0, -304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -560($s8)
  lw $t0, -560($s8)
  lw $t1, 0($t0)
  sw $t1, -564($s8)
  lw $t0, -556($s8)
  lw $t1, -564($s8)
  beq $t0, $t1, label1294
  j label1295
label1294:
  li $t0, 1
  move $t1, $t0
  sw $t1, -548($s8)
label1295:
  lw $t0, -548($s8)
  lw $t1, -544($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -568($s8)
  lw $t0, -568($s8)
  lw $t1, 0($t0)
  sw $t1, -572($s8)
  lw $t0, -572($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -576($s8)
  la $t0, -4($s8)
  lw $t1, -576($s8)
  add $t2, $t0, $t1
  sw $t2, -580($s8)
  la $t0, -304($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -584($s8)
  lw $t0, -584($s8)
  lw $t1, 0($t0)
  sw $t1, -588($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -12($s8)
  sw $t1, 4($sp)
  lw $t2, -8($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  lw $t4, -588($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -592($s8)
  lw $t0, -592($s8)
  lw $t1, -580($s8)
  sw $t0, 0($t1)
  lw $t0, -328($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -396($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label1284
label1285:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label1296:
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -596($s8)
  lw $t0, -596($s8)
  lw $t1, 0($t0)
  sw $t1, -600($s8)
  lw $t0, -600($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -604($s8)
  la $t0, -4($s8)
  lw $t1, -604($s8)
  add $t2, $t0, $t1
  sw $t2, -608($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -612($s8)
  lw $t0, -612($s8)
  lw $t1, -608($s8)
  sw $t0, 0($t1)
  lw $t0, -608($s8)
  lw $t1, 0($t0)
  sw $t1, -616($s8)
  lw $t0, -616($s8)
  move $t1, $t0
  sw $t1, -620($s8)
  lw $t0, -620($s8)
  li $t1, 0
  beq $t0, $t1, label1297
  li $t0, 0
  move $t1, $t0
  sw $t1, -624($s8)
  lw $t0, -172($s8)
  li $t1, 10
  blt $t0, $t1, label1298
  j label1299
label1298:
  li $t0, 1
  move $t1, $t0
  sw $t1, -624($s8)
label1299:
  lw $t0, -624($s8)
  li $t1, 0
  beq $t0, $t1, label1297
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -632($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -652($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -656($s8)
  lw $t0, -656($s8)
  lw $t1, 0($t0)
  sw $t1, -660($s8)
  lw $t0, -660($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -664($s8)
  la $t0, -4($s8)
  lw $t1, -664($s8)
  add $t2, $t0, $t1
  sw $t2, -668($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -672($s8)
  lw $t0, -672($s8)
  lw $t1, -668($s8)
  sw $t0, 0($t1)
  lw $t0, -668($s8)
  lw $t1, 0($t0)
  sw $t1, -676($s8)
  lw $t0, -676($s8)
  move $t1, $t0
  sw $t1, -680($s8)
  lw $t0, -680($s8)
  lw $t1, -652($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -632($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -684($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -688($s8)
  lw $t0, -688($s8)
  lw $t1, 0($t0)
  sw $t1, -692($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -692($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -696($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -700($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -704($s8)
  lw $t0, -704($s8)
  lw $t1, 0($t0)
  sw $t1, -708($s8)
  li $t0, -1408539840
  lw $t1, -708($s8)
  bne $t0, $t1, label1300
  j label1301
label1300:
  li $t0, 1
  move $t1, $t0
  sw $t1, -700($s8)
label1301:
  lw $t0, 12($s8)
  sw $t0, 0($sp)
  li $t1, 2009252831
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_add
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -712($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -8($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_158
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -716($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -720($s8)
  lw $t0, -12($s8)
  lw $t1, -16($s8)
  bne $t0, $t1, label1302
  j label1303
label1302:
  li $t0, 1
  move $t1, $t0
  sw $t1, -720($s8)
label1303:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -720($s8)
  sw $t1, 4($sp)
  lw $t2, -716($s8)
  sw $t2, 8($sp)
  lw $t3, -712($s8)
  sw $t3, 12($sp)
  lw $t4, -700($s8)
  sw $t4, 16($sp)
  lw $t5, -696($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -724($s8)
  lw $t0, -724($s8)
  lw $t1, -684($s8)
  sw $t0, 0($t1)
  la $t0, -640($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -728($s8)
  la $t0, -632($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -732($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -736($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -740($s8)
  lw $t0, -740($s8)
  lw $t1, 0($t0)
  sw $t1, -744($s8)
  lw $t0, -744($s8)
  li $t1, 0
  beq $t0, $t1, label1305
  lw $t0, 12($s8)
  li $t1, 0
  bne $t0, $t1, label1304
  j label1305
label1304:
  li $t0, 1
  move $t1, $t0
  sw $t1, -736($s8)
label1305:
  lw $t0, -736($s8)
  lw $t1, -732($s8)
  sw $t0, 0($t1)
  lw $t0, -732($s8)
  lw $t1, 0($t0)
  sw $t1, -748($s8)
  lw $t0, -748($s8)
  move $t1, $t0
  sw $t1, -752($s8)
  lw $t0, -752($s8)
  lw $t1, -728($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -640($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -756($s8)
  la $t0, -632($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -760($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -764($s8)
  lw $t0, -764($s8)
  lw $t1, 0($t0)
  sw $t1, -768($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -768($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -772($s8)
  lw $t0, -772($s8)
  lw $t1, -760($s8)
  sw $t0, 0($t1)
  lw $t0, -760($s8)
  lw $t1, 0($t0)
  sw $t1, -776($s8)
  lw $t0, -776($s8)
  move $t1, $t0
  sw $t1, -780($s8)
  lw $t0, -780($s8)
  lw $t1, -756($s8)
  sw $t0, 0($t1)
  la $t0, -648($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -784($s8)
  la $t0, -640($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -788($s8)
  lw $t0, -788($s8)
  lw $t1, 0($t0)
  sw $t1, -792($s8)
  lw $t0, -792($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -796($s8)
  la $t0, -632($s8)
  lw $t1, -796($s8)
  add $t2, $t0, $t1
  sw $t2, -800($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -804($s8)
  lw $t0, -804($s8)
  lw $t1, 0($t0)
  sw $t1, -808($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -812($s8)
  lw $t0, -812($s8)
  lw $t1, 0($t0)
  sw $t1, -816($s8)
  lw $t0, -808($s8)
  lw $t1, -816($s8)
  sub $t2, $t0, $t1
  sw $t2, -820($s8)
  lw $t0, -820($s8)
  lw $t1, -800($s8)
  sw $t0, 0($t1)
  lw $t0, -800($s8)
  lw $t1, 0($t0)
  sw $t1, -824($s8)
  lw $t0, -824($s8)
  move $t1, $t0
  sw $t1, -828($s8)
  lw $t0, -828($s8)
  lw $t1, -784($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -648($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -832($s8)
  la $t0, -632($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -836($s8)
  la $t0, -640($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -840($s8)
  lw $t0, -840($s8)
  lw $t1, 0($t0)
  sw $t1, -844($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -844($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -848($s8)
  lw $t0, -848($s8)
  lw $t1, -836($s8)
  sw $t0, 0($t1)
  lw $t0, -836($s8)
  lw $t1, 0($t0)
  sw $t1, -852($s8)
  lw $t0, -852($s8)
  move $t1, $t0
  sw $t1, -856($s8)
  lw $t0, -856($s8)
  lw $t1, -832($s8)
  sw $t0, 0($t1)
  lw $t0, -172($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -172($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -860($s8)
  lw $t0, -860($s8)
  lw $t1, 0($t0)
  sw $t1, -864($s8)
  lw $t0, -864($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -868($s8)
  la $t0, -4($s8)
  lw $t1, -868($s8)
  add $t2, $t0, $t1
  sw $t2, -872($s8)
  la $t0, -632($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -876($s8)
  lw $t0, -876($s8)
  lw $t1, 0($t0)
  sw $t1, -880($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -880($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -884($s8)
  lw $t0, -884($s8)
  lw $t1, -872($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -888($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -892($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -896($s8)
  lw $t0, -896($s8)
  lw $t1, 0($t0)
  sw $t1, -900($s8)
  li $t0, -2083242123
  lw $t1, -900($s8)
  bgt $t0, $t1, label1306
  j label1307
label1306:
  li $t0, 1
  move $t1, $t0
  sw $t1, -892($s8)
label1307:
  lw $t0, -892($s8)
  lw $t1, -888($s8)
  sw $t0, 0($t1)
  la $t0, -632($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -904($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -908($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -912($s8)
  lw $t0, -912($s8)
  lw $t1, 0($t0)
  sw $t1, -916($s8)
  lw $t0, -916($s8)
  li $t1, 0
  beq $t0, $t1, label1309
  li $t0, -1749334612
  li $t1, 0
  bne $t0, $t1, label1308
  j label1309
label1308:
  li $t0, 1
  move $t1, $t0
  sw $t1, -908($s8)
label1309:
  lw $t0, -908($s8)
  lw $t1, -904($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -632($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -920($s8)
  lw $t0, -920($s8)
  lw $t1, 0($t0)
  sw $t1, -924($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -924($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_158
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -928($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -932($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -936($s8)
  lw $t0, -936($s8)
  lw $t1, 0($t0)
  sw $t1, -940($s8)
  li $t0, 1638626197
  lw $t1, -940($s8)
  beq $t0, $t1, label1310
  j label1311
label1310:
  li $t0, 1
  move $t1, $t0
  sw $t1, -932($s8)
label1311:
  li $t0, 0
  move $t1, $t0
  sw $t1, -944($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -948($s8)
  lw $t0, -948($s8)
  lw $t1, 0($t0)
  sw $t1, -952($s8)
  la $t0, -640($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -956($s8)
  lw $t0, -956($s8)
  lw $t1, 0($t0)
  sw $t1, -960($s8)
  lw $t0, -952($s8)
  lw $t1, -960($s8)
  bne $t0, $t1, label1312
  j label1313
label1312:
  li $t0, 1
  move $t1, $t0
  sw $t1, -944($s8)
label1313:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -944($s8)
  sw $t1, 4($sp)
  lw $t2, -932($s8)
  sw $t2, 8($sp)
  lw $t3, -928($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -964($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -640($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -968($s8)
  lw $t0, -968($s8)
  lw $t1, 0($t0)
  sw $t1, -972($s8)
  lw $t0, -972($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -976($s8)
  la $t0, -632($s8)
  lw $t1, -976($s8)
  add $t2, $t0, $t1
  sw $t2, -980($s8)
  la $t0, -648($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -984($s8)
  lw $t0, -984($s8)
  lw $t1, 0($t0)
  sw $t1, -988($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -988($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_151
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -992($s8)
  lw $t0, -992($s8)
  lw $t1, -980($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -632($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -996($s8)
  lw $t0, -996($s8)
  lw $t1, 0($t0)
  sw $t1, -1000($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1004($s8)
  lw $t0, -1004($s8)
  lw $t1, 0($t0)
  sw $t1, -1008($s8)
  lw $t0, -1000($s8)
  lw $t1, -1008($s8)
  mul $t2, $t0, $t1
  sw $t2, -1012($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1012($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_157
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1016($s8)
  lw $t0, 8($s8)
  li $t1, 4
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1020($s8)
  lw $t0, -1020($s8)
  lw $t1, 0($t0)
  sw $t1, -1024($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1024($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1028($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1032($s8)
  la $t0, -632($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1036($s8)
  lw $t0, -1036($s8)
  lw $t1, 0($t0)
  sw $t1, -1040($s8)
  lw $t0, -1040($s8)
  li $t1, 1384605059
  bgt $t0, $t1, label1314
  j label1315
label1314:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1032($s8)
label1315:
  la $t0, -640($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1044($s8)
  lw $t0, -1044($s8)
  lw $t1, 0($t0)
  sw $t1, -1048($s8)
  la $t0, -648($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1052($s8)
  lw $t0, -1052($s8)
  lw $t1, 0($t0)
  sw $t1, -1056($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1060($s8)
  lw $t0, -1060($s8)
  lw $t1, 0($t0)
  sw $t1, -1064($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -1256800918
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, -1064($s8)
  sw $t3, 12($sp)
  lw $t4, -1056($s8)
  sw $t4, 16($sp)
  lw $t5, -1048($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1068($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -44($s8)
  sw $t1, 4($sp)
  lw $t2, -16($s8)
  sw $t2, 8($sp)
  lw $t3, -12($s8)
  sw $t3, 12($sp)
  lw $t4, -8($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1072($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1072($s8)
  sw $t1, 4($sp)
  lw $t2, -1068($s8)
  sw $t2, 8($sp)
  lw $t3, -1032($s8)
  sw $t3, 12($sp)
  li $t4, 359302375
  sw $t4, 16($sp)
  lw $t5, -1028($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1076($s8)
  la $t0, -632($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1080($s8)
  la $t0, -648($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1084($s8)
  lw $t0, -1084($s8)
  lw $t1, 0($t0)
  sw $t1, -1088($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1092($s8)
  lw $t0, -1092($s8)
  lw $t1, 0($t0)
  sw $t1, -1096($s8)
  lw $t0, -1088($s8)
  lw $t1, -1096($s8)
  sub $t2, $t0, $t1
  sw $t2, -1100($s8)
  lw $t0, -1100($s8)
  lw $t1, -1080($s8)
  sw $t0, 0($t1)
  j label1296
label1297:
  lw $t0, 8($s8)
  li $t1, 5
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1116($s8)
  lw $t0, -1116($s8)
  lw $t1, 0($t0)
  sw $t1, -1120($s8)
  lw $t0, -1120($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1124($s8)
  la $t0, -4($s8)
  lw $t1, -1124($s8)
  add $t2, $t0, $t1
  sw $t2, -1128($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, 1487182524
  sw $t1, 4($sp)
  lw $t2, -12($s8)
  sw $t2, 8($sp)
  lw $t3, -8($s8)
  sw $t3, 12($sp)
  lw $t4, 12($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_155
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1132($s8)
  lw $t0, -1132($s8)
  lw $t1, -1128($s8)
  sw $t0, 0($t1)
  lw $t0, -1128($s8)
  lw $t1, 0($t0)
  sw $t1, -1136($s8)
  lw $t0, -1136($s8)
  move $t1, $t0
  sw $t1, -1140($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1104($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1144($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1148($s8)
  lw $t0, -1148($s8)
  lw $t1, 0($t0)
  sw $t1, -1152($s8)
  lw $t0, -1152($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1156($s8)
  la $t0, -4($s8)
  lw $t1, -1156($s8)
  add $t2, $t0, $t1
  sw $t2, -1160($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -8($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  li $t3, 625382741
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1164($s8)
  lw $t0, -1164($s8)
  lw $t1, -1160($s8)
  sw $t0, 0($t1)
  lw $t0, -1160($s8)
  lw $t1, 0($t0)
  sw $t1, -1168($s8)
  lw $t0, -1168($s8)
  move $t1, $t0
  sw $t1, -1172($s8)
  lw $t0, -1172($s8)
  lw $t1, -1144($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1112($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1176($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1180($s8)
  lw $t0, -1180($s8)
  lw $t1, 0($t0)
  sw $t1, -1184($s8)
  lw $t0, -1184($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1188($s8)
  la $t0, -4($s8)
  lw $t1, -1188($s8)
  add $t2, $t0, $t1
  sw $t2, -1192($s8)
  la $t0, -1104($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1196($s8)
  lw $t0, -1196($s8)
  lw $t1, 0($t0)
  sw $t1, -1200($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -12($s8)
  sw $t1, 4($sp)
  lw $t2, -8($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  lw $t4, -1200($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1204($s8)
  lw $t0, -1204($s8)
  lw $t1, -1192($s8)
  sw $t0, 0($t1)
  lw $t0, -1192($s8)
  lw $t1, 0($t0)
  sw $t1, -1208($s8)
  lw $t0, -1208($s8)
  move $t1, $t0
  sw $t1, -1212($s8)
  lw $t0, -1212($s8)
  lw $t1, -1176($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1112($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1216($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1220($s8)
  lw $t0, -1220($s8)
  lw $t1, 0($t0)
  sw $t1, -1224($s8)
  lw $t0, -1224($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1228($s8)
  la $t0, -4($s8)
  lw $t1, -1228($s8)
  add $t2, $t0, $t1
  sw $t2, -1232($s8)
  la $t0, -1104($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1236($s8)
  lw $t0, -1236($s8)
  lw $t1, 0($t0)
  sw $t1, -1240($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -12($s8)
  sw $t1, 4($sp)
  lw $t2, -8($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  lw $t4, -1240($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1244($s8)
  lw $t0, -1244($s8)
  lw $t1, -1232($s8)
  sw $t0, 0($t1)
  lw $t0, -1232($s8)
  lw $t1, 0($t0)
  sw $t1, -1248($s8)
  lw $t0, -1248($s8)
  move $t1, $t0
  sw $t1, -1252($s8)
  lw $t0, -1252($s8)
  lw $t1, -1216($s8)
  sw $t0, 0($t1)
  la $t0, -1112($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1256($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1260($s8)
  lw $t0, -1260($s8)
  lw $t1, 0($t0)
  sw $t1, -1264($s8)
  la $t0, -1104($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1268($s8)
  lw $t0, -1268($s8)
  lw $t1, 0($t0)
  sw $t1, -1272($s8)
  lw $t0, -1264($s8)
  lw $t1, -1272($s8)
  mul $t2, $t0, $t1
  sw $t2, -1276($s8)
  lw $t0, -1276($s8)
  lw $t1, -1256($s8)
  sw $t0, 0($t1)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1280($s8)
  lw $t0, -1280($s8)
  lw $t1, 0($t0)
  sw $t1, -1284($s8)
  lw $t0, -1284($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1288($s8)
  la $t0, -4($s8)
  lw $t1, -1288($s8)
  add $t2, $t0, $t1
  sw $t2, -1292($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1296($s8)
  la $t0, -1104($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1300($s8)
  lw $t0, -1300($s8)
  lw $t1, 0($t0)
  sw $t1, -1304($s8)
  lw $t0, -1304($s8)
  li $t1, 0
  bne $t0, $t1, label1316
  la $t0, -1112($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1308($s8)
  lw $t0, -1308($s8)
  lw $t1, 0($t0)
  sw $t1, -1312($s8)
  lw $t0, -1312($s8)
  li $t1, 0
  bne $t0, $t1, label1316
  j label1317
label1316:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1296($s8)
label1317:
  lw $t0, -1296($s8)
  lw $t1, -1292($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1316($s8)
  lw $t0, -1316($s8)
  lw $t1, 0($t0)
  sw $t1, -1320($s8)
  lw $t0, -1320($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1324($s8)
  la $t0, -1112($s8)
  lw $t1, -1324($s8)
  add $t2, $t0, $t1
  sw $t2, -1328($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1332($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1336($s8)
  lw $t0, -1336($s8)
  lw $t1, 0($t0)
  sw $t1, -1340($s8)
  li $t0, -1699510486
  lw $t1, -1340($s8)
  ble $t0, $t1, label1318
  j label1319
label1318:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1332($s8)
label1319:
  lw $t0, -1332($s8)
  lw $t1, -1328($s8)
  sw $t0, 0($t1)
  la $t0, -1112($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1344($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1348($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1352($s8)
  lw $t0, -1352($s8)
  lw $t1, 0($t0)
  sw $t1, -1356($s8)
  lw $t0, -1356($s8)
  li $t1, 0
  beq $t0, $t1, label1321
  li $t0, 1074562761
  li $t1, 0
  bne $t0, $t1, label1320
  j label1321
label1320:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1348($s8)
label1321:
  lw $t0, -1348($s8)
  lw $t1, -1344($s8)
  sw $t0, 0($t1)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1360($s8)
  lw $t0, -1360($s8)
  lw $t1, 0($t0)
  sw $t1, -1364($s8)
  lw $t0, -1364($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1368($s8)
  la $t0, -4($s8)
  lw $t1, -1368($s8)
  add $t2, $t0, $t1
  sw $t2, -1372($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1376($s8)
  la $t0, -1112($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -1380($s8)
  lw $t0, -1380($s8)
  lw $t1, 0($t0)
  sw $t1, -1384($s8)
  lw $t0, -1384($s8)
  li $t1, 0
  beq $t0, $t1, label1323
  la $t0, -1104($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1388($s8)
  lw $t0, -1388($s8)
  lw $t1, 0($t0)
  sw $t1, -1392($s8)
  lw $t0, -1392($s8)
  li $t1, 0
  bne $t0, $t1, label1322
  j label1323
label1322:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1376($s8)
label1323:
  lw $t0, -1376($s8)
  lw $t1, -1372($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1396($s8)
  lw $t0, -1396($s8)
  lw $t1, 0($t0)
  sw $t1, -1400($s8)
  lw $t0, -1400($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1404($s8)
  la $t0, -1112($s8)
  lw $t1, -1404($s8)
  add $t2, $t0, $t1
  sw $t2, -1408($s8)
  li $t0, 1002908327
  move $t1, $t0
  sw $t1, -1412($s8)
  lw $t0, -1412($s8)
  lw $t1, -1408($s8)
  sw $t0, 0($t1)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1416($s8)
  lw $t0, -1416($s8)
  lw $t1, 0($t0)
  sw $t1, -1420($s8)
  lw $t0, -1420($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1424($s8)
  la $t0, -1112($s8)
  lw $t1, -1424($s8)
  add $t2, $t0, $t1
  sw $t2, -1428($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1432($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1436($s8)
  lw $t0, -1436($s8)
  lw $t1, 0($t0)
  sw $t1, -1440($s8)
  la $t0, -1104($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1444($s8)
  lw $t0, -1444($s8)
  lw $t1, 0($t0)
  sw $t1, -1448($s8)
  lw $t0, -1440($s8)
  lw $t1, -1448($s8)
  beq $t0, $t1, label1324
  j label1325
label1324:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1432($s8)
label1325:
  lw $t0, -1432($s8)
  lw $t1, -1428($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1452($s8)
  lw $t0, -1452($s8)
  lw $t1, 0($t0)
  sw $t1, -1456($s8)
  lw $t0, -1456($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1460($s8)
  la $t0, -4($s8)
  lw $t1, -1460($s8)
  add $t2, $t0, $t1
  sw $t2, -1464($s8)
  la $t0, -1104($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1468($s8)
  lw $t0, -1468($s8)
  lw $t1, 0($t0)
  sw $t1, -1472($s8)
  la $t0, -1112($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1476($s8)
  lw $t0, -1476($s8)
  lw $t1, 0($t0)
  sw $t1, -1480($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  li $t2, 0
  sw $t2, 8($sp)
  lw $t3, -1480($s8)
  sw $t3, 12($sp)
  lw $t4, -1472($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1484($s8)
  lw $t0, -1484($s8)
  lw $t1, -1464($s8)
  sw $t0, 0($t1)
  lw $t0, -1140($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1488($s8)
  lw $t0, -1488($s8)
  lw $t1, 0($t0)
  sw $t1, -1492($s8)
  lw $t0, -1492($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1496($s8)
  la $t0, -4($s8)
  lw $t1, -1496($s8)
  add $t2, $t0, $t1
  sw $t2, -1500($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1504($s8)
  lw $t0, 12($s8)
  li $t1, 0
  bne $t0, $t1, label1326
  lw $t0, -8($s8)
  li $t1, 0
  bne $t0, $t1, label1326
  j label1327
label1326:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1504($s8)
label1327:
  lw $t0, -1504($s8)
  lw $t1, -1500($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 10
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  lw $t0, 8($s8)
  li $t1, 4
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -1508($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1512($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1516($s8)
  lw $t0, -1516($s8)
  lw $t1, 0($t0)
  sw $t1, -1520($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1520($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_157
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1524($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1528($s8)
  lw $t0, -1528($s8)
  lw $t1, 0($t0)
  sw $t1, -1532($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -12($s8)
  sw $t1, 4($sp)
  lw $t2, -8($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  lw $t4, -1532($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1536($s8)
  lw $t0, -16($s8)
  lw $t1, -44($s8)
  div $t0, $t1
  mflo $t2
  sw $t2, -1540($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1544($s8)
  lw $t0, -48($s8)
  lw $t1, -116($s8)
  bgt $t0, $t1, label1328
  j label1329
label1328:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1544($s8)
label1329:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -164($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_157
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1548($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1548($s8)
  sw $t1, 4($sp)
  lw $t2, -1544($s8)
  sw $t2, 8($sp)
  lw $t3, -1540($s8)
  sw $t3, 12($sp)
  lw $t4, -1536($s8)
  sw $t4, 16($sp)
  lw $t5, -1524($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1552($s8)
  lw $t0, -1552($s8)
  lw $t1, -1512($s8)
  sw $t0, 0($t1)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1556($s8)
  lw $t0, -1556($s8)
  lw $t1, 0($t0)
  sw $t1, -1560($s8)
  lw $t0, -1560($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1564($s8)
  la $t0, -4($s8)
  lw $t1, -1564($s8)
  add $t2, $t0, $t1
  sw $t2, -1568($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1572($s8)
  la $t0, -1508($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1576($s8)
  lw $t0, -1576($s8)
  lw $t1, 0($t0)
  sw $t1, -1580($s8)
  li $t0, -748512117
  lw $t1, -1580($s8)
  beq $t0, $t1, label1330
  j label1331
label1330:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1572($s8)
label1331:
  lw $t0, -1572($s8)
  lw $t1, -1568($s8)
  sw $t0, 0($t1)
  lw $t0, -1568($s8)
  lw $t1, 0($t0)
  sw $t1, -1584($s8)
  lw $t0, -1584($s8)
  move $t1, $t0
  sw $t1, -1588($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1592($s8)
  lw $t0, -1592($s8)
  lw $t1, 0($t0)
  sw $t1, -1596($s8)
  lw $t0, -1596($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1600($s8)
  la $t0, -4($s8)
  lw $t1, -1600($s8)
  add $t2, $t0, $t1
  sw $t2, -1604($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1608($s8)
  la $t0, -1508($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1612($s8)
  lw $t0, -1612($s8)
  lw $t1, 0($t0)
  sw $t1, -1616($s8)
  lw $t0, -1616($s8)
  li $t1, -606435858
  bgt $t0, $t1, label1332
  j label1333
label1332:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1608($s8)
label1333:
  lw $t0, -1608($s8)
  lw $t1, -1604($s8)
  sw $t0, 0($t1)
  lw $t0, -1604($s8)
  lw $t1, 0($t0)
  sw $t1, -1620($s8)
  lw $t0, -1620($s8)
  move $t1, $t0
  sw $t1, -1624($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1628($s8)
  lw $t0, -1628($s8)
  lw $t1, 0($t0)
  sw $t1, -1632($s8)
  lw $t0, -1632($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1636($s8)
  la $t0, -4($s8)
  lw $t1, -1636($s8)
  add $t2, $t0, $t1
  sw $t2, -1640($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1644($s8)
  la $t0, -1508($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1648($s8)
  lw $t0, -1648($s8)
  lw $t1, 0($t0)
  sw $t1, -1652($s8)
  lw $t0, -1652($s8)
  lw $t1, 12($s8)
  bne $t0, $t1, label1334
  j label1335
label1334:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1644($s8)
label1335:
  lw $t0, -1644($s8)
  lw $t1, -1640($s8)
  sw $t0, 0($t1)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1656($s8)
  lw $t0, -1656($s8)
  lw $t1, 0($t0)
  sw $t1, -1660($s8)
  lw $t0, -1660($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1664($s8)
  la $t0, -4($s8)
  lw $t1, -1664($s8)
  add $t2, $t0, $t1
  sw $t2, -1668($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1672($s8)
  la $t0, -1508($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1676($s8)
  lw $t0, -1676($s8)
  lw $t1, 0($t0)
  sw $t1, -1680($s8)
  lw $t0, -1680($s8)
  li $t1, 0
  bne $t0, $t1, label1337
  j label1336
label1336:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1672($s8)
label1337:
  lw $t0, -1672($s8)
  lw $t1, -1668($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 4
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1684($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1688($s8)
  lw $t0, -1688($s8)
  lw $t1, 0($t0)
  sw $t1, -1692($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1696($s8)
  lw $t0, -1696($s8)
  lw $t1, 0($t0)
  sw $t1, -1700($s8)
  lw $t0, -1692($s8)
  lw $t1, -1700($s8)
  ble $t0, $t1, label1338
  j label1339
label1338:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1684($s8)
label1339:
  la $t0, -1508($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1704($s8)
  lw $t0, -1704($s8)
  lw $t1, 0($t0)
  sw $t1, -1708($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1708($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_157
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1712($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  lw $t2, -12($s8)
  sw $t2, 8($sp)
  lw $t3, -8($s8)
  sw $t3, 12($sp)
  lw $t4, 12($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_155
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1716($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -44($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1720($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1720($s8)
  sw $t1, 4($sp)
  lw $t2, -1716($s8)
  sw $t2, 8($sp)
  lw $t3, -1712($s8)
  sw $t3, 12($sp)
  lw $t4, -1684($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1724($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1728($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1732($s8)
  lw $t0, -1732($s8)
  lw $t1, 0($t0)
  sw $t1, -1736($s8)
  la $t0, -1508($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1740($s8)
  lw $t0, -1740($s8)
  lw $t1, 0($t0)
  sw $t1, -1744($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  li $t2, -842022997
  sw $t2, 8($sp)
  lw $t3, -1744($s8)
  sw $t3, 12($sp)
  lw $t4, -1736($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_154
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1748($s8)
  lw $t0, -1748($s8)
  lw $t1, -1728($s8)
  sw $t0, 0($t1)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1752($s8)
  lw $t0, -1752($s8)
  lw $t1, 0($t0)
  sw $t1, -1756($s8)
  lw $t0, -1756($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1760($s8)
  la $t0, -4($s8)
  lw $t1, -1760($s8)
  add $t2, $t0, $t1
  sw $t2, -1764($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1768($s8)
  la $t0, -1508($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1772($s8)
  lw $t0, -1772($s8)
  lw $t1, 0($t0)
  sw $t1, -1776($s8)
  lw $t0, -1776($s8)
  lw $t1, 12($s8)
  bgt $t0, $t1, label1340
  j label1341
label1340:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1768($s8)
label1341:
  lw $t0, -1768($s8)
  lw $t1, -1764($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1780($s8)
  lw $t0, -1780($s8)
  lw $t1, 0($t0)
  sw $t1, -1784($s8)
  lw $t0, -1784($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1788($s8)
  la $t0, -4($s8)
  lw $t1, -1788($s8)
  add $t2, $t0, $t1
  sw $t2, -1792($s8)
  la $t0, -1508($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1796($s8)
  lw $t0, -1796($s8)
  lw $t1, 0($t0)
  sw $t1, -1800($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -12($s8)
  sw $t1, 4($sp)
  lw $t2, -8($s8)
  sw $t2, 8($sp)
  lw $t3, 12($s8)
  sw $t3, 12($sp)
  lw $t4, -1800($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1804($s8)
  lw $t0, -1804($s8)
  lw $t1, -1792($s8)
  sw $t0, 0($t1)
  lw $t0, -1588($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -1624($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1808($s8)
  lw $t0, -1808($s8)
  lw $t1, 0($t0)
  sw $t1, -1812($s8)
  lw $t0, -1812($s8)
  li $t1, 4
  mul $t2, $t0, $t1
  sw $t2, -1816($s8)
  la $t0, -4($s8)
  lw $t1, -1816($s8)
  add $t2, $t0, $t1
  sw $t2, -1820($s8)
  lw $t0, -8($s8)
  sw $t0, 0($sp)
  lw $t1, 12($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_mul
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1824($s8)
  lw $t0, -1824($s8)
  lw $t1, -1820($s8)
  sw $t0, 0($t1)
  lw $t0, -116($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -164($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  j label1274
label1275:
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1828($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1832($s8)
  li $t0, 1128477389
  li $t1, 0
  bne $t0, $t1, label1343
  j label1342
label1342:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1832($s8)
label1343:
  lw $t0, -1832($s8)
  lw $t1, -1828($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1836($s8)
  lw $t0, -1836($s8)
  lw $t1, 0($t0)
  sw $t1, -1840($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -8($s8)
  sw $t1, 4($sp)
  lw $t2, 12($s8)
  sw $t2, 8($sp)
  lw $t3, -1840($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1844($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -1848($s8)
  li $t0, -1161930158
  lw $t1, -12($s8)
  bgt $t0, $t1, label1344
  j label1345
label1344:
  li $t0, 1
  move $t1, $t0
  sw $t1, -1848($s8)
label1345:
  lw $t0, -44($s8)
  move $t1, $t0
  sw $t1, -16($s8)
  lw $t0, -16($s8)
  move $t1, $t0
  sw $t1, -1852($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -48($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_157
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1856($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -1856($s8)
  sw $t1, 4($sp)
  lw $t2, -1852($s8)
  sw $t2, 8($sp)
  lw $t3, -1848($s8)
  sw $t3, 12($sp)
  lw $t4, -1844($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1860($s8)
  lw $t0, -8($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -12($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -16($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -44($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  lw $t0, -48($s8)
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $v0, $0
  la $t0, -4($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -1864($s8)
  lw $t0, -8($s8)
  sw $t0, 0($sp)
  li $t1, -1241502500
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_sub
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -1868($s8)
  lw $t0, -1868($s8)
  lw $t1, -1864($s8)
  sw $t0, 0($t1)
  lw $t0, -1864($s8)
  lw $t1, 0($t0)
  sw $t1, -1872($s8)
  lw $t0, -1872($s8)
  move $t1, $t0
  sw $t1, -1876($s8)
  lw $t0, -1876($s8)
  move $v0, $t0
  move $sp, $s8
  lw $s8, 0($sp)
  addi $sp, $sp, 4
  jr $ra

top_caller:
  addi $sp, $sp, -4
  sw $s8, 0($sp)
  move $s8, $sp
  addi $sp, $sp, -4096
  lw $t0, 8($s8)
  li $t1, 0
  bgt $t0, $t1, label1346
  li $t0, 1254632184
  move $v0, $t0
  move $sp, $s8
  lw $s8, 0($sp)
  addi $sp, $sp, 4
  jr $ra
  j label1347
label1346:
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label1347:
  li $t0, 323428447
  move $t1, $t0
  sw $t1, -12($s8)
  li $t0, 859124367
  move $t1, $t0
  sw $t1, -16($s8)
  lw $t0, -16($s8)
  sw $t0, 0($sp)
  lw $t1, -12($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_mul
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -20($s8)
  li $t0, -78156065
  move $t1, $t0
  sw $t1, -24($s8)
  li $t0, 1032860104
  lw $t1, -24($s8)
  sub $t2, $t0, $t1
  sw $t2, -20($s8)
  lw $t0, -20($s8)
  move $t1, $t0
  sw $t1, -28($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -32($s8)
  li $t0, 1835647243
  lw $t1, -16($s8)
  ble $t0, $t1, label1348
  j label1349
label1348:
  li $t0, 1
  move $t1, $t0
  sw $t1, -32($s8)
label1349:
  lw $t0, -32($s8)
  move $t1, $t0
  sw $t1, -12($s8)
  lw $t0, -12($s8)
  move $t1, $t0
  sw $t1, -36($s8)
  la $t0, -8($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -40($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -44($s8)
  lw $t0, -16($s8)
  lw $t1, -20($s8)
  bgt $t0, $t1, label1350
  j label1351
label1350:
  li $t0, 1
  move $t1, $t0
  sw $t1, -44($s8)
label1351:
  lw $t0, -44($s8)
  move $t1, $t0
  sw $t1, -12($s8)
  lw $t0, -12($s8)
  move $t1, $t0
  sw $t1, -48($s8)
  lw $t0, -48($s8)
  lw $t1, -40($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -52($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -36($s8)
  sw $t1, 4($sp)
  lw $t2, -28($s8)
  sw $t2, 8($sp)
  lw $t3, -24($s8)
  sw $t3, 12($sp)
  lw $t4, -20($s8)
  sw $t4, 16($sp)
  lw $t5, -16($s8)
  sw $t5, 20($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_149
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -12($s8)
  lw $t0, -12($s8)
  move $t1, $t0
  sw $t1, -56($s8)
  lw $t0, -56($s8)
  lw $t1, -52($s8)
  sw $t0, 0($t1)
  li $t0, 0
  move $t1, $t0
  sw $t1, -60($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -64($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -68($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -72($s8)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label1352:
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -76($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal top_caller
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -80($s8)
  lw $t0, -80($s8)
  lw $t1, -76($s8)
  sw $t0, 0($t1)
  lw $t0, -76($s8)
  lw $t1, 0($t0)
  sw $t1, -84($s8)
  lw $t0, -84($s8)
  move $t1, $t0
  sw $t1, -88($s8)
  lw $t0, -88($s8)
  li $t1, 0
  beq $t0, $t1, label1353
  li $t0, 0
  move $t1, $t0
  sw $t1, -92($s8)
  lw $t0, -60($s8)
  li $t1, 10
  blt $t0, $t1, label1354
  j label1355
label1354:
  li $t0, 1
  move $t1, $t0
  sw $t1, -92($s8)
label1355:
  lw $t0, -92($s8)
  li $t1, 0
  beq $t0, $t1, label1353
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -100($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -112($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -116($s8)
  la $t0, -8($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -120($s8)
  lw $t0, -120($s8)
  lw $t1, 0($t0)
  sw $t1, -124($s8)
  lw $t0, -124($s8)
  li $t1, 0
  beq $t0, $t1, label1357
  li $t0, -70617773
  li $t1, 0
  bne $t0, $t1, label1356
  j label1357
label1356:
  li $t0, 1
  move $t1, $t0
  sw $t1, -116($s8)
label1357:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal top_caller
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -128($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -12($s8)
  sw $t1, 4($sp)
  lw $t2, -128($s8)
  sw $t2, 8($sp)
  lw $t3, -116($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_156
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -132($s8)
  lw $t0, -132($s8)
  lw $t1, -112($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -136($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -140($s8)
  li $t0, 978604521
  li $t1, 0
  beq $t0, $t1, label1359
  la $t0, -8($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -144($s8)
  lw $t0, -144($s8)
  lw $t1, 0($t0)
  sw $t1, -148($s8)
  lw $t0, -148($s8)
  li $t1, 0
  bne $t0, $t1, label1358
  j label1359
label1358:
  li $t0, 1
  move $t1, $t0
  sw $t1, -140($s8)
label1359:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -20($s8)
  sw $t1, 4($sp)
  lw $t2, -16($s8)
  sw $t2, 8($sp)
  lw $t3, -12($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -152($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -24($s8)
  sw $t1, 4($sp)
  li $t2, -1457900878
  sw $t2, 8($sp)
  lw $t3, -152($s8)
  sw $t3, 12($sp)
  lw $t4, -140($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -156($s8)
  lw $t0, -156($s8)
  lw $t1, -136($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -160($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  li $t2, -1769767397
  sw $t2, 8($sp)
  lw $t3, -12($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -164($s8)
  lw $t0, -164($s8)
  lw $t1, -160($s8)
  sw $t0, 0($t1)
  lw $t0, -160($s8)
  lw $t1, 0($t0)
  sw $t1, -168($s8)
  lw $t0, -168($s8)
  move $t1, $t0
  sw $t1, -172($s8)
  lw $t0, 8($s8)
  li $t1, 3
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -108($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -176($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal top_caller
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -180($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -184($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -188($s8)
  lw $t0, -188($s8)
  lw $t1, 0($t0)
  sw $t1, -192($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -196($s8)
  lw $t0, -196($s8)
  lw $t1, 0($t0)
  sw $t1, -200($s8)
  lw $t0, -192($s8)
  lw $t1, -200($s8)
  blt $t0, $t1, label1360
  j label1361
label1360:
  li $t0, 1
  move $t1, $t0
  sw $t1, -184($s8)
label1361:
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal top_caller
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -204($s8)
  lw $t0, -16($s8)
  sw $t0, 0($sp)
  lw $t1, -12($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal safe_mul
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -208($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -208($s8)
  sw $t1, 4($sp)
  lw $t2, -204($s8)
  sw $t2, 8($sp)
  lw $t3, -184($s8)
  sw $t3, 12($sp)
  lw $t4, -180($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -212($s8)
  lw $t0, -212($s8)
  lw $t1, -176($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -108($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -216($s8)
  la $t0, -8($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -220($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -224($s8)
  lw $t0, -224($s8)
  lw $t1, 0($t0)
  sw $t1, -228($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  lw $t2, -12($s8)
  sw $t2, 8($sp)
  lw $t3, -228($s8)
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_150
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -232($s8)
  lw $t0, -232($s8)
  lw $t1, -220($s8)
  sw $t0, 0($t1)
  lw $t0, -220($s8)
  lw $t1, 0($t0)
  sw $t1, -236($s8)
  lw $t0, -236($s8)
  move $t1, $t0
  sw $t1, -240($s8)
  lw $t0, -240($s8)
  lw $t1, -216($s8)
  sw $t0, 0($t1)
  li $t0, 0
  move $t1, $t0
  sw $t1, -244($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -248($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -252($s8)
  lw $t0, -60($s8)
  li $t1, 1
  add $t2, $t0, $t1
  sw $t2, -60($s8)
  lw $t0, 8($s8)
  li $t1, 2
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -256($s8)
  lw $t0, -256($s8)
  lw $t1, 0($t0)
  sw $t1, -260($s8)
  la $t0, -100($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -264($s8)
  lw $t0, -264($s8)
  lw $t1, 0($t0)
  sw $t1, -268($s8)
  la $t0, -108($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -272($s8)
  lw $t0, -272($s8)
  lw $t1, 0($t0)
  sw $t1, -276($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -12($s8)
  sw $t1, 4($sp)
  lw $t2, -276($s8)
  sw $t2, 8($sp)
  lw $t3, -268($s8)
  sw $t3, 12($sp)
  lw $t4, -260($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_155
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -280($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -280($s8)
  sw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_153
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -284($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -288($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -292($s8)
  la $t0, -108($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -296($s8)
  lw $t0, -296($s8)
  lw $t1, 0($t0)
  sw $t1, -300($s8)
  lw $t0, -300($s8)
  lw $t1, -12($s8)
  beq $t0, $t1, label1362
  j label1363
label1362:
  li $t0, 1
  move $t1, $t0
  sw $t1, -292($s8)
label1363:
  lw $t0, -292($s8)
  lw $t1, -288($s8)
  sw $t0, 0($t1)
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
label1364:
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -304($s8)
  la $t0, -108($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -308($s8)
  lw $t0, -308($s8)
  lw $t1, 0($t0)
  sw $t1, -312($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  lw $t1, -16($s8)
  sw $t1, 4($sp)
  lw $t2, -12($s8)
  sw $t2, 8($sp)
  lw $t3, -312($s8)
  sw $t3, 12($sp)
  li $t4, -1847008678
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -316($s8)
  lw $t0, -316($s8)
  lw $t1, -304($s8)
  sw $t0, 0($t1)
  lw $t0, -304($s8)
  lw $t1, 0($t0)
  sw $t1, -320($s8)
  lw $t0, -320($s8)
  move $t1, $t0
  sw $t1, -324($s8)
  lw $t0, -324($s8)
  li $t1, 0
  beq $t0, $t1, label1365
  li $t0, 0
  move $t1, $t0
  sw $t1, -328($s8)
  lw $t0, -244($s8)
  li $t1, 10
  blt $t0, $t1, label1366
  j label1367
label1366:
  li $t0, 1
  move $t1, $t0
  sw $t1, -328($s8)
label1367:
  lw $t0, -328($s8)
  li $t1, 0
  beq $t0, $t1, label1365
  lw $t0, 8($s8)
  li $t1, 1
  sub $t2, $t0, $t1
  sw $t2, 8($s8)
  la $t0, -8($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -340($s8)
  la $t0, -100($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -344($s8)
  lw $t0, -344($s8)
  lw $t1, 0($t0)
  sw $t1, -348($s8)
  la $t0, -108($s8)
  li $t1, 4
  add $t2, $t0, $t1
  sw $t2, -352($s8)
  lw $t0, -352($s8)
  lw $t1, 0($t0)
  sw $t1, -356($s8)
  lw $t0, 8($s8)
  sw $t0, 0($sp)
  li $t1, -1003065898
  sw $t1, 4($sp)
  lw $t2, -12($s8)
  sw $t2, 8($sp)
  lw $t3, -356($s8)
  sw $t3, 12($sp)
  lw $t4, -348($s8)
  sw $t4, 16($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal i_func_152
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  sw $t0, -360($s8)
  lw $t0, -360($s8)
  lw $t1, -340($s8)
  sw $t0, 0($t1)
  lw $t0, -340($s8)
  lw $t1, 0($t0)
  sw $t1, -364($s8)
  lw $t0, -364($s8)
  move $t1, $t0
  sw $t1, -368($s8)
  la $t0, -8($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -372($s8)
  li $t0, 0
  move $t1, $t0
  sw $t1, -376($s8)
  la $t0, -108($s8)
  li $t1, 0
  add $t2, $t0, $t1
  sw $t2, -380($s8)
  lw $t0, -380($s8)
  lw $t1, 0($t0)
  sw $t1, -384($s8)
  lw $t0, -384($s8)
  li $t1, 0
  bne $t0, $t1, label1369
  j label1368
label1368:
  li $t0, 1
  move $t1, $t0
  sw $t1, -376($s8)
label1369:
  lw $t0, -376($s8)
  lw $t1, -372($s8)
  sw $t0, 0($t1)
  lw $t0, -372($s8)
  lw $t1, 0($t0)
  sw $t1, -388($s8)
  lw $t0, -388($s8)
  move $t1, $t0
  sw $t1, -392($s8)
  la $t0, -336($s8)
  jr $ra