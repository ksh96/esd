	NAME    main
        
    PUBLIC  __iar_program_start
    SECTION .intvec:CODE:NOROOT (2)
num1 dc32 0x0A


    SECTION .intvec:CODE:NOROOT (2)
__iar_program_start                
main
		ldr r0,num1
		ldr r1,=thum
		mov lr,pc
		bx r1

stop 	b stop
	code16	
thum	mov r2,r0
l1		mov r2,r0
		mul r2,r0		
		add r3,r3,r2
		sub r0,#1
		bne l1
		bx lr
    END
