#!/bin/bash -x
function func_return()
{
	return 10
}

func_return
echo "value return by function is $?"
