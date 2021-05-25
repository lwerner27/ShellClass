#!/bin/bash

# Dislay the UID and username of the user executing this script.
# Display if the user is the vagrant user or not.

# Display the UID 
echo "Your UID is: ${UID}"

# Only display a message if the UID does NOT match 1000
UID_TO_TEST_FOR='1000'
if [[ "${UID}" -ne "${UID_TO_TEST_FOR}" ]]
then 
  echo 'Your UID does not match the UID we are testing for.'
  exit 1
fi

# Save the username to a variable
USER_NAME=$(id -un)

# Test if the command succeeded
if [[ "${?}" -ne 0 ]] # ${?} will get the exit code of the most recently run command
then
  echo 'The id command did not execute successfully'
  exit 1
fi

#Dispaly the username if command was successful
echo "Your username is ${USER_NAME}"

# You can use a string test conditional
USER_NAME_TO_TEST_FOR='vagrant'
if [[ "${USER_NAME}" = "${USER_NAME_TO_TEST_FOR}" ]]
then 
  echo 'Your username matches the username that we are testing for.'
fi

#Test for != (not equal) for the string
if [[ "${USER_NAME}" != "${USER_NAME_TO_TEST_FOR}" ]]
then 
  echo "Your username does not match ${USER_NAME_TO_TEST_FOR}"
  exit 1
fi

exit 0 
