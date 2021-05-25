#!/bin/bash

# Display the UID and username of the user executing this script
# Display if the user is the root user or not

# Display the UID
echo "Your UID is: ${UID}"

# Display the Username
# USER_NAME=$(id -un)
USER_NAME=`id -un` # You can also use back tics to the do the above
echo "Your username is: ${USER_NAME}" 

# Display if the user root user or not
if [[ "${UID}" -eq 0 ]]
then
  echo 'Your are root.'
else
  echo 'You are not root.'
fi 
