
local function Q()local _IQQ='Aya_Hpal 1.0'local XpkjA=65;local pVRj=LibStub('StdUi')
local fuZ3z86=LibStub("AceAddon-3.0"):GetAddon(Z_AddonName)local er=fuZ3z86;local DFb100j=fuZ3z86.HealingEngine;local XL_=HeroLibEx;local pVRj=HeroCache
local WYdR=XL_.Unit;local QKKks_zt=WYdR.Player;local Are7xU=WYdR.Target;local pVRj=WYdR.Arena;local pVRj=WYdR.Party
local yxjl=WYdR.MouseOver;local ZG=XL_.Spell;local pVRj=XL_.Item;local Vu0cCAf=GetMouseFocus
local q=UnitHasIncomingResurrection;local kP7O5=er.Cast;local pVRj=er.CastAlly;local lqT=er.AoEON;local pVRj=er.CDsON
local pVRj=ZG.Paladin.Holy;local mP3mlD=ZG(287280)local PrPyxMK=ZG(385125)local tczrIB=ZG(394709)
local a=ZG(385127)local wqU76o=ZG(385126)local Q=ZG(388010)local LB1Z=ZG(388011)
local N9L=ZG(388013)local hDc_M,qW0lRiD1;local iD1IUx,JLCOx_ak;local hPQ;local wqU76o,wqU76o
local wqU76o=fuZ3z86.Config.GetClassSetting;local R1FIoQI="Aya_Hpal_Condig"local wqU76o='F48CBA'
local wqU76o={key=R1FIoQI,title='Aya - Holy',subtitle='Aya '..fuZ3z86.Version,width=470,height=750,profiles=true,config={{type='header',text='Holy',size=24,align='Center',color=wqU76o},{type='spacer'},{type='ruler'},{type='spacer'},{type='header',text='Spells',color=wqU76o},{type='spinner',text='DPS Threshold',key='DPSThreshold1',min=1,max=100,default=80},{type='spinner',text='Bestow Faith',key='BestowFaith',min=1,max=100,default=95},{type='spinner',text='Holy Shock',key='HolyShock',min=1,max=100,default=95},{type='spinner',text='Word of GLory',key='WordofGlory',min=1,max=100,default=70},{type='spinner',text='Holy Light',key='HolyLight',min=1,max=100,default=0},{type='spinner',text='Flash of Light',key='FlashofLight',min=1,max=100,default=40},{type='spinner',text='Light of Martyr',key='LightofMartyr',min=1,max=100,default=70},{type='spinner',text='Lay on Hands',key='LayOnHands',min=1,max=100,default=25},{type='spacer'},{type='header',text='Defensive',color=wqU76o},{type='spinner',text='Blessing of Sacrifice',key='BlessingOfSacrifice',min=1,max=100,default=40},{type='spinner',text='Divine Protection',key='DivineProtection',min=1,max=100,default=40},{type='spinner',text='Divine Shield',key='DivineShield',min=1,max=100,default=20},{type='spacer'},{type='header',text='Trinkets',color=wqU76o},{type='dropdown',text='Top Trinket Target',key='TopTrinketTarget',list={{text='None',key=1},{text='Enemy',key=2}},default=1},{type='dropdown',text='Top Trinket Use',key='TopTrinketOption',list={{text='Off',key=1},{text='On Cooldown',key=2},{text='With Cooldowns HP',key=3}},default=1},{type='dropdown',text='Bottom Trinket Target',key='BotTrinketTarget',list={{text='None',key=1},{text='Enemy',key=2}},default=1},{type='dropdown',text='Bottom Trinket Use',key='BotTrinketOption',list={{text='Off',key=1},{text='On Cooldown',key=2},{text='With Cooldowns HP',key=3}},default=1},{type='header',text='Class',color=wqU76o},{type='spinner',text="Cooldowns HP",key='CooldownSlider',min=1,max=100,default=75},{type='dropdown',text='Cooldown Options',key='CooldownOption',list={{text='Auto',key=1},{text='Manually',key=2}},default=1},{type='dropdown',text='Holy Shock',key='HolyShockOption',list={{text='Heal',key=1},{text='Heal + Damage',key=2}},default=2},{type='dropdown',text='Divine Toll',key='DivineTollOption',list={{text='Heal',key=1},{text='Heal + Damage',key=2}},default=2},{type='dropdown',text='Lights Hammer',key='LightsHammerOption',list={{text='Heal',key=1},{text='Heal + Damage',key=2}},default=2},{type='checkbox',text='Light of Dawn: Check for Range',key='LightofDawnRange',default=false},{type='dropdown',text=' Intercession',key='autorebirth',multiselect=true,icon=pVRj.Intercession:ID(),list={{text='Target',key='autorebirth_target'},{text='MouseOver',key='autorebirth_mouseover'}},default={}}}}fuZ3z86.SetCustomConfig(_IQQ,XpkjA,wqU76o)
local function NsoTwDs()end;local HGli,iy,m6SCS0,NUhYw6R4,Hv,Ch,urkh;local zhzpBSx,rHSjalVy,TjhsnP,t5jzEd9,JZAU2;local zPXTTg,seMLr,qX,R1FIoQI,h_8,xL7OTb;local w8T3f,K,qL,vfIyB
local quNsijN;local QUh2tc={}
local qboV,wqU76o,nSBOx7,u,Ki1,zz1QI,kFTAh,LBf,dijn4Ph,CO1,RlZo,SUn,Ib4,fjV1G2,Do=false,false,false,false,false,false,false,false,false,false,false,false,false,false,false;local wqU76o=nil;local _;local TqYJ4
XL_:RegisterForEvent(function(fuZ3z86,...)local QKKks_zt,pVRj,kP7O5,WYdR=...if
fuZ3z86 =="UNIT_SPELLCAST_SENT"then
if QKKks_zt=="player"and pVRj then currentspell=WYdR;currentspelltarget=pVRj end end
if
fuZ3z86 =="UI_ERROR_MESSAGE"then if pVRj==SPELL_FAILED_LINE_OF_SIGHT then missedunit=currentspelltarget
missedspell=currentspell end end end,"UI_ERROR_MESSAGE","UNIT_SPELLCAST_SENT")
local function DI()_=er.TargetIsValid()
TqYJ4=QKKks_zt:AffectingCombat()
DPSThreshold=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"DPSThreshold1")
HGli=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"BestowFaith")
iy=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"HolyShock")
m6SCS0=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"WordofGlory")
Hv=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"HolyLight")
NUhYw6R4=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"FlashofLight")
urkh=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"LightofMartyr")
zhzpBSx=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"BlessingOfSacrifice")
rHSjalVy=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"LayOnHands")
TjhsnP=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"DivineProtection")
t5jzEd9=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"DivineShield")
seMLr=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"CooldownSlider")
zPXTTg=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"CooldownOption")
qX=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"HolyShockOption")
h_8=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"DivineTollOption")
xL7OTb=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"LightsHammerOption")
w8T3f=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"TopTrinketTarget")
K=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"TopTrinketOption")
qL=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"BotTrinketTarget")
vfIyB=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"BotTrinketOption")
R1FIoQI=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"ConsecrationWhileStanding")
Ch=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"LightofDawnRange")
JZAU2=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"ManaManagement")
quNsijN=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"JCSSniping")
qboV,Do,nSBOx7,u,Ki1,zz1QI,kFTAh,LBf,dijn4Ph,CO1,RlZo,SUn,Ib4,fjV1G2,Do=false,false,false,false,false,false,false,false,false,false,false,false,false,false,false;wqU76o=nil
if
GetNumGroupMembers()>1 and GetNumGroupMembers()<=5 then wqU76o="party"elseif GetNumGroupMembers()>5 then wqU76o="raid"end
if wqU76o then
for fuZ3z86=1,GetNumGroupMembers()do
local QKKks_zt,pVRj=UnitClassBase(wqU76o..fuZ3z86)
if not WYdR(wqU76o..fuZ3z86):IsATank()then
if
pVRj==1 then
kFTAh=WYdR(wqU76o..fuZ3z86):GUID()elseif pVRj==2 then
LBf=WYdR(wqU76o..fuZ3z86):GUID()elseif pVRj==3 then
qboV=WYdR(wqU76o..fuZ3z86):GUID()elseif pVRj==4 then
zz1QI=WYdR(wqU76o..fuZ3z86):GUID()elseif pVRj==5 then u=WYdR(wqU76o..fuZ3z86):GUID()elseif
pVRj==6 then
dijn4Ph=WYdR(wqU76o..fuZ3z86):GUID()elseif pVRj==7 then
nSBOx7=WYdR(wqU76o..fuZ3z86):GUID()elseif pVRj==8 or pVRj==9 or pVRj==11 then
Ki1=WYdR(wqU76o..fuZ3z86):GUID()
if pVRj==8 then
RlZo=WYdR(wqU76o..fuZ3z86):GUID()elseif pVRj==9 then
CO1=WYdR(wqU76o..fuZ3z86):GUID()elseif pVRj==11 then
SUn=WYdR(wqU76o..fuZ3z86):GUID()end elseif pVRj==10 then
Ib4=WYdR(wqU76o..fuZ3z86):GUID()elseif pVRj==12 then
fjV1G2=WYdR(wqU76o..fuZ3z86):GUID()elseif pVRj==13 then
Do=WYdR(wqU76o..fuZ3z86):GUID()end end end end end
local function wqU76o(fuZ3z86,QKKks_zt)local kP7O5,pVRj
if not QKKks_zt then if GetUnitName("player",true)==fuZ3z86 then return
UnitGUID("player")end
if GetUnitName("target",true)==
fuZ3z86 then return WYdR("target"):GUID()end
if GetUnitName("focus",true)==fuZ3z86 then return UnitGUID("focus")end;pVRj=GetNumGroupMembers()
if pVRj>0 and pVRj<=5 then for pVRj=1,pVRj do
if
GetUnitName("party"..pVRj,true)==fuZ3z86 then return UnitGUID("party"..pVRj)end end end;if pVRj>5 then
for pVRj=1,pVRj do if GetUnitName("raid"..pVRj,true)==fuZ3z86 then return
UnitGUID("raid"..pVRj)end end end else if
GetUnitName("player",true)==fuZ3z86 then return"player"end;if
GetUnitName("target",true)==fuZ3z86 then return"target"end;if
GetUnitName("focus",true)==fuZ3z86 then return"focus"end
pVRj=GetNumGroupMembers()if pVRj>0 and pVRj<=5 then
for pVRj=1,pVRj do if
GetUnitName("party"..pVRj,true)==fuZ3z86 then return"party"..pVRj end end end
if pVRj>5 then for pVRj=1,pVRj do
if GetUnitName(
"raid"..pVRj,true)==fuZ3z86 then return"raid"..pVRj end end end end;return fuZ3z86 end
local function vfIyB()if missedunit then
table.insert(QUh2tc,(wqU76o(missedunit).." "..GetTime()))missedunit=nil end
if
table.getn(QUh2tc)>0 then
for fuZ3z86=1,table.getn(QUh2tc)do
if QUh2tc[fuZ3z86]~=nil then
for pVRj in
string.gmatch(QUh2tc[fuZ3z86],"([^%s]+)")do pVRj=tonumber(pVRj)if type(pVRj)=="number"then if pVRj<=GetTime()-1.5 then
table.remove(QUh2tc,fuZ3z86)end end end end end end end
local function R1FIoQI(pVRj)
if table.getn(QUh2tc)>0 and pVRj~=nil then
for fuZ3z86=1,table.getn(QUh2tc)do for fuZ3z86 in
string.gmatch(QUh2tc[fuZ3z86],"([^%s]+)")do
if fuZ3z86 and fuZ3z86 ==pVRj:GUID()then return true end end end else return false end end
local function wqU76o(pVRj)
if(WYdR(pVRj):BuffUp(ZG(365153)))then
for fuZ3z86=1,40 do if
select(10,UnitBuff(pVRj,fuZ3z86))==365153 then
return select(16,UnitBuff(pVRj,fuZ3z86))end end else return 0 end end
local function QUh2tc()
for fuZ3z86=1,4 do local kP7O5,fuZ3z86,QKKks_zt,WYdR=GetTotemInfo(fuZ3z86)
if fuZ3z86 ==
pVRj.Consecration:Name()then return
(floor(QKKks_zt+WYdR-GetTime()+.5))or 0 end end;return 0 end
local function QUh2tc(pVRj)
if pVRj==nil or type(pVRj)=="string"then return nil end;pVRj=pVRj/100;local fuZ3z86=0
if GetNumGroupMembers()>0 and
GetNumGroupMembers()<=5 then
for QKKks_zt=1,GetNumGroupMembers()do
if
UnitExists("party"..QKKks_zt)and
not WYdR("party"..QKKks_zt):IsDeadOrGhost()and
WYdR("party"..QKKks_zt):DebuffDown(ZG(228578))then
local kP7O5=UnitHealth("party"..
QKKks_zt)+
(UnitGetIncomingHeals("party"..QKKks_zt)or 0)-wqU76o("party"..QKKks_zt)local WYdR=UnitHealthMax("party"..QKKks_zt)if

kP7O5/WYdR<=pVRj or(UnitHealth("party"..QKKks_zt)/WYdR==1 and
pVRj==1)then fuZ3z86=fuZ3z86+1 end end end
if
(
((UnitHealth("player")+
(UnitGetIncomingHeals("player")or 0))/
UnitHealthMax("player"))<pVRj or
(UnitHealth("player")/
UnitHealthMax("player")==1 and pVRj==1))then fuZ3z86=fuZ3z86+1 end end
if GetNumGroupMembers()>5 then
for QKKks_zt=1,GetNumGroupMembers()do
if



UnitExists("raid"..QKKks_zt)and not UnitIsDead("raid"..QKKks_zt)and
WYdR("raid"..QKKks_zt):DebuffDown(ZG(362075))and
WYdR("raid"..QKKks_zt):DebuffDown(ZG(362397))and
WYdR("raid"..QKKks_zt):DebuffDown(ZG(191587))then local WYdR=0
local WYdR=
UnitHealth("raid"..QKKks_zt)+ (
UnitGetIncomingHeals("raid"..QKKks_zt)or 0)-wqU76o("raid"..QKKks_zt)local QKKks_zt=UnitHealthMax("raid"..QKKks_zt)if
WYdR/QKKks_zt<=pVRj then fuZ3z86=fuZ3z86+1 end end end end
if GetNumGroupMembers()==0 then
local QKKks_zt=UnitHealth("player")+ (
UnitGetIncomingHeals("player")or 0)-
wqU76o("player")local WYdR=UnitHealthMax("player")if QKKks_zt/WYdR<pVRj then
fuZ3z86=fuZ3z86+1 end end;return fuZ3z86 end
local function wqU76o()
for QKKks_zt,fuZ3z86 in pairs(QKKks_zt:GetEnemiesInRange(5))do if

fuZ3z86:DebuffUp(pVRj.JudgmentDebuff)and fuZ3z86:IsSpellInRange(pVRj.CrusaderStrike)then return true end end;return false end;local function ZG(pVRj)return pVRj:TimeToDie()end
local function wqU76o(pVRj)return

pVRj:HealthPercentage()<20 and not Are7xU:HasPvEImmunity()end
local function w8T3f(pVRj)return not pVRj:HasPvEImmunity()end;local function w8T3f(pVRj)return R1FIoQI(pVRj)end;local function w8T3f(fuZ3z86)return
fuZ3z86:BuffRemains(pVRj.JudgmentDebuff)end
local function w8T3f(fuZ3z86)
return



fuZ3z86:DebuffUp(pVRj.JudgmentDebuff)and not fuZ3z86:HasPvEImmunity()and pVRj.CrusaderStrike:Charges()==2 and
(
pVRj.CrusadersMight:IsAvailable()and
pVRj.HolyShock:CooldownRemains()>1+QKKks_zt:GCD()or not pVRj.CrusadersMight:IsAvailable())end
local function w8T3f(fuZ3z86)
return
fuZ3z86:DebuffUp(pVRj.JudgmentDebuff)and
not fuZ3z86:HasPvEImmunity()and
pVRj.CrusaderStrike:Charges()==1 and
(
pVRj.CrusadersMight:IsAvailable()and
pVRj.HolyShock:CooldownRemains()>1+QKKks_zt:GCD()or not
pVRj.CrusadersMight:IsAvailable())end
local function w8T3f(fuZ3z86)
return
fuZ3z86:DebuffUp(pVRj.JudgmentDebuff)and
not fuZ3z86:HasPvEImmunity()and
(
pVRj.CrusadersMight:IsAvailable()and
pVRj.HolyShock:CooldownRemains()>1+QKKks_zt:GCD()or not
pVRj.CrusadersMight:IsAvailable()and
(JZAU2 and fuZ3z86:HealthPercentage()<=
QKKks_zt:ManaPercentage()or not JZAU2))end
local function JZAU2(pVRj)return
(pVRj:IsInRange(40)and R1FIoQI(pVRj)and
(
pVRj:AffectingCombat()or
pVRj:IsDummy()or pVRj:NPCID()==153285 or pVRj:NPCID()==168326))end
local function JZAU2()
if TqYJ4 then
local fuZ3z86=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig','autorebirth')
if
fuZ3z86['autorebirth_mouseover']and pVRj.Intercession:IsReady(yxjl)then
local fuZ3z86=Vu0cCAf()and Vu0cCAf():GetName()or"None"
if fuZ3z86 ~="WorldFrame"then
if
yxjl:IsDeadOrGhost()and QKKks_zt:IsFriend(yxjl)and not q(yxjl.UnitID)and
yxjl:IsInPartyOrRaid()then if kP7O5(pVRj.Intercession)then return
"Intercession MouseOver"end end end end
if
fuZ3z86['autorebirth_target']and pVRj.Intercession:IsReady()then
if
Are7xU:IsDeadOrGhost()and QKKks_zt:IsFriend(Are7xU)and not q(Are7xU.UnitID)and
Are7xU:IsInPartyOrRaid()then if
kP7O5(pVRj.Intercession)then return"Intercession Target"end end end end end
local function q()
if
(
(not PrPyxMK:IsAvailable()and QKKks_zt:HolyPower()>=3)or
(PrPyxMK:IsAvailable()and
((QKKks_zt:HolyPower()==5)or
(
QKKks_zt:BuffUp(a)and QKKks_zt:HolyPower()==3))))then if
pVRj.ShieldOfTheRighteous:IsReady()and qW0lRiD1 >=1 then
if kP7O5(pVRj.ShieldOfTheRighteous)then return"ShieldOfTheRighteous - DPS"end end end
if pVRj.HammerOfWrath:IsCastable()then if
er.CastTargetIf(pVRj.HammerOfWrath,hPQ,"min",ZG,wqU76o)then return"HammerOfWrath - DPS"end end
if
pVRj.DivineToll:IsReady(QKKks_zt)and h_8 ==2 and
Are7xU:IsInMeleeRange(8)and(UnitExists("boss1")or
XL_.FightRemains(hDc_M)>30)then if kP7O5(pVRj.DivineToll)then return"Divine Toll 1"end end
if
pVRj.LightSHammer:IsReady(QKKks_zt)and xL7OTb==2 and Are7xU:IsInMeleeRange(8)and not
QKKks_zt:IsMoving()then if
kP7O5(pVRj.LightSHammer)then return"Lights Hammer - DPS"end end
if
pVRj.Consecration:IsReady()and Are7xU:IsInMeleeRange(5)and not QKKks_zt:IsMoving()then if
kP7O5(pVRj.Consecration)then return"Consecration - DPS"end end;if pVRj.Judgment:IsReady()then
if kP7O5(pVRj.Judgment)then return"Judgement - DPS"end end;if
pVRj.HolyShock:IsReady()and qX==2 then
fuZ3z86.SetTopColor(6,"Holy Shock Enemy")return"HolyShock - DPS"end;if
pVRj.CrusaderStrike:IsReady()then
if kP7O5(pVRj.CrusaderStrike)then return"CrusaderStrike - DPS"end end end
local function h_8()local yxjl,ZG,wqU76o,ZG,ZG,ZG=DFb100j:Update()DI()
if lqT()then
hDc_M=QKKks_zt:GetEnemiesInRangeFilter(5)iD1IUx=WYdR:GetEnemiesInSplashRange(5)qW0lRiD1=#hDc_M
JLCOx_ak=WYdR:GetEnemiesInSplashRangeCount(5)hPQ=QKKks_zt:GetEnemiesInRange(30)else qW0lRiD1=1;JLCOx_ak=1
hPQ={}end;local ZG=not QKKks_zt:IsMoving()
local er=(
QKKks_zt:HealthPercentage()>=60 or QKKks_zt:BuffUp(pVRj.DivineShield))local WYdR=Are7xU:IsInMeleeRange(5)
local XL_=#wqU76o>1 and
(zPXTTg==1 and
DFb100j:AverageHP()<=seMLr or zPXTTg==2)and
QKKks_zt:BuffDown(pVRj.AvengingWrath)and
QKKks_zt:BuffDown(pVRj.HolyAvenger)local WYdR=lqT()and#wqU76o>=1
local WYdR=(
pVRj.HolyShock:IsReady()or
pVRj.BestowFaith:IsReady()or pVRj.HammerOfWrath:IsReady()or pVRj.CrusaderStrike:IsReady())local WYdR=QKKks_zt:GUID()local WYdR=JZAU2()if WYdR then return WYdR end
if

Are7xU:IsDeadOrGhost()and Are7xU:IsInParty()and Are7xU:IsAPlayer()and not Are7xU:IsEnemy()then
if
pVRj.Absolution:IsReady(QKKks_zt)then if kP7O5(pVRj.Absolution)then return'Resurrection'end end end
if pVRj.DevotionAura:IsReady()and
QKKks_zt:BuffDown(pVRj.DevotionAura)then if kP7O5(pVRj.DevotionAura)then
return"DevotionAura"end end
if pVRj.DivineProtection:IsReady()and
(QKKks_zt:HealthPercentage()<=
TjhsnP or QKKks_zt:BuffUp(pVRj.BlessingOfSacrifice))then if
kP7O5(pVRj.DivineProtection)then return"DivineProtection Player"end end
if pVRj.DivineShield:IsReady()and
QKKks_zt:BuffDown(pVRj.ForberanceDebuff)and
QKKks_zt:HealthPercentage()<=t5jzEd9 then if
kP7O5(pVRj.DivineShield)then return"DivineShield Player"end end
if pVRj.LayOnHands:IsCastable()and TqYJ4 then
if
fuZ3z86.CastCycleAlly(pVRj.LayOnHands,wqU76o,function(fuZ3z86)return


fuZ3z86:DebuffDown(pVRj.ForberanceDebuff)and fuZ3z86:HealthPercentage()<=rHSjalVy and not R1FIoQI(fuZ3z86)end)then return'Lay On Hands Lower HP'end end
if pVRj.BlessingOfSacrifice:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.BlessingOfSacrifice,wqU76o,function(pVRj)
return


not QKKks_zt:IsUnit(pVRj)and er and TqYJ4 and pVRj:HealthPercentage()<=zhzpBSx and not R1FIoQI(pVRj)end)then return'Blessing of Sacrifice Lower HP'end end
local WYdR=fuZ3z86.HealingEngine:BuffTotal(pVRj.BeaconOfLightBuff)
if WYdR==0 and pVRj.BeaconOfLight:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.BeaconOfLight,yxjl,function(fuZ3z86)return


fuZ3z86:BuffDown(pVRj.BeaconOfLightBuff)and fuZ3z86:BuffDown(pVRj.BeaconOfFaithBuff)and not R1FIoQI(fuZ3z86)end)then return'Beacon Tank Members'end end
local WYdR=fuZ3z86.HealingEngine:BuffTotal(pVRj.BeaconOfFaithBuff)
if pVRj.BeaconOfFaith:IsCastable()and WYdR==0 then
if
GetNumGroupMembers()<=5 then
if
fuZ3z86.CastCycleAlly(pVRj.BeaconOfFaith,wqU76o,function(fuZ3z86)
return


fuZ3z86:BuffDown(pVRj.BeaconOfLightBuff)and fuZ3z86:BuffDown(pVRj.BeaconOfFaithBuff)and
((GetNumGroupMembers()<=5 and
(




(qboV and qboV==fuZ3z86:GUID())or(Do and Do==fuZ3z86:GUID())or(nSBOx7 and nSBOx7 ==fuZ3z86:GUID())or(u and u==fuZ3z86:GUID())or(Ki1 and Ki1 ==fuZ3z86:GUID())or
(not qboV and not Do and not nSBOx7 and not u and not Ki1))))end)then return'Beacon Faith Party Members'end elseif GetNumGroupMembers()>5 then
if
fuZ3z86.CastCycleAlly(pVRj.BeaconOfFaith,yxjl,function(fuZ3z86)return

fuZ3z86:BuffDown(pVRj.BeaconOfLightBuff)and fuZ3z86:BuffDown(pVRj.BeaconOfFaithBuff)end)then return'Beacon Faith Tank Members'end end end
if XL_ then
if pVRj.AuraMastery:IsReady(QKKks_zt)then if kP7O5(pVRj.AuraMastery)then
return'AuraMastery'end end
if pVRj.AvengingWrath:IsReady(QKKks_zt)then if
kP7O5(pVRj.AvengingWrath,true)then return'AvengingWrath'end end
if pVRj.HolyAvenger:IsReady(QKKks_zt)then if kP7O5(pVRj.HolyAvenger,true)then return
'HolyAvenger'end end
if pVRj.TyrSDeliverance:IsReady(QKKks_zt)then if
kP7O5(pVRj.TyrSDeliverance)then return'TyrSDeliverance'end end
if

pVRj.LightSHammer:IsReady(QKKks_zt)and Are7xU:IsInMeleeRange(8)and not QKKks_zt:IsMoving()and _ then if kP7O5(pVRj.LightSHammer)then return
"Lights Hammer"end end end
if
pVRj.DivineToll:IsReady(QKKks_zt)and Are7xU:IsInMeleeRange(8)and(QUh2tc(60)>=3)then if
kP7O5(pVRj.DivineToll)then return"Divine Toll 1"end end
if pVRj.Seraphim:IsReady(QKKks_zt)then if kP7O5(pVRj.Seraphim)then
return"Seraphim Player"end end
if

(
(not PrPyxMK:IsAvailable()and QKKks_zt:HolyPower()>=3)or
(PrPyxMK:IsAvailable()and
((QKKks_zt:HolyPower()==5)or
(
QKKks_zt:BuffUp(a)and QKKks_zt:HolyPower()==3))))and QUh2tc(DPSThreshold)>0 then
if
pVRj.WordOfGlory:IsCastable()and(QUh2tc(m6SCS0)<3)and QKKks_zt:BuffUp(tczrIB)then
if
fuZ3z86.CastCycleAlly(pVRj.WordOfGlory,wqU76o,function(pVRj)
return
(
pVRj:HealthPercentage()<=m6SCS0 or
(pVRj:HealthPercentage()<90 and not TqYJ4))and not R1FIoQI(pVRj)end)then return'WordofGlory Members'end end
if pVRj.LightOfDawn:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.LightOfDawn,wqU76o,function(pVRj)return
((
(Ch and not
QKKks_zt:IsUnit(pVRj)and pVRj:IsInRange(15))or not Ch)and not
R1FIoQI(pVRj))end)then return'LightofDawn Members'end end end
if TqYJ4 then
if pVRj.BlessingOfSummer:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.BlessingOfSummer,wqU76o,function(pVRj)
return
((
zz1QI and zz1QI==pVRj:GUID())or
(not zz1QI and
(


(RlZo and RlZo==
pVRj:GUID())or
(kFTAh and kFTAh==pVRj:GUID())or(LBf and LBf==pVRj:GUID()and pVRj~=
QKKks_zt:GUID())or(SUn and SUn==pVRj:GUID())or(fjV1G2 and fjV1G2 ==pVRj:GUID())or(Do and Do==pVRj:GUID()))))end)then return'Blessing Of Summer non-pet class'end end
if Q:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.BlessingOfSummer,wqU76o,function(pVRj)return
(
(
(Ib4 and Ib4 ==pVRj:GUID())or(Do and Do==pVRj:GUID())or(CO1 and CO1 ==
pVRj:GUID()))or(not Ib4 and not Do and not CO1))end)then return'Blessing of Autumn (Prio Monk/Evoker/Warlock)'end end
if LB1Z:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.BlessingOfSummer,wqU76o,function(pVRj)
return
(
(




(zz1QI and zz1QI==pVRj:GUID())or(Ib4 and Ib4 ==pVRj:GUID())or(kFTAh and kFTAh==pVRj:GUID())or(dijn4Ph and dijn4Ph==pVRj:GUID())or(fjV1G2 and fjV1G2 ==pVRj:GUID())or
(LBf and LBf==pVRj:GUID()and pVRj~=QKKks_zt:GUID()))or
(

not zz1QI and not Ib4 and not kFTAh and not dijn4Ph and not fjV1G2 and not LBf and pVRj==QKKks_zt:GUID()))end)then return'Blessing of Winter (Prio Melee)'end end
if N9L:IsCastable()then if kP7O5(pVRj.BlessingOfSummer)then
return'Blessing of Spring (Prio Player)'end end end
if pVRj.HolyShock:IsCastable()and
(QUh2tc(DPSThreshold)==0 or not TqYJ4)and
pVRj.GlimmerOfLight:IsAvailable()then
if
fuZ3z86.CastCycleAlly(pVRj.HolyShock,wqU76o,function(pVRj)return
pVRj:BuffDown(mP3mlD)and not R1FIoQI(pVRj)end)then return'HolyShock Spread Glimmer'end end;if TqYJ4 and QUh2tc(DPSThreshold)==0 and _ then
return q()end
if pVRj.HolyShock:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.HolyShock,wqU76o,function(pVRj)
return
pVRj:HealthPercentage()<=iy and not R1FIoQI(pVRj)end)then return'HolyShock Members'end end
if pVRj.BeaconOfVirtue:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.BeaconOfVirtue,wqU76o,function(fuZ3z86)return
(
(

pVRj.LightOfDawn:IsReady(fuZ3z86)or pVRj.WordOfGlory:IsReady(fuZ3z86)or pVRj.HolyShock:IsReady(fuZ3z86))and not R1FIoQI(fuZ3z86))end)then return'Beacon Of Virtue Members'end end
if pVRj.BestowFaith:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.BestowFaith,wqU76o,function(pVRj)
return
pVRj:HealthPercentage()<=HGli and not R1FIoQI(pVRj)end)then return'BestowFaith Members'end end
if pVRj.FlashOfLight:IsCastable()and ZG then
if
fuZ3z86.CastCycleAlly(pVRj.FlashOfLight,wqU76o,function(pVRj)
return
(
pVRj:HealthPercentage()<=NUhYw6R4 or
(pVRj:HealthPercentage()<60 and not TqYJ4))and not R1FIoQI(pVRj)end)then return'FlashofLight Members'end end
if pVRj.HolyLight:IsCastable()and ZG then
if
fuZ3z86.CastCycleAlly(pVRj.HolyLight,wqU76o,function(pVRj)
return
((
pVRj:HealthPercentage()<=Hv)or
(pVRj:HealthPercentage()<90 and not TqYJ4))and not R1FIoQI(pVRj)end)then return'HolyLight Members'end end
if pVRj.LightOfTheMartyr:IsCastable()and er then
if
fuZ3z86.CastCycleAlly(pVRj.LightOfTheMartyr,wqU76o,function(pVRj)
return

pVRj:HealthPercentage()<=urkh and not QKKks_zt:IsUnit(pVRj)and not R1FIoQI(pVRj)end)then return'LightOfTheMartyr Members'end end;if
pVRj.CrusaderStrike:IsReady(Are7xU)and QKKks_zt:CanAttack(Are7xU)then
if kP7O5(pVRj.CrusaderStrike)then return"CrusaderStrike - Holy Power"end end end;local function pVRj()vfIyB()return h_8()end
fuZ3z86.SetCustomAPL(_IQQ,XpkjA,pVRj,NsoTwDs)end;local function ZA()
C_Timer.After(1,function()if MainAddon then Q()else ZA()end end)end;ZA()