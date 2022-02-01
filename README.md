# JAMF-CE-InstallAdministrativeTools

Jamf Script which installs administrative tools.

- Author: Andrew W. Johnson
- Date: Sometime in 2020
- Version: 1.00
- Organization: Stony Brook University/DoIT
---
### Description

This Jamf script will run a series of policies, in this case it's used to run a whole bunch of install policies. Usage of the parameters in passing the trigger to the script is discouraged due to the need to run more policies than parameters made available.

This script is used in the initial setup of a computer when it joins Jamf through Apple School Manager (ASM) or a fresh reinstall of the OS. Add remove as many triggers  as desired.

### Future

Update to use either trigger or custom event keyword/trigger.
