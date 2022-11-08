#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetKeyDelay -1

preferred_font := ""

^Space::

;new env
Send ^n
Send !{Down}

;latex mode
Send !=
Send Ⓣ

;paste latex
Send ^v
Send {Text}\;
Send ^a

;convert to latex
Send !=
Send {Right}{Enter}

;copy equation
Send {Left} ^a
Send {LShift Down}{Left 2}{LShift Up}
Send ^c

;del page
Send ^+a
Send {Delete}

;paste equation
Send ^v
Send {Right}

;change font
if (preferred_font != "")
{
Send ！{Left}{LAlt}hff
Send {text}%preferred_font%
Send {Enter}{Right}{BS}
}

Return
