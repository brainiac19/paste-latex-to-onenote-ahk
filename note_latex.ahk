#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

preferred_font := ""

^Space::
;save clipboard
cp := A_Clipboard
cpl := StrLen(cp)

;latex mode
SendInput !=
SendInput {text}24c9
SendInput {Space}
SendInput !x
SendInput {BS}

;split line
SendInput {Enter}
SendInput {Left}

;paste and select
SendInput ^v
SendInput {LShift Down}
SendInput {Left %cpl%}
SendInput {LShift Up}

;convert to latex
SendInput !=
SendInput {Right}
SendInput {Enter}
SendInput {Delete}
SendInput {Left}

;change font
if (preferred_font != "")
{
SendInput ！
SendInput {Left}
SendInput {LAlt}
SendInput hff
SendInput {text}%preferred_font%
SendInput {Enter}
SendInput {Right}
SendInput {BS}
}

;restore line
SendInput {LShift Down}
SendInput {Right}
SendInput {LShift Up}
SendInput {Delete}
SendInput {Right}
SendInput {Left}

A_Clipboard := cp

Return
