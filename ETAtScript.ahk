
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Global-Var;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
account_gd := []
account_gd.Insert({id:"GDAA31202140",pwd:"NECTESTAU0"})
account_gd.Insert({id:"GDAA31202140",pwd:"NECTESTAU0"})
account_gd.Insert({id:"GDAA31202140",pwd:"NECTESTAU0"})
account_gd.Insert({id:"GDAA31202140",pwd:"NECTESTAU0"})
account_gd.Insert({id:"GDAA31202140",pwd:"NECTESTAU0"})
account_gd.Insert({id:"GDAA31202140",pwd:"NECTESTAU0"})
account_gd.Insert({id:"GDAA31202140",pwd:"NECTESTAU0"})
account_gd.Insert({id:"GDAA31202140",pwd:"NECTESTAU0"})

;MsgBox, account loaded
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Shortcut-Text;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;hrv+{tab} help to review RN
:`t:hrv::
	Input, OutputVar,, {tab}
	if(OutputVar=="")
	{
		OutputVar := "Jack"
	}
	Send, Hi %OutputVar%, 
	(

Please help to perform the security review.
thanks.
	)
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Shortcut-Edit;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;chose a line
!a::
	Send {Home}
	Send +{End}
Return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Shortcut-Web;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;open google
^+g::
	InputBox, searchtext, Google:, input search text ,,,100
	if(searchtext=="")
		Return
	Run "https://www.google.com/#q=%searchtext%"
Return

;baidu the selected text
~^+b::
	InputBox, searchtext, Baidu:, input search text ,,,100
	if(searchtext=="")
		Return
	Run "https://www.baidu.com/s?wd=%searchtext%"
Return

;google the selected text
!g::
	;AutoTrim, on
	Send ^c
	sleep 100
	searchtext = %clipboard%
	searchtext := Trim(searchtext)
	Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "https://www.google.com/#q=%searchtext%"
Return


;baidu the selected text
!b::
	;AutoTrim, on
	Send ^c
	sleep 100
	searchtext = %clipboard%
	searchtext := Trim(searchtext)
	Run "https://www.baidu.com/s?wd=%searchtext%"
Return

;open jira ticket
~^+q::
	InputBox, searchtext, Ticket No.:, input search text ,,,100
	if(searchtext=="")
		Return
	Run "https://pd/browse/%searchtext%"
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Shortcut-GDSite;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
^+x up::
	Input, index, L1 M
	WinGetTitle, title, A
	targetText := "Account Login"
	acc := account_gd[index]
	accid := acc.id
	accpwd := acc.pwd
	if(accid=="")
		Return
	IfInString, title, %targetText%
		Send, %accid%
		Send, {tab}
		Send, {tab}
		Send, %accpwd%
		Send, {Enter}
Return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Test;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Transform, CtrlC, Chr, 3
Input, OutputVar, L1 M
	MsgBox, You pressed Control-Chr
Return

!t::
	;For key, value in account_gd
	;	MsgBox %key% = %value%
	Input, index, L1 M
	;Input, index, L1 M
	acc := account_gd[index]
	accid := acc.id
	accpwd := acc.pwd
	Send, %accid%:%accpwd%
Return
