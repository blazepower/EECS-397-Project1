#!/usr.bin.awk -f
BEGIN { }
	{sum += $1}
END {print sum}
