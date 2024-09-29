//Timer ticking
milsec -= 1;

if milsec = -1
{
	milsec = 9
	sec -= 1
}

if !(sec = 0 && milsec = 0)
	alarm[0] = 6;
else
{
	alarm[0] = 5;
	sec = 5;
}