;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Readme - Shortcut;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;{Alt}+{a} => chose a line

;{ctrl}+{shift}+{g} => open google
;{alt}+{g} => google current selected text
;{ctrl}+{shift}+{b} => open google
;{alt}+{b} => baidu current selected text
;{ctrl}+{alt}+{q} => open ticket Jira/RN
;(greendot.com){ctrl}+{shift}+{x} > {1-9} => input userid/pwd in greendot.com 

;{ctrl}+{shift}+{c} => open cmd in current folder
;(CMD){ctrl}+{c} => copy selected text
;(CMD){ctrl}+{v} => paste copied text
;{alt}+{shift}+{alt}+{p} => save screenshot for hpscan 


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Readme - HotString;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;{]}{d} => datetime MM/dd/yyyy
;(SQL Server){*}{*} => enter:top 10 * 
;(jira){c}{c}{c} => enter:cc ....
;{]}{r}{v}{tab} > [name]{tab} => enter: text with [name]



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Global-Var;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
account_gd := []"C:\Program Files\Sublime Text 3\sublime_text.exe"
account_gd.Insert({id:"GDAA31202140",pwd:"NECTESTAU0"}) ;1
account_gd.Insert({id:"swntest01", pwd:"nectest01"}) ;2
account_gd.Insert({id:"PREP3296364", pwd:"NECTESTAU0"}) ;3
account_gd.Insert({id:"rgGD03", pwd:"nectestate01"}) ;4
account_gd.Insert({id:"Arrontest14", pwd:"nectest14"}) ;5
account_gd.Insert({id:"achen1GDFSC", pwd:"nectest1"}) ;6
account_gd.Insert({id:"GDepark4334", pwd:"Nectest8"}) ;7
account_gd.Insert({id:"yygd793801", pwd:"nectest66"}) ;8


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

Text_ReviewCC(){
	content = 
	(
cc [~snellaiyappan], [~sperumal], [~efeigelstock], [~xwang], [~jstabile], [~ddong], [~jxu2], [~kli1], [~ewang2], [~wzhao], [~markyuan]
	)

	return content
}


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Shortcut-Text;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;]d => datetime like 9/1/2005
:*:]d::
	FormatTime, CurrentDateTime,, MM/dd/yyyy  
	SendInput %CurrentDateTime%
return


;{]}{r}{v}+{tab}+[name]+{tab} => send out the text with name
:`t:]rv::
	Input, OutputVar,, {tab}
	if(OutputVar=="")
	{
		OutputVar := "Jack"
	}
	Send, % Text_ReviewRN(OutputVar)
Return

;]plmk::
:*:]plmk:: Please let me know if you have any concerns.{enter}{enter}Thanks.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Shortcut-Edit;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;{Alt}+{a} => chose a line
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
	if(RegExMatch(searchtext,"^\d+$")>0) ; gd ticket
	{
		searchtext =GD-%searchtext%
		Run "https://pd/browse/%searchtext%"
	}
	else if(RegExMatch(searchtext,"^SD-\d+$")>0) ; sd ticket
	{
		Run "https://sd/browse/%searchtext%"
	}
	else ; other storykind
	{
		Run "https://pd/browse/%searchtext%"
	}
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Shortcut-GDSite;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
^+x::
	Input, index, L1 M
	WinGetTitle, title, A
	targetText := "Account Login"
	inforText := "Green Dot | Personal Info"
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

^!x::
	WinGetTitle, title, A
	personalinforText := "Green Dot | Personal Info"
	IfInString, title, %personalinforText%
		Send, Gordon{tab} ;firstname	
		Send, James{tab} ;lastname
		Send, 3465{space}E{space}Foothill{space}Blvd{tab} ;street
		Send, Ste{space}200{tab} ;apt
		Send, Pasadena{tab} ;city
		Send, CA{tab} ;state
		Send, 91107{tab} ;zip
		Send, 6266666667{tab}{tab} ;phone
		Send, ellis.tian@greendot.com{tab} ;email
		Send, 101000002{tab} ;ssn
		Send, 12121984{tab} ;dob
		Send, 1212{tab} ;pin
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

;save screenshot for hpscan
^+!p::
	dirPfolder = C:\Users\etian\Desktop\Works\
	FormatTime, CurrentDateTime,, yyyyMMdd  
	InputBox, strComponent, Component:, input Component text ,,,100
	Run MSPAINT
	sleep 500
	Send, ^v
	sleep 500
	Send, ^s
	Winwait, Save As,,3
	if ErrorLevel 
		Return
	SendInput %dirfolder%hpscan_%strComponent%_%CurrentDateTime%.png
	sleep 500
	Send, !s
	Winwait, Confirm Save As,,3
	if ErrorLevel 
		Return
	Send, !y
	sleep 1000
	ifWinExist, hpscan_%strComponent%_%CurrentDateTime%.png - Paint
	{
		WinClose , hpscan_%strComponent%_%CurrentDateTime%.png - Paint
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



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Shortcut-App wise;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;** => top 10 *
#IfWinActive ahk_class wndclass_desked_gsk
:*:**:: top 20 *{Space}
return

;enable the ctrl+c/ctrl+v in cmd
#IfWinActive ahk_class ConsoleWindowClass
^C:: Click, Right
^V:: Click, Right
return

;  SendInput %Text_ReviewCC()% 
#IfWinActive ahk_class MozillaWindowClass 
:*:ccc::
	Send, % Text_ReviewCC()
return

#IfWinActive ahk_class IEFrame 
:*:ccc::
	Send, % Text_ReviewCC()
return

#IfWinActive ahk_exe chrome.exe
:*:ccc::
	Send, % Text_ReviewCC()
return

#IfWinActive 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Test;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
~!t::
	
Return
