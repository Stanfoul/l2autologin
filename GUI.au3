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

$sReadLog = IniRead($sPath_ini, "Login", "login", 1)
$sReadPass = IniRead($sPath_ini, "Login", "password", 1)
$sReadDelay = IniRead($sPath_ini, "Login", "delay", 1)

GUICtrlCreateLabel('Логин:', 10, 10, 150, 17, $SS_LEFT)
Global $loginInput = GUICtrlCreateInput('', 10, 35, 360, 20, -1, $WS_EX_STATICEDGE)
GUICtrlSetData(-1, $sReadLog)
GUICtrlCreateLabel('Пароль:', 10, 60, 150, 17, $SS_LEFT)
Global $passwordInput = GUICtrlCreateInput('', 10, 85, 360, 20, BitOR($ES_AUTOHSCROLL,$ES_PASSWORD))
GUICtrlSetData(-1, $sReadPass)
GUICtrlCreateLabel('Задержка перед нажатием "Играть"', 10, 110, 200, 17, $SS_LEFT)
Global $pause = GUICtrlCreateSlider(10, 135, 200, 20)
GUICtrlSetLimit(-1, 5000, 0) ; change min/max value
GUICtrlSetData(-1, $sReadDelay)
Global $slider = GUICtrlCreateInput('', 210, 135, 35, 20, BitOR($ES_AUTOHSCROLL,$ES_READONLY))
GUICtrlSetData(-1, $sReadDelay)


$Button_1 = GUICtrlCreateButton("Войти", 10, 160, 120)

#Region GUI MESSAGE LOOP
GUISetState(@SW_SHOW)
While 1
	Switch GUIGetMsg()
		Case $GUI_EVENT_CLOSE
			ExitLoop
	    Case $pause
			 $sData = GUICtrlRead( $pause)
			 GUICtrlSetData($slider, $sData)
		  Case $Button_1
			Local $log = GUICtrlRead($loginInput)
			Local $pass = GUICtrlRead($passwordInput)
			Local $delay = GUICtrlRead($pause)
			IniWrite($sPath_ini, "Login", "login", $log)
			IniWrite($sPath_ini, "Login", "password", $pass)
			IniWrite($sPath_ini, "Login", "delay", $delay)
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
			Sleep(4000)
			Local $play = _IEGetObjById ($oIE2, "jsBtnPlay")
			_IEAction ($play,"click")
		 Send("{ENTER}")

	EndSwitch
WEnd

GUIDelete()
#EndRegion GUI MESSAGE LOOP
