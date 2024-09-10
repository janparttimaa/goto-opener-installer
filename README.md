# GoTo Opener Installer Script
PowerShell-script that will deploy GoTo Opener-installer from Intune to devices running Shared PC mode.

## Background
I created this PowerShell-script so I was able to deploy "[GoTo Opener](https://support.goto.com/meeting/help/what-is-the-multi-user-launcher-opener-msi)" -installer to dedicated and managed shared devices running Windows 11 or later that are only used for hosting webinars with GoToWebinar. GoTo Opener is required with GoToWebinar.

This script is suitable for corporate environments where you might have following situation:
- Your managed Windows-devices are running Windows 11 or later.
- Your managed Windows-devices are on [co-management](https://learn.microsoft.com/en-us/mem/configmgr/comanage/overview) so you are mananing these devices using Microsoft Intune and Microsoft Configuration Manager.
- Your company is not yet ready to switch [client apps deployment workload](https://learn.microsoft.com/en-us/mem/configmgr/comanage/how-to-switch-workloads) from Configuration Manager to Intune so you are still ddeploying managed applications to employees to Software Center.
- You are using [Shared PC mode](https://learn.microsoft.com/en-us/windows/configuration/shared-pc/shared-devices-concepts) on your shared Windows-devices.
- Your company is using dedicated shared devices for presentation purposes e.g. hosting webinars.
- Your company has configured AppLocker or Microsoft Defender Application Control (WDAC) so employees cannot install by themselves anything.

## Deployment instructions
Deploy the PowerShell-script from Intune using Intune's own script deployment function. You need to deploy the script to specific devices, not users.

You need to set following settings:

![Screenshot](/img/img%201.png)
