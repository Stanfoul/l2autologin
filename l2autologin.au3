#include <IE.au3>

Call ("signIn")

Func signIn ()
;Заходим на сайт и разлогиниваемся текущим пользователем
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
_IEFormElementSetValue ($login, "m.pareev@yandex.ru")
_IEFormElementSetValue ($password, "None724707")
Sleep(4000)
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


EndFunc