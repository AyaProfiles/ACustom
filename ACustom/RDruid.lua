
local function Q()local _IQQXpkjA='Aya_RDruid'local pVRjfuZ3z86=105;local erDFb100j=LibStub('StdUi')
local XL_WYdR=LibStub("AceAddon-3.0"):GetAddon(Z_AddonName)local QKKks_ztAre7xU=XL_WYdR;local yxjlZG=XL_WYdR.HealingEngine;local Vu0cCAfq=HeroLibEx
local erDFb100j=HeroCache;local kP7O5=Vu0cCAfq.Unit;local lqTmP3mlD=kP7O5.Player;local PrPyxMKtczrIB=kP7O5.Target
local erDFb100j=kP7O5.Arena;local erDFb100j=kP7O5.Party;local erDFb100j=kP7O5.MouseOver;local awqU76o=Vu0cCAfq.Spell
local erDFb100j=Vu0cCAfq.Item;local LB1ZN9L=QKKks_ztAre7xU.Cast;local erDFb100j=QKKks_ztAre7xU.CastAlly
local hDc_MqW0lRiD1=QKKks_ztAre7xU.AoEON;local erDFb100j=QKKks_ztAre7xU.CDsON
local erDFb100j=awqU76o.Druid.Restoration;local iD1IUxJLCOx_ak=awqU76o(391888)local hPQR1FIoQI=awqU76o(391891)
local NsoTwDsHGli=awqU76o(391889)local iym6SCS0=awqU76o(188550)local NUhYw6R4Hv=awqU76o(33763)
local Churkh=awqU76o(114108)local zhzpBSxrHSjalVy=awqU76o(77758)local TjhsnPt5jzEd9=awqU76o(192090)
local JZAU2zPXTTg=awqU76o(213771)local seMLrqX=awqU76o(132158)local h_8xL7OTb=awqU76o(392301)
local NsoTwDsHGli=awqU76o(392302)local w8T3fK,qL;local NsoTwDsHGli,vfIyB;local NsoTwDsHGli,NsoTwDsHGli
local NsoTwDsHGli=XL_WYdR.Config.GetClassSetting;local quNsijN="Aya_Rdruid_Config"local NsoTwDsHGli='FF7C0A'
local NsoTwDsHGli={key=quNsijN,title='Aya - Restoration Druid',subtitle='Aya '..XL_WYdR.Version,width=470,height=650,profiles=true,config={{type='header',text='Restoration',size=24,align='Center',color=NsoTwDsHGli},{type='spacer'},{type='ruler'},{type='spacer'},{type='header',text='Spells',color=NsoTwDsHGli},{type='spinner',text='DPS Threshold',key='DPSThreshold1',min=1,max=100,default=80},{type='spinner',text='Regrowth',key='RegrowthHP',min=1,max=100,default=75},{type='spinner',text='Regrowth Refresh',key='RegrowthHP2',min=1,max=100,default=50},{type='spinner',text='Rejuvenation',key='RejuvenationHP',min=1,max=100,default=85},{type='spinner',text='Wild Growth',key='WildGrowthHP',min=1,max=100,default=85},{type='spinner',text='Wild Growth Units',key='WildGrowthNum',min=1,max=40,default=3},{type='spinner',text='Efflorescence',key='EfflorescenceHP',min=1,max=100,default=100},{type='spinner',text='Efflorescence Units',key='EfflorescenceNum',min=1,max=40,default=1},{type='spinner',text='Ironbark',key='IronbarkHP',min=1,max=100,default=50},{type='spinner',text='Swiftmend',key='SwiftmendHP',min=1,max=100,default=80},{type='spinner',text='Convoke the Spirits',key='ConvokeHP',min=1,max=100,default=70},{type='spinner',text='Convoke the Spirits Units',key='ConvokeNum',min=1,max=40,default=3},{type='spacer'},{type='header',text='Defensive',color=NsoTwDsHGli},{type='spinner',text='Barkskin',key='BarkSkinHP',min=1,max=100,default=60},{type='spinner',text='Renewal',key='RenewalHP',min=1,max=100,default=70},{type='spacer'},{type='header',text='Class',color=NsoTwDsHGli},{type='spinner',text="Cooldowns HP",key='CooldownSlider',min=1,max=100,default=75},{type='dropdown',text='Cooldown Options',key='CooldownOption',list={{text='Auto',key=1},{text='Manually',key=2}},default=1},{type='dropdown',text='Convoke the Spirits',key='ConvokeOption',list={{text='Heal',key=1},{text='Heal + Damage',key=2}},default=2},{type='checkbox',text='Form Swap for DPS',key='FormSwap',default=true},{type='checkbox',text='Mana Management',key='ManaManagement',default=true}}}
XL_WYdR.SetCustomConfig(_IQQXpkjA,pVRjfuZ3z86,NsoTwDsHGli)local function QUh2tc()end;local qboV,quNsijN,nSBOx7,u,K,i1,zz1QI;local kFTAh,LBf,dijn4Ph,CO1;local RlZo,NsoTwDsHGli,SUn,Ib4;local fjV1G2,Do,_
local TqYJ4={}
Vu0cCAfq:RegisterForEvent(function(lqTmP3mlD,...)local XL_WYdR,erDFb100j,LB1ZN9L,PrPyxMKtczrIB=...
if lqTmP3mlD=="UNIT_SPELLCAST_SENT"then if
XL_WYdR=="player"and erDFb100j then currentspell=PrPyxMKtczrIB
currentspelltarget=erDFb100j end end;if lqTmP3mlD=="UI_ERROR_MESSAGE"then
if erDFb100j==SPELL_FAILED_LINE_OF_SIGHT then
missedunit=currentspelltarget;missedspell=currentspell end end end,"UI_ERROR_MESSAGE","UNIT_SPELLCAST_SENT")
local function Q()
DPSThreshold=XL_WYdR.Config.GetSetting('Aya_Rdruid_Config',"DPSThreshold1")
nSBOx7=XL_WYdR.Config.GetSetting('Aya_Rdruid_Config',"RegrowthHP")
u=XL_WYdR.Config.GetSetting('Aya_Rdruid_Config',"RegrowthHP2")
K=XL_WYdR.Config.GetSetting('Aya_Rdruid_Config',"RejuvenationHP")
kFTAh=XL_WYdR.Config.GetSetting('Aya_Rdruid_Config',"WildGrowthHP")
LBf=XL_WYdR.Config.GetSetting('Aya_Rdruid_Config',"WildGrowthNum")
dijn4Ph=XL_WYdR.Config.GetSetting('Aya_Rdruid_Config',"EfflorescenceHP")
CO1=XL_WYdR.Config.GetSetting('Aya_Rdruid_Config',"EfflorescenceNum")
i1=XL_WYdR.Config.GetSetting('Aya_Rdruid_Config',"IronbarkHP")
zz1QI=XL_WYdR.Config.GetSetting('Aya_Rdruid_Config',"SwiftmendHP")
RenewalHP=XL_WYdR.Config.GetSetting('Aya_Rdruid_Config',"RenewalHP")
ConvokeHP=XL_WYdR.Config.GetSetting('Aya_Rdruid_Config',"ConvokeHP")
quNsijN=XL_WYdR.Config.GetSetting('Aya_Rdruid_Config',"CooldownSlider")
qboV=XL_WYdR.Config.GetSetting('Aya_Rdruid_Config',"CooldownOption")
fjV1G2=XL_WYdR.Config.GetSetting('Aya_Rdruid_Config',"ConvokeOption")
RlZo=XL_WYdR.Config.GetSetting('Aya_Rdruid_Config',"TopTrinketTarget")
NsoTwDsHGli=XL_WYdR.Config.GetSetting('Aya_Rdruid_Config',"TopTrinketOption")
SUn=XL_WYdR.Config.GetSetting('Aya_Rdruid_Config',"BotTrinketTarget")
Ib4=XL_WYdR.Config.GetSetting('Aya_Rdruid_Config',"BotTrinketOption")
BarkSkinHP=XL_WYdR.Config.GetSetting('Aya_Rdruid_Config',"BarkSkinHP")
Do=XL_WYdR.Config.GetSetting('Aya_Rdruid_Config',"FormSwap")
_=XL_WYdR.Config.GetSetting('Aya_Rdruid_Config',"ManaManagement")end
local function NsoTwDsHGli(lqTmP3mlD,XL_WYdR)local PrPyxMKtczrIB,erDFb100j
if not XL_WYdR then if GetUnitName("player",true)==lqTmP3mlD then return
UnitGUID("player")end
if GetUnitName("target",true)==
lqTmP3mlD then return kP7O5("target"):GUID()end
if GetUnitName("focus",true)==lqTmP3mlD then return UnitGUID("focus")end;erDFb100j=GetNumGroupMembers()
if erDFb100j>0 and erDFb100j<=5 then for erDFb100j=1,erDFb100j
do
if GetUnitName("party"..erDFb100j,true)==lqTmP3mlD then return UnitGUID(
"party"..erDFb100j)end end end
if erDFb100j>5 then for erDFb100j=1,erDFb100j do
if
GetUnitName("raid"..erDFb100j,true)==lqTmP3mlD then return UnitGUID("raid"..erDFb100j)end end end else
if GetUnitName("player",true)==lqTmP3mlD then return"player"end
if GetUnitName("target",true)==lqTmP3mlD then return"target"end
if GetUnitName("focus",true)==lqTmP3mlD then return"focus"end;erDFb100j=GetNumGroupMembers()
if erDFb100j>0 and erDFb100j<=5 then
for erDFb100j=1,erDFb100j
do if GetUnitName("party"..erDFb100j,true)==lqTmP3mlD then return"party"..
erDFb100j end end end;if erDFb100j>5 then
for erDFb100j=1,erDFb100j do if
GetUnitName("raid"..erDFb100j,true)==lqTmP3mlD then return"raid"..erDFb100j end end end end;return lqTmP3mlD end
local function DI()if missedunit then
table.insert(TqYJ4,(NsoTwDsHGli(missedunit).." "..GetTime()))missedunit=nil end
if
table.getn(TqYJ4)>0 then
for lqTmP3mlD=1,table.getn(TqYJ4)do
if TqYJ4[lqTmP3mlD]~=nil then
for erDFb100j in
string.gmatch(TqYJ4[lqTmP3mlD],"([^%s]+)")do erDFb100j=tonumber(erDFb100j)if type(erDFb100j)=="number"then
if erDFb100j<=
GetTime()-1.5 then table.remove(TqYJ4,lqTmP3mlD)end end end end end end end
local function NsoTwDsHGli(erDFb100j)
if table.getn(TqYJ4)>0 and erDFb100j~=nil then
for lqTmP3mlD=1,table.getn(TqYJ4)
do
for lqTmP3mlD in string.gmatch(TqYJ4[lqTmP3mlD],"([^%s]+)")do if lqTmP3mlD and lqTmP3mlD==
erDFb100j:GUID()then return true end end end else return false end end
local function TqYJ4(erDFb100j)
if
(kP7O5(erDFb100j):BuffUp(awqU76o(365153)))then for lqTmP3mlD=1,40 do
if
select(10,UnitBuff(erDFb100j,lqTmP3mlD))==365153 then return select(16,UnitBuff(erDFb100j,lqTmP3mlD))end end else return 0 end end
local function SUn(erDFb100j)
if erDFb100j==nil or type(erDFb100j)=="string"then return nil end;erDFb100j=erDFb100j/100;local lqTmP3mlD=0
if GetNumGroupMembers()>0 and
GetNumGroupMembers()<=5 then
for XL_WYdR=1,GetNumGroupMembers()do
if
UnitExists("party"..XL_WYdR)and
not kP7O5("party"..XL_WYdR):IsDeadOrGhost()and
kP7O5("party"..XL_WYdR):DebuffDown(awqU76o(228578))then
local LB1ZN9L=UnitHealth("party"..
XL_WYdR)+
(UnitGetIncomingHeals("party"..XL_WYdR)or 0)-TqYJ4("party"..XL_WYdR)local PrPyxMKtczrIB=UnitHealthMax("party"..XL_WYdR)if
LB1ZN9L/PrPyxMKtczrIB<erDFb100j or
(
UnitHealth("party"..XL_WYdR)/PrPyxMKtczrIB==1 and erDFb100j==1)then
lqTmP3mlD=lqTmP3mlD+1 end end end
if
(
((UnitHealth("player")+
(UnitGetIncomingHeals("player")or 0))/
UnitHealthMax("player"))<erDFb100j or
(UnitHealth("player")/
UnitHealthMax("player")==1 and erDFb100j==1))then lqTmP3mlD=lqTmP3mlD+1 end end
if GetNumGroupMembers()>5 then
for XL_WYdR=1,GetNumGroupMembers()do
if



UnitExists("raid"..XL_WYdR)and not UnitIsDead("raid"..XL_WYdR)and
kP7O5("raid"..XL_WYdR):DebuffDown(awqU76o(362075))and
kP7O5("raid"..XL_WYdR):DebuffDown(awqU76o(362397))and
kP7O5("raid"..XL_WYdR):DebuffDown(awqU76o(191587))then local PrPyxMKtczrIB=0
local PrPyxMKtczrIB=
UnitHealth("raid"..XL_WYdR)+ (
UnitGetIncomingHeals("raid"..XL_WYdR)or 0)-TqYJ4("raid"..XL_WYdR)local XL_WYdR=UnitHealthMax("raid"..XL_WYdR)
if
PrPyxMKtczrIB/XL_WYdR<erDFb100j then lqTmP3mlD=lqTmP3mlD+1 end end end end
if GetNumGroupMembers()==0 then
local XL_WYdR=UnitHealth("player")+ (
UnitGetIncomingHeals("player")or 0)-
TqYJ4("player")local PrPyxMKtczrIB=UnitHealthMax("player")if
XL_WYdR/PrPyxMKtczrIB<erDFb100j then lqTmP3mlD=lqTmP3mlD+1 end end;return lqTmP3mlD end
local function RlZo()
for lqTmP3mlD=1,4 do local LB1ZN9L,PrPyxMKtczrIB,XL_WYdR,lqTmP3mlD=GetTotemInfo(lqTmP3mlD)
if PrPyxMKtczrIB==
erDFb100j.Efflorescence:Name()then return
(floor(XL_WYdR+lqTmP3mlD-GetTime()+.5))or 0 end end;return 0 end
local function Ib4()
if


erDFb100j.ConvoketheSpirits:IsReady()and
PrPyxMKtczrIB:IsInMeleeRange(40)and not lqTmP3mlD:IsMoving()and fjV1G2 ==2 and
(
UnitExists("boss1")or Vu0cCAfq.FightRemains(Enemies10ySplash)>30)and Vu0cCAfq.CombatTime()>5 then
if erDFb100j.MoonkinForm:IsReady()then if
LB1ZN9L(erDFb100j.MoonkinForm)then return'MoonkinForm for Convoke - DPS'end end
if
qL<3 and PrPyxMKtczrIB:IsInMeleeRange(10)and qL>0 and Do then
if erDFb100j.CatForm:IsReady()and
lqTmP3mlD:BuffDown(erDFb100j.CatForm)then if LB1ZN9L(erDFb100j.CatForm)then
return'Cat Form for Convoke'end end elseif
qL>=3 and PrPyxMKtczrIB:IsInMeleeRange(10)and Do then
if erDFb100j.BearForm:IsReady()and
lqTmP3mlD:BuffDown(erDFb100j.BearForm)then if LB1ZN9L(erDFb100j.BearForm)then return
'BearForm for Convoke'end end end
if LB1ZN9L(erDFb100j.ConvoketheSpirits)and
(
lqTmP3mlD:BuffUp(erDFb100j.MoonkinForm)or not erDFb100j.MoonkinForm:IsAvailable())then return
"Convoke the Spirits - DPS"end end
if erDFb100j.NaturesVigil:IsReady()and
(UnitExists("boss1")or
Vu0cCAfq.FightRemains(Enemies10ySplash)>30)then if
LB1ZN9L(erDFb100j.NaturesVigil,true)then return'NaturesVigil - DPS'end end
if qL<3 and qL>0 and Do then
if lqTmP3mlD:ComboPoints()>=5 and
PrPyxMKtczrIB:IsInMeleeRange(10)then
if erDFb100j.CatForm:IsReady()and
lqTmP3mlD:BuffDown(erDFb100j.CatForm)then if LB1ZN9L(erDFb100j.CatForm)then
return'Cat Form for CP Spend'end end
if
erDFb100j.Rip:IsReady()and
PrPyxMKtczrIB:TimeToDie()>20 and lqTmP3mlD:BuffUp(erDFb100j.CatForm)and
PrPyxMKtczrIB:DebuffRemains(erDFb100j.RipDebuff)<6 then if
LB1ZN9L(erDFb100j.Rip)then return'Rip (Cat Form) - DPS'end end
if
erDFb100j.FerociousBite:IsReady()and
(
PrPyxMKtczrIB:TimeToDie()<=20 or
PrPyxMKtczrIB:DebuffRemains(erDFb100j.RipDebuff)>=6)and
lqTmP3mlD:BuffUp(erDFb100j.CatForm)then
if LB1ZN9L(erDFb100j.FerociousBite)then return'Ferocious Bite (Cat Form) - DPS'end end end
if erDFb100j.Rake:IsReady()and
PrPyxMKtczrIB:DebuffDown(erDFb100j.RakeDebuff)and
PrPyxMKtczrIB:TimeToDie()>15 and
PrPyxMKtczrIB:IsInMeleeRange(10)then if

erDFb100j.CatForm:IsReady()and lqTmP3mlD:BuffDown(erDFb100j.CatForm)then
if LB1ZN9L(erDFb100j.CatForm)then return'Cat Form for Rake'end end;if
lqTmP3mlD:BuffUp(erDFb100j.CatForm)then
if LB1ZN9L(erDFb100j.Rake)then return'Rake (Cat Form) - DPS'end end end
if
erDFb100j.Moonfire:IsReady()and
PrPyxMKtczrIB:DebuffDown(erDFb100j.MoonfireDebuff)and
(

(
lqTmP3mlD:BuffDown(erDFb100j.CatForm)and lqTmP3mlD:BuffDown(erDFb100j.BearForm))or PrPyxMKtczrIB:DebuffDown(erDFb100j.SunfireDebuff)or not lqTmP3mlD:AffectingCombat())then
if LB1ZN9L(erDFb100j.Moonfire)then return'Moonfire - DPS'end end
if erDFb100j.Sunfire:IsReady()and
PrPyxMKtczrIB:DebuffDown(erDFb100j.SunfireDebuff)then if LB1ZN9L(erDFb100j.Sunfire)then return
'Sunfire - DPS'end end
if

(PrPyxMKtczrIB:DebuffDown(TjhsnPt5jzEd9)or
PrPyxMKtczrIB:DebuffStack(TjhsnPt5jzEd9)<3)and zhzpBSxrHSjalVy:IsReady()then
if erDFb100j.BearForm:IsReady()and
lqTmP3mlD:BuffDown(erDFb100j.BearForm)then if LB1ZN9L(erDFb100j.BearForm)then return
'BearForm for Thrash'end end
if lqTmP3mlD:BuffUp(erDFb100j.BearForm)then if LB1ZN9L(zhzpBSxrHSjalVy)then
return'Thrash - DPS'end end end
if PrPyxMKtczrIB:IsInMeleeRange(10)then
if

erDFb100j.CatForm:IsReady()and lqTmP3mlD:BuffDown(erDFb100j.CatForm)then
if LB1ZN9L(erDFb100j.CatForm)then return'Cat Form for Shred/Auto Attack'end end
if erDFb100j.Shred:IsReady()and
lqTmP3mlD:BuffUp(erDFb100j.CatForm)then if LB1ZN9L(erDFb100j.Shred)then
return'Shred (Cat Form) - DPS'end end end elseif qL>=3 and Do then
if lqTmP3mlD:ComboPoints()>=5 and
PrPyxMKtczrIB:IsInMeleeRange(10)then
if erDFb100j.CatForm:IsReady()and
lqTmP3mlD:BuffDown(erDFb100j.CatForm)then if LB1ZN9L(erDFb100j.CatForm)then
return'Cat Form for CP Spend'end end
if
erDFb100j.Rip:IsReady()and
PrPyxMKtczrIB:TimeToDie()>20 and lqTmP3mlD:BuffUp(erDFb100j.CatForm)then
if LB1ZN9L(erDFb100j.Rip)then return'Rip (Cat Form) - DPS'end end
if erDFb100j.FerociousBite:IsReady()and
PrPyxMKtczrIB:TimeToDie()<=20 and
lqTmP3mlD:BuffUp(erDFb100j.CatForm)then
if
LB1ZN9L(erDFb100j.FerociousBite)then return'Ferocious Bite (Cat Form) - DPS'end end
if erDFb100j.Rake:IsReady()and
PrPyxMKtczrIB:TimeToDie()>15 and
PrPyxMKtczrIB:DebuffDown(erDFb100j.RakeDebuff)then if
LB1ZN9L(erDFb100j.Rake)then return'Rake (Cat Form) - DPS'end end end
if
erDFb100j.Moonfire:IsReady()and
PrPyxMKtczrIB:DebuffDown(erDFb100j.MoonfireDebuff)and
(

(
lqTmP3mlD:BuffDown(erDFb100j.CatForm)and lqTmP3mlD:BuffDown(erDFb100j.BearForm))or PrPyxMKtczrIB:DebuffDown(erDFb100j.SunfireDebuff)or not lqTmP3mlD:AffectingCombat())then
if LB1ZN9L(erDFb100j.Moonfire)then return'Moonfire - DPS'end end
if erDFb100j.Sunfire:IsReady()and
PrPyxMKtczrIB:DebuffDown(erDFb100j.SunfireDebuff)then if LB1ZN9L(erDFb100j.Sunfire)then return
'Sunfire - DPS'end end
if

(PrPyxMKtczrIB:DebuffDown(TjhsnPt5jzEd9)or
PrPyxMKtczrIB:DebuffStack(TjhsnPt5jzEd9)<3)and zhzpBSxrHSjalVy:IsReady()then
if erDFb100j.BearForm:IsReady()and
lqTmP3mlD:BuffDown(erDFb100j.BearForm)then if LB1ZN9L(erDFb100j.BearForm)then return
'BearForm for Thrash'end end
if lqTmP3mlD:BuffUp(erDFb100j.BearForm)then if LB1ZN9L(zhzpBSxrHSjalVy)then
return'Thrash - DPS'end end end
if PrPyxMKtczrIB:IsInMeleeRange(10)then if
lqTmP3mlD:BuffDown(erDFb100j.BearForm)then
if LB1ZN9L(erDFb100j.BearForm)then return'BearForm for Swipe/Auto Attack'end end
if
JZAU2zPXTTg:IsReady()and lqTmP3mlD:BuffUp(erDFb100j.BearForm)then if
LB1ZN9L(JZAU2zPXTTg)then return'Swipe (Bear Form) - DPS'end end end end
if
erDFb100j.Moonfire:IsReady()and
PrPyxMKtczrIB:DebuffDown(erDFb100j.MoonfireDebuff)and(not
PrPyxMKtczrIB:IsInMeleeRange(10)or not Do)then
if LB1ZN9L(erDFb100j.Moonfire)then return'Moonfire - DPS - Range'end end
if
erDFb100j.Sunfire:IsReady()and
PrPyxMKtczrIB:DebuffDown(erDFb100j.SunfireDebuff)and(not
PrPyxMKtczrIB:IsInMeleeRange(10)or not Do)then
if LB1ZN9L(erDFb100j.Sunfire)then return'Sunfire - DPS'end end
if
erDFb100j.Wrath:IsReady()and not lqTmP3mlD:IsMoving()and
(not PrPyxMKtczrIB:IsInMeleeRange(10)or not Do)then if
LB1ZN9L(erDFb100j.Wrath)then return'Wrath - DPS'end end end
local function zhzpBSxrHSjalVy()local TjhsnPt5jzEd9,TqYJ4,awqU76o,TqYJ4,TqYJ4,TqYJ4=yxjlZG:Update()Q()
if hDc_MqW0lRiD1()then
w8T3fK=lqTmP3mlD:GetEnemiesInRangeFilter(10)Enemies10ySplash=kP7O5:GetEnemiesInSplashRange(10)
qL=#w8T3fK;vfIyB=kP7O5:GetEnemiesInSplashRangeCount(10)else qL=1;vfIyB=1 end;local qL=Vu0cCAfq.CombatTime()
local TqYJ4=not lqTmP3mlD:IsMoving()
local TqYJ4=(lqTmP3mlD:HealthPercentage()>=60)local TqYJ4=PrPyxMKtczrIB:IsInMeleeRange(5)
local TqYJ4=

#awqU76o>1 and
(
qboV==1 and yxjlZG:AverageHP()<=quNsijN or qboV==2)and not
lqTmP3mlD:IsChanneling(erDFb100j.Tranquility)and lqTmP3mlD:BuffDown(erDFb100j.Flourish)and lqTmP3mlD:BuffDown(erDFb100j.IncarnationTreeofLife)local Vu0cCAfq=hDc_MqW0lRiD1()and#awqU76o>=1
if
PrPyxMKtczrIB:IsAPlayer()and PrPyxMKtczrIB:IsDeadOrGhost()and not
PrPyxMKtczrIB:IsEnemy()and
PrPyxMKtczrIB:IsInParty()then if qL==0 and
erDFb100j.Revive:IsReady(lqTmP3mlD)then
if LB1ZN9L(erDFb100j.Revive)then return'Resurrection'end end end
if erDFb100j.Barkskin:IsReady()and lqTmP3mlD:HealthPercentage()<
BarkSkinHP then if
LB1ZN9L(erDFb100j.Barkskin)then return'Barkskin Defensive'end end
if erDFb100j.Renewal:IsReady()and
lqTmP3mlD:HealthPercentage()<RenewalHP then if LB1ZN9L(erDFb100j.Renewal)then
return'Renewal Deffensive'end end
if iD1IUxJLCOx_ak:IsCastable()and not TqYJ4 then
if
XL_WYdR.CastCycleAlly(iD1IUxJLCOx_ak,awqU76o,function(erDFb100j)return

erDFb100j:BuffStack(hPQR1FIoQI)==2 and not NsoTwDsHGli(erDFb100j)end)then return'Adaptive Swarm Members 2 Stacks'end
if
XL_WYdR.CastCycleAlly(iD1IUxJLCOx_ak,awqU76o,function(erDFb100j)
return
erDFb100j:BuffStack(hPQR1FIoQI)==1 and not NsoTwDsHGli(erDFb100j)end)then return'Adaptive Swarm Members 1 Stacks'end
if
XL_WYdR.CastCycleAlly(iD1IUxJLCOx_ak,awqU76o,function(erDFb100j)
return
erDFb100j:BuffStack(hPQR1FIoQI)==3 and not NsoTwDsHGli(erDFb100j)end)then return'Adaptive Swarm Members 3 Stacks'end
if
XL_WYdR.CastCycleAlly(iD1IUxJLCOx_ak,awqU76o,function(erDFb100j)
return
erDFb100j:BuffStack(hPQR1FIoQI)==0 and not NsoTwDsHGli(erDFb100j)end)then return'Adaptive Swarm Members 0 Stacks'end end
if TqYJ4 then
if erDFb100j.Ironbark:IsReady()then
if
XL_WYdR.CastCycleAlly(erDFb100j.Ironbark,awqU76o,function(erDFb100j)return

erDFb100j:HealthPercentage()<i1 and not NsoTwDsHGli(erDFb100j)end)then return'Ironbark Members'end end;if
seMLrqX:IsReady()and erDFb100j.ConvoketheSpirits:IsReady()then
if LB1ZN9L(seMLrqX,true)then return'Natures Swiftness before Convoke'end end
if
erDFb100j.ConvoketheSpirits:IsReady()and not lqTmP3mlD:IsMoving()then
if
XL_WYdR.CastCycleAlly(erDFb100j.ConvoketheSpirits,awqU76o,function(erDFb100j)return

erDFb100j:HealthPercentage()<quNsijN and not NsoTwDsHGli(erDFb100j)end)then return'Convoke the Spirits - Heal'end end
if

erDFb100j.Flourish:IsReady()and
erDFb100j.WildGrowth:IsReady()and not lqTmP3mlD:IsMoving()and yxjlZG:AverageHP()<=quNsijN then
if
XL_WYdR.CastCycleAlly(erDFb100j.WildGrowth,awqU76o,function(erDFb100j)
return
erDFb100j:HealthPercentage()<quNsijN and not NsoTwDsHGli(erDFb100j)end)then return'Wild Growth before Flourish'end end
if
erDFb100j.Flourish:IsReady()and
not lqTmP3mlD:IsMoving()and yxjlZG:AverageHP()<=quNsijN then if LB1ZN9L(erDFb100j.Flourish)then return'Flourish'end end
if erDFb100j.IncarnationTreeofLife:IsReady()then if
LB1ZN9L(erDFb100j.IncarnationTreeofLife)then return'IncarnationTreeofLife'end end
if

erDFb100j.Tranquility:IsReady()and
erDFb100j.WildGrowth:IsReady()and not lqTmP3mlD:IsMoving()and yxjlZG:AverageHP()<=quNsijN then
if
XL_WYdR.CastCycleAlly(erDFb100j.WildGrowth,awqU76o,function(erDFb100j)
return
erDFb100j:HealthPercentage()<quNsijN and not NsoTwDsHGli(erDFb100j)end)then return'Wild Growth before Tranquility'end end
if
erDFb100j.Tranquility:IsReady()and
not lqTmP3mlD:IsMoving()and yxjlZG:AverageHP()<=quNsijN then
if LB1ZN9L(erDFb100j.Tranquility)then return'Tranquility'end end end
if erDFb100j.Rejuvenation:IsCastable()and
XL_WYdR.Toggle:GetToggle("SpreadRejuvenation")then
if
XL_WYdR.CastCycleAlly(erDFb100j.Rejuvenation,awqU76o,function(lqTmP3mlD)return
(
(lqTmP3mlD:BuffDown(erDFb100j.Rejuvenation))and not NsoTwDsHGli(lqTmP3mlD))end)then return'Rejuvenation Spread Members - toggle'end end
if
iym6SCS0:IsCastable()and
(
(h_8xL7OTb:IsAvailable()and
XL_WYdR.HealingEngine:BuffTotal(iym6SCS0)<2)or
XL_WYdR.HealingEngine:BuffTotal(iym6SCS0)<1)and
((

lqTmP3mlD:BuffDown(erDFb100j.CatForm)and lqTmP3mlD:BuffDown(erDFb100j.BearForm)or not lqTmP3mlD:AffectingCombat()))then
if
XL_WYdR.CastCycleAlly(iym6SCS0,TjhsnPt5jzEd9,function(erDFb100j)return erDFb100j:BuffDown(iym6SCS0)and not
NsoTwDsHGli(erDFb100j)end)then return'Lifebloom Tanks'end end
if

NUhYw6R4Hv:IsCastable()and
(
(h_8xL7OTb:IsAvailable()and
XL_WYdR.HealingEngine:BuffTotal(NUhYw6R4Hv)<2)or
XL_WYdR.HealingEngine:BuffTotal(NUhYw6R4Hv)<1)and
((lqTmP3mlD:BuffDown(erDFb100j.CatForm)and
lqTmP3mlD:BuffDown(erDFb100j.BearForm)or
not lqTmP3mlD:AffectingCombat()))then
if
XL_WYdR.CastCycleAlly(NUhYw6R4Hv,TjhsnPt5jzEd9,function(erDFb100j)
return erDFb100j:BuffDown(NUhYw6R4Hv)and not
NsoTwDsHGli(erDFb100j)end)then return'Lifebloom Tanks'end end
if GetNumGroupMembers()<=5 then
if
iym6SCS0:IsCastable()and
h_8xL7OTb:IsAvailable()and
XL_WYdR.HealingEngine:BuffTotal(iym6SCS0)<2 and
((

lqTmP3mlD:BuffDown(erDFb100j.CatForm)and lqTmP3mlD:BuffDown(erDFb100j.BearForm)or not lqTmP3mlD:AffectingCombat()))then
if
XL_WYdR.CastCycleAlly(iym6SCS0,awqU76o,function(erDFb100j)
return erDFb100j:BuffDown(iym6SCS0)and
erDFb100j:HealthPercentage()<80 and
not NsoTwDsHGli(erDFb100j)end)then return'Lifebloom Members'end
if
XL_WYdR.CastCycleAlly(iym6SCS0,awqU76o,function(erDFb100j)
return erDFb100j:BuffDown(iym6SCS0)and erDFb100j:GUID()==
lqTmP3mlD:GUID()and
not NsoTwDsHGli(erDFb100j)end)then return'Lifebloom Player'end end end
if

erDFb100j.Efflorescence:IsReady()and
not lqTmP3mlD:IsMoving()and RlZo()<2 and SUn(dijn4Ph)>=CO1 and
not TqYJ4 and
((

lqTmP3mlD:BuffDown(erDFb100j.CatForm)and lqTmP3mlD:BuffDown(erDFb100j.BearForm)or not lqTmP3mlD:AffectingCombat()))then
if LB1ZN9L(erDFb100j.Efflorescence)then return"Efflorescence Members"end end;if

lqTmP3mlD:AffectingCombat()and SUn(DPSThreshold)==0 and QKKks_ztAre7xU.TargetIsValid()then return Ib4()end
if

erDFb100j.WildGrowth:IsCastable()and not lqTmP3mlD:IsMoving()and
lqTmP3mlD:BuffUp(Churkh)and(SUn(kFTAh)>=LBf or
lqTmP3mlD:BuffUp(erDFb100j.IncarnationTreeofLifeBuff))then
if LB1ZN9L(erDFb100j.WildGrowth)then return'Wild Growth Members'end end
if erDFb100j.Swiftmend:CooldownRemains()<=0 and not
lqTmP3mlD:IsMoving()then
if
XL_WYdR.CastCycleAlly(erDFb100j.Swiftmend,awqU76o,function(lqTmP3mlD)
return


lqTmP3mlD:HealthPercentage()<zz1QI and
(lqTmP3mlD:BuffUp(erDFb100j.Regrowth)or
lqTmP3mlD:BuffUp(erDFb100j.WildGrowth)or
lqTmP3mlD:BuffUp(erDFb100j.Rejuvenation))and not NsoTwDsHGli(lqTmP3mlD)end)then return'Swiftmend Members'end end
if erDFb100j.CenarionWard:IsReady()then
if
XL_WYdR.CastCycleAlly(erDFb100j.CenarionWard,TjhsnPt5jzEd9,function(lqTmP3mlD)
return
lqTmP3mlD:BuffDown(erDFb100j.CenarionWard)and not NsoTwDsHGli(lqTmP3mlD)end)then return'Cenarion Ward Tanks'end end
if erDFb100j.Regrowth:IsCastable()and
not lqTmP3mlD:IsMoving()then
if
XL_WYdR.CastCycleAlly(erDFb100j.Regrowth,awqU76o,function(erDFb100j)return

erDFb100j:HealthPercentage()<u and not NsoTwDsHGli(erDFb100j)end)then return'Regrowth Members - Spam'end end
if


erDFb100j.Rejuvenation:IsCastable()and not TqYJ4 and
(
not _ or lqTmP3mlD:ManaPercentage()>=
kP7O5("boss1"):HealthPercentage()+10 or
(not UnitExists("boss1")and lqTmP3mlD:ManaPercentage()>60))and
((lqTmP3mlD:BuffDown(erDFb100j.CatForm)and
lqTmP3mlD:BuffDown(erDFb100j.BearForm)or
not lqTmP3mlD:AffectingCombat()))then
if
XL_WYdR.CastCycleAlly(erDFb100j.Rejuvenation,awqU76o,function(lqTmP3mlD)
return
(

(
(lqTmP3mlD:BuffDown(erDFb100j.Rejuvenation))or
(erDFb100j.Germination:IsAvailable()and
lqTmP3mlD:BuffStack(erDFb100j.Rejuvenation)<2))and lqTmP3mlD:HealthPercentage()<K and not NsoTwDsHGli(lqTmP3mlD))end)then return'Rejuvenation Members'end end
if erDFb100j.Regrowth:IsCastable()and
(
not lqTmP3mlD:IsMoving()or lqTmP3mlD:BuffUp(erDFb100j.IncarnationTreeofLifeBuff))then
if
XL_WYdR.CastCycleAlly(erDFb100j.Regrowth,awqU76o,function(XL_WYdR)
return
(
XL_WYdR:HealthPercentage()<nSBOx7 or


(
lqTmP3mlD:BuffUp(erDFb100j.IncarnationTreeofLifeBuff)and XL_WYdR:HealthPercentage()<100)and XL_WYdR:BuffDown(erDFb100j.Regrowth)and not NsoTwDsHGli(XL_WYdR))end)then return'Regrowth Members'end end
if


lqTmP3mlD:AffectingCombat()and QKKks_ztAre7xU.TargetIsValid()and(not lqTmP3mlD:IsMoving()or not Do)and DPSThreshold<100 then return Ib4()end end;local function erDFb100j()DI()return zhzpBSxrHSjalVy()end
XL_WYdR.SetCustomAPL(_IQQXpkjA,pVRjfuZ3z86,erDFb100j,QUh2tc)end;local function ZA()
C_Timer.After(1,function()if MainAddon then Q()else ZA()end end)end;print("here")ZA()