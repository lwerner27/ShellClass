#!/bin/bash

# This script should only run if it is being run as root.
if [[ ${UID} -ne 0 ]]
then
  echo 'You need to run this script with root privileges.'
  exit 1
fi

# Prompt User to enter the username for the account to create.
read -p 'Enter the username for the account: ' USER_NAME

# Prompt User to enter the fullname for the account. 
read -p 'Enter the full anme for the acount: ' COMMENT

# Prompt user for the initial password.
read -p 'Enter the intial password for the account: ' PASSWORD

# Create new account
useradd -c "${COMMENT}" -m ${USER_NAME} # Comment needs quotes because it has a space.
echo ${PASSWORD} | passwd --stdin ${USER_NAME}
passwd -e ${USER_NAME}

# Inform the user if account creation failed. (exit status 1)
if [[ ${?} -ne 0 ]] 
then
  echo 'There was an error during account creation, please try again later.'
  exit 1
fi

# Ouput the username, password, and host where the account was created.
echo '========================='
echo 'User Info:'
echo '========================='
echo "Username: ${USER_NAME}"
echo "Password: ${PASSWORD}"
echo "Created On: $(hostname)"

exit 0
