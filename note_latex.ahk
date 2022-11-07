#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

preferred_font := ""

^Space::
;save clipboard
cpl := StrLen(A_Clipboard)

;split line
SendInput {Enter}
SendInput {Left}

;paste and select
SendInput ^v
SendInput {LShift Down}
SendInput {Left %cpl%}
SendInput {LShift Up}

;convert to latex, reset cursor
SendInput !=
SendInput {Right}
SendInput {Enter}
SendInput {Delete}
SendInput {Left}
SendInput {Right}
SendInput {Left}

;change font
if (preferred_font != "")
{
SendInput ！
SendInput {Left}
SendInput {LAlt}
SendInput hff
SendInput %preferred_font%
SendInput {Enter}
SendInput {Right}
SendInput {BS}
}

;restore line
SendInput {LShift Down}
SendInput {Right}
SendInput {LShift Up}
SendInput {Delete}

Return