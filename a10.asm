	NAME    main
        
    PUBLIC  __iar_program_start
    SECTION .data:CONST:NOROOT (2)
mydata dc32 0x22222222,0x11111111,0x44444444,0x88888888,0x55555555,0x333333333
mend dc32 0x0
len dc32 (mend-mydata)/4

    SECTION .intvec:CODE:NOROOT (2)
__iar_program_start                
main
		ldr r0,len
		sub r0,r0,#1
		mov r5,r0
		ldr r1,=mydata

loop2	mov r0,r5
		mov r2,r1
		add r2,r2,#4

l1		ldr r3,[r1]
		ldr r4,[r2]
		cmp r3,r4
		bhs loop1
		str r3,[r2]
		str r4,[r1]

loop1 	add r2,r2,#4
		subs r0,r0,#1
		bhi l1
		add r1,r1,#4
		subs r5,r5,#1
		bgt loop2
stop 	b stop       
        END
