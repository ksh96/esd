	NAME    main
        
    PUBLIC  __iar_program_start
    SECTION .data:CONST:NOROOT (2)
num1 dc32 0x1111,0x2222,0x4444,0x3333,0x0001
num2 dc32 0x00
len dc32 (num2-num1)/4


    SECTION .intvec:CODE:NOROOT (2)
__iar_program_start                
main
		ldr r0,=num1
		ldr r2,len
		sub r2,r2,#1
		ldr r3,num1;smallest
		ldr r4,num1;largest
		ldr r1,=thum
		mov lr,pc
		bx r1

stop 	b stop
	code16	
thum	
l1		add r0,#4
		ldrh r5,[r0,#0]
		cmp r5,r3
		bpl subss
		mov r3,r5
subss	cmp r5,r4
		bmi here
		mov r4,r5
		
here	sub r2,#1
		cmp r2,#0
		bne l1
		bx lr
    END
