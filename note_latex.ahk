#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetKeyDelay -1

preferred_font := ""

^Space::
;save clipboard
cp := ClipboardAll
cpl := StrLen(Clipboard)

;create env
Send {Enter}1{Enter}{Left}{BS}^+n

;latex mode
Send !=Ⓣ

;paste and select
Send ^v ^a

;convert to latex
Send !={Right}{Enter}

;copy equation
Send {Left}^a{Shift Down}{Left}{Shift Up}^c

;undo
Send {LCtrl Down}{z 12}{LCtrl Up}

;paste equation
Send ^v{Right}

;change font
if (preferred_font != "")
{
Send ！{Left}{LAlt}hff
Send {text}%preferred_font%
Send {Enter}{Right}{BS}
}

Clipboard := cp

Return
