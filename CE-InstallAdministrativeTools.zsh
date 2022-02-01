#!/bin/zsh

# Author: Andrew W. Johnson
# Date: Sometime in 2020
# Version: 1.00
# Organization: Stony Brook University/DoIT
#
# This Jamf script will run a series of policies, in this case it's used to run a whole
# bunch of install policies. Usage of the parameters in passing the trigger to the script
# is discouraged due to the need to run more policies than parameters made available.
#
# This script is used in the initial setup of a computer when it joins Jamf through
# Apple School Manager (ASM) or a fresh reinstall of the OS. Add remove as many triggers 
# as desired.
#
# Future: Update to use either Policy ID or custom event keyword/trigger.

	# Setup an array with the triggers.
myTriggers=(
InstallAlertus
InstallAlisma
InstallAppleLoops
InstallDesktoppr
InstallDockutil
InstallPopup
InstallSBUCert
InstallSetupHome
InstallSTAFFPolicyBanner
InstallStaffImages
InstallSetupHome
InstallWget
installZshrc
)

	# Loop through the array to run each policy in Jamf.
for i in "${myTriggers[@]}"; do
	/bin/echo "Installing: ${i}"
	/bin/echo "$( /bin/date | /usr/bin/awk '{print $1, $2, $3, $4}' ) $( /usr/sbin/scutil --get LocalHostName ) $( /usr/bin/basename ${0} )[$$]: Installing: ${i}" >> /var/log/jamf.log
	/usr/local/jamf/bin/jamf policy -trigger ${i}
done

# 	/usr/local/jamf/bin/jamf policy -trigger "InstallAlertus"
# 	/usr/local/jamf/bin/jamf policy -trigger "InstallAlisma"
#	/usr/local/jamf/bin/jamf policy -trigger "InstallAppleLoops"
#	/usr/local/jamf/bin/jamf policy -trigger "InstallDesktoppr"
#	/usr/local/jamf/bin/jamf policy -trigger "InstallDockutil"
#	/usr/local/jamf/bin/jamf policy -trigger "InstallPopup"
#	/usr/local/jamf/bin/jamf policy -trigger "InstallSBUCert"
#	/usr/local/jamf/bin/jamf policy -trigger "InstallSetupHome"
#	/usr/local/jamf/bin/jamf policy -trigger "Installsilnite"
#	/usr/local/jamf/bin/jamf policy -trigger "InstallSTAFFPolicyBanner"
#	/usr/local/jamf/bin/jamf policy -trigger "InstallStaffImages"
#	/usr/local/jamf/bin/jamf policy -trigger "InstallSetupHome"
#	/usr/local/jamf/bin/jamf policy -trigger "InstallWget"
#	/usr/local/jamf/bin/jamf policy -trigger "installZshrc"

exit 0
