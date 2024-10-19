#SingleInstance Force
if not A_IsAdmin
{
    Run *RunAs "%A_ScriptFullPath%"
}

; Completely disable CapsLock key
CapsLock::return

; Remap keys when holding CapsLock
#If GetKeyState("CapsLock", "P")
{
    w::Up
    a::Left
    s::Down
    d::Right
    j::Enter
    k::Backspace
    y::(
    u::)
    i::{
    o::}
    l::=
}
#If

; Use Win + CapsLock to toggle CapsLock state (turn on or off)
#CapsLock::
{
    if (GetKeyState("CapsLock", "T"))  ; If CapsLock is currently ON
    {
        SetCapsLockState, Off           ; Turn it off
    }
    else                                ; If CapsLock is OFF
    {
        SetCapsLockState, On            ; Turn it on
    }
    return
}

; Prevent Ctrl, Shift, Alt + CapsLock from turning it on or off
^CapsLock::return  ; Ctrl + CapsLock does nothing
+CapsLock::return  ; Shift + CapsLock does nothing
!CapsLock::return  ; Alt + CapsLock does nothing

; Prevent CapsLock from being activated after pressing it
CapsLock up::return
