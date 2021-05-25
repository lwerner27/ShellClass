#!/bin/bash

# This script displays various information to the screen.

# Display 'Hello'
echo 'Hello'

# Assign a value to a variable
WORD='script'

# Display that value using the varible
echo "$WORD" # Make sure to use double quotes

# Single quotes will print out $WORD
echo '$WORD'

# Combine the variable with hard-coded text.
echo "This is a shell $WORD"

# Display the contents of the variable using an alternative syntax.
echo "This is a shell ${WORD}"

# Append text to the variable
echo "${WORD}ing is fun"

# This does NOT work
echo "$WORDing is fun"

# Create a new variable
ENDING='ed'

# Combine the two varibles 
echo "This is ${WORD}${ENDING}"

# Change the value store in the ENDING variable (reassignment)
ENDING='ing'
echo "${WORD}${ENDING} is fun"

# Reassign value to ENDING
ENDING='s'
echo "You are going to write many ${WORD}${ENDING} in this class"
