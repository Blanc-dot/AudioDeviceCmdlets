## Installation
Run as administrator (powershell)
```PowerShell
Install-Module -Name AudioDeviceCmdlets
```


## Grab the Added File
DefaultCommunicationDevice.ps1 - is a file used to look for [Line 1 Virtual Audio Cable by Muzychenko](https://software.muzychenko.net/freeware/vac470lite.zip) and set it as the default communication device, this is ideal for using AI based Voice Changers. 

You can use the Get-AudioDevice -List command to find the actual name of your device that you want to set as default communications (for recording) and replace the name with that. 

Then you can create a task scheduler task that calls "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" with the argument being "Path\To\DefaultCommunicationDevice.ps1" without the ""'s on both spots. Change the trigger to be at log on, delay task for, "2 minutes" which you manually type. You should not need to run it with highest privileges, but try it by running the task, if it doesn't, check that box, make sure the task is configured for Windows 10 as well.

## Lastly
This repo will not be updated, go to the official repo to see if any updates have happened, the only thing I use this for is setting my audio device on boot, nothing more nothing less.


## Description
AudioDeviceCmdlets is a suite of PowerShell Cmdlets to control audio devices on Windows


## Features
Get list of all audio devices  
Get default audio device (playback/recording)  
Get default communication audio device (playback/recording)  
Get volume and mute state of default audio device (playback/recording)  
Get volume and mute state of default communication audio device (playback/recording)  
Set default audio device (playback/recording)  
Set default communication audio device (playback/recording)  
Set volume and mute state of default audio device (playback/recording)  
Set volume and mute state of default communication audio device (playback/recording)


## Usage
```PowerShell
Get-AudioDevice -ID <string>			# Get the device with the ID corresponding to the given <string>
Get-AudioDevice -Index <int>			# Get the device with the Index corresponding to the given <int>
Get-AudioDevice -List				# Get a list of all enabled devices as <AudioDevice>
Get-AudioDevice -PlaybackCommunication		# Get the default communication playback device as <AudioDevice>
Get-AudioDevice -PlaybackCommunicationMute	# Get the default communication playback device's mute state as <bool>
Get-AudioDevice -PlaybackCommunicationVolume	# Get the default communication playback device's volume level on 100 as <float>
Get-AudioDevice	-Playback			# Get the default playback device as <AudioDevice>
Get-AudioDevice -PlaybackMute			# Get the default playback device's mute state as <bool>
Get-AudioDevice -PlaybackVolume			# Get the default playback device's volume level on 100 as <float>
Get-AudioDevice -RecordingCommunication		# Get the default communication recording device as <AudioDevice>
Get-AudioDevice -RecordingCommunicationMute	# Get the default communication recording device's mute state as <bool>
Get-AudioDevice -RecordingCommunicationVolume	# Get the default communication recording device's volume level on 100 as <float>
Get-AudioDevice -Recording			# Get the default recording device as <AudioDevice>
Get-AudioDevice -RecordingMute			# Get the default recording device's mute state as <bool>
Get-AudioDevice -RecordingVolume		# Get the default recording device's volume level on 100 as <float>
```
```PowerShell
Set-AudioDevice	<AudioDevice>				# Set the given playback/recording device as both the default device and the default communication device, for its type
Set-AudioDevice <AudioDevice> -CommunicationOnly	# Set the given playback/recording device as the default communication device and not the default device, for its type
Set-AudioDevice <AudioDevice> -DefaultOnly		# Set the given playback/recording device as the default device and not the default communication device, for its type
Set-AudioDevice -ID <string>				# Set the device with the ID corresponding to the given <string> as both the default device and the default communication device, for its type
Set-AudioDevice -ID <string> -CommunicationOnly		# Set the device with the ID corresponding to the given <string> as the default communication device and not the default device, for its type
Set-AudioDevice -ID <string> -DefaultOnly		# Set the device with the ID corresponding to the given <string> as the default device and not the default communication device, for its type
Set-AudioDevice -Index <int>				# Set the device with the Index corresponding to the given <int> as both the default device and the default communication device, for its type
Set-AudioDevice -Index <int> -CommunicationOnly		# Set the device with the Index corresponding to the given <int> as the default communication device and not the default device, for its type
Set-AudioDevice -Index <int> -DefaultOnly		# Set the device with the Index corresponding to the given <int> as the default device and not the default communication device, for its type
Set-AudioDevice -PlaybackCommunicationMuteToggle	# Set the default communication playback device's mute state to the opposite of its current mute state
Set-AudioDevice -PlaybackCommunicationMute <bool>	# Set the default communication playback device's mute state to the given <bool>
Set-AudioDevice -PlaybackCommunicationVolume <float>	# Set the default communication playback device's volume level on 100 to the given <float>
Set-AudioDevice -PlaybackMuteToggle			# Set the default playback device's mute state to the opposite of its current mute state
Set-AudioDevice -PlaybackMute <bool>			# Set the default playback device's mute state to the given <bool>
Set-AudioDevice -PlaybackVolume <float>			# Set the default playback device's volume level on 100 to the given <float>
Set-AudioDevice -RecordingCommunicationMuteToggle	# Set the default communication recording device's mute state to the opposite of its current mute state
Set-AudioDevice -RecordingCommunicationMute <bool>	# Set the default communication recording device's mute state to the given <bool>
Set-AudioDevice -RecordingCommunicationVolume <float>	# Set the default communication recording device's volume level on 100 to the given <float>
Set-AudioDevice -RecordingMuteToggle			# Set the default recording device's mute state to the opposite of its current mute state
Set-AudioDevice -RecordingMute <bool>			# Set the default recording device's mute state to the given <bool>
Set-AudioDevice -RecordingVolume <float>		# Set the default recording device's volume level on 100 to the given <float>
```
```PowerShell
Write-AudioDevice -PlaybackCommunicationMeter	# Write the default playback device's power output on 100 as a meter
Write-AudioDevice -PlaybackCommunicationStream	# Write the default playback device's power output on 100 as a stream of <int>
Write-AudioDevice -PlaybackMeter		# Write the default playback device's power output on 100 as a meter
Write-AudioDevice -PlaybackStream		# Write the default playback device's power output on 100 as a stream of <int>
Write-AudioDevice -RecordingCommunicationMeter	# Write the default recording device's power output on 100 as a meter
Write-AudioDevice -RecordingCommunicationStream	# Write the default recording device's power output on 100 as a stream of <int>
Write-AudioDevice -RecordingMeter		# Write the default recording device's power output on 100 as a meter
Write-AudioDevice -RecordingStream		# Write the default recording device's power output on 100 as a stream of <int>
```


## Build Cmdlet from source


<details>
  <summary>Build instructions</summary>

1. Install Visual Studio 2022

		Workloads: .NET desktop development

2. Create new project from SOURCE folder  
File -> New -> Project From Existing Code...

		Type of project: Visual C#
		Folder: SOURCE
		Name: AudioDeviceCmdlets
		Output type: Class Library

3. Set project properties  
Project -> AudioDeviceCmdlets Properties

		Assembly name: AudioDeviceCmdlets
		Target framework: .NET Framework 4.6.1+

4. Install System.Management.Automation NuGet legacy package  
Project -> Manage NuGet Packages...

		Package source: nuget.org
		Browse: Microsoft.PowerShell.5.1.ReferenceAssemblies
		Install: v1.0.0+

5. Set solution configuration  
Build -> Configuration Manager...

		Active solution configuration: Release

6. Build Cmdlet  
Build -> Build Solution

		AudioDeviceCmdlets\SOURCE\bin\Release\AudioDeviceCmdlets.dll

7. Import Cmdlet to PowerShell on Windows
	```PowerShell
	$FilePath = "C:\Path\To\AudioDeviceCmdlets\SOURCE\bin\Release\AudioDeviceCmdlets.dll"
	New-Item "$($profile | split-path)\Modules\AudioDeviceCmdlets" -Type directory -Force
	Copy-Item $FilePath "$($profile | split-path)\Modules\AudioDeviceCmdlets\AudioDeviceCmdlets.dll"
	Set-Location "$($profile | Split-Path)\Modules\AudioDeviceCmdlets"
	Get-ChildItem | Unblock-File
	Import-Module AudioDeviceCmdlets
	```
</details>


## Donation

<details>
  <summary>Thank you for considering a donation</summary>

	Bitcoin		(BTC) 3AffczXX4Jb2iN8QWQhHQAsj9AqGFXgYUF
	BitcoinCash	(BCH) qraf6a3fklta7xkvwkh49zqn6mgnm2eyz589rkfvl3
	Ethereum	(ETH) 0xE4EA2A2356C04c8054Db452dCBd6f958F74722dE
</details>


## Attribution

Based on code originally posted to Code Project by Ray Molenkamp with comments and suggestions by MadMidi  
http://www.codeproject.com/Articles/18520/Vista-Core-Audio-API-Master-Volume-Control  
Based on code originally posted to GitHub by Chris Hunt  
https://github.com/cdhunt/WindowsAudioDevice-Powershell-Cmdlet  
