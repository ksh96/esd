	NAME    main
        
    PUBLIC  __iar_program_start
    SECTION .intvec:CODE:NOROOT (2)
num1 dc32 0x2791
num2 dc8 0x0
len dc32 (num2-num1)
    SECTION .intvec:CODE:NOROOT (2)
__iar_program_start                
main
		ldr r0,num1
		mov r10,#10
		and r1,r0,#0xf000
		add r7,r7,r1,lsr #12
		mul r8,r7,r10
		mov r7,r8
		and r2,r0,#0x0f00
		add r7,r7,r2,lsr #8
		mul r8,r7,r10
		mov r7,r8
		and r2,r0,#0x00f0
		add r7,r7,r2,lsr #4
		mul r8,r7,r10
		mov r7,r8
		and r2,r0,#0xf
		add r7,r7,r2
		
		
		

stop 	b stop       
        END
