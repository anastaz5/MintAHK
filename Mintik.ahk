; Запуск от имени администратора
if !A_IsAdmin && !%False%
{
if A_OSVersion not in WIN_2003,WIN_XP,WIN_2000
{
Run *RunAs "%A_ScriptFullPath%" ,, UseErrorLevel
if !ErrorLevel
ExitApp
}
ExitApp
}

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

IfnotExist, %A_ScriptDir%\res\pSuYvEc.png
{
URLDownloadToFile, https://i.imgur.com/pSuYvEc.png,%A_ScriptDir%\res\pSuYvEc.png
}
IfnotExist, %A_ScriptDir%\res\n4vBSQU.png
{
URLDownloadToFile, https://i.imgur.com/n4vBSQU.png,%A_ScriptDir%\res\n4vBSQU.png
}
IfnotExist, %A_ScriptDir%\res\YB25qSn.png
{
URLDownloadToFile,https://i.imgur.com/YB25qSn.png,%A_ScriptDir%\res\YB25qSn.png
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
IniRead, Radio15, %A_ScriptDir%\res\Settings.ini, Login Commands, /objdl
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
IniWrite, .jeazz, %A_ScriptDir%\res\Settings.ini, Discord, dis
IniWrite, 0, %A_ScriptDir%\res\Settings.ini, Discord, tag
IniWrite, tigertezy, %A_ScriptDir%\res\Settings.ini, Discord, gadis
IniWrite, 0, %A_ScriptDir%\res\Settings.ini, Discord, gatag
IniWrite, yerka, %A_ScriptDir%\res\Settings.ini, Discord, zgadis
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
Gui, Main: Color, 1e2124
Gui, Main: Font,cwhite, 

Gui, Main: Add, Picture, x474 y280, %A_ScriptDir%\res\pSuYvEc.png
Gui, Main: Add, Picture, x100 y310, %A_ScriptDir%\res\n4vBSQU.png
Gui, Main: Add, Text, x12 y382 w62 h15 +0x200 +BackgroundTrans +border, ahk by Mint

;Левый блок кнопок
Gui, Main: Add, Button, x10 y24 w64 h21 gInfo , Инфо
Gui, Main: Add, Button, x10 y50 w64 h21 gSkillInfo, Навыки
Gui, Main: Add, Button, x10 y76 w64 h21 gCommandlist, Команды
Gui, Main: Add, Button, x10 y102 w64 h21 gAnswers, Ответы
Gui, Main: Add, Button, x10 y128 w64 h21 gPunish, Наказания
Gui, Main: Add, Button, x10 y154 w64 h21 gUsefull, Полезное
Gui, Main: Add, Button, x10 y180 w64 h21 gTeleports, Телепорты
Gui, Main: Add, Button, x10 y206 w64 h21 gRepjb, Репорт Жалобы
Gui, Main: Add, Button, x10 y232 w64 h21 gFractions,Фракции
Gui, Main: Add, Button, x10 y258 w64 h21 gBattlePass, БатлПас
Gui, Main: Add, Button, x10 y284 w64 h21 gQuest, Квесты
Gui, Main: Add, Button, x658 y76 w64 h21 gchange, Обнова
;Gui, Main: Add, Button, x10 y206 w64 h21 g, Ответы 
Gui, Main: Add, Button, x10 y336 w64 h21 gSaveData, Сохранить
Gui, Main: Add, Button, x10 y362 w64 h21 gupturn, Обновить

;Праый блок кнопок
;Gui, Main: Add, Button, x658 y50 w64 h21 gUsefull, Фракции
;Gui, Main: Add, Button, x658 y76 w64 h21 gUsefull, Амфитеатр
;Gui, Main: Add, Button, x658 y128 w64 h21 gUsefull, Лицензии

;Верхние боксы
Gui, Main: Add, GroupBox, x90 y18 w368 h27 cA52A2A,
Gui, Main: Add, GroupBox, x474 y18 w168 h27 cA52A2A,
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
Gui, Main: Add, Hotkey, x90 y154 w48 h21 vHot5, %KEY5% ; Пока что пусто.
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
Gui, Main: Add, Text, x143 y157 w120 h14 +0x200, Пока что пусто.
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
Gui, Main: Add, Text, x333 y261 w104 h14 +0x200 , Машина после воды 

;при входе
Gui, Main: Add, CheckBox, x474 y50 w120 h23 vRadio8 Checked%Radio8%, /chide
Gui, Main: Add, CheckBox, x474 y76 w120 h23 vRadio9 Checked%Radio9%, /esp3
Gui, Main: Add, CheckBox, x474 y102 w120 h23 vRadio10 Checked%Radio10%, /dl
Gui, Main: Add, CheckBox, x474 y128 w120 h23 vRadio11 Checked%Radio11%, /zzdebug
Gui, Main: Add, CheckBox, x474 y154 w120 h23 vRadio12 Checked%Radio12%, /gm
Gui, Main: Add, CheckBox, x474 y180 w120 h23 vRadio13 Checked%Radio13%, /hidecheatinfo
Gui, Main: Add, CheckBox, x474 y206 w120 h23 vRadio14 Checked%Radio14%, /templeader
Gui, Main: Add, CheckBox, x474 y232 w120 h23 vRadio15 Checked%Radio15%, /objdl
Gui, Main: Add, CheckBox, x474 y258 w120 h23 vRadio16 Checked%Radio16%, /setweatherlocal 

;настройки 
Gui, Main: Tab, 2
Gui, Main: Add, Button, x675 y2 w25 h16 ghide, —
Gui, Main: Add, Button, x705 y2 w25 h16 gClose, X
Gui, Main: Add, Picture, x100 y220, %A_ScriptDir%\res\YB25qSn.png
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
Gui, Main: Add, Edit, x319 y50 w65 h21 vdis cblack, %dis%
Gui, Main: Add, Edit, x390 y50 w45 h21 vtag +Number cblack, %tag%


Gui, Main: Add, Text, x440 y79 w90 h14 +0x200 , Дискорд ГА
Gui, Main: Add, Edit, x319 y76 w65 h21 vgadis cblack, %gadis%
Gui, Main: Add, Edit, x390 y76 w45 h21 vgatag +Number cblack, %gatag%

Gui, Main: Add, Text, x440 y105 w115 h14 +0x200, Дискорд зГА 
Gui, Main: Add, Edit, x319 y102 w65 h21 vzgadis cblack, %zgadis%
Gui, Main: Add, Edit, x390 y102 w45 h21 vzgatag +Number cblack, %zgatag%


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
IniWrite, %Radio15%, %A_ScriptDir%\res\Settings.ini, Login Commands, /objdl
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
labelgo:
if (radio1 == 1)
{
SendInput, {Enter}
Sleep 1000
MouseGetPos, 190, 42	
PixelGetColor, color, 190, 42 alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  ) | ( Var1 = 0x008313FF  ) | ( Var1 = 0x006619E9  ) | ( Var1 = 0x4415B0 )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio2 == 1)
{
SendInput, {Enter}
Sleep 1000
MouseGetPos, 152, 45
PixelGetColor, color, 152, 45 alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  ) | ( Var1 = 0x008313FF  ) | ( Var1 = 0x006619E9  ) | ( Var1 = 0x4415B0 )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio3 == 1)
{
SendInput, {Enter}
Sleep 1000
MouseGetPos, 178, 54
PixelGetColor, color, 178, 54  alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  ) | ( Var1 = 0x008313FF  ) | ( Var1 = 0x006619E9  ) | ( Var1 = 0x4415B0 )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio6 == 1)
{
SendInput, {Enter}
Sleep 1000
MouseGetPos, 183, 55
PixelGetColor, color, 183, 55 alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  ) | ( Var1 = 0x008313FF  ) | ( Var1 = 0x006619E9  ) | ( Var1 = 0x4415B0 )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio4 == 1)
{
SendInput, {Enter}
Sleep 1000
MouseGetPos, 130, 40
PixelGetColor, color, 130, 40 alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  ) | ( Var1 = 0x008313FF  ) | ( Var1 = 0x006619E9  ) | ( Var1 = 0x4415B0 )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio7 == 1)
{
SendInput, {Enter}
Sleep 1000
MouseGetPos, 174, 51
PixelGetColor, color, 174, 51 alt 
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  ) | ( Var1 = 0x008313FF  ) | ( Var1 = 0x006619E9  ) | ( Var1 = 0x4415B0 )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio5 == 1)
{
SendInput, {Enter}
Sleep 1000
MouseGetPos, 174, 51
PixelGetColor, color, 163, 51 alt 163, 51
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  ) | ( Var1 = 0x008313FF  ) | ( Var1 = 0x006619E9  ) | ( Var1 = 0x4415B0 )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
} 
else if (Radio2k == 1)
{
SendInput, {Enter}
Sleep 1000
MouseGetPos, 174, 51
PixelGetColor, color, 163, 51 alt 163, 51
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  ) | ( Var1 = 0x008313FF  ) | ( Var1 = 0x006619E9  ) | ( Var1 = 0x4415B0 )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
return 

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
    Gui, Info: Color, 1e2124
    Gui, Info: Font, s12, Segoe UI
    Gui, Info: Font, cwhite
	Gui, Info: Add, Text, x8 y8  h23 +0x200,АХК создан для облегчения работы администрации проекта Majestic.
    Gui, Info: Add, Text, x8 y32  h23 +0x200, 
    Gui, Info: Add, Text, x8 y56  h23 +0x200,АХК автоматически считает кол-во отвеченных репортов в день и в неделю, во 
    Gui, Info: Add, Text, x8 y80  h23 +0x200, время ответа на репорт при первом сообщении в ответе жмите на клавишу, 
    Gui, Info: Add, Text, x8 y104  h23 +0x200, которую вы забиндили в "Пока что пусто.".
    Gui, Info: Add, Text, x8 y128  h23 +0x200,
    Gui, Info: Add, Text, x8 y152  h23 +0x200, Все команды, телепорты, наказания можно вводить транслитом. Пр.: .ез -> /tp
    Gui, Info: Add, Text, x8 y176  h23 +0x200, 
    Gui, Info: Add, Text, x8 y200  h23 +0x200, Для корректной работы софта необходимо выбрать разрешение экрана, ваш 
    Gui, Info: Add, Text, x8 y224  h23 +0x200, дискорд, сервер и ваш пол в настройках.
    Gui, Info: Add, Text, x8 y248  h23 +0x200, 
    Gui, Info: Add, Text, cred x8 y272  h23 +0x200, Хоткеи:
	Gui, Info: Add, Text, x8 y320  h23 +0x200,Ctrl + F9 - Перезапустить.
    Gui, Info: Add, Text, x8 y296  h23 +0x200,Ctrl + F10 - Закрыть.
    Gui, Info: Add, Text, x8 y344  h23 +0x200,
    Gui, Info: Add, Text, x8 y368  h23 +0x200, Если что-то сломалось/не работает/есть идеи и т.п. писать - MintR1
    Gui, Info: Show, h390 w600, Информация
	Return
	
	Usefull:
	Gui, Usefull: -SysMenu
	Gui, Usefull: Add, Button, x275 y2 w25 h16 gguiclose4, X
	Gui, Usefull: Add, Tab, x0 y0 h414 w300, 1|2|3|4
    Gui, Usefull: Color, 1e2124
    Gui, Usefull: Font,s9, Segoe UI
    Gui, Usefull: Font, cwhite
	
	Gui, Usefull: Add, Text, x106 y24  h20 +0x200 cred, Список скилов
    Gui, Usefull: Add, Text, x8 y40  h20 +0x200, stamina - Выносливость
    Gui, Usefull: Add, Text, x8 y56  h20 +0x200, strength - Сила
    Gui, Usefull: Add, Text, x8 y72  h20 +0x200, lung_capacity - Дыхание
    Gui, Usefull: Add, Text, x8 y88  h20 +0x200, wheelie_ability - Вождение
    Gui, Usefull: Add, Text, x8 y104  h20 +0x200, flying_ability - Полёт
    Gui, Usefull: Add, Text, x8 y120  h20 +0x200, shooting_ability - Стрельба
    Gui, Usefull: Add, Text, x8 y136  h20 +0x200, stealth_ability - Скрытность
    Gui, Usefull: Add, Text, x8 y152  h20 +0x200, builder - Строитель
    Gui, Usefull: Add, Text, x8 y168  h20 +0x200, butcher - Мясник
    Gui, Usefull: Add, Text, x8 y184  h20 +0x200, trucker - Дальнобойщик
    Gui, Usefull: Add, Text, x8 y200  h20 +0x200, fishing - Рыбалов
    Gui, Usefull: Add, Text, x8 y216  h20 +0x200, busdriver - Водитель автобуса
    Gui, Usefull: Add, Text, x8 y232  h20 +0x200, moneycollector - Инкассатор
    Gui, Usefull: Add, Text, x8 y248  h20 +0x200, vineyard - Виноградник
    Gui, Usefull: Add, Text, x8 y264  h20 +0x200, lumberjack - Лесоруб
    Gui, Usefull: Add, Text, x8 y280  h20 +0x200, garbagecollector - Мусорщик
    Gui, Usefull: Add, Text, x8 y296  h20 +0x200, farmer - Фермер 
    Gui, Usefull: Add, Text, x8 y312  h20 +0x200, mushroomer - Грибник 
    Gui, Usefull: Add, Text, x8 y328  h20 +0x200, gopostal - Почтальон
    Gui, Usefull: Add, Text, x8 y344  h20 +0x200, gangjob - Закладчик бандит
    Gui, Usefull: Add, Text, x8 y360  h20 +0x200, mafiajob - Закдажчик мафиози
    Gui, Usefull: Add, Text, x8 y376  h20 +0x200, bikerjob - Закладчик байкер
    Gui, Usefull: Add, Text, x8 y392  h20 +0x200, hijacker - Угонщик

	Gui, Usefull: Tab, 2
	Gui, Usefull: Add, Text, x106 y24  h20 +0x200 cred, Список фракций
    Gui, Usefull: Add, Text, x8 y40  h20 +0x200, 1 - LSPD
    Gui, Usefull: Add, Text, x8 y56  h20 +0x200, 2 - EMS
    Gui, Usefull: Add, Text, x8 y72  h20 +0x200, 3 - Sheriff
    Gui, Usefull: Add, Text, x8 y88  h20 +0x200, 4 - National Guard
    Gui, Usefull: Add, Text, x8 y104  h20 +0x200, 5 - CityHall (Gov)
    Gui, Usefull: Add, Text, x8 y120  h20 +0x200, 6 - Weazel News
    Gui, Usefull: Add, Text, x8 y136  h20 +0x200, 7 - FIB
    Gui, Usefull: Add, Text, x8 y152  h20 +0x200, 8 - The Ballas Gang 
    Gui, Usefull: Add, Text, x8 y168  h20 +0x200, 9 - Los-Santos Vagos
    Gui, Usefull: Add, Text, x8 y184  h20 +0x200, 10 - The Famillies 
    Gui, Usefull: Add, Text, x8 y200  h20 +0x200, 11 - The Bloods Gang 
    Gui, Usefull: Add, Text, x8 y216  h20 +0x200, 12 - Marabunta Grande

	Gui, Usefull: Tab, 3
	Gui, Usefull: Add, Text, x106 y24  h20 +0x200 cred, Список NPL 
    Gui, Usefull: Add, Text, x8 y40  h20 +0x200, ID 0 - Одна стойка для выступлений
    Gui, Usefull: Add, Text, x8 y56  h20 +0x200, ID 1 - Две стойки для дебатов
    Gui, Usefull: Add, Text, x8 y72  h20 +0x200, ID 2 - Три стойки для дебатов
    Gui, Usefull: Add, Text, x8 y88  h20 +0x200, ID 3 - Четыре стойки для дебатов
    Gui, Usefull: Add, Text, x8 y104  h20 +0x200, ID 4 - Американские флаги вдоль и на сцене
    Gui, Usefull: Add, Text, x8 y120  h20 +0x200, ID 5 - Камеры на сцене
	Gui, Usefull: Add, Text, x8 y136  h20 +0x200, ID 6 - Стол с креслами и баннерами на сцене 

	Gui, Usefull: Tab, 4
    Gui, Usefull: Add, Text, x106 y24  h20 +0x200 cred, Список лицензий
    Gui, Usefull: Add, Text, x8 y40  h20 +0x200, DriveD - Легковой транспорт
    Gui, Usefull: Add, Text, x8 y56  h20 +0x200, DriveM - Мотоциклы
    Gui, Usefull: Add, Text, x8 y72  h20 +0x200, CDLA - Тягачи и моногрузовики
    Gui, Usefull: Add, Text, x8 y88  h20 +0x200, CDLB - Пикапы и грузовики
    Gui, Usefull: Add, Text, x8 y104  h20 +0x200, CDWL - Оружие
    Gui, Usefull: Add, Text, x8 y120  h20 +0x200, FH - Охота и рыбалка
	Gui, Usefull: Add, Text, x8 y136  h20 +0x200, Business - Бизнесы
    Gui, Usefull: Show, h414 w300, %Usefull%
	Return

    ;===================================================================================
Teleports:
    MsgBox, 8192, Описание "Телепорты",`n- .пд - телепорт на LSPD`n- .бол - телепорт на Больницу ЛС`n- .сд - телепорт на Шерфи Департамент`n- .фз - телепорт на Форрт`n- .гов - телепорт на Мерию`n- .вн - телепорт на Новости`n- .фиб - телепорт на ФИБ`n `n- .балас - телепорт на Балласов`n- .ваг - телепорт на Вагасов`n- .фэм - телепорт на Фэмов`n- .бладс - телепорт на Бладсов`n- .мара - телепорт на Марабунту`n `n- .лкн - телепорт на ЛКН`n- .рм - телепорт на РМ`n- .як - телепорт на Якудзу`n- .мекс - телепорт на Мексиканцев`n- .ир - телепорт на Ирланцев`n `n- .лост - телепорт на лостов`n- .аод - телепорт на АОД`n`n- .особняк - Телепорт на особняк Кайо-Перико.`n- .ключ - Телепорт на ключ(Город).`n- .хум - телепорт на Хуман Лабс`n- .мейз - телепорт на Мейз Банк`n- .каз - телепорт на Казино`n- .аш - телепорт на АвтоШкола`n- .гг - телепорт на ГанГейм`n- .бургер - телепорт на Бургерную`n- .багама - телепорт на Багаму Маму`n- .кайо - телепорт на Остров.`n- .авиа - Телепорт на авианосец `n- .мол - Телепорт на мол `n- .трас - Телепорт на искуственную трассу`n- .аук - Телепорт на аукцион`n- .бокс - Телепорт на бокс`n- .бар - Телепорт телепорт в бар с интой`n- .бк - Телепорт на букмекерскую контору`n- .ванила - Телепорт в стрип клуб Vanila Unicorn`n- .починка - Телепорт на СТО Hayes`n- .лск4 - Телепорт к 4 лск, шоссе 68`n`n- .спд - Телепорт на склад LSPD`n- .сбемс - Телепорт на склад EMS`n- .ссд - Телепорт на склад LSCSD`n- .сфз - Телепорт на склад SANG`n- .сгов - Телепорт на склад GOV`n- .свн - Телепорт на склад WN`n- .сфиб - Телепорт на склад FIB`n- .скайо - Телепорт на склад Кайо-Перико.`n`n- .сяк - Телепорт на склад Yakuza`n- .сир - Телепорт на склад Irish`n- .срм - Телепорт на склад Russia Mafia`n- .смекс - Телепорт на склад Mex`n- .слкн - Телепорт на склад LCN`n- .сбалас - Телепорт на склад Ballas`n- .смара - Телепорт на склад Mara.`n- .сваг - Телепорт на склад Vagos.`n- .сбладс - Телепорт на склад Bloods.`n- .сфэм - Телепорт на склад Fam.`n- .сш - Телепорт в Сэнди-Шорс.`n- .палето - Телепорт в Палето.`n- .ричман - Телепорт на Ричман.`n- .рокфорд - Телепорт на Рокфорд.`n- .миррор - Телепорт в Миррор-Парк.`n
return
    MsgBox, 8192, Описание "Кастомные телепорты",Интерьеры:`n - .инт1 - СТО.`n- .инт2 - Морг.`n- .инт3 - Розовая комната казино.`n- .инт4 - Хранилище казино.`n- .инт5 - Металодетекторы казино.`n- .инт6 - Квартира.`n- .инт7 - Гараж.`n- .инт8 - Лаундж зона.`n- .инт9 - Гараж казино.`n- .инт10 - Казино ограба.`n- .инт11 - Пентхаус.`n- .инт12 - Бар казино.`n- .инт13 - Серверная НУП.`n- .инт14 - Гараж в МАЛС.`n`nБизвары:`n- .порт1 - Телепорт на защиту. Локация "Порт".`n- .порт2 - Телепорт на атаку. Локация "Порт".`n- .мара1 - Телепорт на защиту. Локация "Нефть".`n- .мара2 Телепорт на атаку. Локация "Нефть".`n- .стройка1 - Телепорт на защиту. Локация "Стройплощадка".`n- .стройка2 - Телепорт на атаку. Локация "Стройплощадка".`n- .свал1 - Телепорт на защиту. Локация "Самолёты".`n- .свал2 - Телепорт на атаку. Локация "Самолёты".`n- .лес1 - Телепорт на защиту. Локация "Лесопилка".`n- .лес2 - Телепорт на атаку. Локация "Лесопилка".`n`nРаботы:`n- .воркт: Телепорт на работу "Таксист".`n- .воркм: Телепорт на работу "Мусоровоз".`n- .воркд1: Телепорт на работу "Дальнобой(Порт)".`n- .воркд2: Телепорт на работу "Дальнобой(Палето)".`n- .воркп: Телепорт на работу "Почтальон".`n- .ворка: Телепорт на работу "Автобусника".`n- .ворки: Телепорт на работу "Инкассатор".`n`n Другие: `n - .ч - NRD угон `n - .ч1 - NRD угон №2 `n - .азс - АЗС №15 `n
return
;===================================================================================

Quest:
    MsgBox, 8192, Описание "Квесты и задания", - .работы -  Для выполнения "КВЕСТА" на работе вам необходимо подойти к нпс после чего нажать Е. Подобные квесты можно взять на любой из работ (все зеленые чемоданы на карте).`n- .новичок - Квест новичка берется и проходится один раз. Если вы ранее начали проходить на другом персонаже, то нужно закончить прохождение на нем. Если вы взяли и отменили, более его не сможете взять. Задание выполняется один раз на аккаунт.`n- .отмнов - Если вы не можете взять квест. То вам необходимо отменить старый квест. Чтобы проверить наличие активного квеста у вас справа вверхнем углу будет написанно что вам выполнить (ниже 200 бесплатных койнов). Если нету доп. сообщений, нету активного квеста. Квест отменяется там, где вы изначально его брали у нпс. Если вы не видите табличку с койнами, то понажимайте F6 несколько раз. Если информация так же не появляется, перезайдите в игру.`n- .место - Чтобы у вас засчитывался квест с рыбалкой вам необходимо рыбачить на своем уровни рыбалки`n- .сов - Работы для совместного выполнения - мусоровоз, почтальон, инкасатор. На карте изображены в виде зеленного чемодана. Для выполнения "КВЕСТА" на работе вам необходимо подойти к нпс после чего нажать Е. Подобные квесты можно взять на любой из работ (все зеленые чемоданы на карте).`n- .пут - Чтобы найти путеводителя вам необходимо открыть карту и найти значок в виде человека махающего рукой. В дальней вам необходимо подойти к нему и нажать Е. Вам будет доступна аренда авто, а так же взятие начального квеста.`n- .квест - На сервере теперь доступны Мировые и Личные квесты. Ознакомиться с ними можно на рынке (На карте обозначен как "Красный вопрос"). Квесты доступны всем. Личные квесты вы можете проходить неопределенный срок, но, если Вы захотите участвовать в Мировом квесте и получить дополнительные бонусы, то Вам нужно поторопиться выполнить личный квест. Только 5 лучших игроков смогут попасть в топ 3 и залутать дополнительные бонусы. - Каждую неделю доступно по 3 личных и мировых квеста. - Некоторые квесты по типу инкассатора/мусорщика/почтальона можно выполнять в 2-ем и более, засчитывать будем всем.`n- .фед - На первом этаже стоит NPC у которого можно взять задание. Чтобы отбыть срок в федеральной тюрьме, нужно выполнять задачи. Например помыть туалет - В определенное время тюрьма закрывает клетки на 5 минут, соответственно, в это время отбыть срок нельзя: -- Открываются клетки в 00 минут -- Закрываются клетки в 20 минут на 5 минут -- Открываются клетки в 25 минут -- Закрываются клетки в 55 минут на 5 минут.`n- .джо - NPC Джо находится около участка LSPD подробнее - https://yapx.ru/album/Wn7AI`n- .ежеднев - 1) Голубую награду(каждые 7 дней) игрок может забрать только тогда, когда собраны 5 предыдущих наград. 2) Красную награду (каждые 30 дней) игрок может забрать если собраны 70 процентов прошлых наград(~21 день).`n- .билл - NPC Билл находится на рынке около фермы.`n- .руда - Руда - непродаваемый материал, который можно добыть на шахте(F3 > Работа > Карьерщик). Применяется при сдаче семейных контрактов. Шанс выпадения случайный, самая редкая золотая.
return
;===================================================================================

	Commandlist:
	Gui, Commandlist: -SysMenu
	Gui, Commandlist: Add, Button, x487 y2 w25 h16 gguiclose3, X
    Gui, Commandlist: Add, Tab, x0 y0 h782 w512, 1|2
    Gui, Commandlist: Color, 1e2124
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
    Gui, Commandlist: Show, h782 w512, Команды
	Return

;===================================================================================
BattlePass:
    MsgBox, 8192, Описание "Задания батлпасс", Остальное:`n- .опыт - Чтобы улучшить боевой пропуск - F2 > Сезонный пропуск > Купить опыт`n- .дрифт - Очки дрифта идут в статистику при набирание 3000 очков за раз и более.`n- .дрифт2 - Дрифт счётчик можно включить через F2 > Настройки. Он появляется во время управляемого заноса и показывает, на сколько хорошо вы прошли поворот. На карте вы можете увидеть зоны, где можно дрифтить и попасть в список топ-дрифтеров. Для этого Вам обязательно дрифтить по отмеченной зоне. В противном случае очки не засчитаются.`n- .гриль - Аквамарин - жарится с 1.5 кг., Карась - жарится с 1.5 кг., Камбала - жарится с 1.5 кг., Золотая рыбка - жарится с 1 кг., Красный солдат - жарится с 1 кг., Форель - жарится с 1 кг., Тунец - жарится с 10 кг., Оранжевый карп - жарится с 10 кг.`n- .зонадрифта - Чтобы найти зону для дрифта откройте карту. На карте будет изображена в виде колеса в огне. Приезжаете, нажимаете Е на точке (синия метка) и вы в дрифт зоне.`n- .автопилот - Чтобы использовать автопилот вам необходимо зайти в F2-Настройки-Бинд Клавиш, далее поставить удобный для вас бинд. Выйти с настроек - поставить метку в авто и нажать ваш бинд.`n- .предметы - Чтобы забрать предметы с рулетки или с сезонного пропуска вам необходимо нажать F2 > Магазин > Предметы.`n- .билет - Розыгрыш проходит 3 раза в день - в 15:00, в 18:00 и в 21:00.`n- .стриптиз - Чтобы заказать приватный танец вам необходимо прийти в клуб. Далее найти стол, подойдя к нему нажать Е.`n- .мусор - Чтобы открыть мусорку нужно подойти к ней и нажать Е, так же вам сообщаю что не все мусорки можно просмотреть. Расположение мусорок вы можете узнать через игроков, либо же самостоятельным поиском.`n- .руки - Чтобы прокатится несколько метров, вам необходимо чтобы вас взял игрок на руки и пронес несколько метров.`n- .тел - Телефоны находятся по всей карте. Чтобы ответить на звонок вам необходимо подойти к нему и нажать Е. Его можно найти по характерному звуку (звонок)`n- .угонбп - Чтобы угнать транспорт вам необходимо находится в криминальной организации. Купить Прогромматор ЭБУ на рынке. Сесть на водительское место - G - взломать.`n- .животные - Данные животные можно разделать на мясо - кролики, кабаны, олени, коровы, свиньи, петухи. Домашних животных которые гуляют по карте, можно гладить. Животные появляются по всей карте.`n- .резня - Чтобы разделать животное вам необходимо иметь при себе в руках нож (покупается в магазине 24/7), далее подходите к животному и нажимате G - разделать животное.`n- .болезнь - Вы не сможете заболеть до 3-го лвл включительно. Если вас интересует выполнение задания, вы можете заменить его или же повысить лвл. Более к сожалению никак.`n- .лифт - Попробуйте использовать другие лифты.Их большое количество на карте. Расположение данных лифтов вы сможете узнать через общение с игроками. Для выполнения задания в пропуске подобные лифты как в ЕMS засчитыватся у вас не будут`n- .клад - Для поиска кладов Вам необходим металоискатель и лопата, купить можно у NPC на рынке. Металлоискатель становится активным как только Вы берете его в руки. Когда он найдет сокровища, то будут происходить визуальные и звуковые оповещения. От зеленого цвета, до красного. Места расположения сокровищ: пляжи и архипелаги.`n- .ганг - Maze bank arena (гангейм) это место, где можно посоревноваться с другими игроками в навыках стрельбы, для тренеровки своей стрельбы. На карте находится снизу изображен в виде джостика. `n`n---1 Сентебря:---`n- .круг - Круги обозначают, что рядом с вами находится клад, который нужно выкопать, вы получите предметы со школьного ивента, которые понадобятся вам для обмена у NPC. `n- .книга - Книги вы можете обменять на предметы со школьного ивента.`n- .ниера - Ниера находится на втором этаже библиотеки, в правом дальнем углу.`n`n---Хэллоуин:---`n- .незнак - Если у вас задание с незнакомцем у вас на карте пояляется метка, вам по ней нужно прийти. Если метка не появляется, перезайдите в игру, пожалуйста.`n- .хелло - Так же месторасположение нового квеста можно узнать в F2-Halloween-> Выбрать нужный этап и отследить где находится новый квест.`n- .отмхелло - Отменить Хэллоуинские квесты можно только через f2->Задания->Активные задания. Через бота нельзя отменить их.`n- .хелло3 - Вам нужно подойти к NPC, начать прохождение квеста, надеть выданную футболку и повторно подойти к NPC, Вас телепортирует в другой мир и задание продолжится.`n- .трансц - Трансцендентный ассенизатор используется для поиска частиц в разломах.`n`n---Новый год---`n- .снеж - Сдать снежки вы можете большому снеговику, который находится по правую сторону от NPC, у которого Вы брали квест. Местоположение возле церкви.`n- .лепка - Собрать снежки можно только за зоной ивента.`n- .ивент -  Вам нужно взять задание у NPC на Янктоне.
return
;===================================================================================



	Answers:
	Gui, Answers: -SysMenu
	Gui, Answers: Add, Button, x1075 y2 w25 h16 gguiclose, X
    Gui, Answers: Add, Tab, x0 y0 h766 w1100, 1|2|3|4|5
    Gui, Answers: Color, 1e2124
    Gui, Answers: Font, s8, Segoe UI
    Gui, Answers: Font, cwhite
    Gui, Answers: Add, Text, x8 y24  h20 +0x200, .виз - Визуальный баг, перезайдите на сервер.
    Gui, Answers: Add, Text, x8 y40  h20 +0x200, .багвойс - Нажмите F2 - Настройки - блокировка войса - заблокируйте для всех и снова разблокируйте. В случае, если проблема осталась, то перезайдите в игру.
    Gui, Answers: Add, Text, x8 y56  h20 +0x200, .метал - Металлоискатель становится активным как только Вы берете его в руки. Когда он найдет сокровища, то будут происходить визуальные и звуковые оповещения. От зеленого цвета, до красного. 
    Gui, Answers: Add, Text, x8 y72  h20 +0x200, Места расположения сокровищ: пляжи и архипелаги.
    Gui, Answers: Add, Text, x8 y88  h20 +0x200, .рыбалка - Для того чтобы рыбачить, Вам  нужна удочка и наживка - покупается в любом магизине 24/7. Подходите к зоне рыбалки своего уровня и нажимаете клавишу Е. Ждёте клёва, как появится
    Gui, Answers: Add, Text, x8 y104  h20 +0x200, рыба, она будет вилять в стороны влево-вправо. Вам нужно зажимать клавиши A/D противоположной стороны рыбы. После того как рыба утомилась, Вы её подсекаете левой кнопкой мыши.
    Gui, Answers: Add, Text, x8 y120  h20 +0x200, .рыб - Вам надо ловить рыбу в зоне, которая соответствует вашему уровню. 1 уровень - Зоны: 1, 2, 3, 4. Рыба: Форель. Количество опыта для повышения: 196. .
    Gui, Answers: Add, Text, x8 y136  h20 +0x200, 2 уровень - Зоны: 5,6. Рыба: Камбала. Количество опыта для повышения: 588. 3 уровень - Зона 7,8. Рыба: Тунец.  Количество опыта для повышения: 1 225. 4 уровень - Зона 9,10. Рыба: Красный солдат. 
    Gui, Answers: Add, Text, x8 y152  h20 +0x200, Количество опыта для повышения: 2 205. 5 уровень - Зона 11. Рыба: Карась. Количество опыта для повышения: 3 920. 6 уровень - Зона 12. Рыба: Оранжевый карп. Количество опыта для повышения: 
    Gui, Answers: Add, Text, x8 y168  h20 +0x200, 6 125. 7 уровень - Зона 13. Рыба: Аквамарин.  Количество опыта для повышения: 8 820. 8 уровень - Зона 14. Рыба: Золотая рыбка
    Gui, Answers: Add, Text, x8 y184  h20 +0x200, .ставка - Расчёт ставки обычно происходит в течение 6-ти часов. Администрация не управляет рассчетом.
    Gui, Answers: Add, Text, x8 y200  h20 +0x200, .клвл - При достижении 5-го уровня: 500 MC При достижении 10-го уровня: 1000 MC При достижении 15-го уровня: 2000 MC При достижении 20-го уровня: 3000 MC При достижении 25-го уровня: 
    Gui, Answers: Add, Text, x8 y216  h20 +0x200, 4000 MC При достижении 30-го уровня: 5000 MC. Каждый следующий уровень после 30-го Вы будете получат 1500 MC. 
    Gui, Answers: Add, Text, x8 y232  h20 +0x200, .квест - На сервере доступны Мировые и Личные квесты. Ознакомиться с ними можно на рынке (На карте обозначен как "Красный вопрос"). Квесты доступны всем.
    Gui, Answers: Add, Text, x8 y248  h20 +0x200,  Только 5 лучших игроков смогут попасть в топ 3 и залутать дополнительные бонусы. - Каждую неделю доступно по 3 личных и мировых квеста. - Некоторые квесты по типу инкасатора/мусорщика/
    Gui, Answers: Add, Text, x8 y264  h20 +0x200, почтальона можно выполнять в 2-ем и более, засчитывать будем всем.
    Gui, Answers: Add, Text, x8 y280  h20 +0x200, .фед - На первом этаже стоит NPC у которого можно взять задание. Чтобы отбыть срок в федеральной тюрьме, нужно выполнять задачи. Например помыть туалет - В определенное время тюрьма 
    Gui, Answers: Add, Text, x8 y296  h20 +0x200, закрывает клетки на 5 минут, соответственно, в это время отбыть срок нельзя: -- Открываются клетки в 00 минут -- Закрываются клетки в 20 минут на 5 минут -- Открываются клетки в 25 
    Gui, Answers: Add, Text, x8 y312  h20 +0x200, минут - Закрываются клетки в 55 минут на 5 минут.
    Gui, Answers: Add, Text, x8 y328  h20 +0x200, .сейф - Закрывать интерфейс сейфа можно только на ESC. В сейф можно класть до 5 миллионов. Деньги идут из налички. Нельзя продать дома в гос, продать игроку, предложить обмен, выставить 
    Gui, Answers: Add, Text, x8 y344  h20 +0x200, на аукцион, если в сейфе есть деньги. Сначала требуется их забрать. Если дом слетает по налогам - деньги из сейфа игрок получает в наличку. 
    Gui, Answers: Add, Text, x8 y360  h20 +0x200, .рация - За всеми фракциями закреплен диапазон частот, который не могут занять. В F2 -> Настройки можно изменить Громкости рации.
	Gui, Answers: Add, Text, x8 y376  h20 +0x200, .лесоруб - Устраиваться необходимо все у того же NPC около Палето-Бей. Для начала работы Вам понадобиться “Топор”, купить его можно у NPC на Рынке. Принцип работы схожий с Грибниками, 
    Gui, Answers: Add, Text, x8 y392  h20 +0x200, точки для сруба деревьев разбросаны по всей карте, каждый уровень привязан к свой точке сбора. Древесину можно продать на рынке. 
    Gui, Answers: Add, Text, x8 y408  h20 +0x200, .рац - Для использвания: Возьмите рацию > Введите чистоту >Нажмите ентер >Зажмите "M" и будет слышно.
    Gui, Answers: Add, Text, x8 y424  h20 +0x200, .тайм - Это визуальный баг таймера, часы идут и коины вам начислят по истечению времени. 
    Gui, Answers: Add, Text, x8 y440  h20 +0x200, .сид - Укажите static ID нарушителя.
    Gui, Answers: Add, Text, x8 y456  h20 +0x200, .пут - Чтобы найти путеводителя вам необходимо открыть карту и найти значок в виде человека махающего рукой. В дальней вам необходимо подойти к нему и нажать Е. Вам будет доступна аренда авто, а так же взятие начального квеста.
    Gui, Answers: Add, Text, x8 y472  h20 +0x200, .увал - К сожалению, ничем не можем помочь. Дождитесь своего лидера/заместителей или свяжитесь с куратором своей фракции в личные сообщения Discord.
    Gui, Answers: Add, Text, x8 y488  h20 +0x200, .майки - Для того, чтобы купить майку под верхнюю одежду, вам нужно сначала купить элемент верхней одежды (например, пиджак). После этого вам буду доступны все майки, которые 
    Gui, Answers: Add, Text, x8 y504  h20 +0x200, подходят под нее в разделе "Майки".
    Gui, Answers: Add, Text, x8 y520  h20 +0x200, .слух - Функция "Я не слышу" предназначена для людей с плохим слухом или его отсутствием. Злоупотребление этой функцией карается баном. Отключить ее можно в меню F2 - Настройки.
	Gui, Answers: Add, Text, x8 y536  h20 +0x200, .баг - Знаем о данной проблеме, она уже передана разработчикам. Приносим свои извинения за предоставленные неудобства. 
    Gui, Answers: Add, Text, x8 y552  h20 +0x200, .чат - Все настройки чата вы можете найти в F2 - Настройки - Настройки чата.
    Gui, Answers: Add, Text, x8 y568  h20 +0x200, .рел - Полностю перезайдите на сервер через F1 - Крестик в правом верхнем углу экрана.
    Gui, Answers: Add, Text, x8 y584  h20 +0x200, .необл - Не обладаем данной информацией.
	Gui, Answers: Add, Text, x8 y600  h20 +0x200, .рп - Извините, но это РП процесс, мы не вправе вмешиваться в него.
    Gui, Answers: Add, Text, x8 y616  h20 +0x200, .урп - Данную информацию вы можете получить при взаимодействии с другими игроками/самостоятельным поиском непосредственно во время игрового процесса, либо другим доступным IC путем. 
    Gui, Answers: Add, Text, x8 y632  h20 +0x200, .войс - Чтобы перезагрузить войс, попробуйте нажать F7. Если ничего не помогает - перезайдите в игру.
    Gui, Answers: Add, Text, x8 y648  h20 +0x200, .тех - Напишите в технический раздел на форуме.
    Gui, Answers: Add, Text, x8 y664  h20 +0x200, .техдс - Напишите в технический раздел официального дискорд сервера "Помощь по игре" - "тех-поддержка".
    Gui, Answers: Add, Text, x8 y680  h20 +0x200, .функ - Данный функционал временно недоступен, приносим свои извинения.
    Gui, Answers: Add, Text, x8 y696  h20 +0x200, .фун - Данный функционал отсутствует на нашем проекте. Оставьте свое предложение на форуме в специальном разделе: Предложение по улучшению сервера - "Напишите ваше предложение тут".
    Gui, Answers: Add, Text, x8 y712  h20 +0x200, .изв - Приносим свои извинения за предоставленные неудобства.
    Gui, Answers: Add, Text, x8 y728  h20 +0x200, .ехп - Каждый час (у каждого игрока своё время) Вам дается EХP. Чтобы узнать, сколько Вам осталось до следующего PayDay, нажмите клавишу F2-Персонаж.
    Gui, Answers: Add, Text, x8 y744  h20 +0x200, .авто - Чтобы эвакуировать Ваше авто воспользуйтесь маркером Сервиса (Гаечный ключ на карте).  

	Gui, Answers: Tab, 2
    Gui, Answers: Add, Text, x8 y24  h20 +0x200, .бизограб - Чтобы ограбить бизнес, вам нужно: одеть маску, приобрести оружие и, придя в магазин в составе от 2 до 35 человек, навестись на NPC (продавца) огнестрелом.
    Gui, Answers: Add, Text, x8 y40  h20 +0x200, .ганлиц - Получить лицензию на оружие можно в LSPD или LSCSD. 
    Gui, Answers: Add, Text, x8 y56  h20 +0x200, .канистра - Чтобы использовать канистру, возьмите её в руки, нажмите G на авто и заправить. 
    Gui, Answers: Add, Text, x8 y72  h20 +0x200, .емс - К сожалению, администрация не поднимает и не лечит игроков, воспользуйтесь услугами ЕМС.
    Gui, Answers: Add, Text, x8 y88  h20 +0x200, .подним - К сожалению, не видя всей ситуации мы не в праве лечить,поднимать или добивать игроков. Дождитесь сотрудников EMS либо же окончания таймера смерти. 
    Gui, Answers: Add, Text, x8 y104  h20 +0x200, .жб - Не могу выдавать наказания и выносить какие-либо вердикты не видя ситуации с самого начала. Если у Вас есть видеофиксация данного нарушения - оформите жалобу на форуме.
    Gui, Answers: Add, Text, x8 y120  h20 +0x200, .анак - Обратитесь, пожалуйста, в дискорд к администратору, который выдал вам наказание или рассмотрел жалобу.
    Gui, Answers: Add, Text, x8 y136  h20 +0x200, .адз - Данный администратор сейчас занят другим делом или отошел от компьютера на короткое время, напишите ему в личные сообщения в дискорде.
    Gui, Answers: Add, Text, x8 y152  h20 +0x200, .адс - Данный администратор сейчас отсутствует на сервере, напишите ему в личные сообщения в дискорде.
    Gui, Answers: Add, Text, x8 y168  h20 +0x200, .погода - К сожалению, администрация не контролирует данный процесс. Погода меняется автоматически.
    Gui, Answers: Add, Text, x8 y184  h20 +0x200, .неп - Не понял суть вашего обращения, опишите Вашу проблему/вопрос подробнее для максимально точного ответа, пожалуйста.
    Gui, Answers: Add, Text, x8 y200  h20 +0x200, .донат - Обратитесь по почте - help@majestic-rp.ru.
    Gui, Answers: Add, Text, x8 y216  h20 +0x200, .ремонт - Для начала, Вам нужно купить запчасть для машины на любо АЗС, после чего открыть капот , нажать G > Починить замок/аккумулятор/залить масло. 
    Gui, Answers: Add, Text, x8 y232  h20 +0x200, .ферм - На ферме для посадки каждого из растений нужны следующие навыки: Пшеница - 225 опыта. Картофель - 950 опыта. Капуста - 2000 опыта. Кукуруза - 3000 опыта. Тыква - 6200 опыта. Бананы -
    Gui, Answers: Add, Text, x8 y248  h20 +0x200,  10500 опыта.
    Gui, Answers: Add, Text, x8 y264  h20 +0x200, .гос - Вы можете сдать авто на свалку. После сдачи вы получите 75 проц. от гос. стоимости авто. Свалка отмечена на карте как перечеркнутый, красный круг.
    Gui, Answers: Add, Text, x8 y280  h20 +0x200, .аним - Остановите анимацию. Нажмите X > Остановить анимацию или Backspace.
    Gui, Answers: Add, Text, x8 y296  h20 +0x200, .ид - Укажите, пожалуйста, ID нарушителя.
    Gui, Answers: Add, Text, x8 y312  h20 +0x200, .сто - Степень износа определенных деталей автомобиля можно узнать на автомастерской (иконка гаечного ключа с отверткой на карте).
    Gui, Answers: Add, Text, x8 y328  h20 +0x200, .жба - Вы можете написать жалобу на форум, если не согласны с решением администратора.
    Gui, Answers: Add, Text, x8 y344  h20 +0x200, .дон - Задонатить можно на нашем официальном сайте - majestic-rp.ru/donate
    Gui, Answers: Add, Text, x8 y360  h20 +0x200, .группа - Чтобы вместе работать на кооперативной работе вам необходимо пригались игроков через приложение "Группа" в телефоне.
	Gui, Answers: Add, Text, x8 y376  h20 +0x200, .грибы - Чтобы собирать грибы вам надо приехать на точку "Грибы" 1/6 и взять в руки нож.
    Gui, Answers: Add, Text, x8 y392  h20 +0x200, .гриб - Продать грибы можно на рынке.
    Gui, Answers: Add, Text, x8 y408  h20 +0x200, .рын - Рынок находится в Лос-Сантосе на пляже рядом с качалкой и в Палето-Бэй.
    Gui, Answers: Add, Text, x8 y424  h20 +0x200, .оружрын - Боту на рынке можно сдать оружие только со 100 процентным износом.
    Gui, Answers: Add, Text, x8 y440  h20 +0x200, .новость - Придите лично в Weazel News. 
    Gui, Answers: Add, Text, x8 y472  h20 +0x200, .нов - Следите за новостями сервера в официальном дискорде проекта. 
    Gui, Answers: Add, Text, x8 y488  h20 +0x200, .ново - Следите за новостями в официальном дискорде проекта. 
    Gui, Answers: Add, Text, x8 y504  h20 +0x200, .ник - Сменить ник Вы можете нажав - F2 > Донат > Настройки персонажа.
    Gui, Answers: Add, Text, x8 y520  h20 +0x200, .банк - У нас на сервере есть 3 вида банковских карт: Standart, Premium, VIP. Standart карта стоит в обслуживании 500$ в месяц, снятия и переводы без комиссии до 500.000$ после превышения 
	Gui, Answers: Add, Text, x8 y536  h20 +0x200, месечного лимита комиссия на вывод 5ц проц (Максимум 20.000$), на перевод 4 проц (Максимум 20.000$), кэшбек в магазинах отсутствует. Premium карта стоит в обслуживании 25.000$ в месяц, снятия 
    Gui, Answers: Add, Text, x8 y552  h20 +0x200, и переводы без комиссии до 2.500.000$ после превышения месечного лимита комиссия на вывод 4 проц (Максимум 15.000$), на перевод 3 проц (Максимум 15.000$), кэшбек в магазинах 1 проц, лимит 
    Gui, Answers: Add, Text, x8 y568  h20 +0x200, кэшбека на одну операцию до 2.500$, месечный лимит кэшбека 50.000$. VIP карта стоит в обслуживании 75.000$ в месяц, снятия и переводы без комиссии до 20.000.000$ после превышения месечного 
    Gui, Answers: Add, Text, x8 y584  h20 +0x200, лимита комиссия на вывод 3 проц (Максимум 20.000$), на перевод 2.5 проц (Максимум 20.000$), кэшбек в магазинах 3 проц, лимит кэшбека на одну операцию до 10.000$, месечный лимит кэшбека 
	Gui, Answers: Add, Text, x8 y600  h20 +0x200, 150.000$. Деньги за обслуживание и лимиты снимаются каждое 1 число нового месяца.
    Gui, Answers: Add, Text, x8 y616  h20 +0x200, .дублик - Чтобы сделать дубликат ключей от авто необходимо купить заготовку в магазине 24/7, затем нажать G на авто и сделать дубликат.
    Gui, Answers: Add, Text, x8 y632  h20 +0x200, .клад - Чтобы сделать дубликат от кладовки, необходимо купить заготовку в магазине 24/7, затем через G передать дубликат нужному человеку.
    Gui, Answers: Add, Text, x8 y648  h20 +0x200, .тел - Попробуйте купить телефон еще раз в магазине 24/7, деньги с вас не спишутся.
    Gui, Answers: Add, Text, x8 y664  h20 +0x200, .подсел - Чтобы подселить игрока к себе в дом или же квартиру, стоя около дома, наведитесь на игрока и нажмите G, далее нажмите Подселить.
    Gui, Answers: Add, Text, x8 y680  h20 +0x200, .краш2 - Если у Вас есть доказательства краша - предоставьте его любому администратору в личные сообщения дискорда. Вас выпустят.
    Gui, Answers: Add, Text, x8 y696  h20 +0x200, .замок - Вам необходимо купить "Дверной замок" и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту G -> Капот, после этого G -> Починить дверной замок.
    Gui, Answers: Add, Text, x8 y712  h20 +0x200, .акум - Вам необходимо купить "Аккумулятор" и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту G -> Капот, после этого G -> Заменить аккумулятор.
    Gui, Answers: Add, Text, x8 y728  h20 +0x200, .масло - Вам необходимо купить "Моторное масло" и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту G -> Капот, после этого G -> Заменить масло.
    Gui, Answers: Add, Text, x8 y744  h20 +0x200, .модел - Пункт "Прогрузка моделей" отвечает за быстроту прогрузки текстур при приближении к ним.

	Gui, Answers: Tab, 3
	Gui, Answers: Add, Text, x8 y24  h20 +0x200, .нин - Новая система инвентаря, был изменен дизайн, предметы можно вращать нажатием на пробел, если дважды нажать по предметы он используется (берется в активный слот или надевается).
    Gui, Answers: Add, Text, x8 y40  h20 +0x200, .спавн - Спавн новичков находится в Палето-Бей, Чумашах, Аэропорту и на Автовокзале. 
    Gui, Answers: Add, Text, x8 y56  h20 +0x200, .рем - Чтобы починить своё авто купите рем.комплект на любой АЗС. Через меню G почините Ваш автомобиль.
    Gui, Answers: Add, Text, x8 y72  h20 +0x200, .сделка - Администрация не следит за сделками игроков.
    Gui, Answers: Add, Text, x8 y88  h20 +0x200, .имя - Ваше Имя Фамилия не подходит по правилам нашего сервера. Вам нужно сменить ник и написать в репорт повторно, если Ваш ник будет соблюдать правила сервера, то Вас выпустят.
    Gui, Answers: Add, Text, x8 y104  h20 +0x200, .акт - Приносим извинения за столь долгое ожидание. Пожалуйста, если проблема еще актуальна, продублируйте её в своем обращении. Спасибо за понимание.
    Gui, Answers: Add, Text, x8 y120  h20 +0x200, .лечу - Уже лечу к Вам на помощь.
    Gui, Answers: Add, Text, x8 y136  h20 +0x200, .пом - Сейчас помогу Вам, ожидайте.
    Gui, Answers: Add, Text, x8 y152  h20 +0x200, .багзз - Чтобы восстановить прежнюю скорость, заедьте в зеленую зону и выедьте с нее.
    Gui, Answers: Add, Text, x8 y168  h20 +0x200, .госдом - Чтобы продать дом в гос. стоимость, нужно подойти к двери и нажать Е. Вы получите 75 проц. от его гос. цены. Если Вы не оплатите налоги дом слетит автоматически.
    Gui, Answers: Add, Text, x8 y184  h20 +0x200, .рыблиц - Получить лицензию на рыбалку вы можете в Мэрии. 
    Gui, Answers: Add, Text, x8 y200  h20 +0x200, .реп - Пожалуйста, уточните свой вопрос подробнее. Администрация не летает на репорты по типу "админ тп", "админ можно поговорить", "помогите", "админ есть вопрос".
    Gui, Answers: Add, Text, x8 y216  h20 +0x200,  Количество символов неограничено, вы можете полностью расписать Вашу проблему/вопрос.
    Gui, Answers: Add, Text, x8 y232  h20 +0x200, .неувид - К сожалению администрация не может увидеть это нарушение. Пожалуйста, если у Вас есть видеофиксация данного нарушения - оформите жалобу на форуме, спасибо за понимание.
    Gui, Answers: Add, Text, x8 y248  h20 +0x200, .кости - Чтобы играть в кости вам нужно купить их в любом 24/7. После того как вы купили кости, вы можете подойти к игроку.
    Gui, Answers: Add, Text, x8 y264  h20 +0x200, .парк - Чтобы припарковать ТС, за рулем нажмите G - Припарковать.
    Gui, Answers: Add, Text, x8 y280  h20 +0x200, .новичок - Квест новичка берется и проходится один раз. Если вы ранее начали проходить на другом персонаже, то нужно закончить прохождение на нем. Если вы взяли и отменили, более его не сможете взять. Задание выполняется один раз на аккаунт.
    Gui, Answers: Add, Text, x8 y296  h20 +0x200, .да/нет - Да./Нет.
    Gui, Answers: Add, Text, x8 y312  h20 +0x200, .нетп - Администрация не телепортирует игроков, Вам нужно добраться до места самостоятельно.
    Gui, Answers: Add, Text, x8 y328  h20 +0x200, .инв - Это баг инвентаря, предложите обменяться любому игроку и ваша проблема будет решена. Если по близости никого нет, обратитесь ещё раз в репорт и администрация Вам поможет. 
    Gui, Answers: Add, Text, x8 y344  h20 +0x200, .арынок - Для того, чтобы выставить свое авто на продажу, Вам необходимо приехать на территорию авторынка, выбрать место и нажать на клавишу "G" - Авторынок - Выставить на продажу.
    Gui, Answers: Add, Text, x8 y360  h20 +0x200, .толкать - Транспорт можно толкать, нажав G-толкать. Если такой функции нет, при наведении на авто, то этот транспорт толкать нельзя.
	Gui, Answers: Add, Text, x8 y376  h20 +0x200, .несл - Администрация не может следить полностью за всем РП процессом, в случае нарушений от игроков - напишите репорт.
    Gui, Answers: Add, Text, x8 y392  h20 +0x200, .счет - Чтобы узнать номер счета откройте инвентарь и наведитесь мышкой на банковскую карту. 
    Gui, Answers: Add, Text, x8 y408  h20 +0x200, .пин - Чтобы восстановить пин-код отправляйтесь в банковское отделение.
    Gui, Answers: Add, Text, x8 y424  h20 +0x200, .аут - Для подключения Google authenticator вам нужно в меню выбора персонажа открыть раздел настроек.
    Gui, Answers: Add, Text, x8 y440  h20 +0x200, .х2 - Теперь коины выдаются по выходным, по будням прокрутка рулетки за 5 часов игры.
    Gui, Answers: Add, Text, x8 y456  h20 +0x200, .дрон - Дрон крафтится у силовых гос.структур и Weasel News. Пользоваться им могут эти же гос.структуры. Чтобы подняться-пробел, чтобы опуститься-shift. На E-тепловизор включить/выключить.
    Gui, Answers: Add, Text, x8 y472  h20 +0x200, .неув - Не увидел нарушений, если у вас есть видеодоказательства - оставьте жалобу на форуме. 
    Gui, Answers: Add, Text, x8 y488  h20 +0x200, .фор - Данное нарушение не подлежит рассмотрению через обращение, оставьте жалобу на форуме.
    Gui, Answers: Add, Text, x8 y520  h20 +0x200, .форум - В связи с нагрузкой на сервер мы не можем рассмотреть вашу жалобу на игрока посредством обращения, пожалуйста, оставьте жалобу на форуме. Спасибо за понимание.
	Gui, Answers: Add, Text, x8 y536  h20 +0x200, .фрак - /f - IC чат, /fb - OOC чат. 
    Gui, Answers: Add, Text, x8 y552  h20 +0x200, .фам - /c - IC чат, /cb - OOC чат. 
    Gui, Answers: Add, Text, x8 y568  h20 +0x200, .спб - Если одно отделение ЕМС сильно загружено, чтобы избежать краши вас спавнит в другом, менее загруженном отделении.
    Gui, Answers: Add, Text, x8 y584  h20 +0x200, .перед - Все имущество вы передаете на свой страх и риск.
	Gui, Answers: Add, Text, x8 y600  h20 +0x200, .руда - Руда - непродаваемый материал, который можно добыть на шахте(F3 > Работа > Карьерщик). Применяется при сдаче семейных контрактов. Шанс выпадения случайный, самая редкая золотая.
    Gui, Answers: Add, Text, x8 y616  h20 +0x200, .багреп - В случае нахождения бага оставьте свой баг-репорт в официальном дискорде проекта: Текстовые каналы - сообщить о баге.
    Gui, Answers: Add, Text, x8 y632  h20 +0x200, .низк - У вас включен режим низкого качества в F2 - Настройки.
    Gui, Answers: Add, Text, x8 y648  h20 +0x200, .маяк - Маячки могут выпасть с "AirDrop" или же при ограблении 24/7. Шансы выпадения у всех маячков разный.
    Gui, Answers: Add, Text, x8 y664  h20 +0x200, .хол - "Холодный старт" - при запуске ТС издаёт характерный звук, другим функционалом не обладает.
    Gui, Answers: Add, Text, x8 y680  h20 +0x200, .бинд - Вы можете настроить бинд клавиш под себя в F2 - Настройки - Бинд клавиш.
    Gui, Answers: Add, Text, x8 y696  h20 +0x200, .стрим - Режим стримера заменяет символы на звездочки, для обычных игроков он бесполезен. Выключается в F2 - Настройки.
    Gui, Answers: Add, Text, x8 y712  h20 +0x200, .заж - Чтобы взломать зажигание сядьте за руль т.с., нажмите G - Взломать зажигание. КД на взлом - 1 час.
    Gui, Answers: Add, Text, x8 y728  h20 +0x200, .дрзона - Дрифт зона отмечена на карте как иконка падающей кометы, пример - одна из зон около LS Vagos.
    Gui, Answers: Add, Text, x8 y744  h20 +0x200, .кур - Передам кураторам.

	Gui, Answers: Tab, 4
    Gui, Answers: Add, Text, x8 y24  h20 +0x200, .пер - Передам.
    Gui, Answers: Add, Text, x8 y40  h20 +0x200, .неоф - Не оффтопьте в обращения.
    Gui, Answers: Add, Text, x8 y56  h20 +0x200, .одворк -  При устройстве на работу Вы получаете комплект одежды. Он снимется автоматически при прекращении работы. Если же у Вас мед комплект то Вам нужно пройти курс лечения.
    Gui, Answers: Add, Text, x8 y72  h20 +0x200, .зоо - Система животных. Могут спавниться различные животные, от крыс до оленей по всей карте. Некоторые виды животных можно разделать и получить мясо. Мясо можно жарить и
    Gui, Answers: Add, Text, x8 y88  h20 +0x200, употреблять в пищу. Домашних животных которые гуляют по карте, можно гладить.
    Gui, Answers: Add, Text, x8 y104  h20 +0x200, .мед - За данным медиа партнером наблюдает PR ассистент, по этой причине я не могу выдавать наказание, т.к. вся ответственность за происходящее на этой ситуации переносится на PR ассистента.
    Gui, Answers: Add, Text, x8 y120  h20 +0x200, .зак - Это регламентируется IC законами, изучить их можете в разделе Government на форуме: Majestic RolePlay | Server 3 - Организации - Государственные организации - Government.
    Gui, Answers: Add, Text, x8 y136  h20 +0x200, .оск - Жалобы на OOC оскорбление принимаем только, если скриншот сделан в ту же минуту, что и оскорбление в чате + на скрине должно быть присутствие нарушившего (видно его или статик).
    Gui, Answers: Add, Text, x8 y152  h20 +0x200, .аукц - На аукцион можно выставить авто/бизнес/дом/квартиру. Во время вашего активного лот, вы можете лишь ездить на авто. При продаже на акционе дома-кладовка передаётся покупателю.
    Gui, Answers: Add, Text, x8 y168  h20 +0x200, .болгарка - Для того, чтобы распилить багажник нужно подойти к багажнику G - Нелегальное для авто - Распилить дверной замок. Открывается багажник и вы можете взять с него как коробки 
    Gui, Answers: Add, Text, x8 y184  h20 +0x200, с материалами, так и коробки со снаряжением. Взломать можно не только гос.матовозки, но и крайм. Болгаркой нельзя взломать личный транспорт.
    Gui, Answers: Add, Text, x8 y232  h20 +0x200, .вот - Выборы активны с 10:00 - 10:00 по московскому времени. Проголосовать может каждый от 3-го уровня игрового персонажа, по принцыпу один голос на один аккаунт. голосование проходит в
    Gui, Answers: Add, Text, x8 y248  h20 +0x200,  левом крыле Мэрии(На карте флаг USA).
    Gui, Answers: Add, Text, x8 y264  h20 +0x200, .дрифт - Дрифт счётчик можно включить через F2 > Настройки. Он появляется во время управляемого заноса и показывает, на сколько хорошо вы прошли поворот. На карте вы можете увидеть зоны, 
    Gui, Answers: Add, Text, x8 y280  h20 +0x200, где можно дрифтить и попасть в список топ-дрифтеров. Для этого Вам обязательно дрифтить по отмеченной зоне. В противном случае очки не засчитаются.
    Gui, Answers: Add, Text, x8 y296  h20 +0x200, .скин - Оружие появляется в донат инвентаре, его можно будет распылить. Однако при его применении невозможно дальнейшее распыление. Чтобы применить скин на оружие: F2 - Магазин - Cкины.
    Gui, Answers: Add, Text, x8 y312  h20 +0x200, Выбираете оружие и скин к нему - Применить, скин применяется ко всем оружиям выбранного типа. Скин привязывается к игроку, получить оружие со скином - невозможно.
    Gui, Answers: Add, Text, x8 y328  h20 +0x200, .огр - Чтобы начать ограбление банка, вам нужно позвонить по номеру: 28121903. Для этого надо быть в крайм организации, и находится рядом с банком (как минимум вас должно быть 4 около 
    Gui, Answers: Add, Text, x8 y344  h20 +0x200, иначе не сможете). банка. Для начала ограбления требуется "План ограблений", который выбирается в AirDrops или при ограблении бизнесов.Можно грабить 1 раз в день каждой огранизации.
    Gui, Answers: Add, Text, x8 y360  h20 +0x200,  После того, как ограбление началось и банк получил красную иконку, надо прицелиться в бота и заполнить прогресс бар.Дальше будет большая дверь, что бы ее разбл., нужно пройти мини-
	Gui, Answers: Add, Text, x8 y376  h20 +0x200, игру со взломом. Для этого используем «Программатор ЭБУ» + «Кабель электронных дверей». Он продается у торговца на рынке. После взлома перед вами будет стоять стойка с деньгами. Далее 
    Gui, Answers: Add, Text, x8 y392  h20 +0x200, идет 2-я дверь. Для ее взлома нам необходима «Ключ карта Fleeca» либо «Термитная установка».«Ключ карта Fleeca» выпадает с ботов при ограблении бизнесов, или на аир дропах.«Термитная
    Gui, Answers: Add, Text, x8 y408  h20 +0x200,  установка» продается у пиротехника. С ее помощью дверь открывается за 2 минуты. 
    Gui, Answers: Add, Text, x8 y424  h20 +0x200, .огр2 - Для этого надо взять в руки один из предметов, чтобы открыть дверь. Но в хранилище есть ячейки, для взлома ячеек необходима «Дрель 1500w». Дрель крафтится у крим. организаций и 
    Gui, Answers: Add, Text, x8 y440  h20 +0x200, выпадает при смерти. После успешного прохождения мини-игры по взлому ячейки на пол падает награда.
    Gui, Answers: Add, Text, x8 y456  h20 +0x200, .зкайо - На острове имеется несколько точек захвата медицинских, военных, технических материалов. Для захвата Вам необходимо взять с собой маячки(Подберите цвета), если же у Вас маячки 
    Gui, Answers: Add, Text, x8 y472  h20 +0x200, зелёного цвета Вы сможете захватить военные материалы, синего Вашей целью станут технически при наличии красных Вам откроется возможность захватить медицинские. Захват можно начать в 
    Gui, Answers: Add, Text, x8 y488  h20 +0x200, радиусе 50м от точки погрузки, после активации маячка появится обозримая зона захвата, если выйти за зону захвата или все захватчики умрут, маячок уничтожается, точка переходит в спокойное 
    Gui, Answers: Add, Text, x8 y504  h20 +0x200, состояние как до захвата. Не стоит забывать и про сигнализацию, если Вы её не выключите все госструктуры будут в момент оповещены и Вас будет ждать серьёзное сопротивление (Функционально 
    Gui, Answers: Add, Text, x8 y520  h20 +0x200, на захват материалов это не повлияет). После захвата блип на карте красится в цвет организации захватчиков. Игроки смогут забирать материалы с точки и грузить их в лодку - в городе перегружать.
	Gui, Answers: Add, Text, x8 y536  h20 +0x200, .перико - У всех силовых фракций появилась метка для телепортации, фракции EMS/WN/GOV лишены её. Отделение LSCSD в Сэнди-Шорс тоже не имеет метки. Каждая фракции телепортируется в одну 
    Gui, Answers: Add, Text, x8 y552  h20 +0x200, точку на острове, таким путём и обратно. Однако Вы не сможете телепортироваться с точки другой фракции. Пример: Я из FIB и хочу сделать телепорт на территории LSCSD - У меня не выйдет.
    Gui, Answers: Add, Text, x8 y568  h20 +0x200,  На острове, вблизи особняка и на его территории, есть машины, вертолёт и квадроциклы с ними может взаимодействовать лишь SANG, возможность заспавнить своё ТС также сохранена, для этого 
    Gui, Answers: Add, Text, x8 y584  h20 +0x200, воспользуйтесь меткой. Также SANG стал обладателем ещё одного склада на Кайо-Перико, он аналогичен Вашему на форте. Если на форте будет заполнено 20.000 то и на острове тоже.
	Gui, Answers: Add, Text, x8 y600  h20 +0x200, .сирена - Вышку можно взломать, не будет обновляться статус контроля точек(10 минут). Для взлома нужен "Программатор ЭБУ" и "Кабель радио сигналов". Кабель можно получить при ограблении 
    Gui, Answers: Add, Text, x8 y616  h20 +0x200, магазина 24/7, выпадает(Шанс редко-средне), он одноразовый и после использования он пропадает. Взлом происходит в мини-игре. После удачного взлома, на мини карте не будет отображаться 
    Gui, Answers: Add, Text, x8 y632  h20 +0x200, статус захвата точек для SANG(10 минут). После неудачного взлома, сразу срабатывает сирена. SANG могут восстановить работу вышки нажав "Е" на метке вышки.
    Gui, Answers: Add, Text, x8 y648  h20 +0x200, .лобби - Это Ваша игра созданная Вами для друзей или же обычных игроков, все правила настраиваете именно Вы. Для того что бы начать нужно: Дать название своему лобби, выбрать один из 
    Gui, Answers: Add, Text, x8 y664  h20 +0x200, доступных режимов(Гонка вооружений/Бой на смерть/Захват флага), выбрать одну из карт. Далее Вы сможете установить пароль, если же не хотите видеть лишних игроков в своей игре. После всех 
    Gui, Answers: Add, Text, x8 y680  h20 +0x200, первичных настроек Вам откроются дополнительные: Требование для победы, оружие, время суток, одежда(Если выбрать "Нет" игрок временно сменит одежду в матче), погодные условия, авто-
    Gui, Answers: Add, Text, x8 y696  h20 +0x200, баланс команд(В случае захвата флага) и др. Только помните за создание лобби нужно будет заплатить от 1.250$ до 2.800$.
    Gui, Answers: Add, Text, x8 y712  h20 +0x200, .флаг - Командный режим боя в котором Вы сможете противостоять своим оппонентам в равных условиях. В этом режиме Вы можете поднимать оружие на "F"(По дефолту), а также купить себе оружие 
    Gui, Answers: Add, Text, x8 y728  h20 +0x200, на заработанные во время матча деньги, для этого нажмите "B". Матч закончиться как только одна из команд потеряет все очки, скорость их потери/накопления зависит от кол-ва захваченных, 
    Gui, Answers: Add, Text, x8 y744  h20 +0x200, Вашей командой, точек.

	Gui, Answers: Tab, 5
    Gui, Answers: Add, Text, x8 y24  h20 0x200, .роз - Добавлена система преследования. Для того чтобы начать преследование нужно выдать розыск -  зайти в Планшет - Фракция - База данных - Начать преследование, на карте появляется метка
    Gui, Answers: Add, Text, x8 y40  h20 0x200, местоположения игрока, обновляется раз в 30 секунд, если игрок которого преследуют заходит в другой дименшен/интерьер/выйдет из игры - пропадает с радаров. Если гос. игрок приезжает
    Gui, Answers: Add, Text, x8 y56  h20 0x200, на метку/подходит к игроку - преследование заканчивается.
    Gui, Answers: Add, Text, x8 y72  h20 0x200, .ар - После окончания срока аренда авто глушится и появляется диалоговое меню, где можно продлить аренду. 
    Gui, Answers: Add, Text, x8 y88  h20 0x200, .комт - Рабочий транспорт можно спавнить только на специально автосервисе для коммерческого транспорта. 
    Gui, Answers: Add, Text, x8 y104  h20 0x200, .гр - Лидер группы может давать код, чтобы массово добавить людей в группу, игроки в радиусе 30 метров смогут зайти. Лидер и помощники могут ставить указывающие метки, настраивается в 
    Gui, Answers: Add, Text, x8 y120  h20 0x200, F2 - Настройки - Бинды. Лидер может передать свой статус другому игроку.
    Gui, Answers: Add, Text, x8 y136  h20 0x200, .тег - Возможность тегать людей в чате для удобного РП процесса, для использования напишите @Динамик. Если игрока тегнуть у него появится уведомление об этом, тег. только ближ. игроки.
    Gui, Answers: Add, Text, x8 y152  h20 0x200, .вчат - Система визуализации чата над игроком - над игроком будут дублироваться все сообщения из чата. В настройках - Дополнительно, можно включить.
    Gui, Answers: Add, Text, x8 y168  h20 0x200, .марк - Маркетплейс используется для размещения различных товаров на продажу, таких как: транспорт, жилая недвижимость, бизнес, банкоматы, билборды. Каждая карточка с объявлением фикс. 
    Gui, Answers: Add, Text, x8 y184  h20 0x200, количество просмотров карточки и количество лайков (тех кто добавил объявление в избранное). Нажав кнопку «Начать сделку» нам откроется модальное окно, в котором будет дублироваться 
    Gui, Answers: Add, Text, x8 y200  h20 0x200, еще раз вся необходимая информация, сумма к оплате и кнопка совершить покупку.  График который имеется отображает динамику цен и имеет возможность взаимодействия. После покупки предм. 
    Gui, Answers: Add, Text, x8 y216  h20 0x200, отправятся в «Склад хранения». За размещение любого объявления взымается плата в 1.000$ за час (от 5к). Возможность покупать лот как за наличку, так и через карту. Администратор может удалить 
    Gui, Answers: Add, Text, x8 y232  h20 0x200, карточку игрока. Игрок может пожаловаться на объявление, сообщение попадёт в обращение.
    Gui, Answers: Add, Text, x8 y248  h20 0x200, .схр - Склад хранения это место, в которое попадают предметы, которые были куплены или предметы, которые были занесены сюда игроком, с целью их продажи на маркет плейсе. На склад 
    Gui, Answers: Add, Text, x8 y264  h20 0x200, можно выгрузить предметы из инвентаря или из багажника. Склад хранения находится сбоку здания аукциона. Склад не ограничен по хранению предметов Предметы могут находится на складе 30 
    Gui, Answers: Add, Text, x8 y280  h20 0x200, минут, после истечения этого времени они идут на аукцион. Имеется возможность добавить карточку в избранное. После покупки имущество/предметы могут хранится на складе 2 дня. При входе 
    Gui, Answers: Add, Text, x8 y296  h20 0x200, в зону маркетплейса подсвечивается склад и появляется метка на карте.
    Gui, Answers: Add, Text, x8 y312  h20 0x200, .пар - Положите парашют в быстрый слот, затем в полете нажмите на 1, 2 или 3 (зависит от слота), после этого ЛКМ, парашют откроется.
    Gui, Answers: Add, Text, x8 y328  h20 0x200, .дмк - Дефибриллятор МК2 никакого функционала не даёт, он аналогичен обычному дефибриллятору.
    Gui, Answers: Add, Text, x8 y344  h20 0x200, .адр - Адреналин поднимает игрока в 2 раза быстрее, чем эпинефрин.
    Gui, Answers: Add, Text, x8 y360  h20 0x200, .нагр - Автомобили из пропуск являются эксклюзивом, их нельзя передавать другим игрокам.
	Gui, Answers: Add, Text, x8 y376  h20 0x200, .жап - Предмет "Аптечка жёлтая" - восстанавливает 75 хп.
    Gui, Answers: Add, Text, x8 y392  h20 0x200, .обв - Обвесы имеются в призах. Первая установка бесплатная. Обвесы можно будет снять/поставить отдельно. Обвес закрепляется за машиной. 
    Gui, Answers: Add, Text, x8 y408  h20 0x200, .куп - Купоны действуют на все авто из Majestic Motors.
    Gui, Answers: Add, Text, x8 y424  h20 0x200, .случ - В наградах имеются "Случайные наборы". При взятии приза у игрока будет выбор в открытии одной трёх карт с разным содержимым. 
    Gui, Answers: Add, Text, x8 y440  h20 0x200, .оос - ООС зону вы можете включить на F2-Настройки-Бинд. При нажатии на эту клавишу, если игрок перед вами вышел, у вас будет информация о дате и времени выхода этого игрока из игры.
    Gui, Answers: Add, Text, x8 y456  h20 0x200, .квр - У бота на работе будет кнопка "Я могу чем-то помочь". Вы на неё жмёте и у вас откроется квест, который выполнить нужно (на Ф6 можно посмотреть). 
    Gui, Answers: Add, Text, x8 y472  h20 0x200, .вбп - Бронзовый пропуск открывает доступ к премиум наградам до 35 уровня, серебрянный до 75 уровня, золотой до 110 уровня, платиновый до 150 уровня. Опыт дает только королевский старт.
    Gui, Answers: Add, Text, x8 y504  h20 0x200, .алис - Чтобы выключить GPS ассистента нажмите F2 - Настройки и выключите GPS Ассистент.
    Gui, Answers: Add, Text, x8 y520  h20 0x200, .закр - Закройте обращение и откройте снова, пожалуйста. 
	Gui, Answers: Add, Text, x8 y536  h20 0x200, .зп - Чтобы начислялся PayDay Вам нужно иметь свою банковскую карту и быть уволеным со всех работ. Оформить её можно в любом банке.
    Gui, Answers: Add, Text, x8 y552  h20 0x200, .пар - Положите парашют в быстрый слот, затем в полете нажмите на 1, 2 или 3 (зависит от слота), после этого ЛКМ, парашют откроется.
    Gui, Answers: Add, Text, x8 y568  h20 0x200, .вод - Администрация не достает автомобили из воды, а лишь удаляет, чтобы вы могли ее заспавнить. Вам необходимо самостоятельно добраться до автосервиса/аренды т.с или до нужного вам места.
    Gui, Answers: Add, Text, x8 y584  h20 0x200, .бенз - Администрация не заправялет т.с. игроков. Вы можете вызвать такси и добраться до нужного вам места или приобрести канистру, чтобы в дальнейшем доехать до АЗС.
	Gui, Answers: Add, Text, x8 y600  h20 0x200, .удал - Администрация не удаляет т.с. игроков. Исключение: т.с. утонуло и не исчезло.
    Gui, Answers: Add, Text, x8 y616  h20 0x200, .стат - В F2 - Персонаж - Статистика.
    Gui, Answers: Add, Text, x8 y632  h20 0x200, .пред - /asms Выключите музыку, вы в зеленой зоне.
    Gui, Answers: Add, Text, x8 y648  h20 0x200, .кв - Текущий квест отображается над таймеров Majestic Coins, если его нет - нажмите F6.
    Gui, Answers: Add, Text, x8 y664  h20 0x200, .кмб - Чтобы устроиться в силовую гос. структуру необходимо получить военный билет. Для этого надо устроиться в SANG и пройти КМБ. Иконка зеленого самолета на карте.
    Gui, Answers: Add, Text, x8 y680  h20 0x200, .нарк - Пакетики Blue и White никак не получить, функционал как у Green, только разные эффекты.
    Gui, Answers: Add, Text, x8 y696  h20 0x200, .верт - Веротолеты продаются в салоне недалеко от аэропорта.
    Gui, Answers: Add, Text, x8 y712  h20 0x200, .поход - Изменить походу и эмоции лица можно в  F2 - Настройки - Главное.
    Gui, Answers: Add, Text, x8 y728  h20 0x200, .багаж - Чтобы вылезти из багажника нажмите на "E".
    Gui, Answers: Add, Text, x8 y744  h20 0x200, .нал - Чтобы оплатить налоги на дом необходимо открыть приложение "Мой дом" в планшете.
	Gui, Answers: Show, h766 w1100, Ответы
	Return

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
    Gui Cheatsheet: Add, Text, cYellow,  Унизительные действия - WARN всем
    Gui Cheatsheet: Add, Text, cYellow,  Использование предметов для восстановления здоровья/брони во время перестрелки - Demorgan 35 - 90 минут
    Gui Cheatsheet: Add, Text, cYellow,  Использование предметов лечения / замены бронежилетов во время езды на транспортном средстве - Demorgan 15 - 35 минут
    Gui Cheatsheet: Add, Text, cYellow,  Провоцировать игроков на нарушение правил сервера - Demorgan 35 - 90 минут / Ban 3-30 дней
    Gui Cheatsheet: Add, Text, cYellow,  Провоцирующие действия в сторону государственных сотрудников - Ban 2-5 дней
    Gui Cheatsheet: Add, Text, cYellow,  Завуалированные оскорбление вероисповедания, религии и нации - Ban 15 - 30 дней / Hardban 15-30 дней / Permban
    Gui Cheatsheet: Add, Text, cYellow,  Прямые оскорбления вероисповедования, религии , нации - HardBan 30 - 60 дней / PermBan
    Gui Cheatsheet: Add, Text, cYellow,  Помеха РП процессу - Ban 2-5 дней
    Gui Cheatsheet: Add, Text, cYellow,  Действия, направленные на возбуждение ненависти на почве разногласия о гендерной и т.п - Demorgan 90 минут / Ban 3 - 15 дней / HardBan 3 - 15 дней
    WinSet, TransColor, %CustomColor2% 200
    Gui Cheatsheet: Show, x%X2% y%Y2% NoActivate, window.
    }
    Else
    Gui Cheatsheet: Destroy
	Return

;===================================================================================
upturn:
    currentScriptPath := A_ScriptFullPath
    Sleep, 1500
    FileDelete, %currentScriptPath%
    UrlDownloadToFile,https://raw.githubusercontent.com/anastaz5/MintAHK/refs/heads/main/Mintik.ahk, %A_ScriptDir%\Mintik.ahk
    sleep, 500
    MsgBox, 64, adm, Биндер обновлен.
    Exitapp
return

;===================================================================================
Punish:
    MsgBox, 8192, Описание "Наказания", .нрп90 - /ajail 90 nonRP Поведение`n- .дб - /ajail 30 DB`n- .дб45 - /ajail 45 DB`n- .дб60 - /ajail 60 DB`n- .дб75 - /ajail 75 DB`n- .дб90 - /ajail 90 DB`n- .дм - /ajail 120 DM`n- .пг - /ajail 50 PG`n- .пг55 - /ajail 55 PG`n- .пг75 - /ajail 75 PG`n- .пг90 - /ajail 90 PG`n- .119 - /ajail 35 1.19 Правила государственных организаций `n- .1241 - /ajail 10 1.24.1 Правила государственных организаций`n- .муз - /mute 30 SP in GZ`n- .муз60 - /mute 60 SP in GZ`n- .смник - /ajail 720 До смены Ника/Фамилии по Правилам Проекта`n-.смвн - /ajail 720 До смены внешности`n- .оса15 - /hardban 14 6.4 Основных Правил Проекта`n- .оса10 - /hardban 10 6.4 Основных Правил Проекта`n- .оса - /hardban 7 6.4 Основных Правил Проекта`n- .ооск - /ajail 30 4.9 Основных Правил Проекта`n- .стр - /ban 3 Стрельба по пешим`n-/[fhl - /hardban 7777 Cheats`n-/[fhl9 - /hardban 9999 Cheats`n- /yhl - /ajail 15 nonRP Drive`n- /yhll30 - /ajail 30 nonRP Drive`n- /yhl45 - /ajail 45 nonRP Drive`n- /yhl70 - /ajail 70 nonRP Drive`n- /yhl90 - /ajail 90 nonRP Drive`n- /yhg - /ajail 15 nonRP Поведение`n-/yhg25 - /ajail 25 nonRP Поведение`n-/yhg45 - /ajail 45 nonRP Поведение`n- /yhg70 -/ajail 70 nonRP Поведение`n-/yhg90 - /ajail 90 nonRP Поведение`n- /l, - /ajail 30 DB`n-/l,45 -/ajail 45 DB`n-/l,60 - /ajail 60 DB`n-/l,75 - /ajail 75 DB`n- /l,90 - /ajail 90 DB`n-/lv - /ajail 120 DM`n-/gu - /ajail 50 PG`n-/gu55 - /ajail 55 PG`n-/gu75 - /ajail 75 PG`n-/gu90 - /ajail 90 PG`n-/119 - /ajail 35 1.19 Правила государственных организаций`n- /1241 - /ajail 10 1.24.1 Правила государственных организаций`n-/vep - /mute 40 SP in GZ`n- /vep60 - /mute 60 SP in GZ`n-/cvybr -/ajail 720 Смените смены ника`n- /cvdy - /ajail 720 До смены внешности`n- /jcf30 - /hardban 30 6.4 Основных Правил Проекта`n- /jcf15 - /hardban 14 6.4 Основных Правил Проекта`n- /jcf10 - /hardban 10 6.4 Основных Правил Проекта`n- /jcf - /hardban 7 6.4 Основных Правил Проекта`n- /jjcr - /ajail  30 4.9 Основных Правил Проекта`n- /cnh - /ban  3 Стрельба по пешим`n
return
;===================================================================================

	SkillInfo:
    Gui, SkillInfo: Color, 1e2124
    Gui, SkillInfo: Font, s9, Segoe UI
    Gui, SkillInfo: Font, cwhite
	Gui, SkillInfo: Add, Text, x8 y8  h20 +0x240, .вынос - Выносливость - навык выносливости повышается от подвижного образа жизни. Чем больше Вы 
    Gui, SkillInfo: Add, Text, x8 y24  h20 +0x240, бегаете, тем быстрее повышается навык. При низком навыке, персонаж не может прыгнуть 2 раза и падает.
    Gui, SkillInfo: Add, Text, x8 y40  h20 +0x240, Соответственно повышение навыка влияет на длительность беспрерывного бега и количество прыжков, 
    Gui, SkillInfo: Add, Text, x8 y56  h20 +0x240, максимум на последнем уровне - 2.
    Gui, SkillInfo: Add, Text, x8 y72  h20 +0x240, .сила - Сила - навык силы повышается от физических нагрузок. Чем больше ты занимаешься в качалке 
    Gui, SkillInfo: Add, Text, x8 y88  h20 +0x240, (иконка бегущего человека на карте), тем быстрее повышается навык. От прокачки увеличивается 
	Gui, SkillInfo: Add, Text, x8 y104  h20 +0x240, сопротивление к урону от падения.
    Gui, SkillInfo: Add, Text, x8 y120  h20 +0x240, .дых - Дыхание - навык дыхания повышается от длительного нахождения под водой. Чем больше ты 
    Gui, SkillInfo: Add, Text, x8 y136  h20 +0x240, плаваешь, тем быстрее повышается навык. Соответственно повышение навыка влияет на длительность 
    Gui, SkillInfo: Add, Text, x8 y152  h20 +0x240, беспрерывного плавания под водой.
    Gui, SkillInfo: Add, Text, x8 y168  h20 +0x240, .вожден - Вождение - навык вождения повышается от времени, проведенного за рулем автомобиля. Чем 
    Gui, SkillInfo: Add, Text, x8 y184  h20 +0x240, больше ты водишь транспорт, тем быстрее повышается навык. От прокачки увеличивается управляемость 
    Gui, SkillInfo: Add, Text, x8 y200  h20 +0x240, транспортным средоством.
    Gui, SkillInfo: Add, Text, x8 y216  h20 +0x240, .полет - Полет - навык пилотирования повышается от времени, проведенного за воздушным транспортом. 
    Gui, SkillInfo: Add, Text, x8 y232  h20 +0x240, Чем больше ты летаешь на самолете или вертолете, тем быстрее повышается навык. Также навык можно 
    Gui, SkillInfo: Add, Text, x8 y248  h20 +0x240, повысить пройдя курсы в летной школе. Пройти их можно 1 раз в 24 часа, увелчение навыка от 1 занятия - 
    Gui, SkillInfo: Add, Text, x8 y264  h20 +0x240, 10, стоимость одного занятия - 2 000$. От прокачки навыка увеличивается стабильность полета и 
    Gui, SkillInfo: Add, Text, x8 y280  h20 +0x240, управляемость воздушным транспортом.
	Gui, SkillInfo: Add, Text, x8 y296  h20 +0x240, .скрытн - Скрытность - навык скрытности повышается от количества успешных уходов от погони 
    Gui, SkillInfo: Add, Text, x8 y312  h20 +0x240, (понижений уровня розыска). Чем чаще Вы скрываетесь от полиции, тем быстрее повышается навык. Ни 
    Gui, SkillInfo: Add, Text, x8 y328  h20 +0x240,  на что не влияет.
    Gui, SkillInfo: Add, Text, x8 y344  h20 +0x240, .стрельба - Стрельба - навык стрельбы повышается от времени, проведенного в перестрелках, либо
    Gui, SkillInfo: Add, Text, x8 y360  h20 +0x240,  тренировках. Чем лучше Вы стреляете и попадаете, тем быстрее повышается навык. Рекомендуем 
    Gui, SkillInfo: Add, Text, x8 y376  h20 +0x240, тренироваться в специально отведенных для того местах, тире в оружейном магазине. От прокачки навыка 
    Gui, SkillInfo: Add, Text, x8 y392  h20 +0x240, увеличивается скорость перезарядки и перекатов, кучность стрельбы.
	Gui, SkillInfo: Show, h414 w616, Описание скилов
	Return

	Fractions:
    Gui, Fractions: Color, 1e2124
    Gui, Fractions: Font, s9, Segoe UI
    Gui, Fractions: Font, cwhite
	Gui, Fractions: Add, Text, x8 y8  h20 +0x240, 1 - LSPD
	Gui, Fractions: Add, Text, x8 y24  h20 +0x240, 2 - EMS
	Gui, Fractions: Add, Text, x8 y40  h20 +0x240, 3 - Sheriff
	Gui, Fractions: Add, Text, x8 y56  h20 +0x240, 4 - SANG
	Gui, Fractions: Add, Text, x8 y72  h20 +0x240, 5 - GOV
	Gui, Fractions: Add, Text, x8 y88  h20 +0x240, 6 - Weazel News
	Gui, Fractions: Add, Text, x8 y104 h20 +0x240, 7 - FIB
	Gui, Fractions: Add, Text, x8 y120 h20 +0x240, 8 - The Ballas Gang
	Gui, Fractions: Add, Text, x8 y136  h20 +0x240, 9 - Los-Santos Vagos
	Gui, Fractions: Add, Text, x8 y152 h20 +0x240, 10 - The Famillies 
	Gui, Fractions: Add, Text, x8 y168 h20 +0x240, 11 - The Bloods Gang 
	Gui, Fractions: Add, Text, x8 y184 h20 +0x240, 12 - Marabunta Grande
	Gui, Fractions: Show, h414 w616, Фракции
	Return

;===================================================================================
Repjb:
    MsgBox, 8192, Описание "Репорт жалобы", - .фор - Данное нарушение не подлежит рассмотрению через обращение, оставьте жалобу на форуме.`n- .форум - В связи с нагрузкой на сервер мы не можем рассмотреть вашу жалобу на игрока посредством обращения, пожалуйста, оставьте жалобу на форуме. `n- .рж - Чтобы оформить репорт-жалобу вам необходимо в название видеоролика указать - Ваш статик, статик нарушителя, а так же дату и время.`n .ржб - Со списком рассмотренния в Репорт-Жалобе можете ознакомиться в Официальном Дискорде: https://discord.com/channels/530693013622489088/535348171648270347/979479095018684496
return
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
Sleep 750
SendInput, {T}
Sleep 500
SendInput,/getcar %hId%{Enter}
return

gm:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /gm{Enter}
return

resc:
SendInput, {sc14}
Sleep 50
SendInput, /rescue{Space}
return

gh:
SendInput, {sc14}
Sleep 50
SendInput, /gh{Space}
return

chide:
SendInput, {sc14}
Sleep 50
SendInput, /chide{Enter}
return

mtp:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /mtp{Enter}
return

vhod:
SendMessage, 0x50,, 0x4090409
SendInput, {T}
Sleep 500
SendInput, /gm{Enter}
Sleep 500
if (Radio11==1)
{
SendInput, {T}
Sleep 500
SendInput, /zzdebug{Enter}
Sleep 500
}
if (Radio13==1)
{
SendInput, {T}
Sleep 500
SendInput, /hidecheatinfo{Enter}
Sleep 500
}
if (Radio9==1)
{
SendInput, {T}
Sleep 500
SendInput, /esp3{Enter}
Sleep 500
}
if (Radio8==1)
{
SendInput, {T}
Sleep 500
SendInput, /chide{Enter}
Sleep 550
}
if (Radio10==1)
{
SendInput, {T}
Sleep 500
SendInput, /dl{Enter}
Sleep 500
}
if (Radio14==1)
{
SendInput, {T}
Sleep 500
SendInput, /templeader %Fraction%{Enter}
Sleep 500
}
if (Radio15==1)
{
SendInput, {T}
Sleep 500
SendInput, /objdl{Enter}
Sleep 500
}
if (Radio16==1)
{
SendInput, {T}
Sleep 500
SendInput, /setweatherlocal CLEAR{Enter}
Sleep 500
}
if (Radio12==1)
{
SendInput, {T}
Sleep 500
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
:?:.бол::/ctp 287.70 -578.35 50
:?:.шд::/ctp -434.87 6024.54 31.50
:?:.фз::/ctp -2336 3257 32.50
:?:.гов::/ctp -534.70 -222.07 37.60
:?:.вн::/ctp -593 -929 24
:?:.фиб::/ctp 2527 -377 93
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
:?:.бдим::/setdim 3{left 2}
:?:.кдим::/setdim 555{left 4}
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
:?:.рынок::/ctp-1242 1469 4
:?:.дом2::/ctp 1429 3140 40 
:?:.дом::/ctp -167 428 111
:?:.так::/ctp -1126 4672 240 

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
:?:.афк::/a афк мин{left 4}
:?:/far::/a афк мин{left 4}
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
:?:/er::Укажите ID нарушителя.
:?:.ук::Укажите ID нарушителя.
:?:.пров::/asms Приветствую. Вы были вызваны на проверку  использования стороннего ПО. У Вас есть несколько минут чтобы зайти в голосовой канал в официальном дискорде проекта. Отказ от проверки или выход из игры карается блокировкой.  {Left 220}
:?:/ghjd::/asms Приветствую. Вы были вызваны на проверку  использования стороннего ПО. У Вас есть несколько минут чтобы зайти в голосовой канал в официальном дискорде проекта. Отказ от проверки или выход из игры карается блокировкой.  {Left 220}
:?:.пок::/asms Удачной Вам игры, и С наступающим Новым Годом. {left 48}
:?:.пока:: Удачной Вам игры, и С наступающим Новым Годом.
:?:.р1::/ctp -1683.75 -48.67 62.85 {Enter}
:?:.р2::/ctp 206.65 -1616.65 28.58 {Enter}
:?:.р3::/ctp 52.84 -1713.39 28.71 {Enter}
:?:.р4::/ctp 372.68 -1635.78 31.93 {Enter}
:?:.р5::/ctp 2627.70 3667.15 101.24 {Enter}
:?:.р6::/ctp 3391.04 5502.27 23.37 {Enter}
:?:/p1::/ctp -1683.75 -48.67 62.85 {Enter}
:?:/p2::/ctp 206.65 -1616.65 28.58 {Enter}
:?:/p3::/ctp 52.84 -1713.39 28.71 {Enter}
:?:/p4::/ctp 372.68 -1635.78 31.93 {Enter}
:?:/p5::/ctp 2627.70 3667.15 101.24 {Enter}
:?:/p6::/ctp 3391.04 5502.27 23.37 {Enter}

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

; Ответы
:?:.виз::Визуальный баг, перезайдите на сервер.
:?:.багвойс::Нажмите F2 - Настройки - блокировка войса - заблокируйте для всех и снова разблокируйте. В случае, если проблема осталась, то перезайдите в игру.
:?:.метал::Металлоискатель становится активным как только Вы берете его в руки. Когда он найдет сокровища, то будут происходить визуальные и звуковые оповещения. От зеленого цвета, до красного. Места расположения сокровищ: пляжи и архипелаги.
:?:.рыбалка::Для того чтобы рыбачить, Вам  нужна удочка и наживка - покупается в любом магизине 24/7. Подходите к зоне рыбалки своего уровня и нажимаете клавишу Е. Ждёте клёва, как появится рыба, она будет вилять в стороны влево-вправо. Вам нужно зажимать клавиши A/D противоположной стороны рыбы. После того как рыба утомилась, Вы её подсекаете левой кнопкой мыши. 
:?:.рыб::Вам надо ловить рыбу в зоне, которая соответствует вашему уровню. 1 уровень - Зоны: 1, 2, 3, 4. Рыба: Форель. Количество опыта для повышения: 196. 2 уровень - Зоны: 5,6. Рыба: Камбала. Количество опыта для повышения: 588. 3 уровень - Зона 7,8. Рыба: Тунец.  Количество опыта для повышения: 1 225. 4 уровень - Зона 9,10. Рыба: Красный солдат. Количество опыта для повышения: 2 205. 5 уровень - Зона 11. Рыба: Карась. Количество опыта для повышения: 3 920. 6 уровень - Зона 12. Рыба: Оранжевый карп. Количество опыта для повышения: 6 125. 7 уровень - Зона 13. Рыба: Аквамарин.  Количество опыта для повышения: 8 820. 8 уровень - Зона 14. Рыба: Золотая рыбка.
:?:.ставка::Расчёт ставки обычно происходит в течение 6-ти часов. Администрация не управляет рассчетом.
:?:.клвл::При достижении 5-го уровня: 500 MC При достижении 10-го уровня: 1000 MC При достижении 15-го уровня: 2000 MC При достижении 20-го уровня: 3000 MC При достижении 25-го уровня: 4000 MC При достижении 30-го уровня: 5000 MC. Каждый следующий уровень после 30-го Вы будете получать 1500 MC. 
:?:.сейф::Закрывать интерфейс сейфа можно только на ESC. В сейф можно класть до 5 миллионов. Деньги идут из налички. Нельзя продать дома в гос, продать игроку, предложить обмен, выставить на аукцион, если в сейфе есть деньги. Сначала требуется их забрать. Если дом слетает по налогам - деньги из сейфа игрок получает в наличку. 
:?:.рация::Приобрести рацию можно в любом магазине 24/7, в разделе “Электроника”, за всеми фракциями закреплен диапазон частот, который не могут занять. В F2 -> Настройки можно изменить Громкости рации.
:?:.лесоруб::Устраиваться необходимо все у того же NPC около Палето-Бей. Для начала работы Вам понадобиться “Топор”, купить его можно у NPC на Рынке. Принцип работы схожий с Грибниками, точки для сруба деревьев разбросаны по всей карте, каждый уровень привязан к свой точке сбора. Древесину можно продать на рынке. 
:?:.рац::Для использвания: Возьмите рацию > Введите чистоту >Нажмите ентер >Зажмите "M" и будет слышно.
:?:.тайм::Это визуальный баг таймера, часы идут и коины вам начислят по истечению времени. 
:?:.сид::Укажите static ID нарушителя.
:?:.увал::К сожалению, ничем не можем помочь, увольняем только в случае, если у фракции нет лидера. Дождитесь своего лидера/заместителей.
:?:.майки::Для того, чтобы купить майку под верхнюю одежду, вам нужно сначала купить элемент верхней одежды (например, пиджак). После этого вам буду доступны все майки, которые подходят под нее в разделе "Майки".
:?:.слух::Функция "Я не слышу" предназначена для людей с плохим слухом или его отсутствием. Злоупотребление этой функцией карается баном Вашего персонажа. Отключить ее можно в меню F2 - Настройки. Спасибо за понимание.
:?:.баг::Знаем о данной проблеме, она уже передана разработчикам. Приносим свои извинения за предоставленные неудобства. 
:?:.чат::Все настройки чата вы можете найти в F2 - Настройки - Настройки чата.
:?:.рел::Полностю перезайдите на сервер через F1 - Крестик в правом верхнем углу экрана.
:?:.необл::Не обладаем данной информацией.
:?:.рп::Извините, но это РП процесс, мы не вправе вмешиваться в него.
:?:.урп::Данную информацию вы можете получить при взаимодействии с другими игроками/самостоятельным поиском непосредственно во время игрового процесса, либо другим доступным IC путем. 
:?:.тех::Напишите в технический раздел на форуме.
:?:.техдс::Напишите в технический раздел официального дискорд сервера "Помощь по игре" - "тех-поддержка". Сслылка на канал - https://discord.com/channels/530693013622489088/696711470783922247
:?:.функ::Данный функционал временно недоступен, приносим свои извинения.
:?:.фун::Данный функционал отсутствует на нашем проекте. Оставьте свое предложение по добавлению на форуме в специальном разделе: Предложение по улучшению сервера - "Напишите ваше предложение тут".
:?:.изв::Приносим свои извинения за предоставленные неудобства.

:?:.ехп::Каждый час (у каждого игрока своё время) Вам дается EХP. Чтобы узнать, сколько Вам осталось до следующего PayDay, нажмите клавишу F2-Статистика.
:?:.сем::Планшет - Семья - Информация - Покинуть семью
:?:.зп::Чтобы начислялся PayDay Вам нужно иметь свою банковскую карту и быть уволеным со всех работ. Оформить её можно в любом банке.
:?:.ганлиц::Получить лицензию на оружие можно в LSPD или LSCSD. 
:?:.канистра::Чтобы использовать канистру, возьмите её в руки, нажмите G на авто и заправить. 
:?:.емс::К сожалению, администрация не поднимает и не лечит игроков, воспользуйтесь услугами ЕМС.
:?:.подним::К сожалению, не видя всей ситуации мы не в праве лечить,поднимать или добивать игроков. Дождитесь сотрудников EMS либо же окончания таймера смерти. Приносим свои извинения за возможные неудобства. 
:?:.жб::Не могу выдавать наказания и выносить какие-либо вердикты не видя ситуации с самого начала. Если у Вас есть видеофиксация данного нарушения - оформите жалобу на форуме или в Репорт Жалобе.
:?:.анак::Обратитесь, пожалуйста, в дискорд к администратору, который выдал вам наказание или рассмотрел жалобу.
:?:.адз::Данный администратор сейчас занят другим делом или отошел от компьютера на короткое время, напишите ему в личные сообщения в дискорде.
:?:.адс::Данный администратор сейчас отсутствует на сервере, напишите ему в личные сообщения в дискорде.
:?:.погода::К сожалению, администрация не контролирует данный процесс. Погода меняется автоматически.
:?:.неп::Не понял суть вашего обращения, опишите Вашу проблему/вопрос подробнее для максимально точного ответа, пожалуйста.
:?:.донат::Обратитесь по почте - help@majestic-rp.ru.
:?:.хп::Перезайдите в игру, либо купите таблетку у сотрудников EMS.
:?:.ремонт::Для начала, Вам нужно купить запчасть для машины на любо АЗС, после чего открыть капот , нажать G > Починить замок/аккумулятор/залить масло. 
:?:.ферм::На ферме для посадки каждого из растений нужны следующие навыки: Пшеница - 225 опыта. Картофель - 950 опыта. Капуста - 2000 опыта. Кукуруза - 3000 опыта. Тыква - 6200 опыта. Бананы - 10500 опыта.
:?:.гос::Вы можете сдать авто на свалку. После сдачи вы получите 75% от гос. стоимости авто. Свалка отмечена на карте как перечеркнутый, красный круг.
:?:.аним::Остановите анимацию. Нажмите X > Остановить анимацию или Backspace.
:?:.ид::Укажите, пожалуйста, ID нарушителя.
:?:.сто::Степень износа определенных деталей автомобиля можно узнать на автомастерской (иконка гаечного ключа с отверткой на карте).
:?:.дон::Задонатить можно на нашем официальном сайте - majestic-rp.ru/donate
:?:.группа::Чтобы вместе работать на кооперативной работе вам необходимо пригались игроков через приложение "Группа" в телефоне.
:?:.грибы::Чтобы собирать грибы вам надо приехать на точку "Грибы" 1/6 и взять в руки нож.
:?:.гриб::Продать грибы можно на рынке.
:?:.рын::Рынок находится в Лос-Сантосе на пляже рядом с качалкой, в Палето-Бэй и на ферме, иконка палатки. Там вы можете сдавать предметы с фермы, дровосека, грибника и рыбалки.
:?:.оружрын::Боту на рынке можно сдать оружие только со 100% износом.
:?:.новость::Придите лично в Weazel News. 
:?:.нов::Следите за новостями сервера в официальном дискорде проекта. 
:?:.ново::Следите за новостями в официальном дискорде проекта. 
:?:.ник::Сменить ник или внешность Вы можете нажав - F2 > Магазин > Персонажа.
:?:.банк::У нас на сервере есть 3 вида банковских карт: Standart, Premium, VIP. Standart карта стоит в обслуживании 500$ в месяц, снятия и переводы без комиссии до 500.000$ после превышения месечного лимита комиссия на вывод 5%(Максимум 20.000$), на перевод 4%(Максимум 20.000$), кэшбек в магазинах отсутствует. Premium карта стоит в обслуживании 25.000$ в месяц, снятия и переводы без комиссии до 2.500.000$ после превышения месечного лимита комиссия на вывод 4%(Максимум 15.000$), на перевод 3%(Максимум 15.000$), кэшбек в магазинах 1%, лимит кэшбека на одну операцию до 2.500$, месечный лимит кэшбека 50.000$. VIP карта стоит в обслуживании 75.000$ в месяц, снятия и переводы без комиссии до 20.000.000$ после превышения месечного лимита комиссия на вывод 3%(Максимум 20.000$), на перевод 2.5%(Максимум 20.000$), кэшбек в магазинах 3%, лимит кэшбека на одну операцию до 10.000$, месечный лимит кэшбека 150.000$. Деньги за обслуживание и лимиты снимаются каждое 1 число нового месяца.
:?:.дублик::Чтобы сделать дубликат ключей от авто необходимо купить заготовку в магазине 24/7, затем нажать G на авто и сделать дубликат.
:?:.клад::Чтобы сделать дубликат от кладовки, необходимо купить заготовку в магазине 24/7, затем через G передать дубликат нужному человеку.
:?:.тел::Попробуйте купить телефон еще раз в магазине 24/7, деньги с вас не спишутся.
:?:.подсел::Чтобы подселить игрока к себе в дом или же квартиру, стоя около дома, наведитесь на игрока и нажмите G, далее нажмите Подселить.
:?:.краш2::Если у Вас есть доказательства краша - предоставьте его любому администратору в личные сообщения дискорда. Вас выпустят.
:?:.замок::Вам необходимо купить "Дверной замок" и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту G -> Капот, после этого G -> Починить дверной замок.
:?:.акум::Вам необходимо купить "Аккумулятор" и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту G -> Капот, после этого G -> Заменить аккумулятор.
:?:.масло::Вам необходимо купить "Моторное масло" и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту G -> Капот, после этого G -> Заменить масло.
:?:.модел::Пункт "Прогрузка моделей" отвечает за быстроту прогрузки текстур при приближении к ним.
:?:.бизограб::Чтобы ограбить бизнес, вам нужно: одеть маску, приобрести оружие и, придя в магазин в составе от 2 до 35 человек, навестись на NPC (продавца) огнестрелом (только один человек должен грабить). 
:?:.спавн::Спавн новичков находится в Палето-Бей, Чумашах, Аэропорту и на Автовокзале. 
:?:.кредит::Любые финансовые договоры (займы, кредиты и т.д) не относятся к ООС сделкам. Все подобные сделки игроки совершают на свой страх и риск. Администрация не несет ответственности и не является гарантом сделки.
:?:.рем::Чтобы починить своё авто купите рем.комплект на любой АЗС. Через меню G почините Ваш автомобиль.
:?:.сделка::Администрация не следит за сделками игроков, запишите видео на случай обмана, чтобы оставить жалобу на игрока на форуме. 
:?:.имя::Ваше Имя Фамилия не подходит по правилам нашего сервера. Вам нужно сменить ник и написать в репорт повторно, если Ваш ник будет соблюдать правила сервера, то Вас выпустят.
:?:.вынос::Выносливость - навык выносливости повышается от подвижного образа жизни. Чем больше ты бегаешь, тем быстрее повышается навык. При низком навыке, персонаж не может прыгнуть 2 раза и падает. Соответственно повышение навыка влияет на длительность беспрерывного бега и количество прыжков, максимум на последнем уровне - 2.
:?:.сила::Сила - навык силы повышается от физических нагрузок. Чем больше Вы занимаетесь в качалке (иконка бегущего человека на карте), тем быстрее повышается навык. От прокачки увеличивается сопротивление к урону от падения.
:?:.дых::Дыхание - навык дыхания повышается от длительного нахождения под водой. Чем больше Вы плаваете, тем быстрее повышается навык. Соответственно повышение навыка влияет на длительность беспрерывного плавания под водой.
:?:.вожден::Вождение - навык вождения повышается от времени, проведенного за рулем автомобиля. Чем больше ты водишь транспорт, тем быстрее повышается навык. От прокачки увеличивается управляемость транспортным средоством.
:?:.полет::Полет - навык пилотирования повышается от времени, проведенного за воздушным транспортом. Чем больше Вы летаете на самолете или вертолете, тем быстрее повышается навык. Также навык можно повысив пройдя курсы в летной школе. Пройти их можно 1 раз в 24 часа, увелчение навыка от 1 занятия - 10, стоимость одного занятия - 2 000$. От прокачки навыка увеличивается стабильность полета и управляемость воздушным транспортом.
:?:.скрытн::Скрытность - навык скрытности повышается от количества успешных уходов от погони (понижений уровня розыска). Чем чаще Вы скрываетесь от полиции, тем быстрее повышается навык. Ни на что на влияет
:?:.стрельба::Стрельба - навык стрельбы повышается от времени, проведенного в перестрелках, либо тренировках. Чем лучше Вы стреляете и попадаете, тем быстрее повышается навык. Рекомендуем тренироваться в специально отведенных для того местах, тире в оружейном магазине. От прокачки навыка увеличивается скорость перезарядки и перекатов, кучность стрельбы.
:?:.лечу::Уже лечу к Вам на помощь.
:?:.пом::Сейчас помогу Вам, ожидайте.
:?:.багзз::Чтобы восстановить прежнюю скорость, заедьте в зеленую зону и выедьте с нее.
:?:.госдом::Чтобы продать дом в гос. стоимость, нужно подойти к двери и нажать Е. Вы получите 75% от его гос. цены. Если Вы невовремя оплатите налоги или забудете это сделать, дом слетит автоматически.
:?:.рыблиц::Получить лицензию на рыбалку вы можете в Мэрии. 
:?:.погода::К сожалению администрация не контролирует данный процесс. Погода меняется автоматически. 
:?:.реп::Пожалуйста, уточните свой вопрос подробнее. Администрация не летает на репорты по типу "админ тп", "админ можно поговорить", "помогите", "админ есть вопрос". Количество символов неограничено, вы можете полностью расписать Вашу проблему/вопрос.
:?:.неувид::К сожалению администрация не может увидеть это нарушение. Пожалуйста, если у Вас есть видеофиксация данного нарушения - оформите жалобу на форуме, спасибо большое за понимание.
:?:.кости::Чтобы играть в кости вам нужно купить их в любом 24/7. После того как вы купили кости, вы можете подойти к игроку.
:?:.парк::Чтобы припарковать ТС, за рулем нажмите G - Припарковать.
:?:.здр::Здравствуйте. 
:?:/plh::Здравствуйте. 
:?:.нет::Здравствуйте. Нет. 
:?:.да::Здравствуйте. Да. 
:?:.нетп::Администрация не телепортирует игроков, Вам нужно добраться до места самостоятельно. На проекте достаточно способов, чтобы это сделать: такси, аренда транспорта, автосервисы.
:?:.ваш::/asms Ваш репорт забагался. Закройте и откройте новый, если проблема актуальна.
:?:.др::Нажмите "Помощь другого Администратора". Либо напишите ему в Дискорд.
:?:.толкать::Транспорт можно толкать, нажав G-толкать. Если такой функции нет, при наведении на авто, то этот транспорт толкать нельзя.
:?:.несл::Администрация не может следить полностью за всем РП процессом, в случае нарушений от игроков - напишите репорт.
:?:.счет::Чтобы узнать номер счета откройте инвентарь и наведитесь мышкой на банковскую карту. 
:?:.пин::Чтобы восстановить пин-код отправляйтесь в банковское отделение, в меню смены нажмите "Восстановить".
:?:.аут::Для подключения Google authenticator вам нужно в меню выбора персонажа открыть раздел настроек.
:?:.х2::Теперь коины выдаются по выходным, по будням прокрутка рулетки за 5 часов игры.
:?:.огр::Чтобы начать ограбление банка, вам нужно позвонить по номеру: 28121903. Для этого надо быть в крайм организации, и находится рядом с банком (как минимум вас должно быть 4 около банка, иначе не сможете). Для начала ограбления требуется "План ограблений", который выбирается в AirDrops или при ограблении бизнесов.Можно грабить 1 раз в день каждой огранизации.После того, как ограбление началось и банк получил красную иконку, надо прицелиться в бота и заполнить прогресс бар.Дальше будет большая дверь, что бы ее разблокировать, нужно пройти мини-игру со взломом. Для этого используем «Программатор ЭБУ» + «Кабель электронных дверей». Он продается у торговца на рынке. После взлома перед вами будет стоять стойка с деньгами. Далее идет 2-я дверь. Для ее взлома нам необходима «Ключ карта Fleeca» либо «Термитная установка».«Ключ карта Fleeca» выпадает с ботов при ограблении бизнесов, или на аир дропах.«Термитная установка» продается у пиротехника. С ее помощью дверь открывается за 2 минуты. 
:?:.огр2::Для этого надо взять в руки один из предметов, чтобы открыть дверь. Но в хранилище есть ячейки, для взлома ячеек необходима «Дрель 1500w». Дрель крафтится у криминальных организаций и выпадает при смерти. После успешного прохождения мини-игры по взлому ячейки на пол падает награда.
:?:.дрон::Дрон крафтится у силовых гос.структур и Weasel News. Пользоваться им могут соответственно эти же гос.структуры. Чтобы подняться-пробел, чтобы опуститься-shift. На E-тепловизор включить/выключить.
:?:.аукц::На аукцион вы можете выставить авто/бизнес/дом/квартиру. Во время того, как вы выставляете лот, вы можете лишь ездить на авто. При продаже на акционе дома/квартиры-кладовка передаётся покупателю полностью.
:?:.дрифт::Дрифт счётчик можно включить через F2 > Настройки. Он появляется во время управляемого заноса и показывает, на сколько хорошо вы прошли поворот.На карте вы можете увидеть зоны, где можно дрифтить и попасть в список топ-дрифтеров. Для этого Вам обязательно дрифтить по отмеченной зоне. В противном случае очки не засчитаются.Покажите, кто здесь настоящий король дрифта!
:?:.болгарка::Для того, чтобы распилить багажник нужно подойти к багажнику G - Нелегальное для авто - Распилить дверной замок. Открывается багажник и вы можете взять с него как коробки с материалами, так и коробки со снаряжением. Взломать можно не только гос.матовозки, но и крайм. Болгаркой нельзя взломать личный транспорт.
:?:.неув::Не увидел нарушений, если у вас есть видеодоказательства - оставьте жалобу на форуме. 
:?:.фор::Данное нарушение не подлежит рассмотрению через обращение, оставьте жалобу на форуме.
:?:.форум::В связи с нагрузкой на сервер мы не можем рассмотреть вашу жалобу на игрока посредством обращения, пожалуйста, оставьте жалобу на форуме. Спасибо за понимание.
:?:.рж - Чтобы оформить репорт-жалобу вам необходимо в название видеоролика указать - Ваш статик, статик нарушителя, а так же дату и время.
:?:.ржб - Со списком рассмотренния в Репорт-Жалобе можете ознакомиться в Официальном Дискорде: https://discord.com/channels/530693013622489088/535348171648270347/979479095018684496
:?:.исч::Все транспортные средства исчезают через 60 минут, если с ними никак не взаимодействовать.
:?:.фам::/c - IC чат, /cb - OOC чат. 
:?:.фрак::/f - IC чат, /fb - OOC чат. 
:?:.спб::Если одно отделение ЕМС сильно загружено, чтобы избежать краши вас спавнит в другом, менее загруженном отделении.
:?:.перед::Все имущество вы передаете на свой страх и риск.
:?:.оск::Жалобы в репорт на OOC оскорбление принимаем только тогда, если скриншот сделан в ту же минуту, что и ООС оскорбление в чате + обязательно на скрине должно быть присутствие нарушившего (видно его или статик)
:?:.зак::Это регламентируется IC законами, изучить их можете в разделе Government на форуме: Majestic RolePlay | Server #3 - Организации - Государственные организации - Government.
:?:.багреп::В случае нахождения бага оставьте свой баг-репорт в официальном дискорде проекта: Текстовые каналы - сообщить о баге. Ссылка на канал - https://discord.com/channels/530693013622489088/991471344644538480
:?:.мед::За данным медиа партнером наблюдает PR ассистент, по этой причине я не могу выдавать наказание, т.к. вся ответственность за происходящее на этой ситуации автоматически переносится на PR ассистента.
:?:.низк::У вас включен режим низкого качества в F2 - Настройки.
:?:.зкайо::На острове имеется несколько точек захвата медицинских, военных, технических материалов. Для захвата Вам необходимо взять с собой маячки(Подберите цвета), если же у Вас маячки зелёного цвета Вы сможете захватить военные материалы, синего Вашей целью станут технически при наличии красных Вам откроется возможность захватить медицинские. Захват можно начать в радиусе 50м от точки погрузки, после активации маячка появится обозримая зона захвата, если выйти за зону захвата или все захватчики умрут, маячок уничтожается, точка переходит в спокойное состояние как до захвата. Не стоит забывать и про сигнализацию, если Вы её не выключите все госструктуры будут в момент оповещены и Вас будет ждать серьёзное сопротивление(Функционально на захват материалов это не повлияет). После захвата блип на карте красится в цвет организации захватчиков. Игроки смогут забирать материалы с точки и грузить их в личную/арендованную лодку - в городе перегружать в матовозку.
:?:.перико::У всех силовых фракций появилась метка для телепортации, фракции EMS/WN/GOV лишены её. Отделение LSCSD в Сэнди-Шорс тоже не имеет метки. Каждая фракции телепортируется в одну точку на острове, таким путём и обратно. Однако Вы не сможете телепортироваться с точки другой фракции. Пример: Я из FIB и хочу сделать телепорт на территории LSCSD - У меня не выйдет. На острове, вблизи особняка и на его территории, есть машины, вертолёт и квадроциклы с ними может взаимодействовать лишь SANG, возможность заспавнить своё ТС также сохранена, для этого воспользуйтесь меткой. Также SANG стал обладателем ещё одного склада на Кайо-Перико, он аналогичен Вашему на форте. Если на форте будет заполнено 20.000 то и на острове тоже.
:?:.сирена::Вышку можно взломать, не будет обновляться статус контроля точек(10 минут). Для взлома нужен "Программатор ЭБУ" и "Кабель радио сигналов". Кабель можно получить при ограблении магазина 24/7, выпадает(Шанс редко-средне), он одноразовый и после использования он пропадает. Взлом происходит в мини-игре. После удачного взлома, на мини карте не будет отображаться статус захвата точек для SANG(10 минут). После неудачного взлома, сразу срабатывает сирена. SANG могут восстановить работу вышки нажав "Е" на метке вышки.
:?:.маяк::Маячки могут выпасть с "AirDrop" или же при ограблении 24/7. Шансы выпадения у всех маячков разный.
:?:.зоо::Система животных. Могут спавниться различные животные, от крыс до оленей по всей карте. Некоторые виды животных можно разделать и получить мясо. Мясо можно жарить и употреблять в пищу. Домашних животных которые гуляют по карте, можно гладить.
:?:.скин::Оружие появляется в донат инвентаре, его можно будет распылить. Однако при его применении невозможно дальнейшее распыление. Чтобы применить скин на оружие: F2 - Магазин - Cкины - Выбираете оружие и скин к нему - Применить, скин применяется ко всем оружиям выбранного типа. Скин привязывается к игроку, выбить оружие со скином/сбросить/обменять/продать - невозможно.
:?:.инт::Популярные интерьеры на карте: "Особняк у виноградников" - открытый интерьер не имеющий функционала, расположен левее от центра карты. "Суд" - открытый интерьер не имеющий функционала, расположен неподалёку от LSPD. Зачастую применяется во время заседаний Верховного или же окружного суда. "Университет" - открытый интерьер не имеющий функционала, расположен неподалёку от Японской мафии. "Старый офис FIB" - открытый интерьер не имеющий функционала, расположен неподалёку от EMS.
:?:.вот::Выборы активны с 10:00 - 10:00 по московскому времени. Проголосовать может каждый от 3-го уровня игрового персонажа, по принцыпу один голос на один аккаунт. голосование проходит в левом крыле Мэрии(На карте флаг USA).
:?:.одворк:: Теперь при каждом устройстве на работу Вы получаете соответствующий комплект одежды. Он снимется автоматически при увольнении/прекращении работы. Если же у Вас мед комплект то Вам нужно пройти курс лечения.
:?:.хол::"Холодный старт" - при запуске ТС издаёт характерный звук, другим функционалом не обладает.
:?:.вак::От вакцины, выданной администрацией квест не будет засчитан, ожидайте появления лидера в ЕМС.
:?:.бинд::Вы можете настроить бинд клавиш под себя в F2 - Настройки - Бинд клавиш.
:?:.флаг::Командный режим боя в котором Вы сможете противостоять своим оппонентам в равных условиях. В этом режиме Вы можете поднимать оружие на "F"(По дефолту), а также купить себе оружие на заработанные во время матча деньги, для этого нажмите "B". Матч закончиться как только одна из команд потеряет все очки, скорость их потери/накопления зависит от кол-ва захваченных, Вашей командой, точек.
:?:.лобби::Это Ваша игра созданная Вами для друзей или же обычных игроков, все правила настраиваете именно Вы. Для того что бы начать нужно: Дать название своему лобби(Графа "Название лобби"), выбрать один из трёх доступных режимов(Гонка вооружений/Бой на смерть/Захват флага), выбрать одну из карт. Далее Вы сможете установить пароль, если же не хотите видеть лишних игроков в своей игре. После всех первичных настроек Вам откроются дополнительные: Требование для победы, оружие, время суток, одежда(Если выбрать "Нет" игрок временно сменит одежду в матче), погодные условия, авто-баланс команд(В случае захвата флага) и др. Только помните за создание лобби нужно будет заплатить от 1.250$ до 2.800$.
:?:.дрзона::Дрифт зона отмечена на карте как иконка падающей кометы, пример - одна из зон около LS Vagos.
:?:.заж::Чтобы взломать зажигание сядьте за руль т.с., нажмите G - Взломать зажигание. КД на взлом - 1 час.
:?:.стрим::Режим стримера заменяет символы на звездочки, для обычных игроков он бесполезен. Выключается в F2 - Настройки.
:?:.пар::Положите парашют в быстрый слот, затем в полете нажмите на 1, 2 или 3 (зависит от слота), после этого ЛКМ, парашют откроется.
:?:.вод::Администрация не достает автомобили из воды, а лишь удаляет, чтобы вы могли ее заспавнить. Вам необходимо самостоятельно добраться до автосервиса/аренды т.с или до нужного вам места, например, вы можете вызвать такси.
:?:.бенз::Администрация не заправялет т.с. игроков. Вы можете вызвать такси и добраться до нужного вам места или приобрести канистру, чтобы в дальнейшем доехать до АЗС.
:?:.удал::Администрация не удаляет т.с. игроков. Исключение: т.с. утонуло и не исчезло.
:?:.стат::В F2 - Персонаж - Статистика.
:?:.пред::/asms Выключите музыку, вы в зеленой зоне.{left 37}
:?:.кв::Текущий квест отображается над таймеров Majestic Coins, если его нет - нажмите F6.
:?:.кмб::Чтобы устроиться в силовую гос. структуру необходимо получить военный билет. Для этого надо устроиться в SANG и пройти КМБ. Иконка зеленого самолета на карте. Подробнее уточните у старшего состава фракции.
:?:.нарк::Пакетики Blue и White никак не получить, функционал как у Green, только разные эффекты.
:?:.алис::Чтобы выключить GPS ассистента нажмите F2 - Настройки и выключите GPS Ассистент.
:?:.верт::Веротолеты продаются в салоне недалеко от аэропорта.
:?:.поход::Изменить походу и эмоции лица можно в  F2 - Настройки - Главное.
:?:.багаж::Чтобы вылезти из багажника нажмите на "E".
:?:.нал::Чтобы оплатить налоги на дом необходимо открыть приложение "Мой дом" в планшете.

:?:.нин::Предметы можно вращать нажатием на пробел, если дважды нажать по предметы он используется (берется в активный слот или надевается).
:?:.роз::Добавлена система преследования. Для того чтобы начать преследование нужно выдать розыск -  зайти в Планшет - Фракция - База данных - Начать преследование, на карте появляется метка местоположения игрока, обновляется раз в 30 секунд, если игрок которого преследуют заходит в другой дименшен/интерьер/выйдет из игры - пропадает с радаров. Если гос. игрок приезжает на метку/подходит к игроку - преследование заканчивается.
:?:.ар::После окончания срока аренда авто глушится и появляется диалоговое меню, где можно продлить аренду. 
:?:.комт::Рабочий транспорт можно спавнить только на специально автосервисе для коммерческого транспорта. 
:?:.гр::Лидер группы может давать код, чтобы массово добавить людей в группу, игроки в радиусе 30 метров смогут зайти. Лидер и помощники могут ставить указывающие метки, настраивается в F2 - Настройки - Бинды. Лидер может передать свой статус другому игроку.
:?:.тег::Возможность тегать людей в чате для удобного РП процесса, для использования напишите @Динамик. Если игрока тегнуть у него появится уведомление об этом, тегаются только ближайшие игроки.
:?:.вчат::Система визуализации чата над игроком - над игроком будут дублироваться все сообщения из чата. В настройках - Дополнительно, можно включить.
:?:.марк::Маркетплейс используется для размещения различных товаров на продажу, таких как: транспорт, жилая недвижимость, бизнес, банкоматы, билборды. Каждая карточка с объявлением фиксирует количество просмотров карточки и количество лайков (тех кто добавил объявление в избранное). Нажав кнопку «Начать сделку» нам откроется модальное окно, в котором будет дублироваться еще раз вся необходимая информация, сумма к оплате и кнопка совершить покупку.  График который имеется отображает динамику цен и имеет возможность взаимодействия. После покупки предметы отправятся в «Склад хранения». За размещение любого объявления взымается плата в 1.000$ за час (от 5к). Возможность покупать лот как за наличку, так и через карту. Администратор может удалить карточку игрока. Игрок может пожаловаться на объявление, сообщение попадёт в обращение.
:?:.маркп::Раздел торговой площадки. Это формат биржи, на которой торгуются исключительно предметы инвентаря. Предметы выставляются бесплатно, но удаление стоит 1.000$. Есть возможность продления объявления.  На торговую площадку можно выставить предметы только из "Склада хранения".  Возможность покупать лот как за наличку, так и через карту. В карточке имеется информация о названии предмета, минимальной стоимости обновляемой в режиме реального времени и общее количество продаваемых предметов на бирже. Имеется график «Медиана цен», который визуализирует, как менялась цена за различные периоды времени. 
:?:.схр::Склад хранения это место, в которое попадают предметы, которые были куплены или предметы, которые были занесены сюда игроком, с целью их продажи на маркет плейсе. На склад можно выгрузить предметы из инвентаря или из багажника. Склад хранения находится сбоку здания аукциона. Склад не ограничен по хранению предметов Предметы могут находится на складе 30 минут, после истечения этого времени они идут на аукцион. Имеется возможность добавить карточку в избранное. После покупки имущество/предметы могут хранится на складе 2 дня. При входе в зону маркетплейса подсвечивается склад и появляется метка на карте.
:?:.тест::Внутри интерьера маркетплейса (F3 - Маркетплейс) нажмите на E, выберите авто и начните тест-драйв
:?:.пей::Для выполнения данного задания необходимо быть уволенным со всех функциональных работ, проверить это можно в F2 - Персонаж - Основное. После этого вам будет начисляться пособие по безработице либо зарплата в государственной структуре.

:?:.п::Приятной игры! И хорошего настроения.
:?:.кур::Передам кураторам.
:?:.пер::Передам.
:?:администарция::администрация
:?:администаратору::администратору
:?:.неоф::Не оффтопьте в обращения.
:?:.непр::Не предоставляем подобную информацию.

:?:.дмк::Дефибриллятор МК2 никакого функционала не даёт, он аналогичен обычному дефибриллятору.
:?:.адр::Адреналин поднимает игрока в 2 раза быстрее, чем эпинефрин.
:?:.нагр::Все автомобили и одежда из пропуск являются эксклюзивом, их нельзя передавать другим игрокам.
:?:.жап::Предмет "Аптечка жёлтая" - восстанавливает 75 хп.
:?:.обв::Обвесы имеются в призах. Первая установка бесплатная. Обвесы можно будет снять/поставить отдельно. Обвес закрепляется за машиной. 
:?:.куп::Купоны действуют на все авто из Majestic Motors.
:?:.случ::В наградах имеются "Случайные наборы". При взятии приза у игрока будет выбор в открытии одной трёх карт с разным содержимым. 
:?:.оос::ООС зону вы можете включить на F2-Настройки-Бинд. Назначаете клавишу, и при нажатии на эту клавишу, если игрок перед вами вышел из игры, у вас будет информация о дате и времени выхода этого игрока из игры.
:?:.квр::У бота на работе будет кнопка "Я могу чем-то помочь". Вы на неё жмёте и у вас откроется квест, который выполнить нужно (на Ф6 можно посмотреть). Выполняете этот квест и Вам засчитывает задание.
:?:.вбп::Бронзовый пропуск открывает доступ к премиум наградам до 35 уровня, серебрянный до 75 уровня, золотой до 110 уровня, платиновый до 150 уровня. Опыт дает только королевский старт.
:?:.чер::Червей можно выкопать на любой зоне рыбалки, с помощью лопаты. Шанс выпадения червя очень мал. Лопату вы можете приобрести на рынке у NPC.
:?:.чх::Если у вас есть откат с подозрительным моментом, то вы можете предоставить его администрации в с ролью "Cheats Hunter". Найти можно в оф. дискорде проекта.


;===================================================================================
; Инструкции по выполнению квестов и заданий:
:?:.работы:: Для выполнения "КВЕСТА" на работе вам необходимо подойти к нпс после чего нажать Е. Подобные квесты можно взять на любой из работ (все зеленые чемоданы на карте).
:?:.новичок::Квест новичка берется и проходится один раз. Если вы ранее начали проходить на другом персонаже, то нужно закончить прохождение на нем. Если вы взяли и отменили, более его не сможете взять. Задание выполняется один раз на аккаунт.
:?:.отмнов::Если вы не можете взять квест. То вам необходимо отменить старый квест. Чтобы проверить наличие активного квеста у вас справа вверхнем углу будет написанно что вам выполнить (ниже 200 бесплатных койнов). Если нету доп. сообщений, нету активного квеста. Квест отменяется там, где вы изначально его брали у нпс. Если вы не видите табличку с койнами, то понажимайте F6 несколько раз. Если информация так же не появляется, перезайдите в игру.
:?:.место::Чтобы у вас засчитывался квест с рыбалкой вам необходимо рыбачить на своем уровни рыбалки
:?:.сов::Работы для совместного выполнения - мусоровоз, почтальон, инкасатор. На карте изображены в виде зеленного чемодана. Для выполнения "КВЕСТА" на работе вам необходимо подойти к нпс после чего нажать Е. Подобные квесты можно взять на любой из работ (все зеленые чемоданы на карте).
:?:.пут::Чтобы найти путеводителя вам необходимо открыть карту и найти значок в виде человека махающего рукой. В дальней вам необходимо подойти к нему и нажать Е. Вам будет доступна аренда авто, а так же взятие начального квеста.
:?:.квест::Ознакомиться с мировым и личными квестами можно на рынке (На карте обозначен как "Красный вопрос"). Квесты доступны всем. Личные квесты вы можете проходить неопределенный срок, но, если Вы захотите участвовать в Мировом квесте и получить дополнительные бонусы, то Вам нужно поторопиться выполнить личный квест. Только 5 лучших игроков смогут попасть в топ 3 и залутать дополнительные бонусы. - Каждую неделю доступно по 3 личных и мировых квеста. - Некоторые квесты по типу инкассатора/мусорщика/почтальона можно выполнять в 2-ем и более, засчитывать будем всем.
:?:.фед::На первом этаже стоит NPC у которого можно взять задание. Чтобы отбыть срок в федеральной тюрьме, нужно выполнять задачи. Например помыть туалет - В определенное время тюрьма закрывает клетки на 5 минут, соответственно, в это время отбыть срок нельзя: -- Открываются клетки в 00 минут -- Закрываются клетки в 20 минут на 5 минут -- Открываются клетки в 25 минут -- Закрываются клетки в 55 минут на 5 минут.
:?:.джо::NPC Джо находится около участка LSPD подробнее - https://yapx.ru/album/Wn7AI
:?:.ежеднев::1) Голубую награду(каждые 7 дней) игрок может забрать только тогда, когда собраны 5 предыдущих наград. 2) Красную награду (каждые 30 дней) игрок может забрать если собраны 70% прошлых наград(~21 день).
:?:.билл::NPC Билл находится на рынке около фермы.
:?:.руда::Руда - непродаваемый материал, который можно добыть на шахте(F3 > Работа > Карьерщик). Применяется при сдаче семейных контрактов. Шанс выпадения случайный, самая редкая золотая.

;===================================================================================
; БП - Квесты
;Остальное
:?:.опыт::Чтобы улучшить боевой пропуск - F2 > Сезонный пропуск > Купить опыт
:?:.дрифт::Очки дрифта идут в статистику при набирание 3000 очков за раз и более.
:?:.дрифт2::Дрифт счётчик можно включить через F2 > Настройки. Он появляется во время управляемого заноса и показывает, на сколько хорошо вы прошли поворот.На карте вы можете увидеть зоны, где можно дрифтить и попасть в список топ-дрифтеров. Для этого Вам обязательно дрифтить по отмеченной зоне. В противном случае очки не засчитаются.
:?:.гриль::Аквамарин - жарится с 1.5 кг., Карась - жарится с 1.5 кг., Камбала - жарится с 1.5 кг., Золотая рыбка - жарится с 1 кг., Красный солдат - жарится с 1 кг., Форель - жарится с 1 кг., Тунец - жарится с 10 кг., Оранжевый карп - жарится с 10 кг.
:?:.зонадрифта::Чтобы найти зону для дрифта откройте карту. На карте будет изображена в виде колеса в огне. Приезжаете, нажимаете Е на точке (синия метка) и вы в дрифт зоне.
:?:.автопилот::Чтобы использовать автопилот вам необходимо зайти в F2-Настройки-Бинд Клавиш, далее поставить удобный для вас бинд. Выйти с настроек - поставить метку в авто и нажать ваш бинд.
:?:.предметы::Чтобы забрать предметы с рулетки или с сезонного пропуска вам необходимо нажать F2 > Магазин > Предметы.
:?:.билет::Розыгрыш проходит 3 раза в день - в 15:00, в 18:00 и в 21:00.
:?:.стриптиз::Чтобы заказать приватный танец вам необходимо прийти в клуб. Далее найти стол, подойдя к нему нажать Е.
:?:.мусор::Чтобы открыть мусорку нужно подойти к ней и нажать Е, так же вам сообщаю что не все мусорки можно просмотреть. Расположение мусорок вы можете узнать через игроков, либо же самостоятельным поиском.
:?:.руки::Чтобы прокатится несколько метров, вам необходимо чтобы вас взял игрок на руки и пронес несколько метров.
:?:.тел::Телефоны находятся по всей карте. Чтобы ответить на звонок вам необходимо подойти к нему и нажать Е. Его можно найти по характерному звуку (звонок)
:?:.угонбп::Чтобы угнать транспорт вам необходимо находится в криминальной организации. Далее купить отверку в 24/7. Сесть на водительское место - G - взломать.
:?:.животные::Данные животные можно разделать на мясо - кролики, кабаны, олени, коровы, свиньи, петухи. Домашних животных которые гуляют по карте, можно гладить. Животные появляются по всей карте.
:?:.резня::Чтобы разделать животное вам необходимо иметь при себе в руках нож (покупается в магазине 24/7), далее подходите к животному и нажимате G - разделать животное.
:?:.болезнь::Вы не сможете заболеть до 3-го лвл включительно. Если вас интересует выполнение задания, вы можете заменить его или же повысить лвл. Более к сожалению никак.
:?:.лифт::Попробуйте использовать другие лифты.Их большое количество на карте. Расположение данных лифтов вы сможете узнать через общение с игроками. Для выполнения задания в пропуске подобные лифты как в ЕMS засчитыватся у вас не будут
:?:.клад::Для поиска кладов Вам необходим металоискатель и лопата, купить можно у NPC на рынке. Металлоискатель становится активным как только Вы берете его в руки. Когда он найдет сокровища, то будут происходить визуальные и звуковые оповещения. От зеленого цвета, до красного. Места расположения сокровищ: пляжи и архипелаги.
:?:.ганг::Maze bank arena (гангейм) это место, где можно посоревноваться с другими игроками в навыках стрельбы, для тренеровки своей стрельбы. На карте находится снизу изображен в виде джостика. 
;1 сентебря
:?:.круг::Круги обозначают, что рядом с вами находится клад, который нужно выкопать, вы получите предметы со школьного ивента, которые понадобятся вам для обмена у NPC. 
:?:.книга::Книги вы можете обменять на предметы со школьного ивента.
:?:.ниера::Ниера находится на втором этаже библиотеки, в правом дальнем углу.
;Хеллоин
:?:.незнак::Если у вас задание с незнакомцем у вас на карте пояляется метка, вам по ней нужно прийти. Если метка не появляется, перезайдите в игру, пожалуйста.
:?:.хелло::Так же месторасположение нового квеста можно узнать в F2-Halloween-> Выбрать нужный этап и отследить где находится новый квест.
:?:.отмхелло::Отменить Хэллоуинские квесты можно только через f2->Задания->Активные задания. Через бота нельзя отменить их.
:?:.хелло3::Вам нужно подойти к NPC, начать прохождение квеста, надеть выданную футболку и повторно подойти к NPC, Вас телепортирует в другой мир и задание продолжится.
:?:.трансц::Трансцендентный ассенизатор используется для поиска частиц в разломах.
;Новый год
:?:.снеж::Сдать снежки вы можете большому снеговику, который находится по правую сторону от NPC, у которого Вы брали квест. Местоположение возле церкви.
:?:.лепка::Собрать снежки можно только за зоной ивента.
:?:.ивент:: Вам нужно взять задание у NPC на Янктоне.


;фамки
:?:.улучш:: Пока у вас не прокачано в разделе Планшет-Семья-Улучшение определённый контракт/действие, оно не будет доступно в разделе Планшет-Семья-Контракты или же функционал того или иного действия. Пример: нельзя нападать на ФЗ семье, не имея открытого улучшения по нападению на ФЗ.Нельзя открыть контракт Курьер Green, если в Улучшених он не разблокирован.
:?:.тайн:: По всей карте есть тайники Механические, Химические, Техничечские. Тайники есть даже на острове. Чтобы его открыть - необхожимо нажать на Е. Есть определённое КД на спавн предметогв в нём. Если вы будете стоять рядом с ним всё время - содержимое не обновится.
:?:.угон::Угон доступен только для крайм фракций и семей, у которых активно улучшение контрактов для угона авто, на спавне в банде вам нужно подойти к NPC и взять задание, в семье же активировать контракт, купить на рынке у Юншен Ли кабель 1 уровня, турбо декодер, программатор ЭБУ. Затем найти в обозначенной желтой зоне авто, пройти 2 мини игры по взлому(турбо декодер может сломаться), после успешного прохождения доставить авто на метку. Доступны следующие уровни угонщика:1 ранг 0-40; 2 ранг 40-120; 3 ранг 120-280; 4 ранг 280-600; 5 ранг 600-1240; 6 ранг 1240-2520; 7 ранг 2520+. При достижении каждого ранга нужно менять кабель на уровень вашего угона. Приятной игры.
:?:.байк::Для “Тюнинг” требуется арендовать помещение байкеров у НПС на респавне ЛОСТ или АОД.


:?:/pfrh::/asms  Закройте обращение и откройте снова, пожалуйста. {left 51}
:?:/dbp::Визуальный баг, перезайдите на сервер.
:?:/vtnfk::Металлоискатель становится активным как только Вы берете его в руки. Когда он найдет сокровища, то будут происходить визуальные и звуковые оповещения. От зеленого цвета, до красного. Места расположения сокровищ: пляжи и архипелаги.
:?:/,fudjqc::Нажмите F2 - Настройки - блокировка войса - заблокируйте для всех и снова разблокируйте. В случае, если проблема осталась, то перезайдите в игру.
:?:/hs,fkrf::Для того чтобы рыбачить, Вам  нужна удочка и наживка - покупается в любом магизине 24/7. Подходите к зоне рыбалки своего уровня и нажимаете клавишу Е. Ждёте клёва, как появится рыба, она будет вилять в стороны влево-вправо. Вам нужно зажимать клавиши A/D противоположной стороны рыбы. После того как рыба утомилась, Вы её подсекаете левой кнопкой мыши. 
:?:/cnfdrf::Расчёт ставки происходит в течение 6-ти часов. Администрация не управляет рассчетом.
:?:/cxtn::Чтобы узнать номер счета откройте инвентарь и наведитесь мышкой на банковскую карту.
:?:/gby::Чтобы восстановить пин-код отправляйтесь в банковское отделение, в меню смены нажмите "Восстановить".
:?:/rkdk::При достижении 5-го уровня: 500 MC При достижении 10-го уровня: 1000 MC При достижении 15-го уровня: 2000 MC При достижении 20-го уровня: 3000 MC При достижении 25-го уровня: 4000 MC При достижении 30-го уровня: 5000 MC. Каждый следующий уровень после 30-го Вы будете получать 1500 MC. 
:?:/rdtcn::На сервере доступны Мировые и Личные квесты. Ознакомиться с ними можно на рынке (На карте обозначен как "Красный вопрос"). Квесты доступны всем. Личные квесты вы можете проходить неопределенный срок, но, если Вы захотите участвовать в Мировом квесте и получить дополнительные бонусы, то Вам нужно поторопиться выполнить личный квест. Только 5 лучших игроков смогут попасть в топ 3 и залутать дополнительные бонусы. - Каждую неделю доступно по 3 личных и мировых квеста. - Некоторые квесты по типу инкасатора/мусорщика/почтальона можно выполнять в 2-ем и более, засчитывать будем всем.
:?:/atl::На первом этаже стоит NPC у которого можно взять задание. Чтобы отбыть срок в федеральной тюрьме, нужно выполнять задачи. Например помыть туалет - В определенное время тюрьма закрывает клетки на 5 минут, соответственно, в это время отбыть срок нельзя: -- Открываются клетки в 00 минут -- Закрываются клетки в 20 минут на 5 минут -- Открываются клетки в 25 минут -- Закрываются клетки в 55 минут на 5 минут.
:?:/ctqf::Закрывать интерфейс сейфа можно только на ESC. В сейф можно класть до 5 миллионов. Деньги идут из налички. Нельзя продать дома в гос, продать игроку, предложить обмен, выставить на аукцион, если в сейфе есть деньги. Сначала требуется их забрать. Если дом слетает по налогам - деньги из сейфа игрок получает в наличку. 
:?:/ktcjhe,::Устраиваться необходимо все у того же NPC около Палето-Бей. Для начала работы Вам понадобиться “Топор”, купить его можно у NPC на Рынке. Принцип работы схожий с Грибниками, точки для сруба деревьев разбросаны по всей карте, каждый уровень привязан к свой точке сбора. Древесину можно продать на рынке. 
:?:/hfwbz::Приобрести рацию можно в любом магазине 24/7, в разделе “Электроника”, за всеми фракциями закреплен диапазон частот, который не могут занять. В F2 -> Настройки можно изменить Громкости рации.
:?:/hfw::Если кнопка войса была не на "N", то поставьте её на N и перезайдите, после чего рация заработает. Кнопку можно вернуть на свою. Для использвания: Возьмите рацию > Введите чистоту >Нажмите ентер >Зажмите "M" и будет слышно.
:?:/nfqv::Это визуальный баг таймера, часы идут и коины вам начислят по истечению времени. 
:?:/cbl::Укажите static ID нарушителя.
:?:/gen::Всю информацию (команды/о фракциях, работах и так далее) можно узнать на форуме majestic-rp.ru - раздел "Путеводитель для новичков".
:?:/edfk::К сожалению, ничем не можем помочь, увольняем только в случае, если у фракции нет лидера. Дождитесь своего лидера/заместителей.
:?:/vfqrb::Для того, чтобы купить майку под верхнюю одежду, вам нужно сначала купить элемент верхней одежды (например, пиджак). После этого вам буду доступны все майки, которые подходят под нее в разделе "Майки".
:?:/cke[::Функция "Я не слышу" предназначена для людей с плохим слухом или его отсутствием. Злоупотребление этой функцией карается баном Вашего персонажа. Отключить ее можно в меню F2 - Настройки. Спасибо за понимание.
:?:/,fu::Знаем о данной проблеме, она уже передана разработчикам. Приносим свои извинения за предоставленные неудобства. 
:?:/xfn::На сервере есть следующие команды для чата: /pagesize - увеличить / уменьшить размер чата; /fontsize - увеличить / уменьшить размер шрифта; /chatalpha - прозрачность чата, /timestamp - время около каждого сообщения.
:?:/htk::Полностю перезайдите на сервер через F1 - Крестик в правом верхнем углу экрана.
:?:/ytj,k::Не обладаем данной информацией.
:?:/hg::Извините, но это РП процесс, мы не вправе вмешиваться в него.
:?:/ehg::Данную информацию вы можете получить при взаимодействии с другими игроками/самостоятельным поиском непосредственно во время игрового процесса, либо другим доступным IC путем. 
:?:/nt[::Напишите в технический раздел на форуме.
:?:/nt[lc::Напишите в технический раздел официального дискорд сервера "Помощь по игре" - "тех-поддержка". Ссылка на канал - https://discord.com/channels/530693013622489088/696711470783922247
:?:/aeyr::Данный функционал временно недоступен, приносим свои извинения.
:?:.фун::Данный функционал отсутствует на нашем проекте. Оставьте свое предложение по добавлению на форуме в специальном разделе: Предложение по улучшению сервера - "Напишите ваше предложение тут".
:?:/bpd::Приносим свои извинения за предоставленные неудобства.
:?:/hs,f::Вам нужно нажать F3 > Разное > Продажа рыбы.
:?:/t[g::Каждый час (у каждого игрока своё время) Вам дается EХP. Чтобы узнать, сколько Вам осталось до следующего PayDay, нажмите клавишу F2-Статистика.
:?:/fdnj::Чтобы эвакуировать Ваше авто воспользуйтесь маркером Сервиса (Гаечный ключ на карте). 
:?:/pg::Чтобы начислялся PayDay Вам нужно иметь свою банковскую карту и быть уволеным со всех работ. Оформить её можно в любом банке.
:?:/ufykbw::Получить лицензию на оружие можно в LSPD или LSCSD. 
:?:/hs,::Вам надо ловить рыбу в зоне, которая соответствует вашему уровню. 1 уровень - Зоны: 1, 2, 3, 4. Рыба: Форель. Количество опыта для повышения: 196. 2 уровень - Зоны: 5,6. Рыба: Камбала. Количество опыта для повышения: 588. 3 уровень - Зона 7,8. Рыба: Тунец.  Количество опыта для повышения: 1 225. 4 уровень - Зона 9,10. Рыба: Красный солдат. Количество опыта для повышения: 2 205. 5 уровень - Зона 11. Рыба: Карась. Количество опыта для повышения: 3 920. 6 уровень - Зона 12. Рыба: Оранжевый карп. Количество опыта для повышения: 6 125. 7 уровень - Зона 13. Рыба: Аквамарин.  Количество опыта для повышения: 8 820. 8 уровень - Зона 14. Рыба: Золотая рыбка.
:?:/rfybcnhf::Чтобы использовать канистру, возьмите её в руки, нажмите G на авто и заправить. 
:?:/tvc::К сожалению, администрация не поднимает и не лечит игроков, воспользуйтесь услугами ЕМС.
:?:/gjlybv::К сожалению, не видя всей ситуации мы не в праве лечить,поднимать или добивать игроков. Дождитесь сотрудников EMS либо же окончания таймера смерти. Приносим свои извинения за возможные неудобства. 
:?:/fyfr::Обратитесь, пожалуйста, в дискорд к администратору, который выдал вам наказание или рассмотрел жалобу.
:?:/flp::Данный администратор сейчас занят другим делом или отошел от компьютера на короткое время, напишите ему в личные сообщения в дискорде.
:?:/flc::Данный администратор сейчас отсутствует на сервере, напишите ему в личные сообщения в дискорде.
:?:/gjujlf::К сожалению, администрация не контролирует данный процесс. Погода меняется автоматически.
:?:/ytg::Не понял суть вашего обращения, опишите Вашу проблему/вопрос подробнее для максимально точного ответа, пожалуйста.
:?:/ljyfn::Обратитесь по почте - help@majestic-rp.ru.
:?:/[g::Перезайдите в игру, либо купите таблетку у сотрудников EMS.
:?:/htvjyn::Для начала, Вам нужно купить запчасть для машины на любо АЗС, после чего открыть капот , нажать G > Починить замок/аккумулятор/залить масло. 
:?:/athv::На ферме для посадки каждого из растений нужны следующие навыки: Пшеница - 225 опыта. Картофель - 950 опыта. Капуста - 2000 опыта. Кукуруза - 3000 опыта. Тыква - 6200 опыта. Бананы - 10500 опыта.
:?:/ujc::Вы можете сдать авто на свалку. После сдачи вы получите 75% от гос. стоимости авто. Свалка отмечена на карте как перечеркнутый, красный круг.
:?:/fybv::Остановите анимацию. Нажмите X > Остановить анимацию или Backspace.
:?:/bl::Укажите, пожалуйста, ID нарушителя.
:?:/cnj::Степень износа определенных деталей автомобиля можно узнать на автомастерской (иконка гаечного ключа с отверткой на карте).
:?:/ljy::Задонатить можно на нашем официальном сайте - majestic-rp.ru/donate
:?:/byrfc::Чтобы совместно работать Вам необходимо быть устроеным на работу (всем), загрузиться, а затем через G пригласить на работу.
:?:/uhb,s::Чтобы собирать грибы вам надо приехать на точку "Грибы" 1/6 и взять в руки нож.
:?:/uhb,::Продать грибы можно на рынке.
:?:/hsy::Рынок находится в Лос-Сантосе на пляже рядом с качалкой, в Палето-Бэй и на ферме, иконка палатки. Там вы можете сдавать предметы с фермы, дровосека, грибника и рыбалки.
:?:/yjdjcnm::Придите лично в Weazel News. 
:?:/g::Приветствую. Сейчас займусь Вашим обращением.
:?:/yjd::Следите за новостями сервера в официальном дискорде проекта. 
:?:/ybr::Сменить ник или внешность Вы можете нажав - F2 > Магазин > Персонажа.
:?:/,fyr::У нас на сервере есть 3 вида банковских карт: Standart, Premium, VIP. Standart карта стоит в обслуживании 500$ в месяц, снятия и переводы без комиссии до 500.000$ после превышения месечного лимита комиссия на вывод 5%(Максимум 20.000$), на перевод 4%(Максимум 20.000$), кэшбек в магазинах отсутствует. Premium карта стоит в обслуживании 25.000$ в месяц, снятия и переводы без комиссии до 2.500.000$ после превышения месечного лимита комиссия на вывод 4%(Максимум 15.000$), на перевод 3%(Максимум 15.000$), кэшбек в магазинах 1%, лимит кэшбека на одну операцию до 2.500$, месечный лимит кэшбека 50.000$. VIP карта стоит в обслуживании 75.000$ в месяц, снятия и переводы без комиссии до 20.000.000$ после превышения месечного лимита комиссия на вывод 3%(Максимум 20.000$), на перевод 2.5%(Максимум 20.000$), кэшбек в магазинах 3%, лимит кэшбека на одну операцию до 10.000$, месечный лимит кэшбека 150.000$. Деньги за обслуживание и лимиты снимаются каждое 1 число нового месяца.
:?:/le,kbr::Чтобы сделать дубликат ключей от авто необходимо купить заготовку в магазине 24/7, затем нажать G на авто и сделать дубликат.
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
:?:/htv::Чтобы починить своё авто купите рем.комплект на любой АЗС. Через меню G почините Ваш автомобиль.
:?:/cltkrf::Администрация не следит за сделками игроков, запишите видео на случай обмана, чтобы оставить жалобу на игрока на форуме. 
:?:/bvz::Ваше Имя Фамилия не подходит по правилам нашего сервера. Вам нужно сменить ник и написать в репорт повторно, если Ваш ник будет соблюдать правила сервера, то Вас выпустят.
:?:/dsyjc::Выносливость - навык выносливости повышается от подвижного образа жизни. Чем больше ты бегаешь, тем быстрее повышается навык. При низком навыке, персонаж не может прыгнуть 2 раза и падает. Соответственно повышение навыка влияет на длительность беспрерывного бега и количество прыжков, максимум на последнем уровне - 2.
:?:/cbkf::Сила - навык силы повышается от физических нагрузок. Чем больше ты занимаешься в качалке (иконка бегущего человека на карте), тем быстрее повышается навык. От прокачки увеличивается сопротивление к урону от падения.
:?:/ls[::Дыхание - навык дыхания повышается от длительного нахождения под водой. Чем больше ты плаваешь, тем быстрее повышается навык. Соответственно повышение навыка влияет на длительность беспрерывного плавания под водой.
:?:/gjktn::Полет - навык пилотирования повышается от времени, проведенного за воздушным транспортом. Чем больше ты летаешь на самолете или вертолете, тем быстрее повышается навык. Также навык можно повысив пройдя курсы в летной школе. Пройти их можно 1 раз в 24 часа, увелчение навыка от 1 занятия - 10, стоимость одного занятия - 2 000$. От прокачки навыка увеличивается стабильность полета и управляемость воздушным транспортом.
:?:/crhsny::Скрытность - навык скрытности повышается от количества успешных уходов от погони (понижений уровня розыска). Чем чаще ты скрываешься от полиции, тем быстрее повышается навык. Ни на что не влияет.
:?:/cnhtkm,f::Стрельба - навык стрельбы повышается от времени, проведенного в перестрелках, либо тренировках. Чем лучше ты стреляешь и попадаешь, тем быстрее повышается навык. Рекомендуем тренироваться в специально отведенных для того местах, тире в оружейном магазине. От прокачки навыка увеличивается скорость перезарядки и перекатов, кучность стрельбы.
:?:/ktxe::Уже лечу к Вам на помощь.
:?:/gjv::Сейчас помогу Вам, ожидайте.
:?:/,fupp::Чтобы восстановить прежнюю скорость, заедьте в зеленую зону и выедьте с нее.
:?:/ujcljv::Чтобы продать дом в гос. стоимость, нужно подойти к двери и нажать Е. Вы получите 75% от его гос. цены. Если Вы невовремя оплатите налоги или забудете это сделать, дом слетит автоматически.
:?:/vfqrb::Для того, чтобы купить майку под верхнюю одежду, вам нужно сначала купить элемент верхней одежды (например, пиджак). После этого вам буду доступны все майки, которые подходят под нее в разделе "Майки".
:?:/hs,kbw::Получить лицензию на рыбалку вы можете в Мэрии. 
:?:/gjujlf::К сожалению администрация не контролирует данный процесс. Погода меняется автоматически. 
:?:/htg::Пожалуйста, уточните свой вопрос подробнее. Администрация не летает на репорты по типу "админ тп", "админ можно поговорить", "помогите", "админ есть вопрос". Количество символов неограничено, вы можете полностью расписать Вашу проблему/вопрос.
:?:/ytedbl::К сожалению администрация не может увидеть это нарушение. Пожалуйста, если у Вас есть видеофиксация данного нарушения - оформите жалобу на форуме, спасибо большое за понимание.
:?:/rjcnb::чтобы играть в кости вам нужно купить их в любом 24/7. После того как вы купили кости, вы можете подойти к игроку.
:?:/gfhr::Чтобы припарковать ТС, за рулем нажмите G - Припарковать.
:?:/yjdbxjr::Путеводитель находится на спавнах новичков. Они обозначены на карте значком машущего человечка.
:?:/lf::Да. 
:?:/ytn::Нет. 
:?:/ytng::Администрация не телепортирует игроков, Вам нужно добраться до места самостоятельно. На проекте достаточно способов, чтобы это сделать: такси, аренда транспорта, автосервисы.
:?:/byd:::?:.инв::Это баг инвентаря, предложите обменяться любому игроку и ваша проблема будет решена. Если по близости никого нет, обратитесь ещё раз в репорт и администрация Вам поможет.
:?:/fhsyjr::Для того, чтобы выставить свое авто на продажу, Вам необходимо приехать на территорию авторынка, выбрать место и нажать на клавишу "G" - Авторынок - Выставить на продажу.
:?:/njkrfnm::Транспорт можно толкать, нажав G-толкать. Если такой функции нет, при наведении на авто, то этот транспорт толкать нельзя.
:?:/ytck::Администрация не может следить полностью за всем РП процессом, в случае нарушений от игроков - напишите репорт.
:?:/fen::Для подключения Google authenticator вам нужно в меню выбора персонажа открыть раздел настроек.
:?:/x2::Теперь коины выдаются по выходным, по будням прокрутка рулетки за 5 часов игры.
:?:/juh::Чтобы начать ограбление бизнеса, вам нужно позвонить по номеру: 28121903. Для этого надо быть в крайм организации, и находится рядом с банком (как минимум вас должно быть 4 около банка, иначе не сможете). Для начала ограбления требуется "План ограблений", который выбирается в AirDrops или при ограблении бизнесов.Можно грабить 1 раз в день каждой огранизации.После того, как ограбление началось и банк получил красную иконку, надо прицелиться в бота и заполнить прогресс бар.Дальше будет большая дверь, что бы ее разблокировать, нужно пройти мини-игру со взломом. Для этого используем «Программатор ЭБУ» + «Кабель электронных дверей». Он продается у торговца на рынке. После взлома перед вами будет стоять стойка с деньгами. Далее идет 2-я дверь. Для ее взлома нам необходима «Ключ карта Fleeca» либо «Термитная установка».«Ключ карта Fleeca» выпадает с ботов при ограблении бизнесов, или на аир дропах.«Термитная установка» продается у пиротехника. С ее помощью дверь открывается за 2 минуты. 
:?:/juh2::Для этого надо взять в руки один из предметов, чтобы открыть дверь. Но в хранилище есть ячейки, для взлома ячеек необходима «Дрель 1500w». Дрель крафтится у криминальных организаций и выпадает при смерти. После успешного прохождения мини-игры по взлому ячейки на пол падает награда.
:?:/lhjy::Дрон крафтится у силовых гос.структур и Weasel News. Пользоваться им могут соответственно эти же гос.структуры. Чтобы подняться-пробел, чтобы опуститься-shift. На E-тепловизор включить/выключить.
:?:/ferw::На аукцион вы можете выставить авто/бизнес/дом/квартиру. Во время того, как вы выставляете лот, вы можете лишь ездить на авто. При продаже на акционе дома/квартиры-кладовка передаётся покупателю полностью.
:?:/lhban::Дрифт счётчик можно включить через F2 > Настройки. Он появляется во время управляемого заноса и показывает, на сколько хорошо вы прошли поворот.На карте вы можете увидеть зоны, где можно дрифтить и попасть в список топ-дрифтеров. Для этого Вам обязательно дрифтить по отмеченной зоне. В противном случае очки не засчитаются.Покажите, кто здесь настоящий король дрифта!
:?:/,jkufhrf::Для того, чтобы распилить багажник нужно подойти к багажнику G - Нелегальное для авто - Распилить дверной замок. Открывается багажник и вы можете взять с него как коробки с материалами, так и коробки со снаряжением. Взломать можно не только гос.матовозки, но и крайм. Болгаркой нельзя взломать личный транспорт.
:?:/yted::Не увидел нарушений, если у вас есть видеодоказательства - оставьте жалобу на форуме. 
:?:/ajh::Данное нарушение не подлежит рассмотрению через обращение, оставьте жалобу на форуме.
:?:/a;,::Не могу рассмотреть из-за нарушений правил подачи. Автору репорт-жалобы необходимо указывать в названии видео: свой static, static нарушителя, время и дату. Измените название и продублируйте вашу репорт-жалобу.
:?:/ajhev::В связи с нагрузкой на сервер мы не можем рассмотреть вашу жалобу на игрока посредством обращения, пожалуйста, оставьте жалобу на форуме. Спасибо за понимание.
:?:/bcx::Все транспортные средства исчезают через 60 минут, если с ними никак не взаимодействовать.
:?:/afv::/c - IC чат, /cb - OOC чат.
:?:/ahfr::/f - IC чат, /fb - OOC чат. 
:?:/cg,:: Если одно отделение ЕМС сильно загружено, чтобы избежать краши вас спавнит в другом, менее загруженном отделении.
:?:/gthtl::Все имущество вы передаете на свой страх и риск.
:?:/jcr::Жалобы в репорт на OOC оскорбление принимаем только тогда, если скриншот сделан в ту же минуту, что и ООС оскорбление в чате + обязательно на скрине должно быть присутствие нарушившего (видно его или статик)
:?:/helf::Руда с шахты требуется только в семейных контрактах, продать ее нельзя.
:?:/pfr::Это регламентируется IC законами, изучить их можете в разделе Government на форуме: Majestic RolePlay | Server #3 - Организации - Государственные организации - Government.
:?:/,fuhtg::В случае нахождения бага оставьте свой баг-репорт в официальном дискорде проекта: Текстовые каналы - сообщить о баге. Ссылка на канал - https://discord.com/channels/530693013622489088/991471344644538480
:?:/vtl::За данным медиа партнером наблюдает PR ассистент, по этой причине я не могу выдавать наказание, т.к. вся ответственность за происходящее на этой ситуации автоматически переносится на PR ассистента.
:?:/ybpr::У вас включен режим низкого качества в F2 - Настройки.
:?:/dfr::От вакцины, выданной администрацией квест не будет засчитан, ожидайте появления лидера в ЕМС.
:?:/,byl::Вы можете настроить бинд клавиш под себя в F2 - Настройки - Бинд клавиш.

:?:/prfqj::На острове имеется несколько точек захвата медицинских, военных, технических материалов. Для захвата Вам необходимо взять с собой маячки(Подберите цвета), если же у Вас маячки зелёного цвета Вы сможете захватить военные материалы, синего Вашей целью станут технически при наличии красных Вам откроется возможность захватить медицинские. Захват можно начать в радиусе 50м от точки погрузки, после активации маячка появится обозримая зона захвата, если выйти за зону захвата или все захватчики умрут, маячок уничтожается, точка переходит в спокойное состояние как до захвата. Не стоит забывать и про сигнализацию, если Вы её не выключите все госструктуры будут в момент оповещены и Вас будет ждать серьёзное сопротивление(Функционально на захват материалов это не повлияет). После захвата блип на карте красится в цвет организации захватчиков. Игроки смогут забирать материалы с точки и грузить их в личную/арендованную лодку - в городе перегружать в матовозку.
:?:/gthbrj::У всех силовых фракций появилась метка для телепортации, фракции EMS/WN/GOV лишены её. Отделение LSCSD в Сэнди-Шорс тоже не имеет метки. Каждая фракции телепортируется в одну точку на острове, таким путём и обратно. Однако Вы не сможете телепортироваться с точки другой фракции. Пример: Я из FIB и хочу сделать телепорт на территории LSCSD - У меня не выйдет. На острове, вблизи особняка и на его территории, есть машины, вертолёт и квадроциклы с ними может взаимодействовать лишь SANG, возможность заспавнить своё ТС также сохранена, для этого воспользуйтесь меткой. Также SANG стал обладателем ещё одного склада на Кайо-Перико, он аналогичен Вашему на форте. Если на форте будет заполнено 20.000 то и на острове тоже.
:?:/cbhtyf::Вышку можно взломать, не будет обновляться статус контроля точек(10 минут). Для взлома нужен "Программатор ЭБУ" и "Кабель радио сигналов". Кабель можно получить при ограблении магазина 24/7, выпадает(Шанс редко-средне), он одноразовый и после использования он пропадает. Взлом происходит в мини-игре. После удачного взлома, на мини карте не будет отображаться статус захвата точек для SANG(10 минут). После неудачного взлома, сразу срабатывает сирена. SANG могут восстановить работу вышки нажав "Е" на метке вышки.
:?:/vfzr::Маячки могут выпасть с "AirDrop" или же при ограблении 24/7. Шансы выпадения у всех маячков разный.
:?:/pjj::Система животных. Могут спавниться различные животные, от крыс до оленей по всей карте. Некоторые виды животных можно разделать и получить мясо. Мясо можно жарить и употреблять в пищу. Домашних животных которые гуляют по карте, можно гладить.
:?:/crby::Оружие появляется в донат инвентаре, его можно будет распылить. Однако при его применении невозможно дальнейшее распыление. Чтобы применить скин на оружие: F2 - Магазин - Cкины - Выбираете оружие и скин к нему - Применить, скин применяется ко всем оружиям выбранного типа. Скин привязывается к игроку, выбить оружие со скином/сбросить/обменять/продать - невозможно.
:?:/byn::Популярные интерьеры на карте: "Особняк у виноградников" - открытый интерьер не имеющий функционала, расположен левее от центра карты. "Суд" - открытый интерьер не имеющий функционала, расположен неподалёку от LSPD. Зачастую применяется во время заседаний Верховного или же окружного суда. "Университет" - открытый интерьер не имеющий функционала, расположен неподалёку от Японской мафии. "Старый офис FIB" - открытый интерьер не имеющий функционала, расположен неподалёку от EMS.
:?:/djn::Выборы активны с 10:00 - 10:00 по московскому времени. Проголосовать может каждый от 3-го уровня игрового персонажа, по принцыпу один голос на один аккаунт. голосование проходит в левом крыле Мэрии(На карте флаг USA).
:?:/jldjhr:: Теперь при каждом устройстве на работу Вы получаете соответствующий комплект одежды. Он снимется автоматически при увольнении/прекращении работы. Если же у Вас мед комплект то Вам нужно пройти курс лечения.
:?:/[jk::"Холодный старт" - при запуске ТС издаёт характерный звук, другим функционалом не обладает.
:?:/akfu::Командный режим боя в котором Вы сможете противостоять своим оппонентам в равных условиях. В этом режиме Вы можете поднимать оружие на "F"(По дефолту), а также купить себе оружие на заработанные во время матча деньги, для этого нажмите "B". Матч закончиться как только одна из команд потеряет все очки, скорость их потери/накопления зависит от кол-ва захваченных, Вашей командой, точек.
:?:/kj,,b::Это Ваша игра созданная Вами для друзей или же обычных игроков, все правила настраиваете именно Вы. Для того что бы начать нужно: Дать название своему лобби(Графа "Название лобби"), выбрать один из трёх доступных режимов(Гонка вооружений/Бой на смерть/Захват флага), выбрать одну из карт. Далее Вы сможете установить пароль, если же не хотите видеть лишних игроков в своей игре. После всех первичных настроек Вам откроются дополнительные: Требование для победы, оружие, время суток, одежда(Если выбрать "Нет" игрок временно сменит одежду в матче), погодные условия, авто-баланс команд(В случае захвата флага) и др. Только помните за создание лобби нужно будет заплатить от 1.250$ до 2.800$.
:?:/lhpjyf::Дрифт зона отмечена на карте как иконка падающей кометы, пример - одна из зон около LS Vagos.
:?:/pf;::Чтобы взломать зажигание сядьте за руль т.с., нажмите G - Взломать зажигание. КД на взлом - 1 час.
:?:/cnhbv::Режим стримера заменяет символы на звездочки, для обычных игроков он бесполезен. Выключается в F2 - Настройки.
:?:/rd::Текущий квест отображается над таймеров Majestic Coins, если его нет - нажмите F6.
:?:/rv,::Чтобы устроиться в силовую гос. структуру необходимо получить военный билет. Для этого надо устроиться в SANG и пройти КМБ. Иконка зеленого самолета на карте. Подробнее уточните у старшего состава фракции.
:?:/yfhr::Пакетики Blue и White никак не получить, функционал как у Green, только разные эффекты.
:?:/fkbc::Чтобы выключить GPS ассистента нажмите F2 - Настройки и выключите GPS Ассистент.
:?:/dthn::Веротолеты продаются в салоне недалеко от аэропорта.
:?:/gj[jl::Изменить походу и эмоции лица можно в  F2 - Настройки - Главное.
:?:/,fuf;::Чтобы вылезти из багажника нажмите на "E".
:?:/yfk::Чтобы оплатить налоги на дом необходимо открыть приложение "Мой дом" в планшете.
:?:/ntcn::Внутри интерьера маркетплейса (F3 - Маркетплейс) нажмите на E, выберите авто и начните тест-драйв

:?:/gfh::Положите парашют в быстрый слот, затем в полете нажмите на 1, 2 или 3 (зависит от слота), после этого ЛКМ, парашют откроется.
:?:/djl::Администрация не достает автомобили из воды, а лишь удаляет, чтобы вы могли ее заспавнить. Вам необходимо самостоятельно добраться до автосервиса/аренды т.с или до нужного вам места, например, вы можете вызвать такси.
:?:/,typ::Администрация не заправялет т.с. игроков. Вы можете вызвать такси и добраться до нужного вам места или приобрести канистру, чтобы в дальнейшем доехать до АЗС.
:?:/elfk::Администрация не удаляет т.с. игроков. Исключение: т.с. утонуло и не исчезло.
:?:/cnfn::В F2 - Персонаж - Статистика.
:?:/ghtl::/asms Выключите музыку, вы в зеленой зоне.{left 37}

:?:/yby::Предметы можно вращать нажатием на пробел, если дважды нажать по предметы он используется (берется в активный слот или надевается).
:?:/hjp::Добавлена система преследования. Для того чтобы начать преследование нужно выдать розыск -  зайти в Планшет - Фракция - База данных - Начать преследование, на карте появляется метка местоположения игрока, обновляется раз в 30 секунд, если игрок которого преследуют заходит в другой дименшен/интерьер/выйдет из игры - пропадает с радаров. Если гос. игрок приезжает на метку/подходит к игроку - преследование заканчивается.
:?:/fh::После окончания срока аренда авто глушится и появляется диалоговое меню, где можно продлить аренду. 
:?:/rjvn::Рабочий транспорт можно спавнить только на специально автосервисе для коммерческого транспорта. 
:?:/uh::Лидер группы может давать код, чтобы массово добавить людей в группу, игроки в радиусе 30 метров смогут зайти. Лидер и помощники могут ставить указывающие метки, настраивается в F2 - Настройки - Бинды. Лидер может передать свой статус другому игроку.
:?:/ntu::Возможность тегать людей в чате для удобного РП процесса, для использования напишите @Динамик. Если игрока тегнуть у него появится уведомление об этом, тегаются только ближайшие игроки.
:?:/dxfn::Система визуализации чата над игроком - над игроком будут дублироваться все сообщения из чата. В настройках - Дополнительно, можно включить.
:?:/vfhr::Маркетплейс используется для размещения различных товаров на продажу, таких как: транспорт, жилая недвижимость, бизнес, банкоматы, билборды. Каждая карточка с объявлением фиксирует количество просмотров карточки и количество лайков (тех кто добавил объявление в избранное). Нажав кнопку «Начать сделку» нам откроется модальное окно, в котором будет дублироваться еще раз вся необходимая информация, сумма к оплате и кнопка совершить покупку.  График который имеется отображает динамику цен и имеет возможность взаимодействия. После покупки предметы отправятся в «Склад хранения». За размещение любого объявления взымается плата в 1.000$ за час (от 5к). Возможность покупать лот как за наличку, так и через карту. Администратор может удалить карточку игрока. Игрок может пожаловаться на объявление, сообщение попадёт в обращение.
:?:/vfhrg::Раздел торговой площадки. Это формат биржи, на которой торгуются исключительно предметы инвентаря. Предметы выставляются бесплатно, но удаление стоит 1.000$. Есть возможность продления объявления.  На торговую площадку можно выставить предметы только из "Склада хранения".  Возможность покупать лот как за наличку, так и через карту. В карточке имеется информация о названии предмета, минимальной стоимости обновляемой в режиме реального времени и общее количество продаваемых предметов на бирже. Имеется график «Медиана цен», который визуализирует, как менялась цена за различные периоды времени. 
:?:/c[h::Склад хранения это место, в которое попадают предметы, которые были куплены или предметы, которые были занесены сюда игроком, с целью их продажи на маркет плейсе. На склад можно выгрузить предметы из инвентаря или из багажника. Склад хранения находится сбоку здания аукциона. Склад не ограничен по хранению предметов Предметы могут находится на складе 30 минут, после истечения этого времени они идут на аукцион. Имеется возможность добавить карточку в избранное. После покупки имущество/предметы могут хранится на складе 2 дня. При входе в зону маркетплейса подсвечивается склад и появляется метка на карте.

:?:/reh::Передам кураторам.
:?:/gth::Передам.
:?:/ytja::Не оффтопьте в обращения.
:?:/ytgh::Не предоставляем подобную информацию.
:?:.актуал::Обращение неактивно более одной минут, вынужден его закрыть. Если же у Вас есть не решенный вопрос/проблема создайте новое и ожидайте ответа.
:?:/frnefk::Обращение неактивно более одной минут, вынужден его закрыть. Если же у Вас есть не решенный вопрос/проблема создайте новое и ожидайте ответа.
:?:.воп::Вопроса более от вас не увидел, закрываю тикет.
:?:/djg::Вопроса более от вас не увидел, закрываю тикет.

:?:/lvr::Дефибриллятор МК2 никакого функционала не даёт, он аналогичен обычному дефибриллятору.
:?:/flh::Адреналин поднимает игрока в 2 раза быстрее, чем эпинефрин.
:?:/yfuh::Все автомобили и одежда из пропуск являются эксклюзивом, их нельзя передавать другим игрокам.
:?:/;fg::Предмет "Аптечка жёлтая" - восстанавливает 75 хп.
:?:/j,d::Обвесы имеются в призах. Первая установка бесплатная. Обвесы можно будет снять/поставить отдельно. Обвес закрепляется за машиной. 
:?:/reg::Купоны действуют на все авто из Majestic Motors. После взятия они действует 3 дня.
:?:/ckex::В наградах имеются "Случайные наборы". При взятии приза у игрока будет выбор в открытии одной трёх карт с разным содержимым. 
:?:/jjc::ООС зону вы можете включить на F2-Настройки-Бинд. Назначаете клавишу, и при нажатии на эту клавишу, если игрок перед вами вышел из игры, у вас будет информация о дате и времени выхода этого игрока из игры.
:?:/rdh::У бота на работе будет кнопка "Я могу чем-то помочь". Вы на неё жмёте и у вас откроется квест, который выполнить нужно (на Ф6 можно посмотреть). Выполняете этот квест и Вам засчитывает задание.
:?:/xth::Червей можно выкопать на любой зоне рыбалки, с помощью лопаты. Шанс выпадения червя очень мал. Лопату вы можете приобрести на рынке у NPC.

:?:/x[::Если у вас есть откат с подозрительным моментом, то вы можете предоставить его администрации в с ролью "Cheats Hunter". Найти можно в оф. дискорде проекта.


;фамки
:?:/ekexi:: Пока у вас не прокачано в разделе Планшет-Семья-Улучшение определённый контракт/действие, оно не будет доступно в разделе Планшет-Семья-Контракты или же функционал того или иного действия. Пример: нельзя нападать на ФЗ семье, не имея открытого улучшения по нападению на ФЗ.Нельзя открыть контракт Курьер Green, если в Улучшених он не разблокирован.
:?:/nfqy:: По всей карте есть тайники Механические, Химические, Техничечские. Тайники есть даже на острове. Чтобы его открыть - необхожимо нажать на Е. Есть определённое КД на спавн предметогв в нём. Если вы будете стоять рядом с ним всё время - содержимое не обновится.
:?:/eujy::Угон доступен только для крайм фракций и семей, у которых активно улучшение контрактов для угона авто, на спавне в банде вам нужно подойти к NPC и взять задание, в семье же активировать контракт, купить на рынке у Юншен Ли кабель 1 уровня, турбо декодер, программатор ЭБУ. Затем найти в обозначенной желтой зоне авто, пройти 2 мини игры по взлому(турбо декодер может сломаться), после успешного прохождения доставить авто на метку. Доступны следующие уровни угонщика:1 ранг 0-40; 2 ранг 40-120; 3 ранг 120-280; 4 ранг 280-600; 5 ранг 600-1240; 6 ранг 1240-2520; 7 ранг 2520+. При достижении каждого ранга нужно менять кабель на уровень вашего угона. Приятной игры.
:?:/,fqr::Для “Тюнинг” требуется арендовать помещение байкеров у НПС на респавне ЛОСТ или АОД.

; Наказания

:?:.хардо::/hardban 9999 Cheats{left 21}
:?:.хард::/hardban 9999 Cheats{left 12}
:?:.хард9::/hardban 9999 Cheats{left 12}
:?:.нрд::/ajail 15 nonRP Drive{Left 15}
:?:.нрд25::/ajail 25 nonRP Drive{Left 15}
:?:.нрд45::/ajail 45 nonRP Drive{Left 15}
:?:.нрд70::/ajail 70 nonRP Drive{Left 15}
:?:.нрд90::/ajail 90 nonRP Drive{Left 15}
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
:?:.дм::/ajail 120 DM{Left 7}
:?:.пг::/ajail 35 PG{Left 6}
:?:.пг55::/ajail 55 PG{Left 6}
:?:.пг75::/ajail 75 PG{Left 6}
:?:.пг90::/ajail 90 PG{Left 6}
:?:.119::/ajail 35 1.19 Правила государственных организаций{Left 36}
:?:.1241::/ajail 10 1.24.1 Правила государственных организаций{Left 41}
:?:.муз::/mute 30 Music in GZ{Left 15}
:?:.муз60::/mute 60 Music in GZ{Left 15}
:?:.смник::/ajail 720 Смените Имя_Фамилия согласно правилам проекта{Left 50}
:?:.смвн::/ajail 720 Смените внешность согласно правилам проекта{Left 48}
:?:.оса30::/hardban 30 Оскорбление администрации{left 29}
:?:.оса15::/hardban 14 Оскорбление администрации{left 29}
:?:.оса10::/hardban 10 Оскорбление администрации{left 29}
:?:.оса::/hardban 7 Оскорбление администрации{left 28}
:?:.ооск::/ajail 30 OOC оскорбление{left 19}
:?:.стр::/ban 3 Стрельба по пешим{left 20}

:?:/[fhlj::/hardban 9999 Cheats{left 21}
:?:/[fhl::/hardban 9999 Cheats{left 12}
:?:/[fhl9::/hardban 9999 Cheats{left 12}
:?:/yhl::/ajail 15 nonRP Drive{Left 15}
:?:/yhll25::/ajail 25 nonRP Drive{Left 15}
:?:/yhl45::/ajail 45 nonRP Drive{Left 15}
:?:/yhl70::/ajail 70 nonRP Drive{Left 15}
:?:/yhl90::/ajail 90 nonRP Drive{Left 15}
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
:?:/lv::/ajail 120 DM{Left 7}
:?:/gu::/ajail 35 PG{Left 6}
:?:/gu55::/ajail 55 PG{Left 6}
:?:/gu75::/ajail 75 PG{Left 6}
:?:/gu90::/ajail 90 PG{Left 6}
:?:/119::/ajail 35 1.19 Правила государственных организаций{Left 41}
:?:/1241::/ajail 10 1.24.1 Правила государственных организаций{Left 39}
:?:/vep::/mute 30 Music in GZ{Left 15}
:?:/vep60::/mute 60 Music in GFZ{Left 15}
:?:/cvybr::/ajail 720 Смените Имя_Фамилия согласно правилам проекта{Left 50}
:?:/cvdy::/ajail 720 Смените внешность согласно правилам проекта{Left 48}
:?:/jcf30::/hardban 30 Оскорбление администрации{left 29}
:?:/jcf15::/hardban 14 Оскорбление администрации{left 29}
:?:/jcf10::/hardban 10 Оскорбление администрации{left 29}
:?:/jcf::/hardban 7 Оскорбление администрации{left 28}
:?:/jjcr::/ajail  30 OOC оскорбление{left 19}
:?:/cnh::/ban 3 Стрельба по пешим{left 20}

;===================================================================================
change:
    MsgBox, 8192, Обновление от 18.12.2024 включает в себя: `n
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