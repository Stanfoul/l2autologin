#Region INCLUDE
#include <AVIConstants.au3>
#include <GuiConstantsEx.au3>
#include <TreeViewConstants.au3>
#include <WindowsConstants.au3>
#include <StaticConstants.au3>
#include <IE.au3>
#include <EditConstants.au3>
#EndRegion INCLUDE

#Region GUI
GUICreate("Lineage2 classic запускатр", 400, 400)
GUISetIcon(@SystemDir & "\mspaint.exe", 0)
#EndRegion GUI
$sPath_ini = @ScriptDir & "\settings.ini"

$sReadLog = IniRead($sPath_ini, "Window1", "login", 1)
$sReadPass = IniRead($sPath_ini, "Window1", "password", 1)
$sReadDelay = IniRead($sPath_ini, "Window1", "delay", 1)

$sReadLog2 = IniRead($sPath_ini, "Window2", "login", 1)
$sReadPass2 = IniRead($sPath_ini, "Window2", "password", 1)
$sReadDelay2 = IniRead($sPath_ini, "Window2", "delay", 1)

$sReadLog3 = IniRead($sPath_ini, "Window3", "login", 1)
$sReadPass3 = IniRead($sPath_ini, "Window3", "password", 1)
$sReadDelay3 = IniRead($sPath_ini, "Window3", "delay", 1)

$sReadLog4 = IniRead($sPath_ini, "Window4", "login", 1)
$sReadPass4 = IniRead($sPath_ini, "Window4", "password", 1)
$sReadDelay4 = IniRead($sPath_ini, "Window4", "delay", 1)

$sReadLog5 = IniRead($sPath_ini, "Window5", "login", 1)
$sReadPass5 = IniRead($sPath_ini, "Window5", "password", 1)
$sReadDelay5 = IniRead($sPath_ini, "Window5", "delay", 1)

GUICtrlCreateTab(10, 10, 380, 380)

GUICtrlCreateTabItem("Окно 1")
GUICtrlCreateLabel('Логин:', 15, 35, 150, 17, $SS_LEFT)
Global $loginInput = GUICtrlCreateInput('', 15, 60, 360, 20, -1, $WS_EX_STATICEDGE)
GUICtrlSetData(-1, $sReadLog)
GUICtrlCreateLabel('Пароль:', 15, 85, 150, 17, $SS_LEFT)
Global $passwordInput = GUICtrlCreateInput('', 15, 110, 360, 20, BitOR($ES_AUTOHSCROLL,$ES_PASSWORD))
GUICtrlSetData(-1, $sReadPass)
GUICtrlCreateLabel('Задержка перед нажатием "Играть"', 15, 135, 200, 17, $SS_LEFT)
Global $pause = GUICtrlCreateSlider(15, 160, 200, 20)
GUICtrlSetLimit(-1, 5000, 0) ; change min/max value
GUICtrlSetData(-1, $sReadDelay)
Global $slider = GUICtrlCreateInput('', 210, 160, 35, 20, BitOR($ES_AUTOHSCROLL,$ES_READONLY))
GUICtrlSetData(-1, $sReadDelay)
Global $CheckBox = GUICtrlCreateCheckbox("Запомнить данные", 15, 185, 120, 20)
$Button_1 = GUICtrlCreateButton("Войти", 15, 210, 120)

GUICtrlCreateTabItem("Окно 2")
GUICtrlCreateLabel('Логин:', 15, 35, 150, 17, $SS_LEFT)
Global $loginInput2 = GUICtrlCreateInput('', 15, 60, 360, 20, -1, $WS_EX_STATICEDGE)
GUICtrlSetData(-1, $sReadLog2)
GUICtrlCreateLabel('Пароль:', 15, 85, 150, 17, $SS_LEFT)
Global $passwordInput2 = GUICtrlCreateInput('', 15, 110, 360, 20, BitOR($ES_AUTOHSCROLL,$ES_PASSWORD))
GUICtrlSetData(-1, $sReadPass2)
GUICtrlCreateLabel('Задержка перед нажатием "Играть"', 15, 135, 200, 17, $SS_LEFT)
Global $pause2 = GUICtrlCreateSlider(15, 160, 200, 20)
GUICtrlSetLimit(-1, 5000, 0) ; change min/max value
GUICtrlSetData(-1, $sReadDelay2)
Global $slider2 = GUICtrlCreateInput('', 210, 160, 35, 20, BitOR($ES_AUTOHSCROLL,$ES_READONLY))
GUICtrlSetData(-1, $sReadDelay2)
Global $CheckBox2 = GUICtrlCreateCheckbox("Запомнить данные", 15, 185, 120, 20)
$Button_2 = GUICtrlCreateButton("Войти", 15, 210, 120)

GUICtrlCreateTabItem("Окно 3")
GUICtrlCreateLabel('Логин:', 15, 35, 150, 17, $SS_LEFT)
Global $loginInput3 = GUICtrlCreateInput('', 15, 60, 360, 20, -1, $WS_EX_STATICEDGE)
GUICtrlSetData(-1, $sReadLog3)
GUICtrlCreateLabel('Пароль:', 15, 85, 150, 17, $SS_LEFT)
Global $passwordInput3 = GUICtrlCreateInput('', 15, 110, 360, 20, BitOR($ES_AUTOHSCROLL,$ES_PASSWORD))
GUICtrlSetData(-1, $sReadPass3)
GUICtrlCreateLabel('Задержка перед нажатием "Играть"', 15, 135, 200, 17, $SS_LEFT)
Global $pause3 = GUICtrlCreateSlider(15, 160, 200, 20)
GUICtrlSetLimit(-1, 5000, 0) ; change min/max value
GUICtrlSetData(-1, $sReadDelay3)
Global $slider3 = GUICtrlCreateInput('', 210, 160, 35, 20, BitOR($ES_AUTOHSCROLL,$ES_READONLY))
GUICtrlSetData(-1, $sReadDelay3)
Global $CheckBox3 = GUICtrlCreateCheckbox("Запомнить данные", 15, 185, 120, 20)
$Button_3 = GUICtrlCreateButton("Войти", 15, 210, 120)

GUICtrlCreateTabItem("Окно 4")
GUICtrlCreateLabel('Логин:', 15, 35, 150, 17, $SS_LEFT)
Global $loginInput4 = GUICtrlCreateInput('', 15, 60, 360, 20, -1, $WS_EX_STATICEDGE)
GUICtrlSetData(-1, $sReadLog4)
GUICtrlCreateLabel('Пароль:', 15, 85, 150, 17, $SS_LEFT)
Global $passwordInput4 = GUICtrlCreateInput('', 15, 110, 360, 20, BitOR($ES_AUTOHSCROLL,$ES_PASSWORD))
GUICtrlSetData(-1, $sReadPass4)
GUICtrlCreateLabel('Задержка перед нажатием "Играть"', 15, 135, 200, 17, $SS_LEFT)
Global $pause4 = GUICtrlCreateSlider(15, 160, 200, 20)
GUICtrlSetLimit(-1, 5000, 0) ; change min/max value
GUICtrlSetData(-1, $sReadDelay4)
Global $slider4 = GUICtrlCreateInput('', 210, 160, 35, 20, BitOR($ES_AUTOHSCROLL,$ES_READONLY))
GUICtrlSetData(-1, $sReadDelay4)
Global $CheckBox4 = GUICtrlCreateCheckbox("Запомнить данные", 15, 185, 120, 20)
$Button_4 = GUICtrlCreateButton("Войти", 15, 210, 120)

GUICtrlCreateTabItem("Окно 5")
GUICtrlCreateLabel('Логин:', 15, 35, 150, 17, $SS_LEFT)
Global $loginInput5 = GUICtrlCreateInput('', 15, 60, 360, 20, -1, $WS_EX_STATICEDGE)
GUICtrlSetData(-1, $sReadLog5)
GUICtrlCreateLabel('Пароль:', 15, 85, 150, 17, $SS_LEFT)
Global $passwordInput5 = GUICtrlCreateInput('', 15, 110, 360, 20, BitOR($ES_AUTOHSCROLL,$ES_PASSWORD))
GUICtrlSetData(-1, $sReadPass5)
GUICtrlCreateLabel('Задержка перед нажатием "Играть"', 15, 135, 200, 17, $SS_LEFT)
Global $pause5 = GUICtrlCreateSlider(15, 160, 200, 20)
GUICtrlSetLimit(-1, 5000, 0) ; change min/max value
GUICtrlSetData(-1, $sReadDelay5)
Global $slider5 = GUICtrlCreateInput('', 210, 160, 35, 20, BitOR($ES_AUTOHSCROLL,$ES_READONLY))
GUICtrlSetData(-1, $sReadDelay5)
Global $CheckBox5 = GUICtrlCreateCheckbox("Запомнить данные", 15, 185, 120, 20)
$Button_5 = GUICtrlCreateButton("Войти", 15, 210, 120)



#Region GUI MESSAGE LOOP
GUISetState(@SW_SHOW)
While 1
	Switch GUIGetMsg()
		Case $GUI_EVENT_CLOSE
			ExitLoop
	    Case $pause
			 $sData = GUICtrlRead( $pause)
			 GUICtrlSetData($slider, $sData)
		  Case $pause2
			 $sData2 = GUICtrlRead($pause2)
			 GUICtrlSetData($slider2, $sData2)
		  Case $pause3
			 $sData3 = GUICtrlRead($pause3)
			 GUICtrlSetData($slider3, $sData3)
	      Case $pause4
			 $sData4 = GUICtrlRead($pause4)
			 GUICtrlSetData($slider4, $sData4)
          Case $pause5
			 $sData5 = GUICtrlRead($pause5)
			 GUICtrlSetData($slider5, $sData5)

		  Case $Button_1
			Local $log = GUICtrlRead($loginInput)
			Local $pass = GUICtrlRead($passwordInput)
			Local $delay = GUICtrlRead($pause)
			If GUICtrlRead($Checkbox) == $GUI_CHECKED Then
			IniWrite($sPath_ini, "Window1", "login", $log)
			IniWrite($sPath_ini, "Window1", "password", $pass)
			IniWrite($sPath_ini, "Window1", "delay", $delay)
			EndIf
			Global $oIE = _IECreate("https://ru.4game.com/lineage2classic/play")
			_IELoadWait ($oIE)
			Local $exit = _IEGetObjById ($oIE, "userBar-link-Logout")
			_IEAction ($exit,"click")
			_IEQuit ($oIE)

			;Заходим под нужным
			Global $oIE1 = _IECreate("https://ru.4game.com/lineage2classic/play/?popupWidget=AuthPopupWidget")
			_IELoadWait ($oIE1)

			Local $login = _IEGetObjById ($oIE1, "AuthFormLogin")
			Local $password = _IEGetObjById ($oIE1, "AuthFormPassword")
			Local $button = _IEGetObjById($oIE1, "jsLoginPopupWidget__SignIn")
			_IEFormElementSetValue ($login, $log)
			_IEFormElementSetValue ($password, $pass)
			_IEAction ($password,"focus")
			Send("{ENTER}")
			_IEQuit ($oIE1)

			;Нажимаем кнопку играть
			Global $oIE2 = _IECreate("https://ru.4game.com/lineage2classic/play")
			_IELoadWait ($oIE2)
			Sleep($pause)
			Local $play = _IEGetObjById ($oIE2, "jsBtnPlay")
			_IEAction ($play,"click")
		 Send("{ENTER}")

		 Case $Button_2
			Local $log = GUICtrlRead($loginInput2)
			Local $pass = GUICtrlRead($passwordInput2)
			Local $delay = GUICtrlRead($pause2)
			If GUICtrlRead($Checkbox2) == $GUI_CHECKED Then
			IniWrite($sPath_ini, "Window2", "login", $log)
			IniWrite($sPath_ini, "Window2", "password", $pass)
			IniWrite($sPath_ini, "Window2", "delay", $delay)
			EndIf
			Global $oIE = _IECreate("https://ru.4game.com/lineage2classic/play")
			_IELoadWait ($oIE)
			Local $exit = _IEGetObjById ($oIE, "userBar-link-Logout")
			_IEAction ($exit,"click")
			_IEQuit ($oIE)

			;Заходим под нужным
			Global $oIE1 = _IECreate("https://ru.4game.com/lineage2classic/play/?popupWidget=AuthPopupWidget")
			_IELoadWait ($oIE1)

			Local $login = _IEGetObjById ($oIE1, "AuthFormLogin")
			Local $password = _IEGetObjById ($oIE1, "AuthFormPassword")
			Local $button = _IEGetObjById($oIE1, "jsLoginPopupWidget__SignIn")
			_IEFormElementSetValue ($login, $log)
			_IEFormElementSetValue ($password, $pass)
			_IEAction ($password,"focus")
			Send("{ENTER}")
			_IEQuit ($oIE1)

			;Нажимаем кнопку играть
			Global $oIE2 = _IECreate("https://ru.4game.com/lineage2classic/play")
			_IELoadWait ($oIE2)
			Sleep($pause2)
			Local $play = _IEGetObjById ($oIE2, "jsBtnPlay")
			_IEAction ($play,"click")
		 Send("{ENTER}")

		 Case $Button_3
			Local $log = GUICtrlRead($loginInput3)
			Local $pass = GUICtrlRead($passwordInput3)
			Local $delay = GUICtrlRead($pause3)
			If GUICtrlRead($Checkbox3) == $GUI_CHECKED Then
			IniWrite($sPath_ini, "Window3", "login", $log)
			IniWrite($sPath_ini, "Window3", "password", $pass)
			IniWrite($sPath_ini, "Window3", "delay", $delay)
			EndIf
			Global $oIE = _IECreate("https://ru.4game.com/lineage2classic/play")
			_IELoadWait ($oIE)
			Local $exit = _IEGetObjById ($oIE, "userBar-link-Logout")
			_IEAction ($exit,"click")
			_IEQuit ($oIE)

			;Заходим под нужным
			Global $oIE1 = _IECreate("https://ru.4game.com/lineage2classic/play/?popupWidget=AuthPopupWidget")
			_IELoadWait ($oIE1)

			Local $login = _IEGetObjById ($oIE1, "AuthFormLogin")
			Local $password = _IEGetObjById ($oIE1, "AuthFormPassword")
			Local $button = _IEGetObjById($oIE1, "jsLoginPopupWidget__SignIn")
			_IEFormElementSetValue ($login, $log)
			_IEFormElementSetValue ($password, $pass)
			_IEAction ($password,"focus")
			Send("{ENTER}")
			_IEQuit ($oIE1)

			;Нажимаем кнопку играть
			Global $oIE2 = _IECreate("https://ru.4game.com/lineage2classic/play")
			_IELoadWait ($oIE2)
			Sleep($pause3)
			Local $play = _IEGetObjById ($oIE2, "jsBtnPlay")
			_IEAction ($play,"click")
		 Send("{ENTER}")

		 Case $Button_4
			Local $log = GUICtrlRead($loginInput4)
			Local $pass = GUICtrlRead($passwordInput4)
			Local $delay = GUICtrlRead($pause4)
			If GUICtrlRead($Checkbox4) == $GUI_CHECKED Then
			IniWrite($sPath_ini, "Window4", "login", $log)
			IniWrite($sPath_ini, "Window4", "password", $pass)
			IniWrite($sPath_ini, "Window4", "delay", $delay)
			EndIf
			Global $oIE = _IECreate("https://ru.4game.com/lineage2classic/play")
			_IELoadWait ($oIE)
			Local $exit = _IEGetObjById ($oIE, "userBar-link-Logout")
			_IEAction ($exit,"click")
			_IEQuit ($oIE)

			;Заходим под нужным
			Global $oIE1 = _IECreate("https://ru.4game.com/lineage2classic/play/?popupWidget=AuthPopupWidget")
			_IELoadWait ($oIE1)

			Local $login = _IEGetObjById ($oIE1, "AuthFormLogin")
			Local $password = _IEGetObjById ($oIE1, "AuthFormPassword")
			Local $button = _IEGetObjById($oIE1, "jsLoginPopupWidget__SignIn")
			_IEFormElementSetValue ($login, $log)
			_IEFormElementSetValue ($password, $pass)
			_IEAction ($password,"focus")
			Send("{ENTER}")
			_IEQuit ($oIE1)

			;Нажимаем кнопку играть
			Global $oIE2 = _IECreate("https://ru.4game.com/lineage2classic/play")
			_IELoadWait ($oIE2)
			Sleep($pause4)
			Local $play = _IEGetObjById ($oIE2, "jsBtnPlay")
			_IEAction ($play,"click")
		 Send("{ENTER}")

		 Case $Button_5
			Local $log = GUICtrlRead($loginInput5)
			Local $pass = GUICtrlRead($passwordInput5)
			Local $delay = GUICtrlRead($pause5)
			If GUICtrlRead($Checkbox5) == $GUI_CHECKED Then
			IniWrite($sPath_ini, "Window5", "login", $log)
			IniWrite($sPath_ini, "Window5", "password", $pass)
			IniWrite($sPath_ini, "Window5", "delay", $delay)
			EndIf
			Global $oIE = _IECreate("https://ru.4game.com/lineage2classic/play")
			_IELoadWait ($oIE)
			Local $exit = _IEGetObjById ($oIE, "userBar-link-Logout")
			_IEAction ($exit,"click")
			_IEQuit ($oIE)

			;Заходим под нужным
			Global $oIE1 = _IECreate("https://ru.4game.com/lineage2classic/play/?popupWidget=AuthPopupWidget")
			_IELoadWait ($oIE1)

			Local $login = _IEGetObjById ($oIE1, "AuthFormLogin")
			Local $password = _IEGetObjById ($oIE1, "AuthFormPassword")
			Local $button = _IEGetObjById($oIE1, "jsLoginPopupWidget__SignIn")
			_IEFormElementSetValue ($login, $log)
			_IEFormElementSetValue ($password, $pass)
			_IEAction ($password,"focus")
			Send("{ENTER}")
			_IEQuit ($oIE1)

			;Нажимаем кнопку играть
			Global $oIE2 = _IECreate("https://ru.4game.com/lineage2classic/play")
			_IELoadWait ($oIE2)
			Sleep($pause3)
			Local $play = _IEGetObjById ($oIE2, "jsBtnPlay")
			_IEAction ($play,"click")
		 Send("{ENTER}")


	EndSwitch
WEnd

GUIDelete()
#EndRegion GUI MESSAGE LOOP
