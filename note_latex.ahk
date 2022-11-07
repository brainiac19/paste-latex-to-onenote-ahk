#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetKeyDelay -1

preferred_font := ""

^Space::
;save clipboard
cp := A_Clipboard
cpl := StrLen(cp)

;latex mode
Send !=
Send Ⓣ
Send {BS}

;split line
Send {Enter}
Send {Left}

;paste and select
Send ^v
Send {LShift Down}
Send {Left %cpl%}
Send {LShift Up}

;convert to latex
Send !=
Send {Right}
Send {Enter}
Send {Delete}
Send {Left}

;change font
if (preferred_font != "")
{
Send ！
Send {Left}
Send {LAlt}
Send hff
Send {text}%preferred_font%
Send {Enter}
Send {Right}
Send {BS}
}

;restore line
Send {LShift Down}
Send {Right}
Send {LShift Up}
Send {Delete}
Send {Right}
Send {Left}

A_Clipboard := cp

Return
