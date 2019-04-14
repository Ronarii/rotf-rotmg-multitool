CoordMode, Pixel, Screen
image_name = nexusicon.png
Text = Character in nexus, Auto Nexus and Auto Heal are disabled.

IniRead, NexusX, settings.ini, Auto Nexus, x
IniRead, NexusY, settings.ini, Auto Nexus, y

IniRead, HpX, settings.ini, Auto Heal, x
IniRead, HpY, settings.ini, Auto Heal, y

if (NexusX = "" or NexusX = "Error" or NexusY = "" or NexusY = "Error" or HpX = "" or HpX = "Error" or HpY = "" or HpY = "Error")
	MsgBox, 48, Error, Looks like you haven't properly set up the multi tool. Program will exit.
	ExitApp

WinWait, Adobe Flash Player 32
WinMove, Adobe Flash Player 32, 0, 0, 1382, 744

Loop {
	PixelGetColor, hpbarcolor, %NexusX%, %NexusY%
	PixelGetColor, hpbarcolor2, %HpX%, %HpY%
	
	if (hpbarcolor = "0x545454") {
		Send R
	} else if (hpbarcolor2 = "0x545454") {
		Send F
	}
}

; Auto pick-ups (experimental)
1::
MouseGetPos, xpos, ypos
MouseClickDrag, left, xpos, ypos, 1176, 500, 10
MouseMove, xpos, ypos
return

2::
MouseGetPos, xpos, ypos
MouseClickDrag, left, xpos, ypos, 1227, 500, 10
MouseMove, xpos, ypos
return

3::
MouseGetPos, xpos, ypos
MouseClickDrag, left, xpos, ypos, 1273, 500, 10
MouseMove, xpos, ypos
return

4::
MouseGetPos, xpos, ypos
MouseClickDrag, left, xpos, ypos, 1330, 500, 10
MouseMove, xpos, ypos
return

5::
MouseGetPos, xpos, ypos
MouseClickDrag, left, xpos, ypos, 1177, 549, 10
MouseMove, xpos, ypos
return

6::
MouseGetPos, xpos, ypos
MouseClickDrag, left, xpos, ypos, 1227, 549, 10
MouseMove, xpos, ypos
return

7::
MouseGetPos, xpos, ypos
MouseClickDrag, left, xpos, ypos, 1273, 549, 10
MouseMove, xpos, ypos
return

8::
MouseGetPos, xpos, ypos
MouseClickDrag, left, xpos, ypos, 1330, 549, 10
MouseMove, xpos, ypos
return

^!Q::
Exit
Return

^!R::
Reload
Return