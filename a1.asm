	NAME    main
        
    PUBLIC  __iar_program_start
    SECTION .intvec:CODE:NOROOT (2)
num1 dc32 0x11111111,0x11111111
num2 dc32 0x22222222,0x22222222
sum ds32 0x04
diff ds32 0x04
    SECTION .intvec:CODE:NOROOT (2)
__iar_program_start                
main
		ldr r0,=num1
		ldmia r0!,{r1-r4}
		adds r5,r1,r3
		adc  r6,r2,r4
		subs r7,r1,r3
		sbc  r8,r2,r4
		
		ldr r0,=sum
		stmia r0!,{r5-r6}
		ldr r0,=diff
		stmia r0!,{r7-r8}

stop 	b stop       
        END
