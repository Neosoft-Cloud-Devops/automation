#!/bin/bash

#global variable declaration
GLOBALVAR="Gloabally Visible"

#funtion definations start

#sample function for function variable scope

funZone1() {
	#local variable to function
	LOCALVAR="Locally Visible"

	echo "From within the function, the variable is $LOCALVAR..."
}

#function definations stop

clear

echo "This step happens first..."
echo ""
echo "GLOBALVAR variable = $GLOBALVAR (before the fnvtion call)"
echo "LOCALVAR variable = $LOCALVAR (before the function call)"
echo ""
echo "calling function - funZone1()"
echo ""

funZone1


echo ""
echo "Function has been called"
echo ""
echo "$GLOBALVAR variable = $GLOBALVAR (after the fnvtion call)"
echo "$LOCALVAR variable = $LOCALVAR (after the function call)"

