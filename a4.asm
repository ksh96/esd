	NAME    main
        
    PUBLIC  __iar_program_start
    SECTION .data:CONST:NOROOT (2)
num1 dc8 'mada'
num2 dc8 0x0
len dc32 (num2-num1)
    SECTION .intvec:CODE:NOROOT (2)
__iar_program_start                
main
		ldr r0,=num1
		ldr r1,len
		sub r1,r1,#1
		mov r2,r0
		add r2,r2,r1
		
loop	cmp r2,r0
		bmi pali
		ldr r3,[r0],#1
		ldr r4,[r2],#-1
		cmp r3,r4
		beq loop
notpali mov r10,#0x2
		b stop
pali 	mov r10,#1

stop 	b stop       
    END
