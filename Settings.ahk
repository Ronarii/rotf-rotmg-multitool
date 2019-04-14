#SingleInstance Force
#NoEnv
SetWorkingDir %A_ScriptDir%
SetBatchLines -1
CoordMode, Pixel, Screen
Menu Tray, Icon, C:\Users\aytug\Desktop\favicon.ico

Gui -MaximizeBox +AlwaysOnTop
Gui Add, Tab3, x0 y0 w225 h160, Auto Nexus Settings|Auto Heal Settings
Gui Tab, 1
Gui Add, Text, x16 y40 w44 h23 +0x200, X Coord:
Gui Add, Text, x16 y64 w44 h23 +0x200, Y Coord:
Gui Add, Edit, x64 y40 w146 h21 vNexusX
Gui Add, Edit, x64 y64 w146 h21 vNexusY
Gui Add, Button, x72 y104 w80 h23 gGetAutoNexusCoord, Get Coords
Gui Tab, 2
Gui Add, Text, x16 y40 w43 h23 +0x200, X Coord:
Gui Add, Text, x16 y64 w43 h23 +0x200, Y Coord:
Gui Add, Edit, x64 y40 w146 h21 vHpX
Gui Add, Edit, x64 y64 w146 h21 vHpY
Gui Add, Button, x72 y104 w80 h23 gGetAutoHPCoord, Get Coords
Gui Tab

Gui Show, w224 h159, RotF / RotMG - Multitool Setup
Return


GetAutoNexusCoord:
	i := 0
	Loop
	{
		Left_Mouse := GetKeyState("LButton")
		
		if (Left_Mouse == true) {
			MouseGetPos, x, y
			break
		}
	}
	
	GuiControl,,NexusX, %x%
	GuiControl,,NexusY, %y%
	return
GetAutoHPCoord:
		i := 0
	Loop
	{
		Left_Mouse := GetKeyState("LButton")
		
		if (Left_Mouse == true) {
			MouseGetPos, x, y
			break
		}
	}
	
	GuiControl,,HpX, %x%
	GuiControl,,HpY, %y%
	return
	
GuiClose:
	if FileExist("settings.ini")
		FileDelete, settings.ini
	
	GuiControlGet, NexusX
	GuiControlGet, NexusY
	GuiControlGet, HpX
	GuiControlGet, HpY
	
	
	IniWrite, %NexusX%, settings.ini, Auto Nexus, x
	IniWrite, %NexusY%, settings.ini, Auto Nexus, y
	
	IniWrite, %HpX%, settings.ini, Auto Heal, x
	IniWrite, %HpY%, settings.ini, Auto Heal, y
    ExitApp