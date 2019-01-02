	NAME    main
        
    PUBLIC  __iar_program_start
    SECTION .intvec:CODE:NOROOT (2)
num1 dc8 0x02,0x07,0x09,0x01
num2 dc8 0x0
len dc32 (num2-num1)
    SECTION .intvec:CODE:NOROOT (2)
__iar_program_start                
main
		ldr r0,=num1
		ldr r1,len
		mov r10,#10
		
loop	mov r2,r7
		mul r7,r2,r10
		ldrb r3,[r0],#1
		add r7,r7,r3
		subs r1,r1,#1
		bne loop
	
		
		
		
		

stop 	b stop       
        END
