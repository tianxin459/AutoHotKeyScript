
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Text;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;for RN reivew text
:`t:hrv::
	Input, OutputVar,, {tab}
	Send, Hi %OutputVar%, 
	(

Please help to perform the security review.
thanks.
	)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Shortcut;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;open google
^+g::
	Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "https://www.google.com/"
Return

;google the selected text
!g::
	;AutoTrim, on
	Send ^c
	searchtext = %clipboard%
	searchtext := Trim(searchtext)
	Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "https://www.google.com/#q=%searchtext%"
Return


;baidu the selected text
!b::
	;AutoTrim, on
	Send ^c
	searchtext = %clipboard%
	searchtext := Trim(searchtext)
	Run "https://www.baidu.com/s?wd=%searchtext%"
Return

;chose a line
!a::
	Send {Home}
	Send +{End}
Return

^+LButton up::
	WinGetTitle, title, A
	targetText := "Account Login"
	IfInString, title, %targetText%
		Send, GDAA31202140
		Send, {tab}
		Send, {tab}
		Send, NECTESTAU0
		Send, {Enter}
Return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Test;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Transform, CtrlC, Chr, 3
Input, OutputVar, L1 M
	MsgBox, You pressed Control-Chr
Return

!t::
	WinGetTitle, title, A
	WinGetText, TText
	targetText := "Account Login"
	IfInString, title, %targetText%
		MsgBox, Window WinGetTitle %title% `rText %TText%
	else
		MsgBox, WinGetTitle %title%
Return
