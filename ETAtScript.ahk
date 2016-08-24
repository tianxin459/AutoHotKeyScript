
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Global-Var;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
account_gd := []
account_gd.Insert({id:"GDAA31202140",pwd:"NECTESTAU0"}) ;1
account_gd.Insert({id:"GDAA60549060", pwd:"NECTESTAU0"}) ;2
account_gd.Insert({id:"PREP3296364", pwd:"NECTESTAU0"}) ;3
account_gd.Insert({id:"rgGD03", pwd:"nectestate01"}) ;4
account_gd.Insert({id:"Arrontest14", pwd:"nectest14"}) ;5
account_gd.Insert({id:"achen1GDFSC", pwd:"nectest1"}) ;6
account_gd.Insert({id:"GDepark4334", pwd:"Nectest8"}) ;7
account_gd.Insert({id:"yygd793801", pwd:"nectest66"}) ;8

;MsgBox, account loaded
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Function;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Text_ReviewRN(name){
	content = 
	(
Hi %name%
Please help to perform the security review.
thanks.
	)

	return content
}


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Shortcut-Text;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;]d => datetime like 9/1/2005
:*:]d::
	FormatTime, CurrentDateTime,, MM/dd/yyyy  
	SendInput %CurrentDateTime%
return

;hrv+{tab}+[name]+{tab} => send out the text with name
:`t:hrv::
	Input, OutputVar,, {tab}
	if(OutputVar=="")
	{
		OutputVar := "Jack"
	}
	Send, % Text_ReviewRN(OutputVar)
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
^!q::
	InputBox, searchtext, Ticket No.:, input search text ,,,100
	if(searchtext=="")
		Return
	if(RegExMatch(searchtext,"^\d+$")>0)
	{
		searchtext =GD-%searchtext%
	}
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


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Shortcut-System;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;open cmd
+^c::
	IfWinActive, ahk_class CabinetWClass
	{
		ControlGetText, address, edit1, ahk_class CabinetWClass
		Run, cmd, %address%
	}
	else
	{
		Run, cmd
	}
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Script Itself;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;get the latest fro git
^+!u::
	Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "https://raw.githubusercontent.com/tianxin459/AutoHotKeyScript/master/ETAtScript.ahk"
Return

;edit script in git
^+!e::
	Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "https://github.com/tianxin459/AutoHotKeyScript/edit/master/ETAtScript.ahk"
Return



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Test;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!t::
	 MsgBox test
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Shortcut-SQL Server;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;** => top 10 *
#IfWinActive ahk_class wndclass_desked_gsk
:*:**::SendInput, top 10 *
return

;enable the ctrl+c/ctrl+v in cmd
#IfWinActive ahk_class ConsoleWindowClass
^C:: Click, Right
^V:: Click, Right
return

