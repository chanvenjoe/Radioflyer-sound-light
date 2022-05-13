
#pragma __attribute__("rjmp")

long int labs(long int j)
{
	return(j < 0) ? -j : j;
}
