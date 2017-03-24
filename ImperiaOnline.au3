;this is a bot for imperia online
;it works by using colors in the browser. location has since changed
;this version worked on the Yahoo games version, running on Chrome
;without favorite bars dispolayed
;
;
;

#Include <Chrome.au3>
#Include <Array.au3>
#Include<file.au3>
$SmtpServer = "smtp.gmail.com"              ; address for the smtp-server to use - REQUIRED
$FromName = "Bruno"                      ; name from who the email was sent
$FromAddress = "EMAIL" ; address from where the mail should come
$ToAddress = "EMAIL2TEXT@EMAIL.COM"   ; destination address of the email - REQUIRED
$Subject = "Imperia"                   ; subject from the email - can be anything you want it to be
$Body = "TestYahoob"                              ; the messagebody from the mail - can be left blank but then you get a blank mail
$AttachFiles = ""                       ; the file(s) you want to attach seperated with a ; (Semicolon) - leave blank if not needed
$CcAddress = "EMAIL@hotmail.com"       ; address for cc - leave blank if not needed
$BccAddress = "EMAIL@hotmail.com"     ; address for bcc - leave blank if not needed
$Importance = "Normal"                  ; Send message priority: "High", "Normal", "Low"
$Username = "EMAIL@gmail.com"                    ; username for the account used from where the mail gets sent - REQUIRED
$Password = "PASSWORD"                  ; password for the account used from where the mail gets sent - REQUIRED
$IPPort = 465                        ; port used for sending the mail
$ssl = 1                                ; enables/disables secure socket layer sending - put to 1 if using httpS
;~ $IPPort=465                          ; GMAIL port used for sending the mail
;~ $ssl=1                               ; GMAILenables/disables secure socket layer sending - put to 1 if using httpS

HotKeySet("{F2}", "Terminate")
Func Terminate()
    Exit
EndFunc

$attack = 0;

Local $arraySagaz[10];
$arraySagaz[0] = 0;
$arraySagaz[1] = 0;
$arraySagaz[2] = 0;
$arraySagaz[3] = 0;
$arraySagaz[4] = 0;
$arraySagaz[5] = 0;
$arraySagaz[6] = 0;
$arraySagaz[7] = 0;
$arraySagaz[8] = 0;
$arraySagaz[9] = 0;

Func Push()
	For $i = 0 to 9
		If $arraySagaz[$i] == 0 Then
			$arraySagaz[$i] = TimerInit();
			Return;
		EndIf
	Next
EndFunc


Func SetDefaultC()
	Send("c")
	Sleep(5000)
	$aCoord = PixelSearch(320,219,460,539,0x6C2615,0)
	;$aCoord = PixelSearch(320,219,460,539,0x994A00,0)
	If Not @error Then
		;MsgBox($MB_SYSTEMMODAL, "", $aCoord[0] & " " & $aCoord[1])
		MouseClick("left", $aCoord[0]+100, $aCoord[1]+30)
		Sleep(3000)
		MouseClick("left", $aCoord[0]+400, $aCoord[1]+65)
		Sleep(300)
		MouseClick("left", $aCoord[0]+300, $aCoord[1]+95)
		Sleep(1000)
		Send ("{ESCAPE}")

	Else
		$isBlue = $isBlue + 1
	EndIf
EndFunc



Func ReturnTime()
	If $attack > 0 Then
		Return 0
	EndIf
	For $i = 0 to 9
		If $arraySagaz[$i] <> 0 Then
			If TimerDiff($arraySagaz[$i]) > 265000 Then ;colony 1 to mp 1
			;If TimerDiff($arraySagaz[$i]) > 380000 Then ;capital to prov5
			;If TimerDiff($arraySagaz[$i]) > 50000 Then
			;If TimerDiff($arraySagaz[$i]) > 270000 Then


			MouseClick("left", 1487, 242)
			Sleep(3000)
			Local $cord1 = PixelSearch(833,300,900,950,0xFFFFFF,3)
			If Not @error Then
				Local $cord2 = PixelSearch($cord1[0]-80,$cord1[1]-20,$cord1[0]-20,$cord1[1]+20,0xFFFFFF,3)
				If Not @error Then
					MouseClick("left", $cord2[0], $cord2[1])
				Else
					MouseClick("left", $cord1[0], $cord1[1])
				EndIf

				$arraySagaz[$i] = 0;

			EndIf
			Send ("{ESCAPE}")
			EndIf
		EndIf
	Next
	Return 0;
EndFunc

Func Pop()
	Local $toRemove = 0;
	For $i = 1 to 9
		If $arraySagaz[$i] > 0 Then
			If TimerDiff($arraySagaz[$toRemove]) < TimerDiff($arraySagaz[$i]) Then
				$toRemove = $i;
			EndIf
		EndIf
	Next
	$arraySagaz[$toRemove] = 0;
EndFunc


Func RallyAllField()
	If $attack > 0 Then
		Return 0
	EndIf


	$aCoord = PixelSearch(320,219,460,539,0x6C2615,0)
	;$aCoord = PixelSearch(320,219,460,539,0x994A00,0)
	If Not @error Then
		;MsgBox($MB_SYSTEMMODAL, "", $aCoord[0] & " " & $aCoord[1])
		MouseClick("left", $aCoord[0]+574, $aCoord[1]+65)
		Sleep(1000)



		;Sleep(500)
		;MouseClick("left", $aCoord[0]+50, $aCoord[1]+160)
		;Sleep(500)
		;MouseClick("left", $aCoord[0]+30, $aCoord[1]+200)
		Sleep(500)
		$aCoord = PixelSearch(750,437,810,1020,0xF1ECDC,3)
		If Not @error Then
			PixelSearch(750,$aCoord[1]-5,810,$aCoord[1]+5,0x584032,3)
			;MsgBox($MB_SYSTEMMODAL, "", $aCoord[0] & " " & $aCoord[1])
			;MsgBox($MB_SYSTEMMODAL, "", "This is a message1.")
			Sleep(500)
			If Not @error Then
				PixelSearch($aCoord[0]-5,$aCoord[1]+40,$aCoord[0]+5,$aCoord[1]+80,0xAE9F83,3)
				If Not @error Then
					;MsgBox($MB_SYSTEMMODAL, "", "This is a message2.")
					$bCoord = PixelSearch(750,$aCoord[1]+50,810,$aCoord[1]+100,0xFC4B69A,3)
					If Not @error Then
						;MsgBox($MB_SYSTEMMODAL, "", "This is a message3.")
							;MsgBox($MB_SYSTEMMODAL, "", $bCoord[0] & " " & $bCoord[1])
							;MsgBox($MB_SYSTEMMODAL, "", $bCoord[0] & " " & $bCoord[1])
						;MsgBox($MB_SYSTEMMODAL, "", $bCoord[0])
						$bCoord = PixelSearch($bCoord[0]-60,$bCoord[1]-5,$bCoord[0]-40,$bCoord[1]+5,0xB1A286,3)
						If Not @error Then
							;MsgBox($MB_SYSTEMMODAL, "", "This is a message4.")



							$bCoord = PixelSearch(320,219,460,539,0x6C2615,0)
							If Not @error Then

								MouseClick("left", $bCoord[0]+453, $bCoord[1]+112)
								Sleep(500)
								MouseClick("left", $bCoord[0]+20, $bCoord[1]+60)
									;MsgBox($MB_SYSTEMMODAL, "", $aCoord[0] & " " & $aCoord[1])
							EndIf



							MouseClick("left", $aCoord[0], $aCoord[1])

							Sleep(5500)
							;PixelSearch(395,345,405,355,0xA1A08E,3)
							;If @error Then
							;	Push();
							;EndIf
						EndIf
					EndIf
				EndIf
			EndIf
		EndIf
	EndIf
	Sleep(1500)
EndFunc

Func RallyMinusCapital()
	If $attack > 0 Then
		Return 0
	EndIf


	$aCoord = PixelSearch(320,219,460,539,0x6C2615,0)
	;$aCoord = PixelSearch(320,219,460,539,0x994A00,0)
	If Not @error Then
		;MsgBox($MB_SYSTEMMODAL, "", $aCoord[0] & " " & $aCoord[1])
		MouseClick("left", $aCoord[0]+574, $aCoord[1]+65)
		Sleep(1000)



		;Sleep(500)
		;MouseClick("left", $aCoord[0]+50, $aCoord[1]+160)
		;Sleep(500)
		;MouseClick("left", $aCoord[0]+30, $aCoord[1]+200)
		Sleep(500)
		$aCoord = PixelSearch(750,437,810,1020,0xF1ECDC,3)
		If Not @error Then
			PixelSearch(750,$aCoord[1]-5,810,$aCoord[1]+5,0x584032,3)
			;MsgBox($MB_SYSTEMMODAL, "", $aCoord[0] & " " & $aCoord[1])
			;MsgBox($MB_SYSTEMMODAL, "", "This is a message1.")
			Sleep(500)
			If Not @error Then
				PixelSearch($aCoord[0]-5,$aCoord[1]+40,$aCoord[0]+5,1036,0xAE9F83,3)
				If Not @error Then
					;MsgBox($MB_SYSTEMMODAL, "", "This is a message2.")
					$bCoord = PixelSearch(750,$aCoord[1]+30,810,1020,0xF1ECDC,40)
					If Not @error Then
						;MsgBox($MB_SYSTEMMODAL, "", "This is a message3.")
							;MsgBox($MB_SYSTEMMODAL, "", $bCoord[0] & " " & $bCoord[1])
							;MsgBox($MB_SYSTEMMODAL, "", $bCoord[0] & " " & $bCoord[1])
						;MsgBox($MB_SYSTEMMODAL, "", $bCoord[0])
						$bCoord = PixelSearch($bCoord[0]-60,$bCoord[1]-5,$bCoord[0]-40,$bCoord[1]+5,0xBEAD8F,40)
						If Not @error Then
							;MsgBox($MB_SYSTEMMODAL, "", "This is a message4.")



							$bCoord = PixelSearch(360,388,405,420,0xC1B395,20)
							If Not @error Then
								MouseClick("left", $bCoord[0], $bCoord[1])
								Sleep(500)
								$bCoord = PixelSearch($bCoord[0]-28,$bCoord[1]+26,$bCoord[0],$bCoord[1]+55,0xC5B697,20)
								If Not @error Then
									MouseClick("left", $bCoord[0], $bCoord[1])
								EndIf

							EndIf

								;	MsgBox($MB_SYSTEMMODAL, "", $aCoord[0] & " " & $aCoord[1])




							MouseClick("left", $aCoord[0], $aCoord[1])

							Sleep(5500)
							;PixelSearch(395,345,405,355,0xA1A08E,3)
							;If @error Then
							;	Push();
							;EndIf
						EndIf
					EndIf
				EndIf
			EndIf
		EndIf
	EndIf
	Sleep(1500)
EndFunc


Func Reopen()
	Send("^w")
	Sleep(500)
	Send("^t")
	Sleep(500)
	Send("https://games.yahoo.com/game/imperia-online.html")
	Send("{ENTER}")
	Sleep(8000)
	MouseClick("left", 949, 450)
	MouseClick("left", 673, 663)
	Sleep(8000)
	Send ("{ESCAPE}")
	Send ("{ESCAPE}")

	;Colony()
	;P6();
	P3();


EndFunc

Func MoveFromCapitalTo5()
	If $attack > 0 Then
		Return 0
	EndIf
	Send("c")
	Sleep(3000)
	MouseClick("left", 831, 311)
	Sleep(2000)
	;$aCoord = PixelSearch(888,1005,898,1015,0x82816F,3)
	;$aCoord = PixelSearch(888,882,898,1015,0x907D63,3)
	$aCoord = PixelSearch(888,882,898,1015,0xCEC1A8,3)
	If Not @error Then
		;PixelSearch(888,$aCoord[1]-5,1015,$aCoord[1]+5,0x8F7A61,3)
		PixelSearch(888,$aCoord[1]-5,1015,$aCoord[1]+5,0x8E7960,3)
		If Not @error Then
			Send("c")
			Sleep(4000)
			MouseClick("left", 418, 738)
			Sleep(500)
			MouseClick("left", 497, 696, 2)
			Sleep(500)
			Send("{DELETE}")
			Sleep(500)
			;MouseClick("left", 438, 861)
			;Sleep(500)
			;MouseClick("left", 469, 831) #2
			MouseClick("left", 534, 823)
			Sleep(500)
			PixelSearch(888,$aCoord[1]-5,1015,$aCoord[1]+5,0x51392A,3)
			If Not @error Then
				MouseClick("left", 922,$aCoord[1])
				Push();
			EndIf
			Sleep(3500)
			Send("c")
			EndIf
	EndIf
EndFunc


Func MoveFromNotMP1ToMP1()
	If $attack > 0 Then
		Return 0
	EndIf
	Send("c")
	Sleep(3000)
	MouseClick("left", 831, 311)
	Sleep(2000)
	;$aCoord = PixelSearch(888,1005,898,1015,0x82816F,3)
	;$aCoord = PixelSearch(888,882,898,1015,0x907D63,3)
	$aCoord = PixelSearch(888,882,898,1015,0xCEC1A8,3)
	If Not @error Then
		;PixelSearch(888,$aCoord[1]-5,1015,$aCoord[1]+5,0x8F7A61,3)
		PixelSearch(888,$aCoord[1]-5,1015,$aCoord[1]+5,0x8E7960,3)
		If Not @error Then
			Send("c")
			Sleep(4000)
			MouseClick("left", 418, 738)
			Sleep(500)
			;MouseClick("left", 497, 696, 2)
			;Sleep(500) ;this removes the spies.
			;Send("{DELETE}")
			Sleep(500)
			;MouseClick("left", 438, 861)
			;Sleep(500)
			;MouseClick("left", 469, 831) #2
			MouseClick("left", 439, 896)
			Sleep(500)
			PixelSearch(888,$aCoord[1]-15,1030,$aCoord[1]+15,0x2d2d2d,3)
			If Not @error Then
				MouseClick("left", 922,$aCoord[1])
				Push();
			EndIf
			Sleep(3500)
			Send("c")
			EndIf
	EndIf
EndFunc

Func MoveP1234ToP5()
	If $attack > 0 Then
		Return 0
	EndIf
	Send("c")
	Sleep(3000)
	MouseClick("left", 831, 311)
	Sleep(2000)
	;$aCoord = PixelSearch(888,1005,898,1015,0x82816F,3)
	;$aCoord = PixelSearch(888,882,898,1015,0x907D63,3)
	$aCoord = PixelSearch(888,882,898,1015,0xCEC1A8,3)
	If Not @error Then
		;PixelSearch(888,$aCoord[1]-5,1015,$aCoord[1]+5,0x8F7A61,3)
		PixelSearch(888,$aCoord[1]-5,1015,$aCoord[1]+5,0x8E7960,3)
		If Not @error Then
			Send("c")
			Sleep(4000)
			MouseClick("left", 418, 738)
			Sleep(500)
			;MouseClick("left", 497, 696, 2)
			;Sleep(500) ;this removes the spies.
			;Send("{DELETE}")
			Sleep(500)
			;MouseClick("left", 438, 861)
			;Sleep(500)
			;MouseClick("left", 469, 831) #2
			MouseClick("left", 439, 896)
			Sleep(500)
			MouseClick("left", 531, 825)
			Sleep(500)
			PixelSearch(888,$aCoord[1]-15,1030,$aCoord[1]+15,0x2d2d2d,3)
			If Not @error Then
				MouseClick("left", 922,$aCoord[1])
				Push();
			EndIf
			Sleep(3500)
			Send("c")
			EndIf
	EndIf
EndFunc

Func Colony()
	PixelSearch (65, 601, 69, 605, 0x0531A5, 3)
	If @error Then
		PixelSearch(58, 599, 62, 603, 0x7AA807, 3)
		If @error Then
			MouseClick("left", 63, 603)
			Sleep(1500)
			MouseClick("left", 154, 608)

		EndIf


	EndIf

EndFunc


Func P6()

			MouseClick("left", 63, 603)
			Sleep(1500)
			MouseClick("left", 400, 425)


EndFunc


Func Camp()
	Local $tv1 = WinActivate ( "Message from uPantcho")
While $tv1 > 0
	;MouseClick("left", 1141, 560)
	Send ("{SPACE}")
	;SoundPlay("C:\alert.mp3")
	$tv1 = WinActivate ( "Message from uPantcho")
WEnd

EndFunc

Func P3()

			MouseClick("left", 63, 603)
			Sleep(1500)
			MouseClick("left", 252, 427)


EndFunc


;Sleep(7000)
;	MouseClick("left", 743, 854,8)


$tv = WinActivate ( "Imperia Online")
;Sleep(60000)
Local $spy = 0
Local $isBlue = 0
Local $blueSent = 0
While 1 < 2

Local $tv = WinActivate ( "Sponsored session")
While $tv > 0
	;MouseClick("left", 1141, 560)
	Send ("{SPACE}")

	Sleep(3000)
	$tv = WinActivate ( "Sponsored session")
WEnd

$tv = WinActivate ( "Session timeout!")
While $tv > 0
	;MouseClick("left", 1141, 560)
	Send ("{SPACE}")

	Sleep(3000)
	$tv = WinActivate ( "Session timeout!")
WEnd

Camp()


$tv = WinActivate ( "Imperia Online")
If $tv > 0 Then
Sleep(2000)
	Local $aCoord;
	Local $bCoord;

RallyAllField()
	;$aCoord = PixelSearch(320,219,460,539,0x6C2615,0)
	;If Not @error Then
	;	MsgBox($MB_SYSTEMMODAL, "", $aCoord[0] & " " & $aCoord[1])
	;EndIf




	PixelSearch (552, 383, 555, 385, 0xF9BF42, 3)
	If Not @error Then
		Reopen()




	EndIf



	Global $oMyRet[2]
	Global $oMyError = ObjEvent("AutoIt.Error", "MyErrFunc")
	;$rc = _INetSmtpMailCom($SmtpServer, $FromName, $FromAddress, $ToAddress, $Subject, $Body, $AttachFiles, $CcAddress, $BccAddress, $Importance, $Username, $Password, $IPPort, $ssl)
	If @error Then
		;MsgBox(0, "Error sending message", "Error code:" & @error & "  Description:" & $rc)
	EndIf

	Sleep(4000)
	;Send("b")
	MouseClick("left", 1539, 894)
	Sleep(5000)
	$aCoord = PixelSearch (1131, 297, 1131, 545, 0x573E2F, 5)
	If Not @error Then
		MouseClick("left", 1129, $aCoord[1])
	EndIf
	Sleep(500)
	Send ("{ESCAPE}")
	Send ("{ESCAPE}")
	Send ("{ESCAPE}")

Camp()

	$aCoord = PixelSearch(1350,225,1506,258,0xFF6630,5)
	If Not @error Then
		;MouseClick("left", 1129, 341)
		;MsgBox($MB_SYSTEMMODAL, "", $aCoord[0] & "," & $aCoord[1])
		$bCoord = PixelSearch($aCoord[0]-2,$aCoord[1]+18,$aCoord[0]+2,$aCoord[1]+22,0xF41603,5)
		If Not @error Then
			$rc = _INetSmtpMailCom($SmtpServer, $FromName, $FromAddress, $ToAddress, "attack", $aCoord[0] & "," & $aCoord[1], $AttachFiles, $CcAddress, $BccAddress, $Importance, $Username, $Password, $IPPort, $ssl)
			SoundPlay("C:\alert.mp3")
			$attack = 1
		Else
			$attack = 0
		EndIf
	Else
			$attack = 0
	EndIf

Camp()
	;$aCoord = PixelSearch(1350,225,1506,258,0xFF6630,5)
	;If Not @error Then
		;MouseClick("left", 1129, 341)
	;	$rc = _INetSmtpMailCom($SmtpServer, $FromName, $FromAddress, $ToAddress, "attack", $aCoord[0] & "," & $aCoord[1], $AttachFiles, $CcAddress, $BccAddress, $Importance, $Username, $Password, $IPPort, $ssl)
	;EndIf

	$aCoord = PixelSearch(1350,225,1506,258,0x0336EE,5)
	If @error Then
		$isBlue = $isBlue + 1
	Else
		$isBlue = 0
		 ReturnTime();

	EndIf

	$aCoord = PixelSearch(199,169,203,173,0xCDCCCB,2)
	If Not @error Then
		;MouseClick("left", 1129, 341)
		;MsgBox($MB_SYSTEMMODAL, "", "This is a message1.")
		If $spy == 0 Then
			$spy = 1
			$rc = _INetSmtpMailCom($SmtpServer, $FromName, $FromAddress, $ToAddress, "spy", $aCoord[0] & "," & $aCoord[1], $AttachFiles, $CcAddress, $BccAddress, $Importance, $Username, $Password, $IPPort, $ssl)
		EndIf

	EndIf
	;MsgBox($MB_SYSTEMMODAL, "", "This is a message2.")

	Send ("{ESCAPE}")


	SetDefaultC()

Camp()
	ReturnTime();


	;MoveFromCapitalTo5();
	;MoveFromColonyToMP1();
	MoveP1234ToP5();

	;Sleep(4000)
	;MouseClick("left", 908, 311)

	Sleep(2000)
	ReturnTime();
	Sleep(2000)
Camp()

	Send("c")
	Sleep(4000)
	MouseClick("left", 738, 311)
	Sleep(500)
	MouseClick("left", 618, 338)
	Sleep(500)
	Send ("{ESCAPE}")
	Send ("{ESCAPE}")

	$aCoord = PixelSearch(1350,225,1506,258,0x0336EE,5)
	If Not @error Then
		$isBlue = 0
		ReturnTime();


	Else
		$isBlue = $isBlue + 1
	EndIf
Camp()
	Send("c")
	Sleep(2000)
	RallyAllField()
	Send ("{ESCAPE}")
	Send ("{ESCAPE}")

	If $isBlue > 10 Then
		Reopen()



		SetDefaultC()
		Send("c")
		Sleep(1000)

		RallyAllField()

		If $isBlue > 15 Then
			If $blueSent == 0 Then
				;$blueSent = 0
				$isBlue = 2
				$rc = _INetSmtpMailCom($SmtpServer, $FromName, $FromAddress, $ToAddress, "bluefail", "lol", $AttachFiles, $CcAddress, $BccAddress, $Importance, $Username, $Password, $IPPort, $ssl)
				SoundPlay("C:\alert.mp3")
			EndIf
		EndIf
	EndIf


Camp()
	Sleep(5000)

Else
	$rc = _INetSmtpMailCom($SmtpServer, $FromName, $FromAddress, $ToAddress, "terminated", "noOPEN", $AttachFiles, $CcAddress, $BccAddress, $Importance, $Username, $Password, $IPPort, $ssl)
	Sleep(30000)
	SoundPlay("C:\alert.mp3")
EndIf
WEnd






;
; The UDF
Func _INetSmtpMailCom($s_SmtpServer, $s_FromName, $s_FromAddress, $s_ToAddress, $s_Subject = "", $as_Body = "", $s_AttachFiles = "", $s_CcAddress = "", $s_BccAddress = "", $s_Importance="Normal", $s_Username = "", $s_Password = "", $IPPort = 25, $ssl = 0)
    Local $objEmail = ObjCreate("CDO.Message")
    $objEmail.From = '"' & $s_FromName & '" <' & $s_FromAddress & '>'
    $objEmail.To = $s_ToAddress
    Local $i_Error = 0
    Local $i_Error_desciption = ""
    If $s_CcAddress <> "" Then $objEmail.Cc = $s_CcAddress
    If $s_BccAddress <> "" Then $objEmail.Bcc = $s_BccAddress
    $objEmail.Subject = $s_Subject
    If StringInStr($as_Body, "<") And StringInStr($as_Body, ">") Then
        $objEmail.HTMLBody = $as_Body
    Else
        $objEmail.Textbody = $as_Body & @CRLF
    EndIf
    If $s_AttachFiles <> "" Then
        Local $S_Files2Attach = StringSplit($s_AttachFiles, ";")
        For $x = 1 To $S_Files2Attach[0]
            $S_Files2Attach[$x] = _PathFull($S_Files2Attach[$x])
;~          ConsoleWrite('@@ Debug : $S_Files2Attach[$x] = ' & $S_Files2Attach[$x] & @LF & '>Error code: ' & @error & @LF) ;### Debug Console
            If FileExists($S_Files2Attach[$x]) Then
                ConsoleWrite('+> File attachment added: ' & $S_Files2Attach[$x] & @LF)
                $objEmail.AddAttachment($S_Files2Attach[$x])
            Else
                ConsoleWrite('!> File not found to attach: ' & $S_Files2Attach[$x] & @LF)
                SetError(1)
                Return 0
            EndIf
        Next
    EndIf
    $objEmail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
    $objEmail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserver") = $s_SmtpServer
    If Number($IPPort) = 0 then $IPPort = 25
    $objEmail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = $IPPort
    ;Authenticated SMTP
    If $s_Username <> "" Then
        $objEmail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1
        $objEmail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusername") = $s_Username
        $objEmail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendpassword") = $s_Password
    EndIf
    If $ssl Then
        $objEmail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = True
    EndIf
    ;Update settings
    $objEmail.Configuration.Fields.Update
    ; Set Email Importance
    Switch $s_Importance
        Case "High"
            $objEmail.Fields.Item ("urn:schemas:mailheader:Importance") = "High"
        Case "Normal"
            $objEmail.Fields.Item ("urn:schemas:mailheader:Importance") = "Normal"
        Case "Low"
            $objEmail.Fields.Item ("urn:schemas:mailheader:Importance") = "Low"
    EndSwitch
    $objEmail.Fields.Update
    ; Sent the Message
    $objEmail.Send
    If @error Then
        SetError(2)
        Return $oMyRet[1]
    EndIf
    $objEmail=""
EndFunc   ;==>_INetSmtpMailCom
;
;
; Com Error Handler
Func MyErrFunc()
    $HexNumber = Hex($oMyError.number, 8)
    $oMyRet[0] = $HexNumber
    $oMyRet[1] = StringStripWS($oMyError.description, 3)
    ConsoleWrite("### COM Error !  Number: " & $HexNumber & "   ScriptLine: " & $oMyError.scriptline & "   Description:" & $oMyRet[1] & @LF)
    SetError(1); something to check for when this function returns
    Return
EndFunc   ;==>MyErrFunc



