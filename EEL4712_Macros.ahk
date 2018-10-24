;-----------------------------------------------------------------------------+
;- File: EEL4712_Macros.ahk  (~\Macros) - GVIM1
;- Created: 08-20-2018 10:46
;- Last Modified: 10-24-2018 16:19
;
;- Name: Rafael Hernandez (RafHL)
;- Description: A file with my most used macros for EEL 4712,
;-     Digital Design. Feel free to modify and enhance for your purposes.
;-     Be sure to change the title template to suit your needs.
;-----------------------------------------------------------------------------+

; Make New VWF file in Quartus and open node finder with list
^!v::
Send, ^n{Down 18}{Enter}{Alt}{e}{Down}{Right}{Enter}{Tab 5}{Enter}{Tab 6}{Enter}
return

; Title Template
^!t::
WinGetTitle, File, A ; Get full path and name of current active window
SendInput, -- File: %File%{Enter}
SendInput, -- Created: %A_MM%-%A_DD%-%A_YYYY% %A_Hour%:%A_Min%{Enter}
SendInput, -- Last Modified: %A_MM%-%A_DD%-%A_YYYY% %A_Hour%:%A_Min%{Enter 2}
SendInput, -- Lab _ Part _{Enter}
SendInput, -- Name: %A_UserName%{Enter}
SendInput, -- Section {#}: _{Enter}
SendInput, -- Class {#}: _{Enter}
SendInput, -- TA Name: _{Enter}
SendInput, -- Description: _{Enter}
return

; Last modified
^!m::
SendInput, Last Modified: %A_MM%-%A_DD%-%A_YYYY% %A_Hour%:%A_Min%
return

; End of file message
^!e::
SendInput, {- 33} end of file {- 33}
return

; End of component message
^!r::
SendInput, {- 16} end of component {- 16}
return

; ScreenShots in Word
^!z::
SendInput, !nscc
return

; Turn blue
^!b::
SendInput, !hfcm{Right}{Tab 6}255{Enter}
return

; Return to Automatic color
^!a::
SendInput, !hfca
return

; Word make into hanging line from normal
^!x::
SendInput, !hpg{Tab 4}{Down 3}{Tab 10}{Enter}
return

; Word make into normal from hanging line
^!s::
SendInput, !hpg{Tab 4}{Up 3}{Tab 10}{Enter}
return

; Caption Word
^!c::
SendInput, !s{p}:{Space}
return

; Windows equivalent of o in Vim
+Enter::
SendInput, {End}{Enter}
return

; Windows equivalent of O in Vim
^+Enter::
SendInput, {Home}{Enter}{Up}
return

; Pin window on top
^Space:: Winset, Alwaysontop, , A
return

Pause:: ExitApp
