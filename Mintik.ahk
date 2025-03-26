#SingleInstance, Force
#UseHook
#NoEnv
SetWorkingDir  %A_AppData%\ahkadminconfig
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
#IfWinActive ahk_exe GTA5.exe

SplashTextoff
ListLines Off
Process, Priority, , A
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
reloadStatus = 0
DayANS = 0
WeekANS = 0
FormatTime, CurrentDate,, ddMM

Usefull = Полезное
Cheatsheet = Меню памятки

IfnotExist, %A_ScriptDir%\res
{
FileCreateDir, %A_ScriptDir%\res
}


IfnotExist, %A_ScriptDir%\res\0ONXv4a.png
{
URLDownloadToFile,https://i.imgur.com/0ONXv4a.png,%A_ScriptDir%\res\0ONXv4a.png
}
IfNotExist, %A_ScriptDir%\Punishment.txt 
{
URLDownloadToFile, https://jeazz.ucoz.net/ahk/admins/Punishment.txt,%A_ScriptDir%\Punishment.txt
}
IfnotExist, %A_ScriptDir%\res
{
FileCreateDir, %A_ScriptDir%\res
}

FileSetAttrib, +H, %A_ScriptDir%\res

Menu, Tray, add, Показать, Show,
Menu, Tray, Default, Показать,
Menu, Tray, add, Перезагрузить, Reload,
Menu, Tray, add, Скрыть, Hide,
Menu, Tray, add, Закрыть, Close,
Menu, Tray, NoStandard

IniRead, Week, %A_ScriptDir%\res\Settings.ini, ANS, Week
IniRead, CurrentDateT, %A_ScriptDir%\res\Settings.ini, ANS, CurrentDateT
if CurrentDateT=%CurrentDate%
{
IniRead, CurrentDateT, %A_ScriptDir%\res\Settings.ini, ANS, CurrentDateT
IniRead, DayANS, %A_ScriptDir%\res\Settings.ini, ANS, DayANS
}
else
{
    IniWrite, %CurrentDate%, %A_ScriptDir%\res\Settings.ini, ANS, CurrentDateT
    IniWrite, %DayANS%, %A_ScriptDir%\res\Settings.ini, ANS, DayANS
    IniRead, DayANS, %A_ScriptDir%\res\Settings.ini, ANS, DayANS
    IniRead, CurrentDateT, %A_ScriptDir%\res\Settings.ini, ANS, CurrentDateT
}
if Week=%A_YWeek%
{
IniRead, Week, %A_ScriptDir%\res\Settings.ini, ANS, Week
IniRead, WeekANS, %A_ScriptDir%\res\Settings.ini, ANS, WeekANS
}
else
{
    IniWrite, %A_YWeek%, %A_ScriptDir%\res\Settings.ini, ANS, Week
    IniWrite, %WeekANS%, %A_ScriptDir%\res\Settings.ini, ANS, WeekANS
    IniRead, WeekANS, %A_ScriptDir%\res\Settings.ini, ANS, WeekANS
    IniRead, Week, %A_ScriptDir%\res\Settings.ini, ANS, Week
}

IniRead, Radio1, %A_ScriptDir%\res\Settings.ini, Resolution, 1920x1080
IniRead, Radio2, %A_ScriptDir%\res\Settings.ini, Resolution, 1600x900
IniRead, Radio3, %A_ScriptDir%\res\Settings.ini, Resolution, 1680x1050
IniRead, Radio4, %A_ScriptDir%\res\Settings.ini, Resolution, 1366x768
IniRead, Radio5, %A_ScriptDir%\res\Settings.ini, Resolution, 1280x960
IniRead, Radio6, %A_ScriptDir%\res\Settings.ini, Resolution, 1920x10802
IniRead, Radio7, %A_ScriptDir%\res\Settings.ini, Resolution, 1280х1024
IniRead, Radio2k, %A_ScriptDir%\res\Settings.ini, Resolution, 2560x1440

IniRead, Radio8, %A_ScriptDir%\res\Settings.ini, Login Commands, /chide
IniRead, Radio9, %A_ScriptDir%\res\Settings.ini, Login Commands, /esp3
IniRead, Radio10, %A_ScriptDir%\res\Settings.ini, Login Commands, /dl
IniRead, Radio11, %A_ScriptDir%\res\Settings.ini, Login Commands, /zzdebug
IniRead, Radio12, %A_ScriptDir%\res\Settings.ini, Login Commands, /gm
IniRead, Radio13, %A_ScriptDir%\res\Settings.ini, Login Commands, /hidecheatinfo
IniRead, Radio14, %A_ScriptDir%\res\Settings.ini, Login Commands, /templeader
IniRead, Radio15, %A_ScriptDir%\res\Settings.ini, Login Commands, /advtoggle 0
IniRead, Radio16, %A_ScriptDir%\res\Settings.ini, Login Commands, /setweatherlocal clear

IniRead, key1, %A_ScriptDir%\res\Settings.ini, Binds, KEY1
IniRead, key2, %A_ScriptDir%\res\Settings.ini, Binds, KEY2
IniRead, key3, %A_ScriptDir%\res\Settings.ini, Binds, KEY3
IniRead, key4, %A_ScriptDir%\res\Settings.ini, Binds, KEY4
IniRead, key5, %A_ScriptDir%\res\Settings.ini, Binds, KEY5
IniRead, key6, %A_ScriptDir%\res\Settings.ini, Binds, KEY6
IniRead, key7, %A_ScriptDir%\res\Settings.ini, Binds, KEY7
IniRead, key8, %A_ScriptDir%\res\Settings.ini, Binds, KEY8
IniRead, key9, %A_ScriptDir%\res\Settings.ini, Binds, KEY9
IniRead, key10, %A_ScriptDir%\res\Settings.ini, Binds, KEY10
IniRead, key11, %A_ScriptDir%\res\Settings.ini, Binds, KEY11
IniRead, key12, %A_ScriptDir%\res\Settings.ini, Binds, KEY12
IniRead, key13, %A_ScriptDir%\res\Settings.ini, Binds, KEY13
IniRead, key14, %A_ScriptDir%\res\Settings.ini, Binds, KEY14
IniRead, key15, %A_ScriptDir%\res\Settings.ini, Binds, KEY15
IniRead, key16, %A_ScriptDir%\res\Settings.ini, Binds, KEY16
IniRead, key17, %A_ScriptDir%\res\Settings.ini, Binds, KEY17
IniRead, key18, %A_ScriptDir%\res\Settings.ini, Binds, KEY18
IniRead, key19, %A_ScriptDir%\res\Settings.ini, Binds, KEY19
IniRead, key20, %A_ScriptDir%\res\Settings.ini, Binds, KEY20

IniRead, dis, %A_ScriptDir%\res\Settings.ini, Discord, dis
IniRead, tag, %A_ScriptDir%\res\Settings.ini, Discord, tag
IniRead, gadis, %A_ScriptDir%\res\Settings.ini, Discord, gadis
IniRead, gatag, %A_ScriptDir%\res\Settings.ini, Discord, gatag
IniRead, zgadis, %A_ScriptDir%\res\Settings.ini, Discord, zgadis
IniRead, zgatag, %A_ScriptDir%\res\Settings.ini, Discord, zgatag

if dis=ERROR
{
IniWrite, Мой, %A_ScriptDir%\res\Settings.ini, Discord, dis
IniWrite, 0, %A_ScriptDir%\res\Settings.ini, Discord, tag
IniWrite, ГА, %A_ScriptDir%\res\Settings.ini, Discord, gadis
IniWrite, 0, %A_ScriptDir%\res\Settings.ini, Discord, gatag
IniWrite, ЗГА, %A_ScriptDir%\res\Settings.ini, Discord, zgadis
IniWrite, 0, %A_ScriptDir%\res\Settings.ini, Discord, zgatag
}

IniRead, X, %A_ScriptDir%\res\Settings.ini, Coords, X
IniRead, Y, %A_ScriptDir%\res\Settings.ini, Coords, Y
IniRead, X2, %A_ScriptDir%\res\Settings.ini, Coords, X2
IniRead, Y2, %A_ScriptDir%\res\Settings.ini, Coords, Y2
IniRead, Fraction, %A_ScriptDir%\res\Settings.ini, Fraction, Fraction
IniRead, Dimension, %A_ScriptDir%\res\Settings.ini, Dimension, Dimension

if X=ERROR
{
IniWrite, 0, %A_ScriptDir%\res\Settings.ini, Coords, X
IniWrite, 0, %A_ScriptDir%\res\Settings.ini, Coords, Y
IniWrite, 0, %A_ScriptDir%\res\Settings.ini, Coords, X2
IniWrite, 0, %A_ScriptDir%\res\Settings.ini, Coords, Y2
IniWrite, 222, %A_ScriptDir%\res\Settings.ini, Dimension, Dimension
IniWrite, 7, %A_ScriptDir%\res\Settings.ini, Fraction, Fraction
reload
}

;гуи счетчика
WinSet_Click_Through(I, T="254") {
IfWinExist, % "ahk_id " I
{
If (T == "Off")
{
WinSet, AlwaysOnTop, Off, % "ahk_id " I
WinSet, Transparent, Off, % "ahk_id " I
WinSet, ExStyle, -0x20, % "ahk_id " I
}
Else
{
WinSet, AlwaysOnTop, On, % "ahk_id " I
If(T < 0 || T > 254 || T == "On")
T := 254
WinSet, Transparent, % T, % "ahk_id " I
WinSet, ExStyle, +0x20, % "ahk_id " I
}
}
Else
Return 0
}
Gui, +LastFound +ToolWindow
ID := WinExist()
Gui, Show, NoActivate, Hide x0 y0 w0 h0, Overlay
WinSet_Click_Through(ID, "On")
GuiControl,, Un-Clickable
CustomColor := "#00FF00"
Gui, +LastFound +AlwaysOnTop -Caption +ToolWindow
Gui, Color, cRed

Gui, Font, s10
Gui, Font, q1
Gui, Font, w400
Gui, Add, Text, x9 vMyText cWhite, XXX, YYYY
Gui, Add, Text, x107 y7 vMyTotalR cWhite, XXXXXX, YYYYYY
Gui, Color, 1c2126
WinSet, TransColor, AAAAAA 170
GoSub, UpdateCounter1
Gui, Show, x%X% y%Y% w212 h30, Overlay

Hotkey, %KEY1%, Off, UseErrorLevel
Hotkey, %KEY1%, Reports, On, UseErrorLevel
Hotkey, %KEY2%, Off, UseErrorLevel
Hotkey, %KEY2%, delv, On, UseErrorLevel
Hotkey, %KEY3%, Off, UseErrorLevel
Hotkey, %KEY3%, gm, On, UseErrorLevel
Hotkey, %KEY4%, Off, UseErrorLevel
Hotkey, %KEY4%, vac, On, UseErrorLevel
Hotkey, %KEY5%, Off, UseErrorLevel
Hotkey, %KEY5%, mess, On, UseErrorLevel
Hotkey, %KEY6%, Off, UseErrorLevel
Hotkey, %KEY6%, dimcar, On, UseErrorLevel
Hotkey, %KEY7%, Off, UseErrorLevel
Hotkey, %KEY7%, gcar, On, UseErrorLevel
Hotkey, %KEY8%, Off, UseErrorLevel
Hotkey, %KEY8%, mtp, On, UseErrorLevel
Hotkey, %KEY9%, Off, UseErrorLevel
Hotkey, %KEY9%, repm, On, UseErrorLevel
Hotkey, %KEY10%, Off, UseErrorLevel
Hotkey, %KEY10%, rep, On, UseErrorLevel
Hotkey, %KEY11%, Off, UseErrorLevel
Hotkey, %KEY11%, vhod, On, UseErrorLevel
Hotkey, %KEY12%, Off, UseErrorLevel
Hotkey, %KEY12%, resc, On, UseErrorLevel
Hotkey, %KEY13%, Off, UseErrorLevel
Hotkey, %KEY13%, PunishmentHandler, On, UseErrorLevel
Hotkey, %KEY14%, Off, UseErrorLevel
Hotkey, %KEY14%, Cheatsheet, On, UseErrorLevel
Hotkey, %KEY15%, Off, UseErrorLevel
Hotkey, %KEY15%, gh, On, UseErrorLevel
Hotkey, %KEY16%, Off, UseErrorLevel
Hotkey, %KEY16%, chide, On, UseErrorLevel
Hotkey, %KEY17%, Off, UseErrorLevel
Hotkey, %KEY17%, zzdebug, On, UseErrorLevel
Hotkey, %KEY18%, Off, UseErrorLevel
Hotkey, %KEY18%, reshp, On, UseErrorLevel
Hotkey, %KEY19%, Off, UseErrorLevel
Hotkey, %KEY19%, killplayer, On, UseErrorLevel
Hotkey, %KEY20%, Off, UseErrorLevel
Hotkey, %KEY20%, f5, On, UseErrorLevel

;Общая инфа
Gui, Main: Add, Tab, x0 y0 w732 h400 , Хоткеи|Настройки
Gui, Main: -MaximizeBox
Gui, Main: -SysMenu
Gui, Main: Show, w732 h400, Admin.ahk by Mint
Gui, Main: Add, Button, x675 y2 w25 h16 ghide, —
Gui, Main: Add, Button, x705 y2 w25 h16 gClose, X
Gui, Main: Color, 313338
Gui, Main: Font,cwhite, 

Gui, Main: Add, Text, x12 y382 w62 h15 +0x200 +BackgroundTrans +border, ahk by Mint

;Левый блок кнопок
Gui, Main: Add, Button, x10 y128 w64 h21 gInfo , Инфо
Gui, Main: Add, Button, x10 y154 w64 h21 gCommandlist, Команды
Gui, Main: Add, Button, x10 y180 w64 h21 gPunish, Наказания
Gui, Main: Add, Button, x10 y206 w64 h21 gTeleports, Телепорты
Gui, Main: Add, Button, x658 y128 w64 h21 gchange, Обнова
Gui, Main: Add, Button, x658 y154 w64 h21 gds, Дискорд
Gui, Main: Add, Button, x10 y336 w64 h21 gSaveData, Сохранить
Gui, Main: Add, Button, x10 y362 w64 h21 gupturn, Обновить

;Верхние боксы
Gui, Main: Add, GroupBox, x246 y28 w50 h14 cA52A2A,
Gui, Main: Add, GroupBox, x504 y28 w100 h14 cA52A2A,
Gui, Main: Add, GroupBox, x658 y18 w66 h27 cA52A2A,
Gui, Main: Add, Text, x246 y28 w50 h14 +0x200, Бинды
Gui, Main: Add, Text, x504 y28 w100 h14 +0x200 , Команды при входе
Gui, Main: Add, Text, x668 y28 w50 h14 +0x200 , Динамик

;динамик
Gui, Main: Add, Edit, x658 y50 w33 h21 +Number vDinamic cblack, %Dinamic%
Gui, Main: Add, Button, x696 y53 w21 h15 gsavedata1, ✓

Gui, Main: Add, Hotkey, x90 y50 w48 h21 vHot1, %KEY1% ;F8
Gui, Main: Add, Hotkey, x90 y76 w48 h21 vHot2, %KEY2% ;Удалить машину
Gui, Main: Add, Hotkey, x90 y102 w48 h21 vHot3, %KEY3% ; gm 
Gui, Main: Add, Hotkey, x90 y128 w48 h21 vHot4, %KEY4% ; вакцина
Gui, Main: Add, Hotkey, x90 y154 w48 h21 vHot5, %KEY5% ; Убрать снег
Gui, Main: Add, Hotkey, x280 y258 w48 h21 vHot6, %KEY6% ; машина после воды
Gui, Main: Add, Hotkey, x90 y180 w48 h21 vHot7, %KEY7% ; getcar
Gui, Main: Add, Hotkey, x90 y206 w48 h21 vHot8, %KEY8% ; тп на метку
Gui, Main: Add, Hotkey, x90 y232 w48 h21 vHot9, %KEY9% ; -реп
Gui, Main: Add, Hotkey, x90 y258 w48 h21 vHot10, %KEY10% ; +1 репорт
Gui, Main: Add, Hotkey, x280 y206 w48 h21 vHot11, %KEY11% ; Команды при входе
Gui, Main: Add, Hotkey, x90 y284 w48 h21 vHot12, %KEY12% ;   rescue
Gui, Main: Add, Hotkey, x280 y76 w48 h21 vHot13, %KEY13% ; выдача 
Gui, Main: Add, Hotkey, x280 y284 w48 h21 vHot14, %KEY14% ; памятка
Gui, Main: Add, Hotkey, x280 y180 w48 h21 vHot15, %KEY15% ;  вкл выкл gh
Gui, Main: Add, Hotkey, x280 y102 w48 h21 vHot16, %KEY16% ; вкл выкл chide 
Gui, Main: Add, Hotkey, x280 y128 w48 h21 vHot17, %KEY17% ;  вкл выкл zzdebug
Gui, Main: Add, Hotkey, x280 y154 w48 h21 vHot18, %KEY18% ;  кил рес
Gui, Main: Add, Hotkey, x280 y50 w48 h21 vHot19, %KEY19% ; hp 0 
Gui, Main: Add, Hotkey, x280 y232 w48 h21 vHot20, %KEY20% ; фриткам

Gui, Main: Add, Text, x143 y53 w120 h14 +0x200, Открыть репорты
Gui, Main: Add, Text, x143 y79 w120 h14 +0x200, Проверка
Gui, Main: Add, Text, x143 y105 w120 h14 +0x200, Вкл/Выкл /gm
Gui, Main: Add, Text, x143 y131 w120 h14 +0x200, Вакцина
Gui, Main: Add, Text, x143 y157 w120 h14 +0x200, Убрать снег
Gui, Main: Add, Text, x143 y183 w120 h14 +0x200, ТП авто к себе
Gui, Main: Add, Text, x143 y209 w120 h14 +0x200, ТП на метку
Gui, Main: Add, Text, x143 y235 w120 h14 +0x200, Убрать -1 репорт
Gui, Main: Add, Text, x143 y261 w120 h14 +0x200, Добавить +1 репорт
Gui, Main: Add, Text, x143 y287 w120 h14 +0x200, Воскресить игрока
Gui, Main: Add, Text, x333 y287 w120 h14 +0x200, Памятка

Gui, Main: Add, Text, x333 y53 w120 h14 +0x200, Убить игрока
Gui, Main: Add, Text, x333 y79 w120 h14 +0x200, Выдача наказаний
Gui, Main: Add, Text, x333 y105 w120 h14 +0x200, Вкл/Выкл /chide
Gui, Main: Add, Text, x333 y131 w120 h14 +0x200, Вкл/Выкл /zzdebug
Gui, Main: Add, Text, x333 y160 w220 h14 +0x200, HP 0 + rescue
Gui, Main: Add, Text, x333 y183 w122 h14 +0x200, Телепорт игрока к себе
Gui, Main: Add, Text, x333 y209 w100 h14 +0x200 , Команды при входе
Gui, Main: Add, Text, x333 y235 w100 h14 +0x200 , Уйти в F5
Gui, Main: Add, Text, x333 y261 w104 h14 +0x200 , В разработке

;при входе
Gui, Main: Add, CheckBox, x474 y50 w120 h23 vRadio8 Checked%Radio8%, /chide
Gui, Main: Add, CheckBox, x474 y76 w120 h23 vRadio9 Checked%Radio9%, /esp3
Gui, Main: Add, CheckBox, x474 y102 w120 h23 vRadio10 Checked%Radio10%, /dl
Gui, Main: Add, CheckBox, x474 y128 w120 h23 vRadio11 Checked%Radio11%, /zzdebug
Gui, Main: Add, CheckBox, x474 y154 w120 h23 vRadio12 Checked%Radio12%, /gm
Gui, Main: Add, CheckBox, x474 y180 w120 h23 vRadio13 Checked%Radio13%, /hidecheatinfo
Gui, Main: Add, CheckBox, x474 y206 w120 h23 vRadio14 Checked%Radio14%, /templeader
Gui, Main: Add, CheckBox, x474 y232 w120 h23 vRadio15 Checked%Radio15%, /advtoggle 0
Gui, Main: Add, CheckBox, x474 y258 w120 h23 vRadio16 Checked%Radio16%, /setweatherlocal 

;настройки 
Gui, Main: Tab, 2
Gui, Main: Add, Button, x675 y2 w25 h16 ghide, —
Gui, Main: Add, Button, x705 y2 w25 h16 gClose, X
Gui, Main: Add, Picture, x193 y158, %A_ScriptDir%\res\0ONXv4a.png
Gui, Main: Add, GroupBox, x10 y18 w710 h27 cA52A2A,
Gui, Main: Add, GroupBox, x10 y150 w168 h27 cA52A2A,
Gui, Main: Add, Text, x44 y28 w120 h14 +0x200 , Разрешение экрана
Gui, Main: Add, Radio, x12 y50 w80 h23 Group vRadio2k Checked%Radio2k%, 2560x1440
Gui, Main: Add, Radio, x12 y76 w80 h23 vRadio1 Checked%Radio1%, 1920x1080
Gui, Main: Add, Radio, x114 y50 w80 h23 vRadio2 Checked%Radio2%, 1600x900
Gui, Main: Add, Radio, x12 y128 w80 h23 vRadio3 Checked%Radio3%, 1680x1050
Gui, Main: Add, Radio, x114 y128 w80 h23 vRadio4 Checked%Radio4%, 1366x768
Gui, Main: Add, Radio, x114 y102 w80 h23 vRadio5 Checked%Radio5%, 1280x960
Gui, Main: Add, Radio, x12 y102 w100 h23 vRadio6 Checked%Radio6%, 1920x1080 | 5:4
Gui, Main: Add, Radio, x114 y76 w80 h23 vRadio7 Checked%Radio7%, 1280x1024

Gui, Main: Add, Text, x212 y28 w120 h14 +0x200, Бизвар дименшен
Gui, Main: Add, Edit, x206 y50 w48 h21 vDimension +number cblack, %Dimension%
Gui, Main: Add, Text, x259 y53 w130 h14 +0x200, Дименшен

Gui, Main: Add, Text, x372 y28 w138 h14 +0x200 , Дискорды
Gui, Main: Add, Text, x440 y53 w115 h14 +0x200, Дискорд 
Gui, Main: Add, Edit, x370 y50 w65 h21 vdis cblack, %dis%

Gui, Main: Add, Text, x440 y79 w90 h14 +0x200 , Дискорд ГА
Gui, Main: Add, Edit, x370 y76 w65 h21 vgadis cblack, %gadis%

Gui, Main: Add, Text, x440 y105 w115 h14 +0x200, Дискорд зГА 
Gui, Main: Add, Edit, x370 y102 w65 h21 vzgadis cblack, %zgadis%


Gui, Main: Add, Text, x526 y28 w190 h14 +0x200 , Расположение счетчика/памятки
Gui, Main: Add, Text, x573 y53 w80 h14 +0x200, Координата X
Gui, Main: Add, Text, x573 y79 w80 h14 +0x200, Координата Y
Gui, Main: Add, Edit, x520 y50 w48 h21 vX +number cblack, %X%
Gui, Main: Add, Edit, x520 y76 w48 h21 vY +number cblack, %Y%

Gui, Main: Add, Text, x573 y105 w130 h14 +0x200, Координата X (Памятка)
Gui, Main: Add, Text, x573 y131 w140 h14 +0x200, Координата Y (Памятка)

Gui, Main: Add, Edit, x520 y102 w48 h21 vX2 +number cblack, %X2%
Gui, Main: Add, Edit, x520 y128 w48 h21 vY2 +number cblack, %Y2%

Gui, Main: Add, Text, x38 y160 w120 h14 +0x200, Временное лидерство
Gui, Main: Add, Text, x65 y185 w120 h14 +0x200, Номер фракции
Gui, Main: Add, Edit, x12 y182 w48 h21 vFraction +number cblack, %Fraction%

Gui, Main: Add, Button, x10 y310 w64 h21 gSaveData, Сохранить
Gui, Main: Add, Text, x12 y382 w62 h15 +0x200 +BackgroundTrans +border, ahk by Mint 

;динамик
SaveData1: 
Gui, Main: Submit, NoHide
IniWrite, %Dinamic%, %A_ScriptDir%\res\Settings.ini, ID, Dinamic
sleep 200
return

;настройки
SaveData:
Gui, Submit, NoHide
IniWrite, %Radio1%, %A_ScriptDir%\res\Settings.ini, Resolution, 1920x1080
IniWrite, %Radio3%, %A_ScriptDir%\res\Settings.ini, Resolution, 1680x1050
IniWrite, %Radio2%, %A_ScriptDir%\res\Settings.ini, Resolution, 1600x900
IniWrite, %Radio4%, %A_ScriptDir%\res\Settings.ini, Resolution, 1366x768
IniWrite, %Radio5%, %A_ScriptDir%\res\Settings.ini, Resolution, 1280x960
IniWrite, %Radio6%, %A_ScriptDir%\res\Settings.ini, Resolution, 1920x10802
IniWrite, %Radio7%, %A_ScriptDir%\res\Settings.ini, Resolution, 1280х1024
IniWrite, %Radio2k%, %A_ScriptDir%\res\Settings.ini, Resolution, 2560x1440

IniWrite, %Radio8%, %A_ScriptDir%\res\Settings.ini, Login Commands, /chide
IniWrite, %Radio9%, %A_ScriptDir%\res\Settings.ini, Login Commands, /esp3
IniWrite, %Radio10%, %A_ScriptDir%\res\Settings.ini, Login Commands, /dl
IniWrite, %Radio11%, %A_ScriptDir%\res\Settings.ini, Login Commands, /zzdebug
IniWrite, %Radio12%, %A_ScriptDir%\res\Settings.ini, Login Commands, /gm
IniWrite, %Radio13%, %A_ScriptDir%\res\Settings.ini, Login Commands, /hidecheatinfo
IniWrite, %Radio14%, %A_ScriptDir%\res\Settings.ini, Login Commands, /templeader
IniWrite, %Radio15%, %A_ScriptDir%\res\Settings.ini, Login Commands, /advtoggle 0
IniWrite, %Radio16%, %A_ScriptDir%\res\Settings.ini, Login Commands, /setweatherlocal CLEAR
IniWrite, %Hot1%, %A_ScriptDir%\res\Settings.ini, Binds, KEY1
IniWrite, %Hot2%, %A_ScriptDir%\res\Settings.ini, Binds, KEY2
IniWrite, %Hot3%, %A_ScriptDir%\res\Settings.ini, Binds, KEY3
IniWrite, %Hot4%, %A_ScriptDir%\res\Settings.ini, Binds, KEY4
IniWrite, %Hot5%, %A_ScriptDir%\res\Settings.ini, Binds, KEY5
IniWrite, %Hot6%, %A_ScriptDir%\res\Settings.ini, Binds, KEY6
IniWrite, %Hot7%, %A_ScriptDir%\res\Settings.ini, Binds, KEY7
IniWrite, %Hot8%, %A_ScriptDir%\res\Settings.ini, Binds, KEY8
IniWrite, %Hot9%, %A_ScriptDir%\res\Settings.ini, Binds, KEY9
IniWrite, %Hot10%, %A_ScriptDir%\res\Settings.ini, Binds, KEY10
IniWrite, %Hot11%, %A_ScriptDir%\res\Settings.ini, Binds, KEY11
IniWrite, %Hot12%, %A_ScriptDir%\res\Settings.ini, Binds, KEY12
IniWrite, %Hot13%, %A_ScriptDir%\res\Settings.ini, Binds, KEY13
IniWrite, %Hot14%, %A_ScriptDir%\res\Settings.ini, Binds, KEY14
IniWrite, %Hot15%, %A_ScriptDir%\res\Settings.ini, Binds, KEY15
IniWrite, %Hot16%, %A_ScriptDir%\res\Settings.ini, Binds, KEY16
IniWrite, %Hot17%, %A_ScriptDir%\res\Settings.ini, Binds, KEY17
IniWrite, %Hot18%, %A_ScriptDir%\res\Settings.ini, Binds, KEY18
IniWrite, %Hot19%, %A_ScriptDir%\res\Settings.ini, Binds, KEY19
IniWrite, %Hot20%, %A_ScriptDir%\res\Settings.ini, Binds, KEY20

IniWrite, %X%, %A_ScriptDir%\res\Settings.ini, Coords, X
IniWrite, %Y%, %A_ScriptDir%\res\Settings.ini, Coords, Y
IniWrite, %X2%, %A_ScriptDir%\res\Settings.ini, Coords, X2
IniWrite, %Y2%, %A_ScriptDir%\res\Settings.ini, Coords, Y2
IniWrite, %Dimension%, %A_ScriptDir%\res\Settings.ini, Dimension, Dimension
IniWrite, %Fraction%, %A_ScriptDir%\res\Settings.ini, Fraction, Fraction

IniWrite, %dis%, %A_ScriptDir%\res\Settings.ini, Discord, dis
IniWrite, %tag%, %A_ScriptDir%\res\Settings.ini, Discord, tag
IniWrite, %gadis%, %A_ScriptDir%\res\Settings.ini, Discord, gadis
IniWrite, %gatag%, %A_ScriptDir%\res\Settings.ini, Discord, gatag
IniWrite, %zgadis%, %A_ScriptDir%\res\Settings.ini, Discord, zgadis
IniWrite, %zgatag%, %A_ScriptDir%\res\Settings.ini, Discord, zgatag
Reload
return

;счетчик
mess:
SendInput, {T}
Sleep 500
SendInput,/setweatherlocal CLEAR{Enter}
Sleep 750
SendInput, {T}
Sleep 500
SendInput,/togglesnow{Enter}
Return


UpdateCounter1:
IniWrite, %DayANS%, %A_ScriptDir%\res\Settings.ini, ANS, DayANS
IniRead, DayANS, %A_ScriptDir%\res\Settings.ini, ANS, DayANS
IniWrite, %WeekANS%, %A_ScriptDir%\res\Settings.ini, ANS, WeekANS
IniRead, WeekANS, %A_ScriptDir%\res\Settings.ini, ANS, WeekANS
GuiControl,, MyText, День: %DayANS%
GuiControl,, MyTotalR, Неделя: %WeekANS%
return

UpdateCounter2:
DayANS-=1
WeekANS-=1
IniWrite, %DayANS%, %A_ScriptDir%\res\Settings.ini, ANS, DayANS
IniRead, DayANS, %A_ScriptDir%\res\Settings.ini, ANS, DayANS
IniWrite, %WeekANS%, %A_ScriptDir%\res\Settings.ini, ANS, WeekANS
IniRead, WeekANS, %A_ScriptDir%\res\Settings.ini, ANS, WeekANS
GuiControl,, MyText, День: %DayANS%
GuiControl,, MyTotalR, Неделя: %WeekANS%
return

UpdateCounter:
DayANS+=1
WeekANS+=1
IniWrite, %DayANS%, %A_ScriptDir%\res\Settings.ini, ANS, DayANS
IniRead, DayANS, %A_ScriptDir%\res\Settings.ini, ANS, DayANS
IniWrite, %WeekANS%, %A_ScriptDir%\res\Settings.ini, ANS, WeekANS
IniRead, WeekANS, %A_ScriptDir%\res\Settings.ini, ANS, WeekANS
GuiControl,, MyText, День: %DayANS%
GuiControl,, MyTotalR, Неделя: %WeekANS%
return

Reports:
sendinput, {F11} 
sleep 50
mousemove 494, 161
return

	Info:
    Gui, Info: Color, 313338
    Gui, Info: Font, s12, Segoe UI
    Gui, Info: Font, cwhite
	Gui, Info: Add, Text, x14 y8  h23 +0x200,АХК создан для облегчения работы администрации проекта Majestic.
    Gui, Info: Add, Text, x14 y32  h23 +0x200, 
    Gui, Info: Add, Text, x14 y56  h23 +0x200,АХК автоматически считает кол-во отвеченных репортов в день и в неделю, во 
    Gui, Info: Add, Text, x14 y80  h23 +0x200, время ответа на репорт при первом сообщении в ответе жмите сочетание клавиш, 
    Gui, Info: Add, Text, x14 y104  h23 +0x200, Alt + E, а так же .ку .иду .сек .
    Gui, Info: Add, Text, x14 y128  h23 +0x200,
    Gui, Info: Add, Text, x14 y152  h23 +0x200, Все команды, телепорты, наказания можно вводить транслитом. Пр.: .ез -> /tp
    Gui, Info: Add, Text, x14 y176  h23 +0x200, 
    Gui, Info: Add, Text, x14 y200  h23 +0x200, Для корректной работы софта необходимо выбрать разрешение экрана, ваш 
    Gui, Info: Add, Text, x14 y224  h23 +0x200, дискорд, в настройках.
    Gui, Info: Add, Text, x14 y248  h23 +0x200, 
    Gui, Info: Add, Text, cred x14 y272  h23 +0x200, Хоткеи:
	Gui, Info: Add, Text, x14 y320  h23 +0x200,Ctrl + F9 - Перезапустить.
    Gui, Info: Add, Text, x14 y296  h23 +0x200,Ctrl + F10 - Закрыть.
    Gui, Info: Add, Text, x14 y344  h23 +0x200,
    Gui, Info: Add, Text, x14 y368  h23 +0x200, Если что-то сломалось/не работает/есть идеи и т.п. писать - в Дискорд. (Кнопка Дискорд)
    Gui, Info: Show, h390 w670, Информация
	Return
    ;===================================================================================
Teleports:
    MsgBox, 8192, Описание "Телепорты",`n- .пд - телепорт на LSPD`n- .бол - телепорт на Больницу ЛС`n- .сд - телепорт на Шерфи Департамент`n- .фз - телепорт на Форрт`n- .гов - телепорт на Мерию`n- .вн - телепорт на Новости`n- .фиб - телепорт на ФИБ`n `n- .балас - телепорт на Балласов`n- .ваг - телепорт на Вагасов`n- .фэм - телепорт на Фэмов`n- .бладс - телепорт на Бладсов`n- .мара - телепорт на Марабунту`n `n- .лкн - телепорт на ЛКН`n- .рм - телепорт на РМ`n- .як - телепорт на Якудзу`n- .мекс - телепорт на Мексиканцев`n- .ир - телепорт на Ирланцев`n `n- .лост - телепорт на лостов`n- .аод - телепорт на АОД`n`n- .особняк - Телепорт на особняк Кайо-Перико.`n- .ключ - Телепорт на ключ(Город).`n- .хум - телепорт на Хуман Лабс`n- .мейз - телепорт на Мейз Банк`n- .каз - телепорт на Казино`n- .аш - телепорт на АвтоШкола`n- .гг - телепорт на ГанГейм`n- .бургер - телепорт на Бургерную`n- .багама - телепорт на Багаму Маму`n- .кайо - телепорт на Остров.`n- .авиа - Телепорт на авианосец `n- .мол - Телепорт на мол `n- .трас - Телепорт на искуственную трассу`n- .аук - Телепорт на аукцион`n- .бокс - Телепорт на бокс`n- .бар - Телепорт телепорт в бар с интой`n- .бк - Телепорт на букмекерскую контору`n- .ванила - Телепорт в стрип клуб Vanila Unicorn`n- .починка - Телепорт на СТО Hayes`n- .лск4 - Телепорт к 4 лск, шоссе 68`n`n- .спд - Телепорт на склад LSPD`n- .сбемс - Телепорт на склад EMS`n- .ссд - Телепорт на склад LSCSD`n- .сфз - Телепорт на склад SANG`n- .сгов - Телепорт на склад GOV`n- .свн - Телепорт на склад WN`n- .сфиб - Телепорт на склад FIB`n- .скайо - Телепорт на склад Кайо-Перико.`n`n- .сяк - Телепорт на склад Yakuza`n- .сир - Телепорт на склад Irish`n- .срм - Телепорт на склад Russia Mafia`n- .смекс - Телепорт на склад Mex`n- .слкн - Телепорт на склад LCN`n- .сбалас - Телепорт на склад Ballas`n- .смара - Телепорт на склад Mara.`n- .сваг - Телепорт на склад Vagos.`n- .сбладс - Телепорт на склад Bloods.`n- .сфэм - Телепорт на склад Fam.`n- .сш - Телепорт в Сэнди-Шорс.`n- .палето - Телепорт в Палето.`n- .ричман - Телепорт на Ричман.`n- .рокфорд - Телепорт на Рокфорд.`n- .миррор - Телепорт в Миррор-Парк.`n
return
    MsgBox, 8192, Описание "Кастомные телепорты",Интерьеры:`n - .инт1 - СТО.`n- .инт2 - Морг.`n- .инт3 - Розовая комната казино.`n- .инт4 - Хранилище казино.`n- .инт5 - Металодетекторы казино.`n- .инт6 - Квартира.`n- .инт7 - Гараж.`n- .инт8 - Лаундж зона.`n- .инт9 - Гараж казино.`n- .инт10 - Казино ограба.`n- .инт11 - Пентхаус.`n- .инт12 - Бар казино.`n- .инт13 - Серверная НУП.`n- .инт14 - Гараж в МАЛС.`n`nБизвары:`n- .порт1 - Телепорт на защиту. Локация "Порт".`n- .порт2 - Телепорт на атаку. Локация "Порт".`n- .мара1 - Телепорт на защиту. Локация "Нефть".`n- .мара2 Телепорт на атаку. Локация "Нефть".`n- .стройка1 - Телепорт на защиту. Локация "Стройплощадка".`n- .стройка2 - Телепорт на атаку. Локация "Стройплощадка".`n- .свал1 - Телепорт на защиту. Локация "Самолёты".`n- .свал2 - Телепорт на атаку. Локация "Самолёты".`n- .лес1 - Телепорт на защиту. Локация "Лесопилка".`n- .лес2 - Телепорт на атаку. Локация "Лесопилка".`n`nРаботы:`n- .воркт: Телепорт на работу "Таксист".`n- .воркм: Телепорт на работу "Мусоровоз".`n- .воркд1: Телепорт на работу "Дальнобой(Порт)".`n- .воркд2: Телепорт на работу "Дальнобой(Палето)".`n- .воркп: Телепорт на работу "Почтальон".`n- .ворка: Телепорт на работу "Автобусника".`n- .ворки: Телепорт на работу "Инкассатор".`n`n Другие: `n - .ч - NRD угон `n - .ч1 - NRD угон №2 `n - .азс - АЗС №15 `n
return
;===================================================================================

	Commandlist:
	Gui, Commandlist: -SysMenu
	Gui, Commandlist: Add, Button, x487 y2 w25 h16 gguiclose3, X
    Gui, Commandlist: Add, Tab, x0 y0 h800 w530, 1|2
    Gui, Commandlist: Color, 313338
    Gui, Commandlist: Font, s8, Segoe UI
    Gui, Commandlist: Font, cwhite
    Gui, Commandlist: Add, Text, x8 y24  h20 +0x200, .иср - /bancheck
    Gui, Commandlist: Add, Text, x8 y40  h20 +0x200, /jch - /ajailcheck 
    Gui, Commandlist: Add, Text, x8 y56  h20 +0x200, .оср - /ajailcheck 
    Gui, Commandlist: Add, Text, x8 y72  h20 +0x200, .ифтсрусл - /bancheck
    Gui, Commandlist: Add, Text, x8 y88  h20 +0x200, .фофшдсрусл - /ajailcheck 
    Gui, Commandlist: Add, Text, x8 y104  h20 +0x200, /tf - /tempfamily 
    Gui, Commandlist: Add, Text, x8 y120  h20 +0x200, .еа - /tempfamily 
    Gui, Commandlist: Add, Text, x8 y136  h20 +0x200, /sm - /setmaterials 
    Gui, Commandlist: Add, Text, x8 y152  h20 +0x200, .ыь - /setmaterials 
    Gui, Commandlist: Add, Text, x8 y168  h20 +0x200, /tn - /tempname 
    Gui, Commandlist: Add, Text, x8 y184  h20 +0x200, .ет - /tempname 
    Gui, Commandlist: Add, Text, x8 y200  h20 +0x200, .яяв - /zzdebug 
    Gui, Commandlist: Add, Text, x8 y216  h20 +0x200, /zzd - /zzdebug 
    Gui, Commandlist: Add, Text, x8 y232  h20 +0x200, /Usefull - /addUsefullitheater 
    Gui, Commandlist: Add, Text, x8 y248  h20 +0x200, .фьзр - /addUsefullitheater 
    Gui, Commandlist: Add, Text, x8 y264  h20 +0x200, /rUsefull - /removeUsefullitheater 
    Gui, Commandlist: Add, Text, x8 y280  h20 +0x200, .кфьзр - /removeUsefullitheater 
    Gui, Commandlist: Add, Text, x8 y296  h20 +0x200, /gzone - /togglegreenzone 
    Gui, Commandlist: Add, Text, x8 y312  h20 +0x200, .пящту - /togglegreenzone 
    Gui, Commandlist: Add, Text, x8 y328  h20 +0x200, /mcheck - /mutecheck 
    Gui, Commandlist: Add, Text, x8 y344  h20 +0x200, .ьсрусл - /mutecheck 
    Gui, Commandlist: Add, Text, x8 y360  h20 +0x200, .ьгеусрусл - /mutecheck 
	Gui, Commandlist: Add, Text, x8 y376  h20 +0x200, .гтофшд - /unjail 
    Gui, Commandlist: Add, Text, x8 y392  h20 +0x200, .цфкт - /warn 
    Gui, Commandlist: Add, Text, x8 y408  h20 +0x200, .дв - /lastdriver 
    Gui, Commandlist: Add, Text, x8 y424  h20 +0x200, /ld - /lastdriver 
    Gui, Commandlist: Add, Text, x8 y440  h20 +0x200, /af - /ainfect 
    Gui, Commandlist: Add, Text, x8 y456  h20 +0x200, .фа - /ainfect 
    Gui, Commandlist: Add, Text, x8 y472  h20 +0x200, /sk - /skick 
    Gui, Commandlist: Add, Text, x8 y488  h20 +0x200, .ыл - /skick 
    Gui, Commandlist: Add, Text, x8 y504  h20 +0x200, /k - /kick 
    Gui, Commandlist: Add, Text, x8 y520  h20 +0x200, .л - /kick 
	Gui, Commandlist: Add, Text, x8 y536  h20 +0x200, /ai - /auninvite 
    Gui, Commandlist: Add, Text, x8 y552  h20 +0x200, .фш - /auninvite 
    Gui, Commandlist: Add, Text, x8 y568  h20 +0x200, .аи - /fb 
    Gui, Commandlist: Add, Text, x8 y584  h20 +0x200, /aif - /ainfect  
	Gui, Commandlist: Add, Text, x8 y600  h20 +0x200, .фша - /ainfect 
    Gui, Commandlist: Add, Text, x8 y616  h20 +0x200, .с - /c  
    Gui, Commandlist: Add, Text, x8 y632  h20 +0x200, .си - /cb 
    Gui, Commandlist: Add, Text, x8 y648  h20 +0x200, .гтьгеу - /unmute 
    Gui, Commandlist: Add, Text, x8 y664  h20 +0x200, .пшв - /gid 
    Gui, Commandlist: Add, Text, x8 y680  h20 +0x200, .фвьшты - /admins 
    Gui, Commandlist: Add, Text, x8 y696  h20 +0x200, .фштаусе - /ainfect 
    Gui, Commandlist: Add, Text, x8 y712  h20 +0x200, .умутещт - /eventon 
    Gui, Commandlist: Add, Text, x8 y728  h20 +0x200, .умутещаа - /eventoff 
    Gui, Commandlist: Add, Text, x8 y744  h20 +0x200, .пц - /gw 
	Gui, Commandlist: Add, Text, x8 y760  h20 +0x200, /bch - /bancheck
	
    Gui, Commandlist: Add, Text, x170 y24  h20 +0x200, .ашчсфк - /fixcar 
    Gui, Commandlist: Add, Text, x170 y40  h20 +0x200, .уьздуфвук - /templeader 
    Gui, Commandlist: Add, Text, x170 y56  h20 +0x200, /tl - /templeader 
    Gui, Commandlist: Add, Text, x170 y72  h20 +0x200, .ед - /templeader 
    Gui, Commandlist: Add, Text, x170 y88  h20 +0x200, .ылшсл - /skick 
    Gui, Commandlist: Add, Text, x170 y104  h20 +0x200, .кузфшк - /repair 
    Gui, Commandlist: Add, Text, x170 y120  h20 +0x200, .фгтшмшеу - /auninvite 
    Gui, Commandlist: Add, Text, x170 y136  h20 +0x200, .учсфк - /excar 
    Gui, Commandlist: Add, Text, x170 y152  h20 +0x200, .агуд - /fuel 
    Gui, Commandlist: Add, Text, x170 y168  h20 +0x200, .акууяу - /freeze
    Gui, Commandlist: Add, Text, x170 y200  h20 +0x200, .згддекгтл - /pulltrunk 
    Gui, Commandlist: Add, Text, x170 y216  h20 +0x200, .езсфк - /tpcar 
    Gui, Commandlist: Add, Text, x170 y232  h20 +0x200, .дфыевкшмук - /lastdriver 
    Gui, Commandlist: Add, Text, x170 y248  h20 +0x200, .вудшеуь - /delitem 
    Gui, Commandlist: Add, Text, x170 y264  h20 +0x200, /gc - /getcar 
	Gui, Commandlist: Add, Text, x170 y184  h20 +0x200, .пиздец - Мольба о помощи
    Gui, Commandlist: Add, Text, x170 y280  h20 +0x200, .пс - /getcar 
    Gui, Commandlist: Add, Text, x170 y296  h20 +0x200, .фв - /admins 
    Gui, Commandlist: Add, Text, x170 y312  h20 +0x200, /ad - /admins 
    Gui, Commandlist: Add, Text, x170 y328  h20 +0x200, .з - /players 
    Gui, Commandlist: Add, Text, x170 y344  h20 +0x200, /p - /players 
    Gui, Commandlist: Add, Text, x170 y360  h20 +0x200, .здфнукы - /players 
	Gui, Commandlist: Add, Text, x170 y376  h20 +0x200, .рес - /rescue 
    Gui, Commandlist: Add, Text, x170 y392  h20 +0x200, /htc - /rescue 
    Gui, Commandlist: Add, Text, x170 y408  h20 +0x200, .ез - /tp 
    Gui, Commandlist: Add, Text, x170 y424  h20 +0x200, .ызус - /spec 
    Gui, Commandlist: Add, Text, x170 y440  h20 +0x200, .ызусщаа - /specoff
    Gui, Commandlist: Add, Text, x170 y456  h20 +0x200, .ф - /a 
    Gui, Commandlist: Add, Text, x170 y472  h20 +0x200, .фыьы - /asms 
    Gui, Commandlist: Add, Text, x170 y488  h20 +0x200, /sp - /spec 
    Gui, Commandlist: Add, Text, x170 y504  h20 +0x200, .ыз - /spec 
    Gui, Commandlist: Add, Text, x170 y520  h20 +0x200, /so - /specoff 
	Gui, Commandlist: Add, Text, x170 y536  h20 +0x200, .ыщ - /specoff
    Gui, Commandlist: Add, Text, x170 y552  h20 +0x200, /kill - /hp 0
    Gui, Commandlist: Add, Text, x170 y568  h20 +0x200, .лшдд - /hp 0
    Gui, Commandlist: Add, Text, x170 y584  h20 +0x200, .пр - /gh 
	Gui, Commandlist: Add, Text, x170 y600  h20 +0x200, .штсфк - /incar 
    Gui, Commandlist: Add, Text, x170 y616  h20 +0x200, .штм - /inv 
    Gui, Commandlist: Add, Text, x170 y632  h20 +0x200, .рз - /hp 
    Gui, Commandlist: Add, Text, x170 y648  h20 +0x200, .шв - /id 
    Gui, Commandlist: Add, Text, x170 y664  h20 +0x200, .од - /ajail 
    Gui, Commandlist: Add, Text, x170 y680  h20 +0x200, .фофшд - /ajail 
    Gui, Commandlist: Add, Text, x170 y696  h20 +0x200, .лшсл - /kick 
    Gui, Commandlist: Add, Text, x170 y712  h20 +0x200, .вд - /dl 
    Gui, Commandlist: Add, Text, x170 y728  h20 +0x200, .уыз - /esp3 
    Gui, Commandlist: Add, Text, x170 y744  h20 +0x200, .уыз2 - /esp3 
	Gui, Commandlist: Add, Text, x170 y760  h20 +0x200, .мур - /veh 

    Gui, Commandlist: Add, Text, x332 y24  h20 +0x200, .ифт - /ban 
    Gui, Commandlist: Add, Text, x332 y40  h20 +0x200, .вудмур - /delveh 
    Gui, Commandlist: Add, Text, x332 y56  h20 +0x200, .ьез - /mtp 
    Gui, Commandlist: Add, Text, x332 y72  h20 +0x200, .мур - /veh 
    Gui, Commandlist: Add, Text, x332 y88  h20 +0x200, .фмур - /aveh 
    Gui, Commandlist: Add, Text, x332 y104  h20 +0x200, .рфквифт - /hardban 
    Gui, Commandlist: Add, Text, x332 y120  h20 +0x200, .ьгеу - /mute 
    Gui, Commandlist: Add, Text, x332 y136  h20 +0x200, .пшв - /gid 
    Gui, Commandlist: Add, Text, x332 y152  h20 +0x200, .ср - /chide 
    Gui, Commandlist: Add, Text, x332 y168  h20 +0x200, /ch - /chide 
    Gui, Commandlist: Add, Text, x332 y184  h20 +0x200, .куысгу - /rescue 
    Gui, Commandlist: Add, Text, x332 y200  h20 +0x200, .ыуевшь - /setdim 
    Gui, Commandlist: Add, Text, x332 y216  h20 +0x200, /sd - /setdim 
    Gui, Commandlist: Add, Text, x332 y232  h20 +0x200, .и - /b 
    Gui, Commandlist: Add, Text, x332 y248  h20 +0x200, .ц - /w 
    Gui, Commandlist: Add, Text, x332 y264  h20 +0x200, .ыв - /setdim 
    Gui, Commandlist: Add, Text, x332 y280  h20 +0x200, .сршву - /chide 
    Gui, Commandlist: Add, Text, x332 y296  h20 +0x200, .афк - /a афк мин
    Gui, Commandlist: Add, Text, x332 y312  h20 +0x200, .фгтсгаа - /auncuff 
    Gui, Commandlist: Add, Text, x332 y328  h20 +0x200, .фсгаа - /acuff 
    Gui, Commandlist: Add, Text, x332 y344  h20 +0x200, .акууямур - /freezveh
    Gui, Commandlist: Add, Text, x332 y360  h20 +0x200, /scd - /setcardim 
	Gui, Commandlist: Add, Text, x332 y376  h20 +0x200, .ыуесфквшь - /setcardim 
    Gui, Commandlist: Add, Text, x332 y392  h20 +0x200, .ысв - /setcardim 
    Gui, Commandlist: Add, Text, x332 y408  h20 +0x200, /rst - /resettempname 
    Gui, Commandlist: Add, Text, x332 y424  h20 +0x200, .кые - /resettempname 
    Gui, Commandlist: Add, Text, x332 y440  h20 +0x200, .куыуееуьзтфьу - /resettempname 
    Gui, Commandlist: Add, Text, x332 y456  h20 +0x200, .ты - /togglesnow 
    Gui, Commandlist: Add, Text, x332 y472  h20 +0x200, /ns - /togglesnow 
    Gui, Commandlist: Add, Text, x332 y488  h20 +0x200, /dv - /delveh 
    Gui, Commandlist: Add, Text, x332 y504  h20 +0x200, .вм - /delveh 
    Gui, Commandlist: Add, Text, x332 y520  h20 +0x200, .рфкв - /hardban 
	Gui, Commandlist: Add, Text, x332 y536  h20 +0x200, /hard - /hardban 
    Gui, Commandlist: Add, Text, x332 y552  h20 +0x200, /as - /asms 
    Gui, Commandlist: Add, Text, x332 y568  h20 +0x200, .фы - /asms 
    Gui, Commandlist: Add, Text, x332 y584  h20 +0x200, .пез - /gtp
	Gui, Commandlist: Add, Text, x332 y600  h20 +0x200, .пь - /gm
    Gui, Commandlist: Add, Text, x332 y616  h20 +0x200, .тс - /noclip 
    Gui, Commandlist: Add, Text, x332 y632  h20 +0x200, /nc - /noclip 
    Gui, Commandlist: Add, Text, x332 y648  h20 +0x200, /acf - /acuff 
    Gui, Commandlist: Add, Text, x332 y664  h20 +0x200, .фса - /acuff 
    Gui, Commandlist: Add, Text, x332 y680  h20 +0x200, /auf - /auncuff 
    Gui, Commandlist: Add, Text, x332 y696  h20 +0x200, .езр - /tph
    Gui, Commandlist: Add, Text, x332 y712  h20 +0x200, .фга - /auncuff 
    Gui, Commandlist: Add, Text, x332 y728  h20 +0x200, .фмур - /aveh
    Gui, Commandlist: Add, Text, x332 y744  h20 +0x200, .фдщсл - /alock
	Gui, Commandlist: Add, Text, x332 y760  h20 +0x200, .пуесфк - /getcar 

	Gui, Commandlist: Tab, 2
	Gui, Commandlist: Add, Text, cred x122 y24  h20 +0x200, Данные команды работают совместно с "динамик"
    Gui, Commandlist: Add, Text, cyellow x8 y40  h20 +0x200, Дименшены
    Gui, Commandlist: Add, Text, x8 y56  h20 +0x200, .обыч - /setdim id 0
    Gui, Commandlist: Add, Text, x8 y72  h20 +0x200, .каптд - /setdim id 9871 
    Gui, Commandlist: Add, Text, x8 y88  h20 +0x200, .бизд - /setdim id 222
    Gui, Commandlist: Add, Text, cyellow x8 y104  h20 +0x200, Оружие
    Gui, Commandlist: Add, Text, x8 y120  h20 +0x200, .миниг - /gw id weapon_minigun 9999
    Gui, Commandlist: Add, Text, x8 y136  h20 +0x200, .ревик - /gw id weapon_revolver 9999
    Gui, Commandlist: Add, Text, x8 y152  h20 +0x200, .ракет - /gw id weapon_firework 9999
    Gui, Commandlist: Add, Text, x8 y168  h20 +0x200, .хевик - /gw id weapon_heavysniper_mk2 9999
    Gui, Commandlist: Add, Text, x8 y184  h20 +0x200, .топор - /gw id weapon_hatchet  9999
	Gui, Commandlist: Add, Text, cyellow x8 y200  h20 +0x200, Бизвары
	Gui, Commandlist: Add, Text, x8 y216  h20 +0x200, .лес1 - Телепорт на локацию лес (деф) + смена дименшена
    Gui, Commandlist: Add, Text, x8 y232  h20 +0x200, .лес2 - Телепорт на локацию лес (атака) + смена дименшена
    Gui, Commandlist: Add, Text, x8 y248  h20 +0x200, .порт1 - Телепорт на локацию порт (деф) + смена дименшена
    Gui, Commandlist: Add, Text, x8 y264  h20 +0x200, .порт2 - Телепорт на локацию порт (атака) + смена дименшена
    Gui, Commandlist: Add, Text, x8 y280  h20 +0x200, .свалка1 - Телепорт на локацию свалка (деф) + смена дименшена
	Gui, Commandlist: Add, Text, x8 y296  h20 +0x200, .свалка2 - Телепорт на локацию свалка (атака) + смена дименшена
    Gui, Commandlist: Add, Text, x8 y312  h20 +0x200, .стройка1 - Телепорт на локацию стройка (деф) + смена дименшена
    Gui, Commandlist: Add, Text, x8 y328  h20 +0x200, .стройка2 - Телепорт на локацию стройка (атака) + смена дименшена
    Gui, Commandlist: Add, Text, x8 y344  h20 +0x200, 
    Gui, Commandlist: Add, Text, x8 y360  h20 +0x200, 
    Gui, Commandlist: Show, h800 w530, Команды

	Return
;===================================================================================
F5:
SendInput, {F5}
return

;Памятка
	Cheatsheet:
    Cheatsheet1:=!Cheatsheet1
    If Cheatsheet1
    {
    CustomColor2 = 	EEAA99
    Gui Cheatsheet: +LastFound +AlwaysOnTop -Caption +ToolWindow
    Gui Cheatsheet: Color, black
    Gui Cheatsheet: Font, s7
    Gui Cheatsheet: Font, w3000
    Gui Cheatsheet: Font, cFFFFFF
    Gui Cheatsheet: Add, Text,,  Фракции: 1 - LSPD   2 - EMS   3 - SD   4 - SANG   5 - GOV   6 - WN   7 - FIB   8 - Ballas   9 - Vagos   10 - Fam   11 - Bloods   12 - Mara   
    Gui Cheatsheet: Add, Text, x15 y35 cYellow,  DM - Demorgan 100 минут / WARN / Ban 3 - 30 дней
    Gui Cheatsheet: Add, Text, cYellow,  Обман в /do - Demorgan 35 минут / WARN
    Gui Cheatsheet: Add, Text, cYellow,  DB - Demorgan 30 - 90 минут / WARN / Ban 3 - 30 дней
    Gui Cheatsheet: Add, Text, cYellow,  Помеха работе администрации - Kick / Mute 10 - 60 минут / Demorgan 10 - 100 минут / WARN / Ban 3 - 30 дней
    Gui Cheatsheet: Add, Text, cYellow,  nonRP поведение - Demorgan 15 - 90 минут / WARN / Ban 3 - 15 дней
    Gui Cheatsheet: Add, Text, cYellow,  SK - Ban 2-5 дней / Hardban 2 - 7 дней
    Gui Cheatsheet: Add, Text, cYellow,  nonRP Drive - Demorgan 15 - 90 минут / Ban 3-7 дней
    Gui Cheatsheet: Add, Text, cYellow,  TK -  Demorgan 90 минут / WARN
    Gui Cheatsheet: Add, Text, cYellow,  nonRP Fly - Demorgan 10 - 35 минут
    Gui Cheatsheet: Add, Text, cYellow,  Крайм без маски - Demorgan 15 минут
    Gui Cheatsheet: Add, Text, cYellow,  PG - Demorgan 35-90 минут / WARN / Ban 2-7 дней
    Gui Cheatsheet: Add, Text, cYellow,  Оогонь с транспортного средства - Ban 3-5 дней / HardBan 7 дней
    Gui Cheatsheet: Add, Text, cYellow,  Криминальные действия по отношению к сотрудникам EMS - Demorgan 90 минут / WARN
    Gui Cheatsheet: Add, Text, cYellow,  Поднимать предметы во время перестрелки - Demorgan 35 минут / WARN
    Gui Cheatsheet: Add, Text, cYellow,  Намеренно менять / убирать оружие с целью его сохранения - WARN / Ban 2 дня
    Gui Cheatsheet: Add, Text, x700 y35 cYellow,  Музыка ЗЗ - Mute 30-60 минут
    Gui Cheatsheet: Add, Text, cYellow,  Уход от RP - WARN / Ban 4-8 дней
    Gui Cheatsheet: Add, Text, cYellow,  Перестрелка / стрельба в ЗЗ - Demorgan 35 - 100 минут / WARN / Ban 3 - 30 дней
    Gui Cheatsheet: Add, Text, cYellow,  Криминальные действия ЗЗ - Demorgan 10 - 100 минут / WARN / Ban 3 дня
    Gui Cheatsheet: Add, Text, cYellow,  Брить без причины - Demorgan 60-100 минут / WARN / Ban 2-5 дней
    Gui Cheatsheet: Add, Text, cYellow,  Не снимать стяжки/мешки - Demorgan 60 минут
    Gui Cheatsheet: Add, Text, cYellow,  
    Gui Cheatsheet: Add, Text, cYellow,  Использование предметов для восстановления здоровья/брони во время перестрелки - Demorgan 35 - 90 минут
    Gui Cheatsheet: Add, Text, cYellow,  Использование предметов лечения / замены бронежилетов во время езды на транспортном средстве - Demorgan 15 - 35 минут
    Gui Cheatsheet: Add, Text, cYellow,  Провоцировать игроков на нарушение правил сервера - Demorgan 35 - 90 минут / Ban 3-30 дней
    Gui Cheatsheet: Add, Text, cYellow,  Провоцирующие действия в сторону государственных Сотрудников - Ban 2-5 дней
    Gui Cheatsheet: Add, Text, cYellow,  Завуалированные оскорбление вероисповедания, религии и нации - Ban 15 - 30 дней / Hardban 15-30 дней / Permban
    Gui Cheatsheet: Add, Text, cYellow,  Прямые оскорбления вероисповедования, религии , нации - HardBan 30 - 60 дней / PermBan
    Gui Cheatsheet: Add, Text, cYellow,  Помеха РП процессу - Ban 2-5 дней
    Gui Cheatsheet: Add, Text, cYellow,  
    WinSet, TransColor, %CustomColor2% 200
    Gui Cheatsheet: Show, x%X2% y%Y2% NoActivate, window.
    }
    Else
    Gui Cheatsheet: Destroy
	Return

;===================================================================================

ds:
Run, https://discord.gg/jcKJ9BCqM3
return

;===================================================================================
upturn:
 newScriptPath := A_ScriptDir "\Mintik.ahk"
 UrlDownloadToFile, https://raw.githubusercontent.com/anastaz5/MintAHK/main/Mintik.ahk, %newScriptPath%
 Sleep, 500
 MsgBox, 64, adm, Биндер обновлен.
 Run, %newScriptPath%
 ExitApp
return

;===================================================================================
Punish:
Gui, Punish: -SysMenu
Gui, Punish: Add, Button, x487 y2 w25 h16 gguiclose3, X
Gui, Punish: Add, Tab, x0 y0 h800 w530, 1
Gui, Punish: Color, 313338
Gui, Punish: Font, s8, Segoe UI
Gui, Punish: Font, cwhite

; Добавляем только те текстовые элементы, которые содержат текст
Gui, Punish: Add, Text, x8 y24  h20 +0x200, .хард - /hardban 
Gui, Punish: Add, Text, x8 y40  h20 +0x200, .хард9 - /hardban 9999 Cheats
Gui, Punish: Add, Text, x8 y56  h20 +0x200, .софт - /hardban 9999 Cheats
Gui, Punish: Add, Text, x8 y72  h20 +0x200, .чит - /hardban 9999 Cheats
Gui, Punish: Add, Text, x8 y88  h20 +0x200, .нрд - /ajail 15 nonRP Drive
Gui, Punish: Add, Text, x8 y104  h20 +0x200, .оос - /mute 90 OOC in IC
Gui, Punish: Add, Text, x8 y120  h20 +0x200, .нрд25 - /ajail 25 nonRP Drive
Gui, Punish: Add, Text, x8 y136  h20 +0x200, .нрд45 - /ajail 45 nonRP Drive
Gui, Punish: Add, Text, x8 y152  h20 +0x200, .нрд45 - /ajail 45 nonRP Drive
Gui, Punish: Add, Text, x8 y168  h20 +0x200, .нрд70 - /ajail 70 nonRP Drive
Gui, Punish: Add, Text, x8 y184  h20 +0x200, .нрд90 - /ajail 90 nonRP Drive
Gui, Punish: Add, Text, x8 y200  h20 +0x200, .нрп - /ajail 15 nonRP Поведение
Gui, Punish: Add, Text, x8 y216  h20 +0x200, .нрп25 - /ajail 25 nonRP Поведение
Gui, Punish: Add, Text, x8 y232  h20 +0x200, .нрп45 - /ajail 45 nonRP Поведение
Gui, Punish: Add, Text, x8 y248  h20 +0x200, .нрп70 - /ajail 70 nonRP Поведение
Gui, Punish: Add, Text, x8 y264  h20 +0x200, .нрп90 - /ajail 90 nonRP Поведение
Gui, Punish: Add, Text, x8 y280  h20 +0x200, .дб - /ajail 30 DB
Gui, Punish: Add, Text, x8 y296  h20 +0x200, .дб45 - /ajail 45 DB
Gui, Punish: Add, Text, x8 y312  h20 +0x200, .дб60 - /ajail 60 DB
Gui, Punish: Add, Text, x8 y328  h20 +0x200, .дб75 - /ajail 75 DB
Gui, Punish: Add, Text, x8 y344  h20 +0x200, .дб90 - /ajail 90 DB
Gui, Punish: Add, Text, x8 y360  h20 +0x200, .дм - /gunban 5 DM
Gui, Punish: Add, Text, x8 y376  h20 +0x200, .дм120 - /ajail 120 DM
Gui, Punish: Add, Text, x8 y392  h20 +0x200, .пг - /ajail 35 PG
Gui, Punish: Add, Text, x8 y408  h20 +0x200, .пг55 - /ajail 55 PG
Gui, Punish: Add, Text, x8 y424  h20 +0x200, .пг75 - /ajail 75 PG
Gui, Punish: Add, Text, x8 y440  h20 +0x200, .пг90 - /ajail 90 PG
Gui, Punish: Add, Text, x8 y456  h20 +0x200, .кгз - /ajail 10 Crime in GZ
Gui, Punish: Add, Text, x8 y472  h20 +0x200, .119 - /ajail 35 1.19 Правила государственных организаций
Gui, Punish: Add, Text, x8 y488  h20 +0x200, .1241 - /ajail 10 1.24.1 Правила государственных организаций
Gui, Punish: Add, Text, x8 y504  h20 +0x200, .111 - /ajail 50 1.11 Правила государственных организаций
Gui, Punish: Add, Text, x8 y520  h20 +0x200, .122 - /ban 10 1.22 Правила государственных организаций
Gui, Punish: Add, Text, x8 y536  h20 +0x200, .126 - /ajail 60 1.26 Правила государственных организаций
Gui, Punish: Add, Text, x8 y552  h20 +0x200, .муз - /mute 30 Music in GZ
Gui, Punish: Add, Text, x8 y568  h20 +0x200, .муз60 - /mute 60 Music in GZ
Gui, Punish: Add, Text, x8 y584  h20 +0x200, .смник - /ajail 720 Смените Имя_Фамилия согласно правилам проекта
Gui, Punish: Add, Text, x8 y600  h20 +0x200, .смвн - /ajail 720 Смените внешность согласно правилам проекта
Gui, Punish: Add, Text, x8 y616  h20 +0x200, .оса30 - /hardban 30 Оскорбление администрации
Gui, Punish: Add, Text, x8 y632  h20 +0x200, .оса15 - /hardban 14 Оскорбление администрации
Gui, Punish: Add, Text, x8 y648  h20 +0x200, .оса10 - /hardban 10 Оскорбление администрации
Gui, Punish: Add, Text, x8 y664  h20 +0x200, .оса - /hardban 7 Оскорбление администрации
Gui, Punish: Add, Text, x8 y680  h20 +0x200, .ооск - /ajail 30 OOC оскорбление
Gui, Punish: Add, Text, x8 y696  h20 +0x200, .оцоск - /ajail 15 OOC osk
Gui, Punish: Add, Text, x8 y712  h20 +0x200, .стр - /ban 3 Стрельба по пешим
Gui, Punish: Add, Text, x8 y728  h20 +0x200, .амн - /unjail Амнистия
Gui, Punish: Add, Text, x8 y744  h20 +0x200, .амн2 - /ajail Амнистия
Gui, Punish: Add, Text, x8 y760  h20 +0x200, .сп - /mute 30 sp in gz
Gui, Punish: Add, Text, x170 y24  h20 +0x200, .сп60 - /mute 60 sp in gz
Gui, Punish: Add, Text, x170 y40  h20 +0x200, .запретка - /ban 3 3.5 Основных Правил Проекта
Gui, Punish: Add, Text, x170 y56  h20 +0x200, .отказ - /hardban 9999 Отказ от проверки

Gui, Punish: Show, w530 h800, Наказания
return
;===================================================================================

Return
:?:.дс::
SendMessage, 0x50,, 0x4090409
SendInput, Напишите мне в личные сообщения дискорда: %dis%
Return
:?:.га::
SendMessage, 0x50,, 0x4090409
SendInput, Обратитесь, пожалуйста, в личные сообщения дискорда к главному администратору: %gadis%
Return
:?:.зга::
SendMessage, 0x50,, 0x4090409
SendInput, Обратитесь, пожалуйста, в личные сообщения дискорда к заместителю главного администратора: %zgadis%
Return
   
;===================================================================================

vac:
SendMessage, 0x50,, 0x4190419,, A
SendInput, {t}
sleep 500
SendInput, /ainfect  0{left 2}
return

repm:
counter++
GoSub, UpdateCounter2
Clipboard :=
return

dimcar:
SendMessage, 0x50,, 0x4190419,, A
SendInput, {T}
Input, car, V, {ctrl}{Enter}
Sleep 750
SendInput, {T}
Sleep 500
SendInput, /getcar %car%{Enter}
Sleep 750
SendInput, {T}
Sleep 500
SendInput, /repair{Enter}
Sleep 750
SendInput, {T}
Sleep 500
SendInput, /setcardim %car% 5{Enter}
Sleep 1200
SendInput, {T}
Sleep 500
SendInput, /setcardim %car% 0{Enter}
Return

reshp:
SendInput, {T}
Input, hId, V, {ctrl} {Enter}
Sleep 750
SendInput, {T}
Sleep 500
SendInput,/hp %hId% 0{Enter}
Sleep 750
SendInput, {T}
Sleep 500
SendInput,/rescue %hId%{Enter}
Return

delv:
SendInput, {T}
Input, hId, V, {ctrl} {Enter}
Sleep 750
SendInput, {T}
Sleep 500
SendInput,/setdim %hId% 66{Enter}
Sleep 750
SendInput, {T}
Sleep 500
SendInput,/specoff{Enter}
Sleep 750
SendInput, {T}
Sleep 500
SendInput,/tp %hId%{Enter}
Sleep 750
SendInput, {T}
Sleep 500
SendInput,/chide{Enter}
Return

killplayer:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /hp  0{left 2}
return

;Выдача

PunishmentHandler:
Process, Exist, GTA5.exe
if(Errorlevel)
{
WinActivate ahk_exe ragemp_v.exe
Loop, read, %A_WorkingDir%\Punishment.txt
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
ru := DllCall("LoadKeyboardLayout", "Str", "00000419", "Int", 1)
en := DllCall("LoadKeyboardLayout", "Str", "00000409", "Int", 1)
w := DllCall("GetForegroundWindow")
pid := DllCall("GetWindowThreadProcessId", "UInt", w, "Ptr", 0)
l := DllCall("GetKeyboardLayout", "UInt", pid)
if (l != ru)
{
PostMessage 0x50, 0, %ru%,, A
}
Sleep, 1000
Send, {T}
Sleep, 100
Send, %A_LoopField%
Send, {Enter}
}
}
MsgBox, 64, Выдача наказаний, Наказания выданы.
}
else
{
MsgBox, 16, Выдача наказаний, Запустите игру!
}
return

gcar:
SendInput, {T}
Input, hId, V, {ctrl} {Enter}
Sleep 300
SendInput, {T}
Sleep 300
SendInput,/getcar %hId%{Enter}
return

gm:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 300
SendInput, /gm{Enter}
Sleep 300
return

resc:
SendInput, {sc14}
Sleep 300
SendInput, /rescue{Space}
Sleep 300
return

gh:
SendInput, {sc14}
Sleep 300
SendInput, /gh{Space}
Sleep 300
return

chide:
SendInput, {sc14}
Sleep 300
SendInput, /chide{Enter}
Sleep 300
return

mtp:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 300
SendInput, /mtp{Enter}
Sleep 300
return

vhod:
SendMessage, 0x50,, 0x4090409
Sleep 300
if (Radio11==1)
{
SendInput, {T}
Sleep 300
SendInput, /zzdebug{Enter}
Sleep 300
}
if (Radio13==1)
{
SendInput, {T}
Sleep 300
SendInput, /hidecheatinfo{Enter}
Sleep 300
}
if (Radio9==1)
{
SendInput, {T}
Sleep 300
SendInput, /esp3{Enter}
Sleep 300
}
if (Radio8==1)
{
SendInput, {T}
Sleep 300
SendInput, /chide{Enter}
Sleep 300
}
if (Radio10==1)
{
SendInput, {T}
Sleep 300
SendInput, /dl{Enter}
Sleep 300
}
if (Radio14==1)
{
SendInput, {T}
Sleep 300
SendInput, /templeader %Fraction%{Enter}
Sleep 300
}
if (Radio15==1)
{
SendInput, {T}
Sleep 300
SendInput, /advtoggle 0{Enter}
Sleep 300
}
if (Radio16==1)
{
SendInput, {T}
Sleep 300
SendInput, /setweatherlocal CLEAR{Enter}
Sleep 300
}
if (Radio12==1)
{
SendInput, {T}
Sleep 300
SendInput, /gm{Enter}
}
return

rep:
counter++
GoSub, UpdateCounter
Clipboard :=
return

;Телепорты
:?:.ключ::/ctp -2031 -469 12
:?:.банк::/ctp 315 -277 54
;===================================================================================
:?:.пд::/ctp 429 -980 30.50
:?:.бол::/ctp 1140 -1528 49
:?:.шд::/ctp -434.87 6024.54 31.50
:?:.фз::/ctp -2336 3257 32.50
:?:.гов::/ctp -534.70 -222.07 37.60
:?:.вн::/ctp -593 -929 24
:?:.фиб::/ctp 2527 -377 93
:?:.маркет::/ctp -2353 295 170
;===================================================================================
:?:.балас::/ctp -70.06 -1824.64 26.94
:?:.ваг::/ctp 967 -1817 31
:?:.фэм::/ctp -204.29 -1513.69 31.60
:?:.бладс::/ctp 496 -1330 29.40
:?:.мара1::/ctp 1437.61 -1509.64 62.40
:?:.мара::/ctp 995 -2505 28
;===================================================================================
:?:.лкн::/ctp 1385 1154 114.40
:?:.рм::/ctp -1526 858 181
:?:.як::/ctp -1556.36 113.07 57
:?:.мекс::/ctp 381.03 23.12 91.40
:?:.ир::/ctp -3019.848 101.262 11.629
;===================================================================================
:?:.лост::/ctp 969.84 -128.40 74.40
:?:.аод::/ctp 1995.99 3062.44 47.06
;===================================================================================
:?:.воркт::/ctp 905.873 -182.840 74.113
:?:.воркм::/ctp -432.708 -1705.689 19.018
:?:.воркд1::/ctp 1185.185 -3250.850 6.029
:?:.воркд2::/ctp 74.213 6341.500 31.226
:?:.воркп::/ctp -220.035 -907.442 31.220
:?:.ворка::/ctp 457.760 -663.879 27.703
:?:.ворки::/ctp 1185.984 2691.326 37.798
:?:.воркф::/ctp 1185.984 2691.326 37.798
;===================================================================================
:?:.хум::/ctp 3569.54 3789.48 30
:?:.мейз::/ctp -75 -818 326
:?:.каз::/ctp 923.161 47.937 81.106
:?:.аш::/ctp -620 -2264 6
:?:.гг::/ctp -257 -2023 30
:?:.бургер::/ctp -1171.31 -890.20 13.90
:?:.багама::/ctp -1391.30 -585.35 30
:?:.кайо::/ctp 4488.58 -4493.52 4
:?:.авиа::/ctp 3035.21 -4688.55 15
:?:.мол::/ctp 61.67 -1751.80 47
:?:.трас::/ctp 7400 3946 1124
:?:.аук::/ctp -833 -699.50 27
:?:.бокс::/ctp 8.56 -1658.55 28.71
:?:.бар::/ctp -305.09 6259.59 30.92
:?:.бк::/ctp 500.44 109.79 96.49
:?:.ванила::/ctp 131.33 -1302.93 29.23
:?:.починка::/ctp -1430.45 -450.5 35.91
:?:.лск4::/ctp 1175.47 2671.33 37.85
:?:.порт::/ctp 417 -2501 13.46
:?:.стр::/ctp 1304 1453 98.87
:?:.лес::/ctp -321 6093 31.14
:?:.бмара::/ctp 1302 -1646 51.04
:?:.самол::/ctp 1473 2730 37.38
:?:.ключ::/ctp -51.316 -1077.890 29.904
:?:.особняк::/ctp 5011.070 -5750.629 32.853
;===================================================================================
:?:.инт1::/ctp -146.93 -595.68 166.43
:?:.инт2::/ctp 264.47 -1353.44 23.67
:?:.инт3::/ctp 2573.90 -260 -145.5
:?:.инт4::/ctp 2521 -234 -71
:?:.инт5::/ctp 2540 -269 -59
:?:.инт6::/ctp 303 -995 -94
:?:.инт7::/ctp 227 -986 -99
:?:.инт8::/ctp -3000 70 12
:?:.инт9::/ctp 2532.13 -277.68 -65.33
:?:.инт10::/ctp 2479.61 -272.62 -58.64
:?:.инт11::/ctp 2521.91 -269.01 -39.73
:?:.инт12::/ctp 2491.74 -246.01 -55.73
:?:.инт13::/ctp 2154.34 2916.8 -84.9
:?:.инт14::/ctp -1506.631 -2995.622 -82.207
:?:.инт16::/ctp 561.89 -446.65 -69.65
:?:.инт17::/ctp 478 -1271 -7
;===================================================================================
:?:.спд::/ctp 483.140 -996.473 30.690
:?:.семс::/ctp 309.812 -565.172 43.284
:?:.ссд::/ctp -434.720 6007.525 27.986
:?:.сфз::/ctp -2352.895 3256.369 92.904
:?:.сгов::/ctp -546.298 -192.803 32.882
:?:.свн::/ctp -594.387 -929.585 32.525
:?:.сфиб::/ctp 2516.250 -328.534 101.893
:?:.скайо::/ctp 4996.338 -5739.071 79.11
:?:.сяк::/ctp -1511.617 110.914 73.77
:?:.сир::/ctp -2956.760 42.077 7.964
:?:.срм::/ctp -1512.286 841.529 177.000
:?:.смекс::/ctp 411.211 5.318 84.922
:?:.слкн::/ctp 1397.579 1141.242 107.02
:?:.сбалас::/ctp -75.705 -1811.187 26.942
:?:.смара::/ctp 1445.227 -1486.904 66.535
:?:.сваг::/ctp 975.165 -1858.049 31.274
:?:.сбладс::/ctp 515.885 -1341.602 29.373
:?:.сфэм::/ctp -237.851 -1508.816 32.935
;===================================================================================
:?:.сш::/ctp 1888.585 3625.920 34.193
:?:.палето::/ctp -229.238 6108.973 75.349
:?:.ричман::/ctp -1927.219 358.418 103.399
:?:.рокфорд::/ctp -78.035 995.733 247.247
:?:.миррор::/ctp 1278.025 -531.254 83.166

:?:.ч::/ctp -511 4400 89 ; NRD угонки
:?:.ч1::/ctp 797 6437 32 ; NRD угонки №2
:?:.азс::/ctp 2678 3265 61 ; Азс №15
:?:.ашан::/ctp 2732 3483 74 ; Ашан ( рыбный мегамол - суета )
:?:.зеленый::/ctp -3136 1129 21 
:?:.рынок::/ctp -1245 -1472 4
:?:.дом2::/ctp 1429 3140 40 
:?:.дом::/ctp -167 428 111
:?:.так::/ctp -1126 4672 240 

:?:.клп::/ctp -196.836 6218.708 31.491
:?:.клс::/ctp 1728.313 3717.568 34.109
:?:.клм::/ctp -361.424 -129.636 38.696
:?:.клг::/ctp -40.529 -1077.648 26.653
:?:.лспд::/ctp 429 -980 30.50
:?:.шд2::/ctp 1843.770 3666.384 33.760
:?:.мэр::/ctp -534.70 -222.07 37.60
:?:.визл::/ctp -593 -929 24
:?:.бал::/ctp -70.06 -1824.64 26.94
:?:.мара::/ctp 1437.61 -1509.64 62.40
:?:.ам::/ctp -1895.23 2027.19 141
:?:.ир::/ctp -3028.926 100.118 11.614
:?:.груб::/ctp -3022 105 11.30
:?:.клаб::/ctp 1588.65 6445.38 25
:?:.рич::/ctp -1302.49 294.52 64.50
:?:.манор::/ctp -58.20 343.73 111.80
:?:.конт::/ctp -1865.51 -355.96 57
:?:.каз::/ctp 916 50 81
:?:.трасс::/ctp 7400 -656 1124
:?:.чил::/ctp 498 5592 795
:?:.сэнди::/ctp 1843.770 3666.384 33.760
:?:.палето::/ctp -434.87 6024.54 31.50
:?:.трасса::/ctp 7398 3276 1124
:?:.касатка::/ctp 514.33, 4886.18, -62.59
:?:.бункер::/ctp 2147.91, 2921.0, -61.9
:?:.серв::/ctp 2168.0, 2920.0, -84.0
:?:.овиз::/ctp -1044.193, -236.9535, 37.96496
:?:.бункеро::/ctp 899.5518,-3246.038, -98.04907
:?:.емска::/ctp 275.446, -1361.11, 24.5378
:?:.казик::/ctp 2491.74 -246.01 -55.73
:?:.гараж::/ctp -1504.59 -2992.51 -82.82
:?:.авиан::/ctp 3024 -4558 15
:?:.гаражгг::/ctp 405.9228, -954.1149, -99.6627
:?:.ириш::/ctp -3022 105 11.30
:?:.каз::/ctp 1110.117 217.0512 -49.56448

:?:/rfcfnrf::/ctp 514.33, 4886.18, -62.59
:?:/,eyrth::/ctp 2147.91, 2921.0, -61.9
:?:/cthd::/ctp 2168.0, 2920.0, -84.0
:?:/jdbp::/ctp -1044.193, -236.9535, 37.96496
:?:/,eyrthj::/ctp 899.5518,-3246.038, -98.04907
:?:/tvcrf::/ctp 275.446, -1361.11, 24.5378
:?:/rfpbr::/ctp 2491.74 -246.01 -55.73
:?:/ufhf;::/ctp -1504.59 -2992.51 -82.82
:?:/fdbfy::/ctp 3024 -4558 15
:?:/ufhf;uu::/ctp 405.9228, -954.1149, -99.6627
:?:/fjl::/ctp 1995.99 3062.44 47.06
:?:/bhbi::/ctp -3022 105 11.30
:?:/rkf,::/ctp 1588.65 6445.38 25
:?:/hbx::/ctp -1302.49 294.52 64.50
:?:/vfyjh::/ctp -58.20 343.73 111.80
:?:/rjyn::/ctp -1865.51 -355.96 57
:?:/[ev]::/ctp 3569.54 3789.48 30
:?:/vtqy::/ctp -75 -818 326
:?:/rfp::/ctp 1110.117 217.0512 -49.56448
:?:/fer::/ctp -833 -699.50 27
:?:/rkg::/ctp -196.836 6218.708 31.491 
:?:/rkc::/ctp 1728.313 3717.568 34.109
:?:/rkv::/ctp -361.424 -129.636 38.696
:?:/rku::/ctp -40.529 -1077.648 26.653 
:?:/kcgl::/ctp 429 -980 30.50
:?:/,jk::/ctp 287.70 -578.35 50
:?:/il::/ctp -434.87 6024.54 31.50
:?:/il2::/ctp 1843.770 3666.384 33.760
:?:/ap::/ctp -2336 3257 32.50
:?:/v'h::/ctp -534.70 -222.07 37.60
:?:/dbpk::/ctp -593 -929 24
:?:/ab,::/ctp 2527 -377 93
:?:/,fk::/ctp -70.06 -1824.64 26.94
:?:/dfu::/ctp 967 -1817 31
:?:/a'v::/ctp -204.29 -1513.69 31.60
:?:/,kflc::/ctp 496 -1330 29.40
:?:/vfhf::/ctp 1437.61 -1509.64 62.40
:?:/kry::/ctp 1385 1154 114.40
:?:/hv::/ctp -1526 858 181
:?:/zr::/ctp -1556.36 113.07 57
:?:/vtrc::/ctp 381.03 23.12 91.40
:?:/fv::/ctp -1895.23 2027.19 141
:?:/bh::/ctp -3028.926 100.118 11.614
:?:/kjcn::/ctp 969.84 -128.40 74.40
:?:/ajl::/ctp 1995.99 3062.44 47.06
:?:/[ev::/ctp 3569.54 3789.48 30
:?:/vtqp::/ctp -75 -818 326
:?:/rfp::/ctp 916 50 81
:?:/fi::/ctp -620 -2264 6
:?:/uu::/ctp -257 -2023 30
:?:/,ehuth::/ctp -1171.31 -890.20 13.90
:?:/,fufvf::/ctp -1391.30 -585.35 30
:?:/rfqj::/ctp 4488.58 -4493.52 4
:?:/fdbf::/ctp 3035.21 -4688.55 15
:?:/vjk::/ctp 61.67 -1751.80 47
:?:/nhfc::/ctp 7400 3946 1124
:?:/nhfcc::/ctp 7400 -656 1124
:?:/fec::/ctp -833 -699.50 27
:?:/,jrc::/ctp 8.56 -1658.55 28.71
:?:/,fh::/ctp -305.09 6259.59 30.92
:?:/,r::/ctp 500.44 109.79 96.49
:?:/dfybkf::/ctp 131.33 -1302.93 29.23
:?:/gjxbyrf::/ctp -1430.45 -450.5 35.91
:?:/kcr4::/ctp 1175.47 2671.33 37.85
:?:/gjhn::/ctp 417 -2501 13.46
:?:/cnh::/ctp 1304 1453 98.87
:?:/ktc::/ctp -321 6093 31.14
:?:/,vfhf::/ctp 1302 -1646 51.04
:?:/cfvjk::/ctp 1473 2730 37.38
:?:/xbk::/ctp 498 5592 795
:?:/c'ylb::/ctp 1843.770 3666.384 33.760
:?:/gfktnj::/ctp -434.87 6024.54 31.50

:?:.т1::/ctp -72.524 6452.428 32.590
:?:.т2::/ctp 410.450 6484.223 30.132
:?:.т3::/ctp 1957.579 5157.838 47.820
:?:.т4::/ctp 128.298 -1071.993 30.887
:?:.т5::/ctp -726.423 -356.884 36.327
:?:.т6::/ctp 1205.841 -3101.475 6.974
:?:.т7::/ctp 521.64 168.52 99.37

:?:/n1::/ctp -72.524 6452.428 32.590
:?:/n2::/ctp 410.450 6484.223 30.132
:?:/n3::/ctp 1957.579 5157.838 47.820
:?:/n4::/ctp 128.298 -1071.993 30.887
:?:/n5::/ctp -726.423 -356.884 36.327
:?:/n6::/ctp 1205.841 -3101.475 6.974
:?:/n7::/ctp 521.64 168.52 99.37


:?:.п1::/ctp -1683 -48 65 {Enter}
:?:.п2::/ctp 206 -1616 30 {Enter}
:?:.п3::/ctp 1134 -419 66 {Enter}
:?:.п4::/ctp 52 -1713 30 {Enter}
:?:.п5::/ctp 360 -1627 32 {Enter}
:?:.п6::/ctp 2628 3660 103 {Enter}
:?:.п7::/ctp 3390 5503 25 {Enter}
:?:.п8::/ctp 2177 3742 36 {Enter}
:?:/g1::/ctp -1683 -48 65 {Enter}
:?:/g2::/ctp 206 -1616 30 {Enter}
:?:/g3::/ctp 1134 -419 66 {Enter}
:?:/g4::/ctp 52 -1713 30 {Enter}
:?:/g5::/ctp 360 -1627 32 {Enter}
:?:/g6::/ctp 2628 3660 103 {Enter}
:?:/g7::/ctp 3390 5503 25 {Enter}
:?:/g8::/ctp 2177 3742 36 {Enter}

:?:.обыч::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput, /setdim %Dinamic% 0
return

:?:/j,sx::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput, /setdim %Dinamic% 0
return

; Капты
:?:.каптд::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput, /setdim %Dinamic% 9871 
return 

:?:/rfgnl::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput, /setdim %Dinamic% 9871 
return 

;бизвары
:?:.бизд::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput, /setdim %Dinamic% %Dimension%
return

:?:.лес1::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp -595.156 5299.820 70.215{Enter}
return

:?:.лес2::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp -292.054 6068.327 31.332{Enter}
return

:?:.стройка1::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp 1058.867 2358.396 44.685{Enter}
return

:?:.стройка2::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp 1290.761 1480.779 98.775{Enter}
return

:?:.свалка1::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp 2395.213 3103.875 48.152{Enter}
return

:?:.свалка2::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp 1212.702 2697.979 37.996{Enter}
return

:?:.порт1::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp 536.451 -3124.175 6.070{Enter}
return

:?:.порт2::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp 293.276 -2513.677 5.866{Enter}
return

:?:.мара1::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp 1715.024 -1656.429 112.469{Enter}
return

:?:.мара2::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput,{T}
sleep 500
SendInput, /ctp 1244.671 -1678.745 42.763{Enter}
return

:?:/,bpl::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput, /setdim %Dinamic% %Dimension%
return

:?:/ktc1::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp -595.156 5299.820 70.215{Enter}
return

:?:/ltc2::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp -292.054 6068.327 31.332{Enter}
return

:?:/cnhjqrf1::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp 1058.867 2358.396 44.685{Enter}
return

:?:/cnhjqrf2::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput, /ctp 1290.761 1480.779 98.775{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput,/setdim %Dinamic% %Dimension%{Enter}
return

:?:/cdfkrf1::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp 2395.213 3103.875 48.152{Enter}
return

:?:/cdfkrf2::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp 1212.702 2697.979 37.996{Enter}
return

:?:/gjhn1::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp 536.451 -3124.175 6.070{Enter}
return

:?:/gjhn2::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp 293.276 -2513.677 5.866{Enter}
return

:?:/vfhf1::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
SendInput, {T}
sleep 500
SendInput, /ctp 1715.024 -1656.429 112.469{Enter}
Sleep 1000
return

:?:/vfhf2::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp 1244.671 -1678.745 42.763{Enter}
return

;ган
:?:.миниг::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput,/gw %Dinamic% weapon_minigun 9999
return
:?:.ревик::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput,/gw %Dinamic% weapon_revolver 9999
return
:?:.ракет::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput,/gw %Dinamic% weapon_firework 9999
return
:?:.хевик::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput,/gw %Dinamic% weapon_heavysniper_mk2 9999
return
:?:.топор::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput,/gw %Dinamic% weapon_hatchet  9999
return

:?:/vbybu::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput,/gw %Dinamic% weapon_minigun 9999
return
:?:/htdbr::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput,/gw %Dinamic% weapon_revolver 9999
return
:?:/hfrtn::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput,/gw %Dinamic% weapon_firework 9999
return
:?:/[tdbr::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput,/gw %Dinamic% weapon_heavysniper_mk2 9999
return
:?:/njgjh::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput,/gw %Dinamic% weapon_hatchet  9999
return

; Команды
:?:/bch::/bancheck
:?:.иср::/bancheck
:?:/jch::/ajailcheck 
:?:.оср::/ajailcheck 
:?:.ифтсрусл::/bancheck
:?:.фофшдсрусл::/ajailcheck 
:?:/tf::/tempfamily 
:?:.еа::/tempfamily 
:?:/sm::/setmaterials 
:?:.ыь::/setmaterials 
:?:/tn::/tempname 
:?:.ет::/tempname 
:?:.еуьзтфьу::.еуьзтфьу 
:?:.яяв::/zzdebug 
:?:/zzd::/zzdebug 
:?:/Usefull::/addUsefullitheater 
:?:.фьзр::/addUsefullitheater 
:?:/rUsefull::/removeUsefullitheater 
:?:.кфьзр::/removeUsefullitheater 
:?:/gzone::/togglegreenzone 
:?:.пящту::/togglegreenzone 
:?:/mcheck::/mutecheck 
:?:.ьсрусл::/mutecheck 
:?:.ьгеусрусл::/mutecheck 
:?:.гтофшд::/unjail 
:?:.цфкт::/warn 
:?:/ld::/lastdriver 
:?:.дв::/lastdriver 
:?:/af::/ainfect 
:?:.фа::/ainfect 
:?:/sk::/skick 
:?:.ыл::/skick 
:?:/k::/kick 
:?:.л::/kick 
:?:/ai::/auninvite 
:?:.фш::/auninvite 
:?:.аи::/fb 
:?:/aif::/ainfect  
:?:.фша::/ainfect 
:?:.с::/c  
:?:.си::/cb 
:?:.гтьгеу::/unmute 
:?:.пшв::/gid 
:?:.фвьшты::/admins 
:?:.фштаусе::/ainfect 
:?:.умутещт::/eventon 
:?:.умутещаа::/eventoff 
:?:.пц::/gw 
:?:.мур::/veh 
:?:.ашчсфк::/fixcar 
:?:.уьздуфвук::/templeader 
:?:/tl::/templeader 
:?:.ед::/templeader 
:?:.ылшсл::/skick 
:?:.кузфшк::/repair 
:?:.фгтшмшеу::/auninvite 
:?:.учсфк::/excar 
:?:.агуд::/fuel 
:?:.згддекгтл::/pulltrunk 
:?:.акууя::/freez 
:?:.езсфк::/tpcar 
:?:.дфыевкшмук::/lastdriver 
:?:.вудшеуь::/delitem 
:?:/gc::/getcar 
:?:.пс::/getcar 
:?:.фв::/admins 
:?:/ad::/admins 
:?:.з::/players 
:?:/p::/players 
:?:.здфнукы::/players 
:?:.рес::/rescue 
:?:/htc::/rescue 
:?:.багажник::/pulltrunk
:?:.ез::/tp 
:?:.ызус::/spec 
:?:.ызусщаа::/specoff {Enter}
:?:.фыьы::/asms 
:?:.ф::/a 
:?:/sp::/spec 
:?:.ыз::/spec 
:?:/so::/specoff {Enter} 
:?:.ыщ::/specoff {Enter} 
:?:/kill::/hp 0{left 2}
:?:.лшдд::/hp 0{left 2}
:?:.штсфк::/incar 
:?:.пр::/gh 
:?:.штм::/inv 
:?:.шв::/id 
:?:.рз::/hp 
:?:.од::/ajail 
:?:.еуьздуфвук::/templeader
:?:.еуьздуфвук 7::/templeader 7
:?:.еуьздуфвук 3::/templeader 3
:?:.еуьздуфвук 4::/templeader 4
:?:.еуьздуфвук 2::/templeader 2
:?:.фофшд::/ajail 
:?:.лшсл::/kick 
:?:.ылшсл::/skick 
:?:.кузфшк::/repair 
:?:.вд::/dl 
:?:.уыз::/esp3 
:?:.уыз3::/esp3 
:?:.пуесфк::/getcar 
:?:.ифт::/ban 
:?:.вудмур::/delveh 
:?:.ьез::/mtp 
:?:.мур::/veh 
:?:.фмур::/aveh 
:?:.рфквифт::/hardban 
:?:.ьгеу::/mute 
:?:.пшв::/gid 
:?:.ср::/chide 
:?:/ch::/chide 
:?:.куысгу::/rescue 
:?:.ыуевшь::/setdim 
:?:/sd::/setdim 
:?:.и::/b 
:?:.ц::/w 
:?:.ыв::/setdim 
:?:.сршву::/chide 
:?:.ыуеешьудщсфд::/settimelocal
:?:.афк::/a афк мин{left 4}
:?:/far::/a афк мин{left 4}
:?:.бдим::/setdim 3{left 2}
:?:.кдим::/setdim 555{left 4}
:?:.фгтсгаа::/auncuff 
:?:.фсгаа::/acuff 
:?:.акууяу::/freeze
:?:/scd::/setcardim 
:?:.ыуесфквшь::/setcardim 
:?:.ысв::/setcardim 
:?:/rst::/resettempname 
:?:.кые::/resettempname 
:?:.куыуееуьзтфьу::/resettempname 
:?:.ты::/netstat 
:?:/ns::/netstat 
:?:.вм::/delveh 
:?:/dv::/delveh 
:?:/hard::/hardban 
:?:.рфкв::/hardban 
:?:/as::/asms 
:?:.фы::/asms 
:?:.пез::/gtp
:?:.пь::/gm
:?:.тс::/noclip 
:?:/nc::/noclip 
:?:/acf::/acuff 
:?:.фса::/acuff 
:?:/auf::/auncuff 
:?:.фга::/auncuff 
:?:.а::/f 
:?:.ылшт::/skin
:?:.езр::/tph
:?:.фмур::/aveh
:?:.фдщсл::/alock
:?:.гти::/unban 
:?:/unb::/unban
:?:.гто::/unjail
:?:/unj::/unjail
:?:/dvr::/delvehrange 
:?:.вмк::/delvehrange 
:?:.щи::/objdl
:?:/ob::/objdl
:?:/pr::/prange
:?:.зк::/prange
:?:/fr::/frange
:?:.ак::/frange
:?:.акфтпу::/frange
:?:.зкфтпу::/prange
:?:.зштп::/ping
:?:/mch::/mutecheck
:?:.ьср::/mutecheck
:?:.щ::/o
:?:.снег::/togglesnow 0
:?:.сет::/settimelocal 20 20 20
:?:.клеар::/setweatherlocal extrasunny
:?:/cytu::/togglesnow 0
:?:/ctn::/settimelocal 20 20 20
:?:/rktfh::/setweatherlocal extrasunny
:?:.лида::/templeader
:?:/kblf::/templeader
:?:.клирчат::/aclearchat
:?:.опп::Основные правила проекта
:?:.поип::Правила ограблений и похищений
:?:.пко::Правила криминальных организаций
:?:.пго::Правила государственных организаций
:?:.ппп::Правила перехвата поставок
:?:.вза::Правила войны за AirDrop
:?:/jgg::Основные правила проекта
:?:/gjbg::Правила ограблений и похищений
:?:/grj::Правила криминальных организаций
:?:/guj::Правила государственных организаций
:?:/ggg::Правила перехвата поставок
:?:/dpf::Правила войны за AirDrop
:?:.дфыефс::/lastac
:?:.дфые::/lastac
:?:/last::/lastac
:?:.читы::/gettopcheaters
:?:/xbns::/gettopcheaters

!e::
SendMessage, 0x50,, 0x4190419,, A
sleep 150
SendInput, Здравствуйте, сейчас займусь Вашим обращением.
sleep 150
SendInput,{enter}
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
return

:?:/ble::
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую, иду.
SendInput, {Enter}
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
Return

:?:.иду::
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую, иду.
SendInput, {Enter}
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
Return

:?:.ку::
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.
SendInput, {Enter}
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
Return

:?:/re::
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.
SendInput, {Enter}
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
Return

:?:.сек::
SendMessage, 0x50,, 0x4190419,, A
SendInput, Здравствуйте, сейчас помогу вам.
SendInput, {Enter}
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
Return

:?:/ctr::
SendMessage, 0x50,, 0x4190419,, A
SendInput, Здравствуйте, сейчас помогу вам.
SendInput, {Enter}
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
Return

; Предметы:
:?:.канистра::Чтобы использовать канистру, возьмите её в руки, нажмите G на авто и выберите "Заправить".  
:?:.сейф::Закрывать интерфейс сейфа можно только на ESC. В сейф можно класть до 5 миллионов. Деньги берутся из наличных. Нельзя продать дом в гос, передать игроку, предложить обмен или выставить на аукцион, если в сейфе есть деньги — их сначала нужно забрать. Если дом слетает по налогам, деньги из сейфа переходят в наличку владельца.  
:?:.метал::Металлоискатель становится активным, как только вы берёте его в руки. При обнаружении сокровищ появятся визуальные и звуковые сигналы — от зелёного до красного цвета. Сокровища можно найти на пляжах и архипелагах.  
:?:.ганлиц::Лицензию на оружие можно получить в LSPD или LSCSD.  
:?:.дублик::Чтобы сделать дубликат ключей от авто, купите заготовку в магазине 24/7, затем нажмите G на авто и выберите "Сделать дубликат".  
:?:.ремонт::Сначала купите запчасть для машины на любой АЗС, затем откройте капот, нажмите G и выберите "Починить замок/аккумулятор/залить масло".  
:?:.рем::Чтобы починить своё авто, купите ремкомплект на любой АЗС, затем через меню G выберите "Починить автомобиль".  
:?:.замок::Купите "Дверной замок" и "Набор инструментов" на ближайшей заправке, затем подойдите к транспорту, нажмите G -> Капот, затем G -> "Починить дверной замок".  
:?:.акум::Купите "Аккумулятор" и "Набор инструментов" на ближайшей заправке, затем подойдите к транспорту, нажмите G -> Капот, затем G -> "Заменить аккумулятор".  
:?:.масло::Купите "Моторное масло" и "Набор инструментов" на ближайшей заправке, затем подойдите к транспорту, нажмите G -> Капот, затем G -> "Заменить масло".  
:?:.клад::Чтобы сделать дубликат ключей от кладовки, купите заготовку в магазине 24/7, затем через G передайте дубликат нужному человеку.  
:?:.рац::Использование: возьмите рацию, введите частоту, нажмите Enter, затем зажмите "M" для передачи голоса.  
:?:.рация::Приобрести рацию можно в любом магазине 24/7 в разделе “Электроника”. За всеми фракциями закреплены частотные диапазоны, которые нельзя занимать. В F2 -> Настройки можно изменить громкость рации.  
:?:.майки::Чтобы купить майку под верхнюю одежду, сначала приобретите элемент верхней одежды (например, пиджак). После этого в разделе "Майки" станут доступны варианты, подходящие к выбранному элементу.  
:?:.дрон::Дрон крафтится у силовых госструктур и Weazel News. Пользоваться им могут только эти организации. Управление: пробел — вверх, Shift — вниз, E — включить/выключить тепловизор.  
:?:.болгарка::Чтобы распилить багажник, подойдите к нему, нажмите G -> "Нелегальное для авто" -> "Распилить дверной замок". Багажник откроется, и вы сможете взять оттуда коробки с материалами или снаряжением. Взламывать можно не только госматовозки, но и крайм-транспорт. Личный транспорт болгаркой вскрыть нельзя.  

; Локации:
:?:.грибы::Чтобы собирать грибы, вам надо приехать на точку "Грибы" 1/6 и взять в руки нож.
:?:.рын::Рынок находится в Лос-Сантосе на пляже рядом с качалкой, в Палето-Бэй и на ферме, иконка — палатка. Там вы можете сдавать предметы с фермы, дровосека, грибника и рыбалки.
:?:.сто::Степень износа определённых деталей автомобиля можно узнать в автомастерской (иконка гаечного ключа с отверткой на карте).
:?:.ферм::На ферме для посадки каждого из растений нужны следующие навыки: Пшеница — 225 опыта. Картофель — 950 опыта. Капуста — 2000 опыта. Кукуруза — 3000 опыта. Тыква — 6200 опыта. Бананы — 10 500 опыта.
:?:.лесоруб::Устраиваться необходимо всё у того же NPC около Палето-Бэй. Для начала работы вам понадобится “Топор”, купить его можно у NPC на рынке. Принцип работы схож с грибниками, точки для сруба деревьев разбросаны по всей карте, каждый уровень привязан к своей точке сбора. Древесину можно продать на рынке. 
:?:.спавн::Спавн новичков находится в Палето-Бэй, Чумашах, аэропорту и на автовокзале. 
:?:.гос::Вы можете сдать авто на свалку. После сдачи вы получите 75% от гос. стоимости авто. Свалка отмечена на карте как перечеркнутый красный круг.
:?:.дрзона::Чтобы найти зону для дрифта, откройте карту. На карте она отмечена в виде колеса в огне. Приезжаете, нажимаете **E** на точке (синяя метка) — и вы в дрифт-зоне. 
:?:.джо::NPC Джо находится около участка LSPD. Подробнее — https://yapx.ru/album/Wn7AI
:?:.фед::На первом этаже стоит NPC, у которого можно взять задание. Чтобы отбыть срок в федеральной тюрьме, нужно выполнять задачи. Например, помыть туалет. В определённое время тюрьма закрывает клетки на 5 минут, соответственно, в это время отбыть срок нельзя:  
- **00 минут** — открытие клеток  
- **20 минут** — закрытие клеток на 5 минут  
- **25 минут** — открытие клеток  
- **55 минут** — закрытие клеток на 5 минут  
:?:.пут::Чтобы найти путеводителя, вам необходимо открыть карту и найти значок в виде человека, махающего рукой. Далее подойдите к нему и нажмите **E**. Вам будет доступна аренда авто, а также взятие начального квеста.
:?:.билл::NPC Билл находится на рынке около фермы.
:?:.зонадрифта::Чтобы найти зону для дрифта, откройте карту. На карте она отмечена в виде колеса в огне. Приезжаете, нажимаете **E** на точке (синяя метка) — и вы в дрифт-зоне.
:?:.рыбмагаз::Все предметы для рыбалки продаются в рыболовном магазине, они убраны из 24/7. Подсаки купить нельзя, их можно только крафтить в домашних мастерских.
:?:.штраф::Чтобы оплатить штраф, нужно приехать на штрафстоянку и спуститься вниз. Там будет бот, у которого можно оплатить.  

; Навыки:
:?:.вынос::Выносливость — навык повышается при активном образе жизни. Чем больше ты бегаешь, тем быстрее он растет. При низком уровне персонаж не может прыгнуть дважды и падает. С повышением навыка увеличивается длительность беспрерывного бега и количество прыжков (максимум — 2 на последнем уровне).
:?:.сила::Сила - навык силы повышается от физических нагрузок. Чем больше Вы занимаетесь в качалке (иконка бегущего человека на карте), тем быстрее повышается навык. От прокачки увеличивается сопротивление к урону от падения.
:?:.дых::Дыхание — навык увеличивается при длительном нахождении под водой. Чем больше Вы плаваете, тем быстрее он растет. С повышением навыка увеличивается время беспрерывного плавания под водой.
:?:.вожден::Вождение — навык повышается с увеличением времени за рулем. Чем больше ты водишь транспорт, тем быстрее растет навык. Прокачка улучшает управляемость транспортного средства.
:?:.полет::Пилотирование — навык увеличивается при управлении воздушным транспортом. Чем больше Вы летаете на самолете или вертолете, тем быстрее он растет. Также можно пройти курсы в летной школе (1 раз в 24 часа). Одно занятие дает +10 к навыку, стоимость — 2 000$. С прокачкой улучшается стабильность полета и управляемость воздушным транспортом.
:?:.скрытн::Скрытность — навык повышается за успешные уходы от погони (снижение уровня розыска). Чем чаще Вы скрываетесь от полиции, тем быстрее он растет. Не влияет ни на что.
:?:.стрельба::Стрельба — навык растет при участии в перестрелках или тренировках. Чем лучше Вы стреляете и попадаете, тем быстрее он повышается. Рекомендуется тренироваться в тире оружейного магазина. Прокачка навыка увеличивает скорость перезарядки и перекатов, а также кучность стрельбы.

; Информация:
:?:.клвл::При достижении 5-го уровня: 500 MC. При достижении 10-го уровня: 1000 MC. При достижении 15-го уровня: 2000 MC. При достижении 20-го уровня: 3000 MC. При достижении 25-го уровня: 4000 MC. При достижении 30-го уровня: 5000 MC. Каждый следующий уровень после 30-го — 1500 MC.
:?:.ставка::Расчёт ставки обычно происходит в течение 6-ти часов. Администрация не управляет процессом расчёта.
:?:.сем::Планшет - Семья - Информация - Покинуть семью.
:?:.зп::Чтобы получать PayDay, вам нужно иметь свою банковскую карту и быть уволенным со всех работ. Оформить её можно в любом банке.
:?:.ехп::Каждый час (у каждого игрока своё время) вам начисляется EXP. Чтобы узнать, сколько осталось до следующего PayDay, нажмите клавишу F2 — Статистика.
:?:.вики::Тут вы можете найти любую информацию о проекте и его системах: https://wiki.majestic-rp.ru/
:?:.увал::К сожалению, ничем не можем помочь. Мы увольняем только в случае, если у фракции нет лидера. Дождитесь своего лидера или заместителей.
:?:.слух::Функция "Я не слышу" предназначена для людей с нарушением слуха или его отсутствием. Злоупотребление этой функцией карается баном вашего персонажа. Отключить её можно в меню F2 — Настройки. Спасибо за понимание.
:?:.дон::Задонатить можно на нашем официальном сайте: majestic-rp.ru/donate
:?:.гриб::Продать грибы можно на рынке.
:?:.оружрын::Боту на рынке можно сдать оружие только с 100% износом.
:?:.хп::Перезайдите в игру или купите таблетку у сотрудников EMS.
:?:.аним::Остановите анимацию. Нажмите X > Остановить анимацию или Backspace.
:?:.группа::Чтобы работать на кооперативной работе, вам необходимо пригласить игроков через приложение "Группа" в телефоне.
:?:.новость::Придите лично в Weazel News.
:?:.нов::Следите за новостями сервера в официальном Discord проекта.
:?:.ново::Следите за новостями в официальном Discord проекта.
:?:.подсел::Чтобы подселить игрока в дом или квартиру, стоя около дома, наведитесь на игрока и нажмите G, затем выберите "Подселить".
:?:.модел::Пункт "Прогрузка моделей" отвечает за скорость прогрузки текстур при приближении к ним.
:?:.бизограб::Чтобы ограбить бизнес, вам нужно: надеть маску, приобрести оружие и, придя в магазин с составом от 2 до 35 человек, навестись на NPC (продавца) огнестрельным оружием (только один человек должен грабить).
:?:.кредит::Любые финансовые договоры (займы, кредиты и т.д.) не относятся к ООС сделкам. Все подобные сделки игроки совершают на свой страх и риск. Администрация не несет ответственности и не является гарантом сделки.
:?:.сделка::Администрация не следит за сделками игроков, запишите видео на случай обмана, чтобы оставить жалобу на игрока на форуме.
:?:.госдом::Чтобы продать дом по гос. стоимости, подойдите к двери и нажмите Е. Вы получите 75% от его гос. цены. Если вы не вовремя оплатите налоги или забудете это сделать, дом будет автоматически утратен.
:?:.рыблиц::Получить лицензию на рыбалку можно в Мэрии.
:?:.кости::Чтобы играть в кости, вам нужно купить их в любом 24/7. После того как вы купите кости, подойдите к игроку.
:?:.парк::Чтобы припарковать ТС, за рулем нажмите G — Припарковать.
:?:.толкать::Транспорт можно толкать, нажав G — Толкать. Если такой функции нет при наведении на авто, этот транспорт толкать нельзя.
:?:.счет::Чтобы узнать номер счёта, откройте инвентарь и наведитесь мышкой на банковскую карту.
:?:.пин::Чтобы восстановить пин-код, отправляйтесь в банковское отделение, в меню смены нажмите "Восстановить".
:?:.аут::Для подключения Google Authenticator вам нужно в меню выбора персонажа открыть раздел настроек.
:?:.огр::Чтобы начать ограбление банка, вам нужно позвонить по номеру: 28121903. Для этого нужно состоять в крайм-организации и быть рядом с банком (вас должно быть минимум 4 человека). Для начала ограбления требуется "План ограблений", который можно получить через AirDrops или при ограблении бизнесов. Можно грабить один раз в день каждой организацией. После начала ограбления и появления красной иконки банка, прицелитесь в бота и заполните прогресс-бар. После этого будет большая дверь, чтобы её разблокировать, нужно пройти мини-игру со взломом. Для этого используйте «Программатор ЭБУ» и «Кабель электронных дверей», который продается у торговца на рынке. После взлома перед вами будет стойка с деньгами, и для взлома второй двери потребуется «Ключ карта Fleeca» или «Термитная установка». «Ключ карта Fleeca» выпадает с ботов при ограблении бизнесов или на аирдропах. «Термитная установка» продается у пиротехника и используется для открытия двери за 2 минуты.
:?:.огр2::Чтобы открыть дверь в хранилище, возьмите в руки один из предметов. Для взлома ячеек потребуется «Дрель 1500w», которую можно крафтить в криминальных организациях или найти после смерти. После успешного взлома ячейки награда выпадет на пол.
:?:.зкайо::На острове есть несколько точек захвата медицинских, военных и технических материалов. Для захвата вам нужно взять с собой маячки (подберите цвета). Если у вас маячки зелёного цвета, вы можете захватить военные материалы, синие — технические, а красные — медицинские. Захват можно начать в радиусе 50 м от точки погрузки. После активации маячка появится зона захвата, и если вы выйдете за её пределы или все захватчики умрут, маячок уничтожится, а точка вернётся в спокойное состояние. Не забывайте про сигнализацию: если её не выключить, все госструктуры будут оповещены и встретят вас с сопротивлением. Это не повлияет на функциональность захвата. После захвата точка на карте меняет цвет в зависимости от организации захватчиков. Игроки могут забирать материалы с точки и грузить их в личную или арендованную лодку, а в городе перегружать в матовозку.
:?:.перико::У всех силовых фракций появилась метка для телепортации, за исключением EMS/WN/GOV. Отделение LSCSD в Сэнди-Шорс также не имеет метки. Каждая фракция телепортируется в одну точку на острове, таким путём и обратно. Вы не сможете телепортироваться на точку другой фракции. Например, если вы из FIB и хотите телепортироваться на территорию LSCSD, у вас не получится. На острове, возле особняка и на его территории, есть машины, вертолёты и квадроциклы, с которыми может взаимодействовать только SANG. Также SANG получил ещё один склад на Кайо-Перико, аналогичный складу на форте. Если на форте будет заполнено 20.000, то и на острове тоже.
:?:.сирена::Вышку можно взломать, но статус контроля точек не будет обновляться в течение 10 минут. Для взлома необходимы "Программатор ЭБУ" и "Кабель радио сигналов". Кабель можно получить при ограблении магазина 24/7 (шанс выпадения — редкий-средний), он одноразовый и исчезает после использования. Взлом происходит в мини-игре. После удачного взлома, на мини-карте не будет отображаться статус захвата точек для SANG в течение 10 минут. При неудачном взломе сразу срабатывает сирена. SANG могут восстановить работу вышки, нажав "Е" на метке вышки.
:?:.маяк::Маячки могут выпасть с "AirDrop" или при ограблении 24/7. Шанс выпадения разных маячков различен.
:?:.зоо::Система животных. Могут спавниться различные животные, от крыс до оленей по всей карте. Некоторые виды животных можно разделать, чтобы получить мясо, которое можно жарить и употреблять в пищу. Домашних животных, гуляющих по карте, можно гладить.
:?:.скин::Оружие скин появляется в донат-инвентаре, его можно будет распылить. Однако при его применении распыление будет невозможно. Чтобы применить скин на оружие: F2 — Магазин — Скины — выберите оружие и скин к нему — Применить. Скин применяется ко всем оружиям выбранного типа. Скин привязывается к игроку, выбить оружие со скином, сбросить, обменять или продать его — невозможно.
:?:.инт::Популярные интерьеры на карте: "Особняк у виноградников" — открытый интерьер без функционала, расположен слева от центра карты. "Суд" — открытый интерьер без функционала, рядом с LSPD, используется для заседаний Верховного или окружного суда. "Университет" — открытый интерьер без функционала, рядом с Японской мафией. "Старый офис FIB" — открытый интерьер без функционала, рядом с EMS.
:?:.выб::Выборы активны с 10:00 до 10:00 по московскому времени. Проголосовать может каждый игрок с 3-го уровня персонажа, по принципу один голос на один аккаунт. Голосование проходит в левом крыле Мэрии (на карте флаг USA).
:?:.вак::От вакцины, выданной администрацией, квест не будет засчитан. Ожидайте появления врача.
:?:.бинд::Вы можете настроить бинд клавиш под себя в F2 — Настройки — Бинд клавиш.
:?:.флаг::Командный режим боя, в котором вы сможете противостоять своим оппонентам в равных условиях. В этом режиме вы можете поднимать оружие на "F" (по умолчанию), а также купить оружие на заработанные во время матча деньги. Для этого нажмите "B". Матч закончится, когда одна из команд потеряет все очки. Скорость их потери/накопления зависит от количества захваченных вашей командой точек.
:?:.лобби::Это ваша игра, созданная вами для друзей или обычных игроков, где все правила настраиваете именно вы. Для того чтобы начать, нужно: дать название своему лобби (в графе "Название лобби"), выбрать один из трёх доступных режимов (Гонка вооружений/Бой на смерть/Захват флага), выбрать карту. Далее вы сможете установить пароль, если не хотите видеть лишних игроков. После всех первичных настроек откроются дополнительные: требование для победы, оружие, время суток, одежда (если выбрать "Нет", игрок временно сменит одежду в матче), погодные условия, авто-баланс команд (в случае захвата флага) и другие. Помните, за создание лобби необходимо заплатить от 1.250$ до 2.800$.
:?:.заж::Чтобы взломать зажигание, сядьте за руль ТС, нажмите G — Взломать зажигание. КД на взлом — 1 час.
:?:.стрим::Режим стримера заменяет символы на звездочки, для обычных игроков он бесполезен. Выключается в F2 — Настройки.
:?:.пар::Положите парашют в быстрый слот, затем перед прыжком нажмите 1, 2 или 3 (в зависимости от слота), после этого ЛКМ, парашют откроется.
:?:.гв::Это режим на Maze Bank Arena. Можете найти её на карте, возле Гетто.
:?:.гетто::Для выполнения задания в Гетто, нужно находиться там и убить игрока с оружием. Задание не сработает, если игрок с вами в одной фракции/семье, или если вы пожали руку.
:?:.лик::Лицензию можно получить у сотрудников LSPD или LSCSD.
:?:.лиц::Лицензию можно получить у сотрудников LSPD или LSCSD.
:?:.износ::Чтобы починить авто в автомастерской, вам нужно иметь изношенную запчасть, минимум 95%.
:?:.стат::В F2 — Персонаж — Статистика.
:?:.кв::Текущий квест отображается над таймером Majestic Coins. Если его нет, нажмите F6.
:?:.кмб::Чтобы устроиться в силовую гос. структуру, необходимо получить военный билет. Для этого нужно устроиться в SANG и пройти КМБ. Иконка зеленого самолета на карте. Подробнее уточните у старшего состава фракции.
:?:.нарк::Пакетики Blue и White нельзя получить, их функционал аналогичен Green, но с разными эффектами.
:?:.алис::Чтобы выключить GPS-ассистента, нажмите F2 — Настройки и выключите GPS-ассистента.
:?:.верт::Вертолеты продаются в салоне недалеко от аэропорта.
:?:.поход::Изменить походку и эмоции лица можно в F2 — Настройки — Главное.
:?:.нал::Чтобы оплатить налоги на дом, откройте приложение "Мой дом" на планшете.
:?:.нин::Предметы можно вращать, нажав на пробел. Если дважды нажать по предмету, он будет использован (перемещен в активный слот или надет).
:?:.роз::Добавлена система преследования. Чтобы начать преследование, нужно выдать розыск — зайти в Планшет — Фракция — База данных — Начать преследование. На карте появится метка местоположения игрока, которая обновляется каждые 30 секунд. Если игрок, за которым ведется преследование, заходит в другой дименшен/интерьер/выходит из игры — он исчезает с радаров. Если гос. игрок подходит к метке или к игроку — преследование заканчивается.
:?:.ар::После окончания срока аренды авто глушится, и появляется диалоговое меню, где можно продлить аренду.
:?:.комт::Рабочий транспорт можно спавнить только в специально предназначенном автосервисе для коммерческого транспорта.
:?:.гр::Лидер группы может предоставить код для массового добавления людей в группу, игроки в радиусе 30 метров смогут присоединиться. Лидер и помощники могут ставить метки, настраиваются в F2 — Настройки — Бинды. Лидер может передать свой статус другому игроку.
:?:.тег::Возможность тегать людей в чате для удобного РП процесса. Для использования напишите @имя. Если игрока тегнуть, он получит уведомление об этом. Тегаются только ближайшие игроки.
:?:.вчат::Система визуализации чата над игроком. Все сообщения из чата будут дублироваться над игроком. В настройках — Дополнительно можно включить эту опцию.
:?:.марк::Маркетплейс используется для размещения различных товаров на продажу, таких как: транспорт, жилая недвижимость, бизнес, банкоматы, билборды. Каждая карточка с объявлением фиксирует количество просмотров и количество лайков (от игроков, добавивших объявление в избранное). Нажав на кнопку «Начать сделку», откроется модальное окно с информацией о товаре, сумме к оплате и кнопкой для совершения покупки. Есть график, отображающий динамику цен, с возможностью взаимодействия. После покупки товары отправляются в «Склад хранения». За размещение объявления взимается плата в 1.000$ за час (от 5к). Возможность покупки лота как за наличные, так и через карту. Администратор может удалить карточку игрока. Игрок может пожаловаться на объявление, и сообщение попадет в обращение.
:?:.маркп::Раздел торговой площадки. Это формат биржи, на которой торгуются исключительно предметы инвентаря. Предметы выставляются бесплатно, но удаление карточки стоит 1.000$. Есть возможность продления объявления. На торговую площадку можно выставить только предметы из "Склада хранения". Можно купить лот как за наличные, так и через карту. В карточке указаны название предмета, минимальная стоимость (обновляется в режиме реального времени) и количество предметов на бирже. Также отображается график «Медиана цен», который визуализирует изменения цен за различные периоды времени.
:?:.схр::Склад хранения — это место, в которое попадают предметы, купленные или занесенные игроком для дальнейшей продажи на маркетплейсе. На склад можно выгрузить предметы как из инвентаря, так и из багажника. Склад расположен сбоку здания аукциона и не имеет ограничений по хранению предметов. Предметы могут находиться на складе до 30 минут, после чего они идут на аукцион. Также можно добавить карточку в избранное. После покупки имущество/предметы могут храниться на складе до 2 дней. При входе в зону маркетплейса склад подсвечивается, и появляется метка на карте.
:?:.тест::Внутри интерьера маркетплейса (F3 - Маркетплейс) нажмите E, выберите авто и начните тест-драйв.
:?:.пей::Для выполнения данного задания необходимо быть уволенным со всех функциональных работ. Проверить это можно в F2 — Персонаж — Основное. После увольнения вам будет начисляться пособие по безработице или зарплата в государственной структуре.
:?:.кам::Камеры разбросаны по всей карте. У гос. сотрудников есть вкладка в планшете с использованием камер, через которую они могут выдавать штрафы за превышение скорости. Чтобы снять камеру, нужно состоять в криминальной организации или семье, а также иметь при себе кусачки и отвертку.
:?:.дил::Дилеры — это мероприятия для криминальных и государственных организаций. Они проходят дважды в день с перерывом в 8 часов — в 10:45 и 18:45. Цель мероприятия — вербовка NPC на свою сторону с помощью оружия. Мероприятие проходит в гетто.
:?:.цех::Функциональное мероприятие для криминальных и государственных организаций. Проходит дважды в день с перерывом в 8 часов — в 14:45 и 22:45. Цель мероприятия — захват контрольных точек "цехов". Мероприятие проходит в гетто.
:?:.скор::Штрафы выдаются системой при превышении скорости 240 км/ч. Гос. сотрудники могут выдать штраф за превышение скорости от 200 км/ч.
:?:.дмк::Дефибриллятор МК2 не имеет дополнительного функционала, он аналогичен обычному дефибриллятору.
:?:.адр::Адреналин поднимает игрока в 2 раза быстрее, чем эпинефрин.
:?:.нагр::Все автомобили и одежда из пропуска являются эксклюзивами, их нельзя передавать другим игрокам.
:?:.жап::Предмет "Аптечка жёлтая" восстанавливает 75 хп.
:?:.обв::Обвесы можно получить в призах. Первая установка бесплатная. Обвесы можно снимать и устанавливать отдельно. Обвес закрепляется за машиной.
:?:.куп::Купоны действуют на все автомобили из Majestic Motors.
:?:.случ::В наградах имеются "Случайные наборы". При получении приза у игрока будет выбор открыть одну из трёх карт с разным содержимым.
:?:.оосзона::ООС-зону можно включить в F2 — Настройки — Бинды. Назначив клавишу, при нажатии на неё, если игрок перед вами вышел из игры, вы получите информацию о дате и времени его выхода.
:?:.квр::У бота на работе будет кнопка "Я могу чем-то помочь". Нажав на неё, откроется квест, который нужно выполнить. После выполнения квеста, задание будет засчитано.
:?:.вбп::Бронзовый пропуск открывает доступ к премиум-награм до 35 уровня, серебряный — до 75 уровня, золотой — до 110 уровня, платиновый — до 150 уровня. Опыт дается только за королевский старт.
:?:.чер::Червей можно выкопать на любой зоне рыбалки с помощью лопаты. Шанс выпадения червя очень мал. Лопату можно приобрести на рынке у NPC.
:?:.раб::Для работы подходят такие профессии, как: Дальнобойщик, Мусоровозщик, Инкассатор, Шахтер, Почтальон.
:?:.работа::Для выполнения "КВЕСТА" на работе нужно подойти к NPC и нажать E. Квесты доступны на всех работах (все зеленые чемоданы на карте).
:?:.новичок::Квест новичка выполняется только один раз на аккаунт. Если вы начали его проходить на другом персонаже, завершите его там. Если вы отменили квест, то повторно взять его будет невозможно.
:?:.отмнов::Если вы не можете взять квест, нужно отменить старый. Для этого проверьте, активен ли у вас квест: в правом верхнем углу экрана будет отображено, что нужно выполнить (под 200 бесплатными койнами). Если дополнительной информации нет, значит, квест не активен. Квест отменяется в том месте, где вы его брали у NPC. Если вы не видите табличку с койнами, попробуйте нажать F6 несколько раз. Если информация так и не появилась, перезайдите в игру.
:?:.место::Чтобы засчитался квест с рыбалкой, рыбачьте на своем уровне рыбалки.
:?:.сов::Работы для совместного выполнения: мусоровоз, почтальон и инкассатор. Эти работы можно найти на карте в виде зеленого чемодана. Для выполнения квеста на работе нужно подойти к NPC и нажать E. Квесты можно брать на любом из этих рабочих мест (все зеленые чемоданы на карте).
:?:.квест::Мировые и личные квесты можно найти на рынке (на карте обозначены как "Красный вопрос"). Личные квесты можно выполнять в любое время, но чтобы участвовать в Мировом квесте и получить дополнительные бонусы, вам нужно успеть выполнить личный квест. Только 5 лучших игроков попадут в топ 3 и получат дополнительные бонусы. Каждую неделю доступны 3 мировых и 3 личных квеста. Некоторые квесты, такие как инкассатор/мусорщик/почтальон, можно выполнять в группе — засчитывается всем участникам.
:?:.ежеднев::1) Голубую награду (каждые 7 дней) можно забрать только после того, как соберете 5 предыдущих наград. 2) Красную награду (каждые 30 дней) можно забрать, если собраны 70% прошлых наград (~21 день).
:?:.руда::Руда — непродаваемый материал, добываемый на шахте (F3 > Работа > Карьерщик). Используется для сдачи семейных контрактов. Шанс выпадения случайный, самая редкая — золотая руда.
:?:.ивент::Чтобы начать ивент, возьмите задание у NPC на Янктоне.
:?:.табл::Вот таблица с разрешенной дополнительной одеждой: https://docs.google.com/spreadsheets/d/1UNmIeS1-vYGEoT0-ScQwgDZTd4ciuIbMJXTwZhyMM7U/htmlview?gid=677804991#gid=677804991.
:?:.мадж::Присоединяйтесь к Discord серверу Majestic: discord.gg/majestic .
:?:.улучш::Пока вы не прокачаете определённый контракт или действие в разделе Планшет > Семья > Улучшения, оно не будет доступно в Планшет > Семья > Контракты. Например, нельзя напасть на ФЗ в семье, если улучшение по нападению на ФЗ не разблокировано. Также нельзя открыть контракт Курьер Green, если улучшение для него не активировано.
:?:.тайн::По всей карте есть тайники: Механические, Химические и Технические, даже на острове. Чтобы открыть тайник, нужно нажать E. Есть определённое время на обновление содержимого. Если вы стоите рядом с тайником постоянно, содержимое не обновится.
:?:.угон::Угон доступен только для крайм-фракций и семей, которые активировали улучшение контрактов для угона автомобилей. Если все условия выполнены, можно начать угон автомобилей. Подробнее в гайде: https://wiki.majestic-rp.ru/ru/post/ugon-avto

; Адм Ответы:
:?:.виз::Это визуальный баг. Попробуйте перезайти на сервер.
:?:.войс::Если проблемы с голосовым чатом не решаются после нескольких перезагрузок, попробуйте следующие методы: 1. Отключите все лишние аудиовходы и выходы, оставив только те, которые вам нужны (Настройки -> Система -> Звук -> Дополнительные настройки звука -> Правой кнопкой мыши -> Отключить). 2. Удалите ваше аудиоустройство через Диспетчер устройств (Ввод -> Выберите устройство) и перезагрузите компьютер. 3. Попробуйте изменить ваш IP с помощью различных программ, что может помочь подключиться к голосовому серверу, если возникают проблемы с подключением.
:?:.багвойс::Если проблемы с войс-чатом не решаются после нескольких перезаходов, попробуйте эти шаги: 1. Отключите все лишние аудиовходы и выходы через настройки звука. 2. Удалите аудиоустройство в Диспетчере устройств и перезагрузите ПК. 3. Попробуйте изменить IP с помощью различных программ.
:?:.багвойс2::Для того чтобы войс-чат заработал, перезайдите в игру.
:?:.тайм::Это визуальный баг таймера, часы идут, и коины вам начислятся после того, как время истечет.
:?:.сид::Укажите static ID нарушителя.
:?:.баг::Мы осведомлены о проблеме и передали её разработчикам. Приносим извинения за доставленные неудобства.
:?:.чат::Все настройки чата можно найти в F2 - Настройки - Настройки чата.
:?:.рел::Попробуйте полностью перезайти на сервер через F1 - Отключиться.
:?:.необл::У нас нет информации по этому вопросу.
:?:.наруш::Нарушений не обнаружено.
:?:.рп::Извините, но это РП процесс, и мы не можем вмешиваться в него.
:?:.урп::Эту информацию вы можете получить при взаимодействии с другими игроками или самостоятельно, используя доступные IC методы в игровом процессе.
:?:.тех::Если возникли технические проблемы, обратитесь в технический раздел на форуме. Ссылка: https://forum.majestic-rp.ru/forums/obrashcheniya-v-tekhnicheskii-razdel.560/
:?:.техдс::Напишите в технический раздел официального дискорд-сервера в канале "Помощь по игре" - "тех-поддержка". Ссылка на канал: https://discord.com/channels/530693013622489088/696711470783922247
:?:.функ::Данный функционал временно недоступен. Приносим извинения.
:?:.фун::Данный функционал отсутствует на нашем проекте. Пожалуйста, оставьте предложение по добавлению на форуме в разделе: "Предложение по улучшению сервера".
:?:.донат::Для вопросов по донату, пожалуйста, обратитесь по почте: help@majestic-rp.ru.
:?:.ник::Для смены ника или внешности откройте меню с помощью F2 > Магазин > Персонаж.
:?:.имя::Ваше имя и фамилия не соответствуют правилам нашего сервера. Пожалуйста, смените ник и отправьте репорт повторно. Если ваш новый ник будет соответствовать правилам, вас выпустят.
:?:.багзз::Для восстановления прежней скорости заедьте в зеленую зону и выедьте из нее.
:?:.погода::К сожалению, администрация не контролирует изменения погоды, она меняется автоматически.
:?:.реп::Пожалуйста, уточните ваш вопрос подробнее. Администрация не реагирует на запросы типа "админ тп", "админ можно поговорить", "помогите", "админ есть вопрос". У вас неограниченное количество символов, используйте их для подробного описания проблемы.
:?:.неувид::К сожалению, администрация не может заметить это нарушение. Если у вас есть видеозапись, пожалуйста, подайте жалобу на форуме.
:?:.несл::Администрация не может полностью контролировать весь РП процесс. В случае нарушений от игроков, пожалуйста, оформите репорт.
:?:.исч::Все транспортные средства исчезают со временем, если с ними не взаимодействовать.
:?:.спб::Если одно из отделений ЕМС сильно загружено, вы будете спавниться в другом, менее загруженном отделении.
:?:.перед::Вы передаете имущество на свой страх и риск.
:?:.зак::Это регулируется IC законами. Изучить их можно в разделе "Government" на форуме: https://forum.majestic-rp.ru/.
:?:.багреп::Если вы нашли баг, пожалуйста, оставьте баг-репорт в официальном дискорде проекта: Текстовые каналы - "Сообщить о баге". Ссылка на канал: https://discord.com/channels/530693013622489088/991471344644538480.
:?:.мед::Этот медиа-партнер находится под наблюдением PR ассистента, поэтому я не могу выдать наказание. Вся ответственность за ситуацию переносится на PR ассистента.
:?:.низк::У вас включен режим низкого качества. Вы можете отключить его в F2 - Настройки.
:?:.вод::Администрация не извлекает автомобили из воды, а лишь удаляет их, чтобы вы могли заспавнить новый. Вам нужно добраться до автосервиса, аренды транспортных средств или вызвать такси.
:?:.вода::Ваш транспорт был удален. Вы можете забрать его в автосервисе/гараже, к которому вам нужно добраться самостоятельно.
:?:.удал::Администрация не удаляет транспортные средства игроков, за исключением случаев, когда транспорт утонул и не исчезает.
:?:.багаж::Чтобы вылезти из багажника, нажмите клавишу "E".
:?:.пол::Пожалуйста, обратитесь к сотрудникам полиции.
:?:.пох::/mark ПОХИЩЕНИЕ
:?:.ук::Пожалуйста, укажите ID нарушителя.
:?:.пока::Желаю вам удачной игры{!}
:?:.пузо::Чтобы лечь на живот, откройте F2 - Позы - Лечь на живот.
:?:.воп::Вопрос от вас больше не поступил, закрываю тикет.
:?:.закт::Здравствуйте! Ваша проблема актуальна?
:?:.бенз::Администрация не заправляет транспортные средства игроков.
:?:.игр::Игрок был наказан.
:?:.игр2::Игроки были наказаны.
:?:.амни::Я выдал вам минимальное наказание, оно не подлежит амнистии.
:?:.актуал::Обращение неактивно больше минуты, вынужден его закрыть. Если вопрос остается нерешенным, создайте новое обращение и ждите ответа.
:?:.акт::Ваша проблема актуальна?
:?:.при::Приятной игры{!}
:?:.неком::Не комментируем действия других администраторов.
:?:.нео::Не обладаем данной информацией.
:?:.хз::К сожалению, не располагаем этой информацией.
:?:.п::Приятной игры{!}
:?:.кур::Передам кураторам.
:?:.пер::Передам вашему запросу.
:?:.неоф::Не оффтопьте в обращении.
:?:.непр::Не предоставляем подобную информацию.
:?:.суд::Снять судимость можно в "Government".
:?:.чх::Если у вас есть откат с подозрительным моментом, то вы можете предоставить его администрации с ролью "Cheats Hunter". Найти их можно в Официальном дискорде проекта. Либо оставить запрос в Телеграм Канале: https://t.me/CheatHuntersBot 
:?:.нераз::Не разглашаем данную информацию.
:?:.непр::Не предоставляем подобную информацию.
:?:.фам::/c - IC чат, /cb - OOC чат. 
:?:.фрак::/f - IC чат, /fb - OOC чат. 
:?:.неув::Не увидел нарушений, если у вас есть видеодоказательства - оставьте жалобу на форуме. 
:?:.фор::Данное нарушение не подлежит рассмотрению через обращение, оставьте жалобу на форуме.
:?:.форум::В связи с нагрузкой на сервер мы не можем рассмотреть вашу жалобу на игрока посредством обращения, пожалуйста, оставьте жалобу на форуме. Спасибо за понимание.
:?:.ин::Остались ли ещё какие-нибудь вопросы?
:?:.ещё::Есть ли у Вас еще какие-либо вопросы?
:?:.пир::Здравствуйте, PR Ассистенты не отвечают на игровые-тикеты. Задайте им вопросы в личные сообщения дискорда.
:?:.оценка::Не обсуждаем и не оцениваем работу/наказания других администраторов, подобные вопросы необходимо обсудить с тем, кто выдал наказание/следил за ситуацией.
:?:.слежка::Администрация не может следить полностью за всем РП процессом, в случае нарушений от игроков - напишите репорт.
:?:.опрабаг::Приветствую, предоставьте видео-запись бага и я Вам помогу.
:?:.текст::Приветствую, опишите текстом.
:?:.спам::Использование кнопки - "проблема актуальна", не ускорит ответ.
:?:.спам2::Если Вы продолжите использовать кнопку "проблема актуальна" не по назначению, я буду вынужден выдать наказание за помеху в работе администратора.
:?:.нар::Рядом находятся другие игроки, которые могут вам помочь. В таких случаях мы не снимаем наручники/стяжки.
:?:.отв::Не услышал от Вас конкретного ответа, закрываю репорт.
:?:.офф::Если продолжите создавать оффтоп в репорт, то буду вынужден выдать наказание за помеху работе администрации.
:?:.ид::Укажите, пожалуйста, ID нарушителя.
:?:.рж::Чтобы оформить репорт-жалобу, Вам необходимо в название видеоролика указать: Ваш статик, статик нарушителя, а также дату и время.
:?:.ржб::Со списком рассмотрения в Репорт-Жалобе можете ознакомиться в Официальном Дискорде: https://discord.com/channels/530693013622489088/535348171648270347/979479095018684496
:?:.здр::Здравствуйте.
:?:.нет::Здравствуйте. Нет.
:?:.да::Здравствуйте. Да.
:?:.нетп::Администрация не телепортирует игроков, Вам нужно добраться до места самостоятельно. На проекте достаточно способов, чтобы это сделать: такси, аренда транспорта, автосервисы.
:?:.др::Нажмите "Помощь другого Администратора". Либо напишите ему в Дискорд.
:?:.лечу::Уже лечу к Вам на помощь.
:?:.пом::Сейчас помогу Вам, ожидайте.
:?:.краш::Если у Вас есть доказательства краша - предоставьте его. И Вас выпустят.
:?:.емс::К сожалению, администрация не поднимает и не лечит игроков, воспользуйтесь услугами ЕМС.
:?:.подним::К сожалению, не видя всей ситуации, мы не в праве лечить, поднимать или добивать игроков. Дождитесь Сотрудников EMS либо окончания таймера смерти. Приносим извинения за возможные неудобства.
:?:.жб::Не могу выдавать наказания и выносить вердикты не видя ситуации с самого начала. Если у Вас есть видеофиксация данного нарушения, оформите жалобу на форуме.
:?:.анак::Обратитесь, пожалуйста, в дискорд к администратору, который выдал вам наказание или рассмотрел жалобу.
:?:.адз::Данный администратор сейчас занят другим делом или отошел от компьютера на короткое время, напишите ему в личные сообщения в дискорде.
:?:.адс::Данный администратор сейчас отсутствует на сервере, напишите ему в личные сообщения в дискорде.
:?:.погода::К сожалению, администрация не контролирует данный процесс. Погода меняется автоматически.
:?:.неп::Не понял суть вашего обращения, опишите Вашу проблему/вопрос подробнее для максимально точного ответа, пожалуйста.
:?:.изв::Приносим свои извинения за доставленные неудобства.
:?:.инв::Это баг инвентаря, предложите обменяться любому игроку и ваша проблема будет решена. Если по близости никого нет, обратитесь ещё раз в репорт и администрация Вам поможет.
:?:.мог::Могу чем-то еще помочь?
:?:.могу::Могу ли я Вам ещё чем-либо помочь?
:?:.вас::У Вас остались вопросы?
:?:.дел::Приветствую. Сделано.
:?:.че::Уточните Ваш вопрос, пожалуйста.
:?:.машин::Гос.цены всех [IRL] машин Вы можете посмотреть тут - https://cutt.ly/wKJXjiO
:?:.анлак::Наказать не смогу, не видел полной ситуации происходящего.
:?:.неактуал::Увидел что более неактуально. Закрываю тикет?
:?:.баги::Не слышал ранее о таком, вероятно баг, вы можете передать данную информацию в Сообщить-о-баге, в Официальном Дискорд-канале Majestic.
:?:.непон::Приветствую. Не понял сути Вашего вопроса.
:?:.багдс::Передайте данную информацию в Сообщить-о-Баге, в Официальном Дискорд-канале Majestic.
:?:.невидя::Не видя полной ситуации происходящего - не можем дать корректный ответ, так как каждая ситуация индивидуальна.
:?:.адм::Напишите тому администратору, который наказал Вас. Если нужен его дискорд, напишите в репорт его ник.
:?:.обр::Могу закрывать обращение?
:?:.помог::Помог.Могу закрывать обращение?
:?:.сорянчик::Приносим свои извинения за предоставленные неудобства.
:?:.жба::Вы можете написать жалобу на форум, если не согласны с решением администратора.
:?:.емс2::К сожалению, не видя всей ситуации мы не в праве лечить, поднимать или добивать игроков. Дождитесь сотрудников EMS либо же окончания таймера смерти. Приносим свои извинения за возможные неудобства.
:?:.краш2::Здравствуйте. Если у Вас есть доказательства краша - предоставьте его любому администратору в личные сообщения дискорда. Вас выпустят.
:?:.ржб2::Жалобы, содержащие видеофрагменты продолжительностью более 1-й минуты, а также не очевидные и сложные нарушения не подлежат рассмотрению в Обращение. Стоит оформить жалобу на форум. Благодарю за понимание.
:?:.видева::Жалобы, содержащие видеофрагменты продолжительностью более 1-й минуты, а также не очевидные и сложные нарушения не подлежат рассмотрению в Обращение. Стоит оформить жалобу на форум. Благодарю за понимание.
:?:.мсл::Обратитесь к Организатором MCL в Дискорде.
:?:.мкл::Обратитесь к Организатором MCL в Дискорде.
:?:.авто::Чтобы эвакуировать Ваше авто воспользуйтесь маркером Сервиса (Гаечный ключ на карте).
:?:.бб::Вы вышли с сервера, закрываю репорт.
:?:.звук::Я не слышу -> У игрока проблемы со слухом / либо его полное отсутствие. Я без звука -> У игрока проблемы с самим звуком /наушники /динамики.
:?:.помогать::Задача игровой администрации - помогать игрокам и пресекать нарушения, в некоторых ситуациях сразу наказывать игроков не совсем верное решение.
:?:.медия::Данная Медия-Личность сейчас не отвечает на репорты.

; asms:
:?:.пред::/asms Выключите музыку, вы в зеленой зоне.{left 37}
:?:.пок::/asms Удачной Вам игры, на Majestic RP.{left 34}
:?:.пров::/asms Приветствую. Вы были вызваны на проверку  использования стороннего ПО. У Вас есть несколько минут чтобы зайти в голосовой канал в официальном дискорде проекта. Отказ от проверки или выход из игры карается блокировкой.  {Left 220}

; БП:
:?:.опыт::Чтобы улучшить боевой пропуск - F2 > Сезонный пропуск > Купить опыт
:?:.дрифт2::Очки дрифта идут в статистику при набирании 2500 очков за раз и более.
:?:.дрифт::Дрифт счётчик можно включить через F2 > Настройки. Он появляется во время управляемого заноса и показывает, на сколько хорошо вы прошли поворот.На карте вы можете увидеть зоны, где можно дрифтить и попасть в список топ-дрифтеров. Для этого Вам обязательно дрифтить по отмеченной зоне. В противном случае очки не засчитаются.
:?:.байк::Мотоцикл должен быть Ваш, нажимаете ctrl и едете на заднем колесе.
:?:.гв:: Это режим на Maze Bank Arena. Ее можете найти на карте.
:?:.гриль::Краснопёрка - 600грам; Лещ - 600грам; Плотва - 600грам; Вобла - 600грам; Коричневый сом - 750грам; с этих граммовок Вы сможете пожарить 1 рыбу.
:?:.автопилот:: Чтобы использовать автопилот, Вам необходимо зайти в F2-Настройки-Бинд клавиш, далее поставить удобный для Вас бинд. Выйти с настроек - поставить метку в авто и нажать ваш бинд.
:?:.предметы::Чтобы забрать предметы с рулетки или с сезонного пропуска, Вам необходимо нажать F2 > Магазин > Предметы.
:?:.билет::Розыгрыш проходит 3 раза в день - в 15:00, в 18:00 и в 21:00.
:?:.стриптиз::Чтобы заказать приватный танец, Вам необходимо прийти в клуб. Далее найти стол, подойдя к нему нажать Е.
:?:.мусор::Чтобы открыть мусорку, нужно подойти к ней и нажать Е, однако не все мусорки можно просмотреть. Расположение мусорок Вы можете узнать на сайте https://wiki.majestic-rp.ru/ru/map/rubbish, либо же самостоятельно.
:?:.руки::Чтобы прокатиться несколько метров, Вам необходимо чтобы Вас взял игрок на руки и пронес несколько метров.
:?:.лестн::Вам нужно найти вертикальную лестницу, после подняться на самый верх. Спускаться можете зажав кнопку Shift. Лестница есть у 1 АвтоСервиса.
:?:.тел::Телефоны находятся по всей карте, вот их местоположение на карте: https://wiki.majestic-rp.ru/ru/map/telephone. Чтобы ответить на звонок, Вам необходимо подойти к нему и нажать Е. Его можно найти по характерному звуку (звонок).
:?:.угонбп::Чтобы угнать транспорт, Вам необходимо находиться в криминальной организации. Далее купить программатор ЭБУ на рынке. Сесть на водительское место - G - взломать.
:?:.животные::Данные животные можно разделать на мясо - кролики, кабаны, олени, коровы, свиньи, петухи. Домашних животных которые гуляют по карте, можно гладить. Животные появляются по всей карте.
:?:.резня::Чтобы разделать животное, Вам необходимо иметь при себе в руках нож (покупается в магазине 24/7), далее подходите к животному и нажимаете G - разделать животное.
:?:.болезнь::Вы не сможете заболеть до 3-го уровня персонажа включительно. Если вас интересует выполнение задания, вы можете заменить его или же повысить уровень персонажа. Более, к сожалению, никак.
:?:.лифт::Для выполнения задания с лифтом в боевом пропуске, нужно воспользоваться такими лифтами, которые установлены в офисе FIB/Weazel News/Мэрии.
:?:.клад::Для поиска кладов Вам необходим металлоискатель и лопата, купить можно у NPC на рынке. Металлоискатель становится активным как только Вы берете его в руки. Когда он найдет сокровища, то будут происходить визуальные и звуковые оповещения. От зеленого цвета, до красного. Места расположения сокровищ: пляжи и архипелаги.
:?:.ганг::Maze bank arena (гангейм) - это место, где можно посоревноваться с другими игроками в навыках стрельбы. На карте находится снизу, а изображен в виде джойстика.
:?:.арм::Армреслинг находится около в Палето около шерифов, а также около №1 Магизна 24/7.
:?:.маг::Можете купить в Магазине 24/7, либо на Маркетплейсе.
:?:.номер::Приветствую, чтобы узнать список бизнесов для ограбления, позвоните по следующему номеру - 28121969.
:?:.кд::Перезарядка аренды авто 5 минут.
:?:.бинокль::Для того чтобы использовать бинокль. Вам нужно открыть инвентарь, после навестись на бинокль в инвентаре, нажать ПКМ и использовать. После зажмите ПКМ и у Вас сработает бинокль.
:?:.рыба::Присылаю Вам подробный Гайд по рыбалке, где есть ответы на все вопросы - https://wiki.majestic-rp.ru/post/rybak
:?:.крем::Крем-маска - уникальный предмет из Battle Pass. На время действия эффекта не позволяет сверить фоторобот и увидеть ваш никнейм над головой тем, кто поздоровался с вами. Заменяет собой функционал маски. Срок действия - 30 минут.
:?:.сигналка::Автосигнализация - уникальный предмет из Battle Pass. Устанавливается на ваш личный транспорт. После того, как вашим авто завладеет тот, у кого нет к нему доступа, вам на телефон придет сообщение об этом.
:?:.кастет::Стальной кастет - уникальный предмет из Battle Pass. Используется как оружие. При использовании удар вызывает контузию у вашего противника.
:?:.горн::Воздушный горн - уникальный предмет из Battle Pass. Используется из инвентаря и имеет проценты использования. Использование вызывает эффект "глухота" у всех вокруг. У людей совсем близко также проиграется специальная анимация оглушения.
:?:.дронскан::Дрон Сканер - уникальный предмет из Battle Pass. Имеет функционал обычного гражданского дрона (без тепловизора) но с дополнительной возможностью отмечать всех людей вокруг на миникарте у вас и вашей группы.
:?:.замокшок::Набор дверных шокеров - уникальный предмет из Battle Pass. Устанавливается на ваш личный автомобиль. При попытки сесть в ваш закрытый автомобиль игрок без доступа получит урон и анимацию удара током.
:?:.янкт::Если я Вас телепортирую, у Вас сбросится квест. К сожалению, иных способов решения данной проблемы - нет. Нужно телепортировать?
:?:.янкт2::Я не могу помочь Вам, так как Вы на Квесте в Янктоне. Если я что-либо с Вами сделаю сброситься квест.


; Англ:
:?:/gjvjufnm::Задача игровой администрации - помогать игрокам и пресекать нарушения, в некоторых ситуациях сразу наказывать игроков не совсем верное решение.
:?:/pder::Я не слышу -> У игрока проблемы со слухом / либо его полное отсутствие. Я без звука -> У игрока проблемы с самим звуком /наушники /динамики.
:?:/ud::Это режим на Maze Bank Arena. Можете найти ее на карте, возле Гетто.
:?:/gjk::Обратитесь к сотрудникам полиции.
:?:/kbr::Лицензию можно получить у Сотрудников LSPD или LSCSD.
:?:/bpyjc::Для того чтобы починить авто в Автомастерской. Вам нужно иметь изношенную запчасть, минимум 95%.
:?:/utnnj::Вам нужно находиться в Гетто и убить человека, у которого в руках будет оружие. Не будет работать если игрок с Вами в одной фракции/семье, а так же если пожата рука.
:?:/crjh::Штрафы выдаются системой от 240 км/ч. Гос.сотрудники могут выдать штраф от 200 км/ч.
:?:/zyrn::Если я Вас телепортирую, у Вас сбросится квест. К сожалению, иных способов решения данной проблемы - нет. Нужно телепортировать?
:?:/zyrn2::Я не могу помочь Вам, так как Вы на Квесте в Янктоне. Если я что-либо с Вами сделаю сброситься квест.
:?:/gj[::/mark ПОХИЩЕНИЕ
:?:/gjr::/asms Удачной Вам игры, на Majestic RP.{left 34}
:?:/er::Укажите ID нарушителя.
:?:/vtlbz::Данная Медия-Личность сейчас не отвечает на репорты.
:?:/ghjd::/asms Приветствую. Вы были вызваны на проверку  использования стороннего ПО. У Вас есть несколько минут чтобы зайти в голосовой канал в официальном дискорде проекта. Отказ от проверки или выход из игры карается блокировкой.  {Left 220}
:?:/gjrf::Удачной Вам игры, на Majestic RP.
:?:/gepj::Чтобы "Лечь на Живот". Вам нужно открыть F2 - Позы - Лечь на живот.
:?:/inhfa::Чтобы оплатить штраф нужно приехать на Штраф Стоянку и спуститься вниз. Там будет бот, у которого можно будет оплатить.
:?:/vtnfk::Металлоискатель становится активным как только Вы берете его в руки. Когда он найдет сокровища, то будут происходить визуальные и звуковые оповещения. От зеленого цвета, до красного. Места расположения сокровищ: пляжи и архипелаги.
:?:/,fudjqc::Чтобы перезагрузить войс, попробуйте перезайти в игру. Если не помогает - перезайдите в игру.
:?:/cnfdrf::Расчёт ставки происходит в течение 6-ти часов. Администрация не управляет расчетом.
:?:/cxtn::Чтобы узнать номер счета откройте инвентарь и наведитесь мышкой на банковскую карту.
:?:/gby::Чтобы восстановить пин-код отправляйтесь в банковское отделение, в меню смены нажмите "Восстановить".
:?:/rkdk::При достижении 5-го уровня: 500 MC При достижении 10-го уровня: 1000 MC При достижении 15-го уровня: 2000 MC При достижении 20-го уровня: 3000 MC При достижении 25-го уровня: 4000 MC При достижении 30-го уровня: 5000 MC. Каждый следующий уровень после 30-го Вы будете получать 1500 MC. 
:?:/rdtcn::На сервере доступны Мировые и Личные квесты. Ознакомиться с ними можно на рынке (На карте обозначен как "Красный вопрос"). Квесты доступны всем. Личные квесты вы можете проходить неопределенный срок, но, если Вы захотите участвовать в Мировом квесте и получить дополнительные бонусы, то Вам нужно поторопиться выполнить личный квест. Только 5 лучших игроков смогут попасть в топ 3 и залутать дополнительные бонусы. - Каждую неделю доступно по 3 личных и мировых квеста. - Некоторые квесты по типу инкасатора/мусорщика/почтальона можно выполнять в 2-ем и более, засчитывать будем всем.
:?:/atl::На первом этаже стоит NPC у которого можно взять задание. Чтобы отбыть срок в федеральной тюрьме, нужно выполнять задачи. Например помыть туалет - В определенное время тюрьма закрывает клетки на 5 минут, соответственно, в это время отбыть срок нельзя: -- Открываются клетки в 00 минут -- Закрываются клетки в 20 минут на 5 минут -- Открываются клетки в 25 минут -- Закрываются клетки в 55 минут на 5 минут.
:?:/ctqf::Закрывать интерфейс сейфа можно только на ESC. В сейф можно класть до 5 миллионов. Деньги идут из налички. Нельзя продать дома в гос, продать игроку, предложить обмен, выставить на аукцион, если в сейфе есть деньги. Сначала требуется их забрать. Если дом слетает по налогам - деньги из сейфа игрок получает в наличку. 
:?:/ktcjhe,::Устраиваться необходимо все у того же NPC около Палето-Бей. Для начала работы Вам понадобиться “Топор”, купить его можно у NPC на Рынке. Принцип работы схожий с Грибниками, точки для сруба деревьев разбросаны по всей карте, каждый уровень привязан к свой точке сбора. Древесину можно продать на рынке. 
:?:/hfwbz::Приобрести рацию можно в любом магазине 24/7, в разделе “Электроника”, за всеми фракциями закреплен диапазон частот, который не могут занять. В F2 -> Настройки можно изменить Громкости рации.
:?:/hfw::Если кнопка войса была не на "N", то поставьте её на N и перезайдите, после чего рация заработает. Кнопку можно вернуть на свою. Для использования: Возьмите рацию > Введите чистоту >Нажмите ентер >Зажмите "M" и будет слышно.
:?:/nfqv::Это визуальный баг таймера, часы идут и коины вам начислят по истечению времени. 
:?:/cbl::Укажите static ID нарушителя.
:?:/gen::Всю информацию (команды/о фракциях, работах и так далее) можно узнать на форуме majestic-rp.ru - раздел "Путеводитель для новичков".
:?:/edfk::К сожалению, ничем не можем помочь, увольняем только в случае, если у фракции нет лидера. Дождитесь своего лидера/заместителей.
:?:/vfqrb::Для того чтобы купить майку под верхнюю одежду, вам нужно сначала купить элемент верхней одежды (например, пиджак). После этого вам буду доступны все майки, которые подходят под нее в разделе "Майки".
:?:/cke[::Функция "Я не слышу" предназначена для людей с плохим слухом или его отсутствием. Злоупотребление этой функцией карается баном Вашего персонажа. Отключить ее можно в меню F2 - Настройки. Спасибо за понимание.
:?:/,fu::Знаем о данной проблеме, она уже передана разработчикам. Приносим свои извинения за доставленные неудобства. 
:?:/xfn::На сервере есть следующие команды для чата: /pagesize - увеличить / уменьшить размер чата; /fontsize - увеличить / уменьшить размер шрифта; /chatalpha - прозрачность чата, /timestamp - время около каждого сообщения.
:?:/htk::Полностью перезайдите на сервер через F1 - Отключиться.
:?:/ytj,k::Не обладаем данной информацией.
:?:/hg::Извините, но это РП процесс, мы не вправе вмешиваться в него.
:?:/ehg::Данную информацию вы можете получить при взаимодействии с другими игроками/самостоятельным поиском непосредственно во время игрового процесса, либо другим доступным IC путем. 
:?:/nt[::Напишите в технический раздел на форуме. Ссылка на раздел - https://forum.majestic-rp.ru/forums/obrashcheniya-v-tekhnicheskii-razdel.560/
:?:/nt[lc::Напишите в технический раздел официального дискорд сервера "Помощь по игре" - "тех-поддержка". Ссылка на канал - https://discord.com/channels/530693013622489088/696711470783922247
:?:/aeyr::Данный функционал временно недоступен, приносим свои извинения.
:?:/bpd::Приносим свои извинения за доставленные неудобства.
:?:/hs,f::Присылаю Вам подробный Гайд по рыбалке, где есть ответы на все вопросы - https://wiki.majestic-rp.ru/post/rybak
:?:/t[g::Каждый час (у каждого игрока своё время) Вам дается EХP. Чтобы узнать, сколько Вам осталось до следующего PayDay, нажмите клавишу F2-Статистика.
:?:/fdnj::Чтобы эвакуировать Ваше авто воспользуйтесь маркером Сервиса (Гаечный ключ на карте). 
:?:/pg::Чтобы начислялся PayDay. Вам нужно иметь свою банковскую карту и быть уволенным со всех работ. Оформить её можно в любом банке.
:?:/ufykbw::Получить лицензию на оружие можно в LSPD или LSCSD. 
:?:/rfybcnhf::Чтобы использовать канистру, возьмите её в руки, нажмите G на авто и заправить. 
:?:/gjlybv::К сожалению, не видя всей ситуации мы не в праве лечить, поднимать или добивать игроков. Дождитесь Сотрудников EMS либо же окончания таймера смерти. Приносим свои извинения за возможные неудобства. 
:?:/[g::Перезайдите в игру, либо купите таблетку у Сотрудников EMS.
:?:/htvjyn::Для начала, Вам нужно купить запчасть для машины на любо АЗС, после чего открыть капот , нажать G > Починить замок/аккумулятор/залить масло. 
:?:/athv::На ферме для посадки каждого из растений нужны следующие навыки: Пшеница - 225 опыта. Картофель - 950 опыта. Капуста - 2000 опыта. Кукуруза - 3000 опыта. Тыква - 6200 опыта. Бананы - 10500 опыта.
:?:/ujc::Вы можете сдать авто на свалку. После сдачи вы получите 75% от гос. стоимости авто. Свалка отмечена на карте как перечеркнутый, красный круг.
:?:/fybv::Остановите анимацию. Нажмите X > Остановить анимацию или Backspace.
:?:/bl::Укажите, пожалуйста, ID нарушителя.
:?:/flv::Напишите тому администратору, который наказал Вас. Если нужен его дискорд, напишите в тикет его никнейм.
:?:/cnj::Степень износа определенных деталей автомобиля можно узнать на автомастерской (иконка гаечного ключа с отверткой на карте).
:?:/ljy::Задонатить можно на нашем официальном сайте - majestic-rp.ru/donate
:?:/byrfc::Чтобы совместно работать Вам необходимо быть устроеным на работу (всем), загрузиться, а затем через G пригласить на работу.
:?:/uhb,s::Чтобы собирать грибы вам надо приехать на точку "Грибы" 1/6 и взять в руки нож.
:?:/uhb,::Продать грибы можно на рынке.
:?:/hsy::Рынок находится в Лос-Сантосе на пляже рядом с качалкой, в Палето-Бэй и на ферме, иконка палатки. Там вы можете сдавать предметы с фермы, дровосека, грибника и рыбалки.
:?:/yjdjcnm::Придите лично в Weazel News. 
:?:/ybr::Сменить ник или внешность Вы можете нажав - F2 > Магазин > Персонажа.
:?:/,fyr::У нас на сервере есть 3 вида банковских карт: Standart, Premium, VIP. Standart карта стоит в обслуживании 500$ в месяц, снятия и переводы без комиссии до 500.000$ после превышения месячного лимита комиссия на вывод 5%(Максимум 20.000$), на перевод 4%(Максимум 20.000$), кешбэк в магазинах отсутствует. Premium карта стоит в обслуживании 25.000$ в месяц, снятия и переводы без комиссии до 2.500.000$ после превышения месячного лимита комиссия на вывод 4%(Максимум 15.000$), на перевод 3%(Максимум 15.000$), кешбэк в магазинах 1%, лимит кешбэка на одну операцию до 2.500$, месячный лимит кешбэка 50.000$. VIP карта стоит в обслуживании 75.000$ в месяц, снятия и переводы без комиссии до 20.000.000$ после превышения месячного лимита комиссия на вывод 3%(Максимум 20.000$), на перевод 2.5%(Максимум 20.000$), кешбэк в магазинах 3%, лимит кешбэк на одну операцию до 10.000$, месячный лимит кешбэка 150.000$. Деньги за обслуживание и лимиты снимаются каждое 1 число нового месяца.
:?:/le,kbr::Чтобы сделать дубликат ключей от авто, необходимо купить заготовку в магазине 24/7, затем нажать G на авто и сделать дубликат.
:?:/rkfl::Чтобы сделать дубликат от кладовки, необходимо купить заготовку в магазине 24/7, затем через G передать дубликат нужному человеку.
:?:/ntk::Попробуйте купить телефон еще раз в магазине 24/7, деньги с вас не спишутся.
:?:/gjlctk::Чтобы подселить игрока к себе в дом или же квартиру, стоя около дома, наведитесь на игрока и нажмите G, далее нажмите Подселить.
:?:/rhfi2::Если у Вас есть доказательства краша - предоставьте его любому администратору в личные сообщения дискорда. Вас выпустят.
:?:/pfvjr::Вам необходимо купить "Дверной замок" и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту G -> Капот, после этого G -> Починить дверной замок.
:?:/frev::Вам необходимо купить "Аккумулятор" и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту G -> Капот, после этого G -> Заменить аккумулятор.
:?:/vfckj::Вам необходимо купить "Моторное масло" и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту G -> Капот, после этого G -> Заменить масло.
:?:/vjltk::Пункт "Прогрузка моделей" отвечает за быстроту прогрузки текстур при приближении к ним.
:?:/,bpjuhf,::Чтобы ограбить бизнес, вам нужно: одеть маску, приобрести оружие и, придя в магазин в составе от 2 до 35 человек, навестись на NPC (продавца) огнестрелом (только один человек должен грабить). 
:?:/cgfdy::Спавн новичков находится в Палето-Бей, Чумашах, Аэропорту и на Автовокзале. 
:?:/rhtlbn::Любые финансовые договоры (займы, кредиты и т.д) не относятся к ООС сделкам. Все подобные сделки игроки совершают на свой страх и риск. Администрация не несет ответственности и не является гарантом сделки.
:?:/htv::ЧЧтобы починить своё авто, купите рем.комплект на любой АЗС. Через меню G почините Ваш автомобиль.
:?:/bvz::Ваше Имя Фамилия не подходит по правилам нашего сервера. Вам нужно сменить ник и написать в репорт повторно, если Ваш ник будет соблюдать правила сервера, то Вас выпустят.
:?:/dsyjc::Выносливость - навык выносливости повышается от подвижного образа жизни. Чем больше ты бегаешь, тем быстрее повышается навык. При низком навыке, персонаж не может прыгнуть 2 раза и падает. Соответственно повышение навыка влияет на длительность беспрерывного бега и количество прыжков, максимум на последнем уровне - 2.
:?:/cbkf::Сила - навык силы повышается от физических нагрузок. Чем больше ты занимаешься в качалке (иконка бегущего человека на карте), тем быстрее повышается навык. От прокачки увеличивается сопротивление к урону от падения.
:?:/ls[::Дыхание - навык дыхания повышается от длительного нахождения под водой. Чем больше ты плаваешь, тем быстрее повышается навык. Соответственно повышение навыка влияет на длительность беспрерывного плавания под водой.
:?:/gjktn::Полет - навык пилотирования повышается от времени, проведенного за воздушным транспортом. Чем больше ты летаешь на самолете или вертолете, тем быстрее повышается навык. Также навык можно повысив пройдя курсы в летной школе. Пройти их можно 1 раз в 24 часа, увеличение навыка от 1 занятия - 10, стоимость одного занятия - 2 000$. От прокачки навыка увеличивается стабильность полета и управляемость воздушным транспортом.
:?:/crhsny::Скрытность - навык скрытности повышается от количества успешных уходов от погони (понижений уровня розыска). Чем чаще ты скрываешься от полиции, тем быстрее повышается навык. Ни на что не влияет.
:?:/cnhtkm,f::Стрельба - навык стрельбы повышается от времени, проведенного в перестрелках, либо тренировках. Чем лучше ты стреляешь и попадаешь, тем быстрее повышается навык. Рекомендуем тренироваться в специально отведенных для того местах, тире в оружейном магазине. От прокачки навыка увеличивается скорость перезарядки и перекатов, кучность стрельбы.
:?:/,fupp::Чтобы восстановить прежнюю скорость, заедьте в зеленую зону и выедьте с нее.
:?:/ujcljv::Чтобы продать дом в гос. стоимость, нужно подойти к двери и нажать Е. Вы получите 75% от его гос. цены. Если Вы невовремя оплатите налоги или забудете это сделать, дом слетит автоматически.
:?:/vfqrb::Для того чтобы купить майку под верхнюю одежду, вам нужно сначала купить элемент верхней одежды (например, пиджак). После этого вам буду доступны все майки, которые подходят под нее в разделе "Майки".
:?:/hs,kbw::Получить лицензию на рыбалку вы можете в Мэрии. 
:?:/gjujlf::К сожалению администрация не контролирует данный процесс. Погода меняется автоматически. 
:?:/htg::Пожалуйста, уточните свой вопрос подробнее. Администрация не летает на репорты по типу "админ тп", "админ можно поговорить", "помогите", "админ есть вопрос". Количество символов неограниченно, вы можете полностью расписать Вашу проблему/вопрос.
:?:/ytedbl::К сожалению администрация не может увидеть это нарушение. Пожалуйста, если у Вас есть видеофиксация данного нарушения - оформите жалобу на форуме, спасибо большое за понимание.
:?:/rjcnb::Чтобы играть в кости вам нужно купить их в любом 24/7. После того как вы купили кости, вы можете подойти к игроку.
:?:/gfhr::Чтобы припарковать ТС, за рулем нажмите G - Припарковать.
:?:/yjdbxjr::Путеводитель находится на спавнах новичков. Они обозначены на карте значком машущего человечка.
:?:/ytng::Администрация не телепортирует игроков, Вам нужно добраться до места самостоятельно. На проекте достаточно способов, чтобы это сделать: такси, аренда транспорта, автосервисы.
:?:/byd::Это баг инвентаря, предложите обменяться любому игроку и ваша проблема будет решена. Если по близости никого нет, обратитесь ещё раз в репорт и администрация Вам поможет.
:?:/fhsyjr::Для того чтобы выставить свое авто на продажу, Вам необходимо приехать на территорию авторынка, выбрать место и нажать на клавишу "G" - Авторынок - Выставить на продажу.
:?:/njkrfnm::Транспорт можно толкать, нажав G-толкать. Если такой функции нет, при наведении на авто, то этот транспорт толкать нельзя.
:?:/ytck::Администрация не может следить полностью за всем РП процессом, в случае нарушений от игроков - напишите репорт.
:?:/juh::Чтобы начать ограбление бизнеса, вам нужно позвонить по номеру: 28121903. Для этого надо быть в крайм организации, и находится рядом с банком (как минимум вас должно быть 4 около банка, иначе не сможете). Для начала ограбления требуется "План ограблений", который выбирается в AirDrops или при ограблении бизнесов.Можно грабить 1 раз в день каждой огранизации.После того, как ограбление началось и банк получил красную иконку, надо прицелиться в бота и заполнить прогресс бар.Дальше будет большая дверь, что бы ее разблокировать, нужно пройти мини-игру со взломом. Для этого используем «Программатор ЭБУ» + «Кабель электронных дверей». Он продается у торговца на рынке. После взлома перед вами будет стоять стойка с деньгами. Далее идет 2-я дверь. Для ее взлома нам необходима «Ключ карта Fleeca» либо «Термитная установка».«Ключ карта Fleeca» выпадает с ботов при ограблении бизнесов, или на аир дропах.«Термитная установка» продается у пиротехника. С ее помощью дверь открывается за 2 минуты. 
:?:/juh2::Для этого надо взять в руки один из предметов, чтобы открыть дверь. Но в хранилище есть ячейки, для взлома ячеек необходима «Дрель 1500w». Дрель крафтится у криминальных организаций и выпадает при смерти. После успешного прохождения мини-игры по взлому ячейки на пол падает награда.
:?:/lhjy::Дрон крафтится у силовых гос.структур и Weasel News. Пользоваться им могут соответственно эти же гос.структуры. Чтобы подняться-пробел, чтобы опуститься-shift. На E-тепловизор включить/выключить.
:?:/ferw::На аукцион вы можете выставить авто/бизнес/дом/квартиру. Во время того, как вы выставляете лот, вы можете лишь ездить на авто. При продаже на акционе дома/квартиры-кладовка передаётся покупателю полностью.
:?:/,jkufhrf::Для того чтобы распилить багажник нужно подойти к багажнику G - Нелегальное для авто - Распилить дверной замок. Открывается багажник и вы можете взять с него как коробки с материалами, так и коробки со снаряжением. Взломать можно не только гос.матовозки, но и крайм. Болгаркой нельзя взломать личный транспорт.
:?:/yted::Не увидел нарушений, если у вас есть видеодоказательства - оставьте жалобу на форуме. 
:?:/ajh::Данное нарушение не подлежит рассмотрению через обращение, оставьте жалобу на форуме.
:?:/a;,::Не могу рассмотреть из-за нарушений правил подачи. Автору репорт-жалобы необходимо указывать в названии видео: свой static, static нарушителя, время и дату. Измените название и продублируйте вашу репорт-жалобу.
:?:/ajhev::В связи с нагрузкой на сервер мы не можем рассмотреть вашу жалобу на игрока посредством обращения, пожалуйста, оставьте жалобу на форуме. Спасибо за понимание.
:?:/bcx::Все транспортные средства исчезают через 60 минут, если с ними никак не взаимодействовать.
:?:/cg,:: Если одно отделение ЕМС сильно загружено, чтобы избежать краши вас спавнит в другом, менее загруженном отделении.
:?:/gthtl::Все имущество вы передаете на свой страх и риск.
:?:/helf::Руда с шахты требуется только в семейных контрактах, продать ее нельзя.
:?:/pfr::Это регламентируется IC законами, изучить их можете в разделе Government на форуме.
:?:/,fuhtg::В случае бага оставьте свой баг-репорт в официальном дискорде проекта: Текстовые каналы - сообщить о баге. Ссылка на канал - https://discord.com/channels/530693013622489088/991471344644538480
:?:/vtl::За данным медиа партнером наблюдает PR ассистент, по этой причине я не могу выдавать наказание, т.к. вся ответственность за происходящее на этой ситуации автоматически переносится на PR ассистента.
:?:/ybpr::У вас включен режим низкого качества в F2 - Настройки.
:?:/dfr::От вакцины, выданной администрацией квест не будет засчитан, ожидайте появления врачей.
:?:/,byl::Вы можете настроить бинд клавиш под себя в F2 - Настройки - Бинд клавиш.
:?:/prfqj::На острове имеется несколько точек захвата медицинских, военных, технических материалов. Для захвата Вам необходимо взять с собой маячки(Подберите цвета), если же у Вас маячки зелёного цвета Вы сможете захватить военные материалы, синего Вашей целью станут технически при наличии красных Вам откроется возможность захватить медицинские. Захват можно начать в радиусе 50м от точки погрузки, после активации маячка появится обозримая зона захвата, если выйти за зону захвата или все захватчики умрут, маячок уничтожается, точка переходит в спокойное состояние как до захвата. Не стоит забывать и про сигнализацию, если Вы её не выключите все госструктуры будут в момент оповещены и Вас будет ждать серьёзное сопротивление(Функционально на захват материалов это не повлияет). После захвата блип на карте красится в цвет организации захватчиков. Игроки смогут забирать материалы с точки и грузить их в личную/арендованную лодку - в городе перегружать в матовозку.
:?:/gthbrj::У всех силовых фракций появилась метка для телепортации, фракции EMS/WN/GOV лишены её. Отделение LSCSD в Сэнди-Шорс тоже не имеет метки. Каждая фракции телепортируется в одну точку на острове, таким путём и обратно. Однако Вы не сможете телепортироваться с точки другой фракции. Пример: Я из FIB и хочу сделать телепорт на территории LSCSD - У меня не выйдет. На острове, вблизи особняка и на его территории, есть машины, вертолёт и квадроциклы с ними может взаимодействовать лишь SANG, возможность заспавнить своё ТС также сохранена, для этого воспользуйтесь меткой. Также SANG стал обладателем ещё одного склада на Кайо-Перико, он аналогичен Вашему на форте. Если на форте будет заполнено 20.000 то и на острове тоже.
:?:/cbhtyf::Вышку можно взломать, не будет обновляться статус контроля точек(10 минут). Для взлома нужен "Программатор ЭБУ" и "Кабель радио сигналов". Кабель можно получить при ограблении магазина 24/7, выпадает(Шанс редко-средне), он одноразовый и после использования он пропадает. Взлом происходит в мини-игре. После удачного взлома, на мини карте не будет отображаться статус захвата точек для SANG(10 минут). После неудачного взлома, сразу срабатывает сирена. SANG могут восстановить работу вышки нажав "Е" на метке вышки.
:?:/vfzr::Маячки могут выпасть с "AirDrop" или же при ограблении 24/7. Шансы выпадения у всех маячков разный.
:?:/pjj::Система животных. Могут спавниться различные животные, от крыс до оленей по всей карте. Некоторые виды животных можно разделать и получить мясо. Мясо можно жарить и употреблять в пищу. Домашних животных которые гуляют по карте, можно гладить.
:?:/crby::Оружие появляется в донат инвентаре, его можно будет распылить. Однако при его применении невозможно дальнейшее распыление. Чтобы применить скин на оружие: F2 - Магазин - Cкины - Выбираете оружие и скин к нему - Применить, скин применяется ко всем оружиям выбранного типа. Скин привязывается к игроку, выбить оружие со скином/сбросить/обменять/продать - невозможно.
:?:/djn::Выборы активны с 10:00 - 10:00 по московскому времени. Проголосовать может каждый от 3-го уровня игрового персонажа, по принцыпу один голос на один аккаунт. голосование проходит в левом крыле Мэрии(На карте флаг USA).
:?:/jldjhr:: Теперь при каждом устройстве на работу Вы получаете соответствующий комплект одежды. Он снимется автоматически при увольнении/прекращении работы. Если же у Вас мед комплект то Вам нужно пройти курс лечения.
:?:/[jk::"Холодный старт" - при запуске ТС издаёт характерный звук, другим функционалом не обладает.
:?:/akfu::Командный режим боя в котором Вы сможете противостоять своим оппонентам в равных условиях. В этом режиме Вы можете поднимать оружие на "F"(По дефолту), а также купить себе оружие на заработанные во время матча деньги, для этого нажмите "B". Матч закончиться как только одна из команд потеряет все очки, скорость их потери/накопления зависит от кол-ва захваченных, Вашей командой, точек.
:?:/kj,,b::Это Ваша игра созданная Вами для друзей или же обычных игроков, все правила настраиваете именно Вы. Для того что бы начать нужно: Дать название своему лобби(Графа "Название лобби"), выбрать один из трёх доступных режимов(Гонка вооружений/Бой на смерть/Захват флага), выбрать одну из карт. 
:?:/lhpjyf::Дрифт зона отмечена на карте как иконка падающей кометы, пример - одна из зон около LS Vagos.
:?:/cnhbv::Режим стримера заменяет символы на звездочки, для обычных игроков он бесполезен. Выключается в F2 - Настройки.
:?:/rd::Текущий квест отображается над таймеров Majestic Coins, если его нет - нажмите F6.
:?:/rv,::Чтобы устроиться в силовую гос. структуру необходимо получить военный билет. Для этого надо устроиться в SANG и пройти КМБ. Иконка зеленого самолета на карте. Подробнее уточните у старшего состава фракции.
:?:/yfhr::Пакетики Blue и White никак не получить, функционал как у Green, только разные эффекты.
:?:/fkbc::Чтобы выключить GPS ассистента нажмите F2 - Настройки и выключите GPS Ассистент.
:?:/dthn::Веротолеты продаются в салоне недалеко от аэропорта.
:?:/gj[jl::Изменить походу и эмоции лица можно в  F2 - Настройки - Главное.
:?:/,fuf;::Чтобы вылезти из багажника нажмите на "E".
:?:/yfk::Чтобы оплатить налоги на дом необходимо открыть приложение "Мой дом" в планшете.
:?:/ntcn::Внутри интерьера маркетплейса (F3 - Маркетплейс) сядьте на стул, выберите авто и начните тест-драйв
:?:/djl::Администрация не достает автомобили из воды, а лишь удаляет, чтобы вы могли ее заспавнить. Вам необходимо самостоятельно добраться до автосервиса/аренды т.с или до нужного вам места, например, вы можете вызвать такси.
:?:/,typ::Администрация не заправялет т.с. игроков. Вы можете вызвать такси и добраться до нужного вам места или приобрести канистру, чтобы в дальнейшем доехать до АЗС.
:?:/elfk::Администрация не удаляет т.с. игроков. Исключение: т.с. утонуло и не исчезло.
:?:/cnfn::В F2 - Персонаж - Статистика.
:?:/ghtl::/asms Выключите музыку, вы в зеленой зоне.{left 37}
:?:/yby::Предметы можно вращать нажатием на пробел, если дважды нажать по предметы он используется (берется в активный слот или надевается).
:?:/hjp::Добавлена система преследования. Для того чтобы начать преследование, нужно выдать розыск - зайти в Планшет - Фракция - База данных - Начать преследование, на карте появляется метка местоположения игрока, обновляется раз в 30 секунд, если игрок которого преследуют заходит в другой дименшен/интерьер/выйдет из игры - пропадает с радаров. Если гос. игрок приезжает на метку/подходит к игроку - преследование заканчивается.
:?:/fh::После окончания срока аренда авто глушится и появляется диалоговое меню, где можно продлить аренду. 
:?:/rjvn::Рабочий транспорт можно спавнить только на специально автосервисе для коммерческого транспорта. 
:?:/uh::Лидер группы может давать код, чтобы массово добавить людей в группу, игроки в радиусе 30 метров смогут зайти. Лидер и помощники могут ставить указывающие метки, настраивается в F2 - Настройки - Бинды. Лидер может передать свой статус другому игроку.
:?:/ntu::Возможность тегать людей в чате для удобного РП процесса, для использования напишите @Динамик. Если игрока тегнуть у него появится уведомление об этом, тегаются только ближайшие игроки.
:?:/dxfn::Система визуализации чата над игроком - над игроком будут дублироваться все сообщения из чата. В настройках - Дополнительно, можно включить.
:?:/vfhr::Маркетплейс используется для размещения различных товаров на продажу, таких как: транспорт, жилая недвижимость, бизнес, банкоматы, билборды. Каждая карточка с объявлением фиксирует количество просмотров карточки и количество лайков (тех кто добавил объявление в избранное). Нажав кнопку «Начать сделку» нам откроется модальное окно, в котором будет дублироваться еще раз вся необходимая информация, сумма к оплате и кнопка совершить покупку. График, который отображает  динамику цен и имеет возможность взаимодействия. После покупки предметы отправятся в «Склад хранения». За размещение любого объявления взымается плата в 1.000$ за час (от 5к). Возможность покупать лот как за наличку, так и через карту. Администратор может удалить карточку игрока. Игрок может пожаловаться на объявление, сообщение попадёт в обращение.
:?:/vfhrg::Раздел торговой площадки. Это формат биржи, на которой торгуются исключительно предметы инвентаря. Предметы выставляются бесплатно, но удаление стоит 1.000$. Есть возможность продления объявления.  На торговую площадку можно выставить предметы только из "Склада хранения".  Возможность покупать лот как за наличку, так и через карту. В карточке имеется информация о названии предмета, минимальной стоимости обновляемой в режиме реального времени и общее количество продаваемых предметов на бирже. Имеется график «Медиана цен», который визуализирует, как менялась цена за различные периоды времени. 
:?:/c[h::Склад хранения это место, в которое попадают предметы, которые были куплены или предметы, которые были занесены сюда игроком, с целью их продажи на маркет плейсе. На склад можно выгрузить предметы из инвентаря или из багажника. Склад хранения находится сбоку здания аукциона. Склад не ограничен по хранению предметов Предметы могут находиться на складе 30 минут, после истечения этого времени они идут на аукцион. Имеется возможность добавить карточку в избранное. После покупки имущество/предметы могут храниться на складе 2 дня. При входе в зону маркетплейса подсвечивается склад и появляется метка на карте.
:?:/ckex::В наградах имеются "Случайные наборы". При взятии приза у игрока будет выбор в открытии одной трёх карт с разным содержимым.
:?:/lvr::Дефибриллятор МК2 никакого функционала не даёт, он аналогичен обычному дефибриллятору.
:?:/flh::Адреналин поднимает игрока в 2 раза быстрее, чем эпинефрин.
:?:/yfuh::Все автомобили и одежда из пропуска являются эксклюзивом, их нельзя передавать другим игрокам.
:?:/;fg::Предмет "Аптечка жёлтая" - восстанавливает 75 хп.
:?:/j,d::Обвесы имеются в призах. Первая установка бесплатная. Обвесы можно будет снять/поставить отдельно. Обвес закрепляется за машиной. 
:?:/reg::Купоны действуют на все авто из Majestic Motors. После взятия они действует 3 дня.
:?:/frn::Ваша проблема актуальна?
:?:/frnefk::Обращение неактивно более одной минуты, вынужден его закрыть. Если же у Вас есть нерешенный вопрос/проблема создайте новое и ожидайте ответа.
:?:/djg::Вопроса более от вас не увидел, закрываю тикет.
:?:/fvyb::Я выдал Вам минимальное наказание, его нельзя амнистировать.
:?:/yjvth,::Приветствую, чтобы узнать список бизнесов для ограбления, позвоните по следующему номеру - 28121969.
:?:/,byjrkm::Для того чтобы использовать бинокль. Вам нужно открыть инвентарь, после навестись на бинокль в инвентаре, нажать ПКМ и использовать. После зажмите ПКМ и у Вас сработает бинокль.
:?:/rdh::У бота на работе будет кнопка "Я могу чем-то помочь". Вы на неё жмёте и у вас откроется квест, который выполнить нужно (на Ф6 можно посмотреть). Выполняете этот квест и Вам засчитывает задание.
:?:/xth::Червей можно выкопать на любой зоне рыбалки, с помощью лопаты. Шанс выпадения червя очень мл. Лопату вы можете приобрести на рынке у NP
:?:/hs,vfufp::Все предметы для рыбалки продаются в рыболовном магазине, они убраны из 24/7. Подсаки купить нельзя, можно только крафтить в домашних мастерских.
:?:/gfh::Положите парашют в быстрый слот, затем в полете нажмите на 1, 2 или 3 (зависит от слота), после этого ЛКМ, парашют откроется.
:?:/lhban::Дрифт счётчик можно включить через F2 > Настройки. Он появляется во время управляемого заноса и показывает, на сколько хорошо вы прошли поворот.На карте вы можете увидеть зоны, где можно дрифтить и попасть в список топ-дрифтеров. Для этого Вам обязательно дрифтить по отмеченной зоне. В противном случае очки не засчитаются.
:?:/fen::Для подключения Google authenticator вам нужно в меню выбора персонажа открыть раздел настроек.
:?:/fhv::Армреслинг находится около в Палето около шерифов, а также между стрипклубом и починкой авто.
:?:/rl::Перезарядка аренды авто 5 минут.
:?:/reh::Передам кураторам.
:?:/gth::Передам.
:?:/ytja::Не оффтопьте в обращении.
:?:/ytgh::Не предоставляем подобную информацию.
:?:/pfrn::Здравствуйте. Ваша проблема актуальна?
:?:/buh::Игрок получил наказание.
:?:/buh2::Игроки получили наказания.
:?:/afv::/c - IC чат, /cb - OOC чат.
:?:/ahfr::/f - IC чат, /fb - OOC чат. 
:?:/x[::Если у вас есть откат с подозрительным моментом, то вы можете предоставить его администрации с ролью "Cheats Hunter". Найти их можно в Официальном дискорде проекта. Либо оставить запрос в Телеграм Канале: https://t.me/CheatHuntersBot .
:?:/lf::Да. 
:?:/ytn::Нет. 
:?:/ghb::Приятной игры!
:?:/ktxe::Уже лечу к Вам на помощь.
:?:/gjv::Сейчас помогу Вам, ожидайте.
:?:/cltkrf::Администрация не следит за сделками игроков, запишите видео на случай обмана, чтобы оставить жалобу на игрока на форуме. 
:?:/g::Приятной игры{!}
:?:/yjd::Следите за новостями сервера в официальном дискорде проекта. 
:?:/fyfr::Обратитесь, пожалуйста, в дискорд к администратору, который выдал вам наказание или рассмотрел жалобу.
:?:/flp::Данный администратор сейчас занят другим делом или отошел от компьютера на короткое время, напишите ему в личные сообщения в дискорде.
:?:/flc::Данный администратор сейчас отсутствует на сервере, напишите ему в личные сообщения в дискорде.
:?:/gjujlf::К сожалению, администрация не контролирует данный процесс. Погода меняется автоматически.
:?:/ytg::Не понял суть вашего обращения, опишите Вашу проблему/вопрос подробнее для максимально точного ответа, пожалуйста.
:?:/ljyfn::Обратитесь по почте - help@majestic-rp.ru.
:?:/tvc::К сожалению, администрация не поднимает и не лечит игроков, воспользуйтесь услугами ЕМС.
:?:/pfrh::/asms  Закройте обращение и откройте снова, пожалуйста. {left 51}
:?:/dbp::Визуальный баг, перезайдите на сервер.
:?:/nf,k::Вот таблица разрешенной дополнительно одежды: https://docs.google.com/spreadsheets/d/1UNmIeS1-vYGEoT0-ScQwgDZTd4ciuIbMJXTwZhyMM7U/htmlview?gid=677804991#gid=677804991
:?:/cel::Снять судимость Вы можете в Goverment'e.
:?:/ythfp::Не разглашаем данную информацию.
:?:/plh::Здравствуйте. 
:?:/by::Остались ли ещё какие-нибудь вопросы?
:?:/cgfv::Использование кнопки - "проблема актуальна", не ускорит ответ.
:?:/cgfv2::Если Вы продолжите использовать кнопку - "проблема актуальна", не по назначению, то буду вынужден выдать наказание за помеху в работе администратора.
:?:/ntrcn::Приветствую, опишите текстом.
:?:/jghf,fu::Приветствую, предоставьте видео-запись бага и я Вам помогу.
:?:/ckt;rf::Администрация не может следить полностью за всем РП процессом, в случае нарушений от игроков - напишите репорт.
:?:/jwtyrf::Не обсуждаем и не оцениваем работу/наказания других администраторов, подобные вопросы необходимо обсудить с тем, кто выдал наказание/следил за ситуацией.
:?:/gbh::Здравствуйте, PR Ассистенты не отвечают на игровые-тикеты. Задайте им вопросы в личные сообщения дискорда.
:?:/yfh::Рядом находятся другие игроки, которые могут вам помочь. В таких случаях мы не снимаем наручники/стяжки.
:?:/jnd::Не услышал от Вас конкретного ответа, закрываю репорт.
:?:/jaa::Если продолжите создавать оффтоп в репорт, то буду вынужден выдать наказание за помеху работе Администрации.
:?:/lc::Предоставьте видеодоказательства мне в личные сообщения в дискорде:
:?:/vfl;::discord.gg/majestic
:?:/ekexi:: Пока у вас не прокачано в разделе Планшет-Семья-Улучшение определённый контракт/действие, оно не будет доступно в разделе Планшет-Семья-Контракты или же функционал того или иного действия. Пример: нельзя нападать на ФЗ семье, не имея открытого улучшения по нападению на ФЗ.Нельзя открыть контракт Курьер Green, если в Улучшених он не разблокирован.
:?:/nfqy:: По всей карте есть тайники Механические, Химические, Техничечские. Тайники есть даже на острове. Чтобы его открыть - необхожимо нажать на Е. Есть определённое КД на спавн предметогв в нём. Если вы будете стоять рядом с ним всё время - содержимое не обновится.
:?:/eujy::Угон доступен только для крайм фракций и семей, у которых активно улучшение контрактов для угона авто. Если все условия выполнены, то вот гайд, как начать возить Угнанные машины:https://wiki.majestic-rp.ru/ru/post/ugon-avto
:?:/vju::Могу чем-то еще помочь?
:?:/dfc::У Вас остались вопросы?
:?:/ltk::Приветствую. Сделано.
:?:/xt::Уточните Ваш вопрос, пожалуйста.
:?:/;,f::Вы можете написать жалобу на форум, если не согласны с решением администратора.
:?:/tvc2::К сожалению, не видя всей ситуации мы не в праве лечить,поднимать или добивать игроков. Дождитесь сотрудников EMS либо же окончания таймера смерти. Приносим свои извинения за возможные неудобства. 
:?:/rhfi2::Здравствуйте. Если у Вас есть доказательства краша - предоставьте его любому администратору в личные сообщения дискорда. Вас выпустят.
:?:/h;,2::Жалобы, содержащие видеофрагменты продолжительностью более 1-й минуты, а также не очевидные и сложные нарушения не подлежат рассмотрению в Обращение. Стоит оформить жалобу на форум. Благодарю за понимание.
:?:/dbltdf::Жалобы, содержащие видеофрагменты продолжительностью более 1-й минуты, а также не очевидные и сложные нарушения не подлежат рассмотрению в Обращение. Стоит оформить жалобу на форум. Благодарю за понимание.
:?:/vck::Обратитесь к Организатором MCL в Дискорде.
:?:/;,::Не могу выдавать наказания и выносить какие-либо вердикты не видя ситуации с самого начала. Если у Вас есть видеофиксация данного нарушения - оформите жалобу на форуме.

; Прочее:
:?:администарция::администрация
:?:администаратору::администратору

; Наказания

:?:.хард::/hardban 
:?:.хард9::/hardban 9999 Cheats{left 12}
:?:.софт::/hardban 9999 Cheats{left 12}
:?:.рыбак::/hardban 9999 Использование ПО{left 22}
:?:.чит::/hardban 9999 Cheats{left 12}
:?:.оос::/mute 90 OOC in IC{Left 13}
:?:.нрд::/ajail 15 nonRP Drive{Left 15}
:?:.нрд25::/ajail 25 nonRP Drive{Left 15}
:?:.нрд45::/ajail 45 nonRP Drive{Left 15}
:?:.нрд70::/ajail 70 nonRP Drive{Left 15}
:?:.нрд90::/ajail 90 nonRP Drive{Left 15}
:?:.нрф::/ajail 15 nonRP Fly{Left 13}
:?:.нрф25::/ajail 25 nonRP Fly{Left 13}
:?:.нрп::/ajail 15 nonRP Поведение{Left 19}
:?:.нрп25::/ajail 25 nonRP Поведение{Left 19}
:?:.нрп45::/ajail 45 nonRP Поведение{Left 19}
:?:.нрп70::/ajail 70 nonRP Поведение{Left 19}
:?:.нрп90::/ajail 90 nonRP Поведение{Left 19}
:?:.дб::/ajail 30 DB{Left 6}
:?:.дб45::/ajail 45 DB{Left 6}
:?:.дб60::/ajail 60 DB{Left 6}
:?:.дб75::/ajail 75 DB{Left 6}
:?:.дб90::/ajail 90 DB{Left 6}
:?:.дм::/gunban 5 DM{Left 5}
:?:.дм120::/ajail 120 DM{Left 7}
:?:.пг::/ajail 35 PG{Left 6}
:?:.пг55::/ajail 55 PG{Left 6}
:?:.пг75::/ajail 75 PG{Left 6}
:?:.пг90::/ajail 90 PG{Left 6}
:?:.кгз::/ajail 10 Crime in GZ{Left 15}
:?:.119::/ajail 35 1.19 Правила государственных организаций{Left 44}
:?:.124::/ajail 10 1.24 Правила государственных организаций{Left 44}
:?:.1111::/ajail 50 1.11.1 Правила государственных организаций{Left 46}
:?:.122::/ban 10 1.22 Правила государственных организаций{Left 44}
:?:.1112::/ajail 60 1.11.2 Правила государственных организаций{Left 46}
:?:.муз::/mute 30 Music in GZ{Left 15}
:?:.муз60::/mute 60 Music in GZ{Left 15}
:?:.сп::/mute 30 sp in gz{Left 12}
:?:.сп60::/mute 60 sp in gz{Left 12}
:?:.громк::/mute 30 Громкие звуки{Left 17}
:?:.смник::/ajail 720 Смените Имя_Фамилия согласно правилам проекта{Left 50}
:?:.смвн::/ajail 720 Смените внешность согласно правилам проекта{Left 48}
:?:.оса30::/hardban 30 Оскорбление администрации{left 29}
:?:.оса15::/hardban 14 Оскорбление администрации{left 29}
:?:.оса10::/hardban 10 Оскорбление администрации{left 29}
:?:.оса::/hardban 7 Оскорбление администрации{left 28}
:?:.ооск::/ajail 30 OOC оскорбление{left 19}
:?:.оцоск::/ajail 15 OOC osk{left 11}
:?:.стр::/ban 3 Стрельба по пешим{left 20}
:?:.амн::/unjail Амнистия{left 9}
:?:.амн2::/ajail Амнистия{left 9}
:?:.запретка::/ban 3 3.5 Основных Правил Проекта{left 30}
:?:.отказ::/hardban 9999 Отказ от проверки{left 23}
:?:.тон::/mute 30 ПО для изменения тональности голоса.{Left 40}
:?:.вза18::/ajail 45 1.8 ВЗА{Left 11}
:?:.вза19::/ajail 90 1.9 ВЗА{Left 11}
:?:.вза31::/ajail 90 3.1 ВЗА{Left 11}
:?:.вза35::/ajail 35 3.5 ВЗА{Left 11}
:?:.уход::/warn Уход от RP{Left 11}
:?:.уход4::/hardban 4 Уход от RP{Left 13}
:?:.бгз::/warn Использование уязвимостей системы и багов{Left 42}
:?:.крзз30::/ajail 30 Crime in GZ{Left 15}
:?:.крзз45::/ajail 45 Crime in GZ{Left 15}
:?:.крзз60::/ajail 60 Crime in GZ{Left 15}
:?:.крзз120::/ajail 120 Crime in GZ{Left 16}
:?:.флуд::/mute 30 4.4 Основных правил проекта{left 31}
:?:.рез::/hardban 9999 По результатам проверки{left 29}


:?:/jnrfp::/hardban 9999 Отказ от проверки{left 23}
:?:/[fhlj::/hardban 9999 Cheats{left 12}
:?:/hs,fr::/hardban 9999 Использование ПО{left 22}
:?:/[fhl::/hardban 9999 Cheats{left 12}
:?:/cjan::/hardban 9999 Cheats{left 12}
:?:/[fhl9::/hardban 9999 Cheats{left 12}
:?:/jjc::/mute 90 OOC in IC{Left 13}
:?:/yhl::/ajail 15 nonRP Drive{Left 15}
:?:/yhll25::/ajail 25 nonRP Drive{Left 15}
:?:/yhl45::/ajail 45 nonRP Drive{Left 15}
:?:/yhl70::/ajail 70 nonRP Drive{Left 15}
:?:/yhl90::/ajail 90 nonRP Drive{Left 15}
:?:/yha::/ajail 15 nonRP Fly{Left 13}
:?:/yha25::/ajail 25 nonRP Fly{Left 13}
:?:/yhg::/ajail 15 nonRP Поведение{Left 19}
:?:/yhg25::/ajail 25 nonRP Поведение{Left 19}
:?:/yhg45::/ajail 45 nonRP Поведение{Left 19}
:?:/yhg70::/ajail 70 nonRP Поведение{Left 19}
:?:/yhg90::/ajail 90 nonRP Поведение{Left 19}
:?:/l,::/ajail 30 DB{Left 6}
:?:/l,45::/ajail 45 DB{Left 6}
:?:/l,60::/ajail 60 DB{Left 6}
:?:/l,75::/ajail 75 DB{Left 6}
:?:/l,90::/ajail 90 DB{Left 6}
:?:/lv::/gunban 5 DM{Left 5}
:?:/lv120::/ajail 120 DM{Left 7}
:?:/gu::/ajail 35 PG{Left 6}
:?:/gu55::/ajail 55 PG{Left 6}
:?:/gu75::/ajail 75 PG{Left 6}
:?:/gu90::/ajail 90 PG{Left 6}
:?:/rup::/ajail 10 Crime in GZ{Left 15}
:?:/119::/ajail 35 1.19 Правила государственных организаций{Left 44}
:?:/124::/ajail 10 1.24 Правила государственных организаций{Left 44}
:?:/1111::/ajail 50 1.11.1 Правила государственных организаций{Left 46}
:?:/122::/ban 10 1.22 Правила государственных организаций{Left 44}
:?:/1112::/ajail 60 1.11.2 Правила государственных организаций{Left 46}
:?:/vep::/mute 30 Music in GZ{Left 15}
:?:/vep60::/mute 60 Music in GZ{Left 15}
:?:/uhjvr::/mute 30 Громкие звуки{Left 17}
:?:/cg::/mute 30 sp in gz{Left 12}
:?:/cg60::/mute 60 sp in gz{Left 12}
:?:/cvybr::/ajail 720 Смените Имя_Фамилия согласно правилам проекта{Left 50}
:?:/cvdy::/ajail 720 Смените внешность согласно правилам проекта{Left 48}
:?:/jcf30::/hardban 30 Оскорбление администрации{left 29}
:?:/jcf15::/hardban 14 Оскорбление администрации{left 29}
:?:/jcf10::/hardban 10 Оскорбление администрации{left 29}
:?:/jcf::/hardban 7 Оскорбление администрации{left 28}
:?:/jjcr::/ajail  30 OOC оскорбление{left 19}
:?:/owock::/ajail 15 OOC osk{left 11}
:?:/cnh::/ban 3 Стрельба по пешим{left 20}
:?:/fvy::/unjail Амнистия{left 9}
:?:/fvy2::/ajail Амнистия{left 9}
:?:/pfghtnrf::/ban 3 3.5 Основных Правил Проекта{left 30}
:?:/njy::/mute 30 ПО для изменения тональности голоса.{Left 40}
:?:/dpf18::/ajail 45 1.8 ВЗА{Left 11}
:?:/dpf19::/ajail 90 1.9 ВЗА{Left 11}
:?:/dpf31::/ajail 90 3.1 ВЗА{Left 11}
:?:/dpf35::/ajail 35 3.5 ВЗА{Left 11}
:?:/e[jl::/warn Уход от RP{Left 11}
:?:/e[jl4::/hardban 4 Уход от RP{Left 13}
:?:/,up::/warn Использование уязвимостей системы и багов{Left 42}
:?:/rhpp30::/ajail 30 Crime in GZ{Left 15}
:?:/rhpp45::/ajail 45 Crime in GZ{Left 15}
:?:/rhpp60::/ajail 60 Crime in GZ{Left 15}
:?:/rhpp120::/ajail 120 Crime in GZ{Left 16}
:?:/akel::/mute 30 4.4 Основных правил проекта{left 31}
:?:/htp::/hardban 9999 По результатам проверки{left 29}

;===================================================================================

:?:/ljv2::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput,/setdim %Dinamic% 22{Enter}
sleep 200
SendInput, {T}
sleep 200
SendInput,/ctp 3067.225 2215.361 2.854 {Enter}{Enter}
sleep 200
SendInput,{Enter}
return
:?:.дом2::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Ошибка, Динамик не введен!
}
else
SendInput,/setdim %Dinamic% 22{Enter}
sleep 200
SendInput, {T}
sleep 200
SendInput,/ctp 3067.225 2215.361 2.854 {Enter}{Enter}
sleep 200
SendInput,{Enter}
return

;===================================================================================
change:
    MsgBox, 8192, 08.02.2025 Обновления:`n , Можно узнать в Дискорде АХК.
return
;===================================================================================

Reload:
reload
return

^F9::reload
^F10::Exitapp

Close:
exitapp

Hide:
Gui, Main: Hide
return

Show:
Gui, Main: Show
return

guiclose2:
gui, Main:hide

guiclose:
Gui, Answers:Destroy
return

guiclose3:
Gui, Commandlist:Destroy
return

guiclose4:
Gui, Usefull:Destroy
return