MEMORY
{
	BRAM (RWX): ORIGIN = 0x0000, LENGTH = 0x1800 /* 6kB RAM */
}

SECTIONS
{
	everything :
	{
		. = ALIGN(4);
		firmware/asm/start.o (.text)
		*(.*)
	} >BRAM
}
