
#pragma __attribute__("rjmp")

char isspace(unsigned char c)
{
	if(c == ' ' || (c >= 0x09 && c <= 0x0d))
		return 1;
	return 0;
}
