
local function Q()local _IQQ='Aya_Hpal 1.0'local XpkjA=65;local pVRj=LibStub('StdUi')
local fuZ3z86=LibStub("AceAddon-3.0"):GetAddon(Z_AddonName)local er=fuZ3z86;local DFb100j=fuZ3z86.HealingEngine;local XL_=HeroLibEx;local pVRj=HeroCache
local WYdR=XL_.Unit;local QKKks_zt=WYdR.Player;local Are7xU=WYdR.Target;local pVRj=WYdR.Arena;local pVRj=WYdR.Party
local pVRj=WYdR.MouseOver;local yxjl=XL_.Spell;local pVRj=XL_.Item;local ZG=er.Cast;local pVRj=er.CastAlly
local Vu0cCAf=er.AoEON;local pVRj=er.CDsON;local pVRj=yxjl.Paladin.Holy;local qkP7O5=yxjl(287280)
local lqT=yxjl(385125)local mP3mlD=yxjl(394709)local PrPyxMK=yxjl(385127)local tczrIB=yxjl(385126)
local a=yxjl(388010)local wqU76o=yxjl(388011)local LB1Z=yxjl(388013)local N9L,hDc_M;local qW0lRiD1,iD1IUx;local tczrIB,tczrIB
local tczrIB=fuZ3z86.Config.GetClassSetting;local JLCOx_ak="Aya_Hpal_Condig"local tczrIB='F48CBA'
local tczrIB={key=JLCOx_ak,title='Aya - Holy',subtitle='Aya '..fuZ3z86.Version,width=470,height=650,profiles=true,config={{type='header',text='Holy',size=24,align='Center',color=tczrIB},{type='spacer'},{type='ruler'},{type='spacer'},{type='header',text='Spells',color=tczrIB},{type='spinner',text='DPS Threshold',key='DPSThreshold1',min=1,max=100,default=80},{type='spinner',text='Bestow Faith',key='BestowFaith',min=1,max=100,default=95},{type='spinner',text='Holy Shock',key='HolyShock',min=1,max=100,default=95},{type='spinner',text='Word of GLory',key='WordofGlory',min=1,max=100,default=70},{type='spinner',text='Holy Light',key='HolyLight',min=1,max=100,default=0},{type='spinner',text='Flash of Light',key='FlashofLight',min=1,max=100,default=40},{type='spinner',text='Light of Martyr',key='LightofMartyr',min=1,max=100,default=70},{type='spinner',text='Lay on Hands',key='LayOnHands',min=1,max=100,default=25},{type='spacer'},{type='header',text='Defensive',color=tczrIB},{type='spinner',text='Blessing of Sacrifice',key='BlessingOfSacrifice',min=1,max=100,default=40},{type='spinner',text='Divine Protection',key='DivineProtection',min=1,max=100,default=40},{type='spinner',text='Divine Shield',key='DivineShield',min=1,max=100,default=20},{type='spacer'},{type='header',text='Trinkets',color=tczrIB},{type='dropdown',text='Top Trinket Target',key='TopTrinketTarget',list={{text='None',key=1},{text='Enemy',key=2}},default=1},{type='dropdown',text='Top Trinket Use',key='TopTrinketOption',list={{text='Off',key=1},{text='On Cooldown',key=2},{text='With Cooldowns HP',key=3}},default=1},{type='dropdown',text='Bottom Trinket Target',key='BotTrinketTarget',list={{text='None',key=1},{text='Enemy',key=2}},default=1},{type='dropdown',text='Bottom Trinket Use',key='BotTrinketOption',list={{text='Off',key=1},{text='On Cooldown',key=2},{text='With Cooldowns HP',key=3}},default=1},{type='header',text='Class',color=tczrIB},{type='spinner',text="Cooldowns HP",key='CooldownSlider',min=1,max=100,default=75},{type='dropdown',text='Cooldown Options',key='CooldownOption',list={{text='Auto',key=1},{text='Manually',key=2}},default=1},{type='dropdown',text='Holy Shock',key='HolyShockOption',list={{text='Heal',key=1},{text='Heal + Damage',key=2}},default=2},{type='dropdown',text='Divine Toll',key='DivineTollOption',list={{text='Heal',key=1},{text='Heal + Damage',key=2}},default=2},{type='dropdown',text='Lights Hammer',key='LightsHammerOption',list={{text='Heal',key=1},{text='Heal + Damage',key=2}},default=2},{type='checkbox',text='Light of Dawn: Check for Range',key='LightofDawnRange',default=false}}}fuZ3z86.SetCustomConfig(_IQQ,XpkjA,tczrIB)local function Q()end
local hPQ,R1FIoQI,NsoTwDs,HGli,iy,m6SCS0,NUhYw6R4;local Hv,Ch,urkh,zhzpBSx,rHSjalVy;local TjhsnP,t5jzEd9,JZAU2,zPXTTg,seMLr,qX;local h_8,JLCOx_ak,xL7OTb,w8T3f;local K;local qL={}
local vfIyB,tczrIB,quNsijN,QUh2tc,qboV,nSBOx7,u,Ki1,zz1QI,kFTAh,LBf,dijn4Ph,CO1,RlZo,SUn=false,false,false,false,false,false,false,false,false,false,false,false,false,false,false;local tczrIB=nil
XL_:RegisterForEvent(function(fuZ3z86,...)local QKKks_zt,pVRj,tczrIB,WYdR=...if fuZ3z86 =="UNIT_SPELLCAST_SENT"then
if QKKks_zt==
"player"and pVRj then currentspell=WYdR;currentspelltarget=pVRj end end
if
fuZ3z86 =="UI_ERROR_MESSAGE"then if pVRj==SPELL_FAILED_LINE_OF_SIGHT then missedunit=currentspelltarget
missedspell=currentspell end end end,"UI_ERROR_MESSAGE","UNIT_SPELLCAST_SENT")
local function Ib4()
DPSThreshold=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"DPSThreshold1")
hPQ=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"BestowFaith")
R1FIoQI=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"HolyShock")
NsoTwDs=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"WordofGlory")
iy=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"HolyLight")
HGli=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"FlashofLight")
NUhYw6R4=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"LightofMartyr")
Hv=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"BlessingOfSacrifice")
Ch=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"LayOnHands")
urkh=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"DivineProtection")
zhzpBSx=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"DivineShield")
t5jzEd9=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"CooldownSlider")
TjhsnP=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"CooldownOption")
JZAU2=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"HolyShockOption")
seMLr=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"DivineTollOption")
qX=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"LightsHammerOption")
h_8=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"TopTrinketTarget")
JLCOx_ak=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"TopTrinketOption")
xL7OTb=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"BotTrinketTarget")
w8T3f=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"BotTrinketOption")
zPXTTg=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"ConsecrationWhileStanding")
m6SCS0=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"LightofDawnRange")
rHSjalVy=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"ManaManagement")
K=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"JCSSniping")
vfIyB,SUn,quNsijN,QUh2tc,qboV,nSBOx7,u,Ki1,zz1QI,kFTAh,LBf,dijn4Ph,CO1,RlZo,SUn=false,false,false,false,false,false,false,false,false,false,false,false,false,false,false;tczrIB=nil
if
GetNumGroupMembers()>1 and GetNumGroupMembers()<=5 then tczrIB="party"elseif GetNumGroupMembers()>5 then tczrIB="raid"end
if tczrIB then
for pVRj=1,GetNumGroupMembers()do
local QKKks_zt,fuZ3z86=UnitClassBase(tczrIB..pVRj)
if not WYdR(tczrIB..pVRj):IsATank()then
if fuZ3z86 ==1 then u=WYdR(
tczrIB..pVRj):GUID()elseif fuZ3z86 ==2 then
Ki1=WYdR(tczrIB..pVRj):GUID()elseif fuZ3z86 ==3 then vfIyB=WYdR(tczrIB..pVRj):GUID()elseif
fuZ3z86 ==4 then nSBOx7=WYdR(tczrIB..pVRj):GUID()elseif fuZ3z86 ==
5 then QUh2tc=WYdR(tczrIB..pVRj):GUID()elseif
fuZ3z86 ==6 then zz1QI=WYdR(tczrIB..pVRj):GUID()elseif fuZ3z86 ==7 then quNsijN=WYdR(
tczrIB..pVRj):GUID()elseif fuZ3z86 ==8 or
fuZ3z86 ==9 or fuZ3z86 ==11 then
qboV=WYdR(tczrIB..pVRj):GUID()
if fuZ3z86 ==8 then LBf=WYdR(tczrIB..pVRj):GUID()elseif fuZ3z86 ==
9 then kFTAh=WYdR(tczrIB..pVRj):GUID()elseif
fuZ3z86 ==11 then dijn4Ph=WYdR(tczrIB..pVRj):GUID()end elseif fuZ3z86 ==10 then CO1=WYdR(tczrIB..pVRj):GUID()elseif
fuZ3z86 ==12 then RlZo=WYdR(tczrIB..pVRj):GUID()elseif
fuZ3z86 ==13 then SUn=WYdR(tczrIB..pVRj):GUID()end end end end end
local function tczrIB(fuZ3z86,QKKks_zt)local tczrIB,pVRj
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
local function h_8()if missedunit then
table.insert(qL,(tczrIB(missedunit).." "..GetTime()))missedunit=nil end
if
table.getn(qL)>0 then
for fuZ3z86=1,table.getn(qL)do
if qL[fuZ3z86]~=nil then
for pVRj in
string.gmatch(qL[fuZ3z86],"([^%s]+)")do pVRj=tonumber(pVRj)if type(pVRj)=="number"then if pVRj<=GetTime()-1.5 then
table.remove(qL,fuZ3z86)end end end end end end end
local function JLCOx_ak(pVRj)
if table.getn(qL)>0 and pVRj~=nil then
for fuZ3z86=1,table.getn(qL)do for fuZ3z86 in
string.gmatch(qL[fuZ3z86],"([^%s]+)")do
if fuZ3z86 and fuZ3z86 ==pVRj:GUID()then return true end end end else return false end end
local function tczrIB(pVRj)
if(WYdR(pVRj):BuffUp(yxjl(365153)))then
for fuZ3z86=1,40 do if
select(10,UnitBuff(pVRj,fuZ3z86))==365153 then
return select(16,UnitBuff(pVRj,fuZ3z86))end end else return 0 end end
local function qL()
for fuZ3z86=1,4 do local tczrIB,QKKks_zt,WYdR,fuZ3z86=GetTotemInfo(fuZ3z86)
if QKKks_zt==
pVRj.Consecration:Name()then return
(floor(WYdR+fuZ3z86-GetTime()+.5))or 0 end end;return 0 end
local function qL(pVRj)
if pVRj==nil or type(pVRj)=="string"then return nil end;pVRj=pVRj/100;local fuZ3z86=0
if GetNumGroupMembers()>0 and
GetNumGroupMembers()<=5 then
for QKKks_zt=1,GetNumGroupMembers()do
if
UnitExists("party"..QKKks_zt)and
not WYdR("party"..QKKks_zt):IsDeadOrGhost()and
WYdR("party"..QKKks_zt):DebuffDown(yxjl(228578))then
local tczrIB=UnitHealth("party"..
QKKks_zt)+
(UnitGetIncomingHeals("party"..QKKks_zt)or 0)-tczrIB("party"..QKKks_zt)local WYdR=UnitHealthMax("party"..QKKks_zt)if

tczrIB/WYdR<=pVRj or(UnitHealth("party"..QKKks_zt)/WYdR==1 and
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
WYdR("raid"..QKKks_zt):DebuffDown(yxjl(362075))and
WYdR("raid"..QKKks_zt):DebuffDown(yxjl(362397))and
WYdR("raid"..QKKks_zt):DebuffDown(yxjl(191587))then local WYdR=0
local WYdR=
UnitHealth("raid"..QKKks_zt)+ (
UnitGetIncomingHeals("raid"..QKKks_zt)or 0)-tczrIB("raid"..QKKks_zt)local QKKks_zt=UnitHealthMax("raid"..QKKks_zt)if
WYdR/QKKks_zt<=pVRj then fuZ3z86=fuZ3z86+1 end end end end
if GetNumGroupMembers()==0 then
local WYdR=UnitHealth("player")+ (
UnitGetIncomingHeals("player")or 0)-
tczrIB("player")local QKKks_zt=UnitHealthMax("player")if WYdR/QKKks_zt<pVRj then
fuZ3z86=fuZ3z86+1 end end;return fuZ3z86 end
local function tczrIB()
for QKKks_zt,fuZ3z86 in pairs(QKKks_zt:GetEnemiesInRange(5))do if

fuZ3z86:DebuffUp(pVRj.JudgmentDebuff)and fuZ3z86:IsSpellInRange(pVRj.CrusaderStrike)then return true end end;return false end;local function tczrIB(fuZ3z86)
return fuZ3z86:DebuffRemains(pVRj.JudgmentOfLightDebuff)end;local function tczrIB(pVRj)return
not pVRj:HasPvEImmunity()end
local function tczrIB(pVRj)return JLCOx_ak(pVRj)end
local function tczrIB(fuZ3z86)return fuZ3z86:BuffRemains(pVRj.JudgmentDebuff)end
local function tczrIB(fuZ3z86)
return
fuZ3z86:DebuffUp(pVRj.JudgmentDebuff)and
not fuZ3z86:HasPvEImmunity()and
pVRj.CrusaderStrike:Charges()==2 and
(
pVRj.CrusadersMight:IsAvailable()and
pVRj.HolyShock:CooldownRemains()>1+QKKks_zt:GCD()or not
pVRj.CrusadersMight:IsAvailable())end
local function tczrIB(fuZ3z86)
return
fuZ3z86:DebuffUp(pVRj.JudgmentDebuff)and
not fuZ3z86:HasPvEImmunity()and
pVRj.CrusaderStrike:Charges()==1 and
(
pVRj.CrusadersMight:IsAvailable()and
pVRj.HolyShock:CooldownRemains()>1+QKKks_zt:GCD()or not
pVRj.CrusadersMight:IsAvailable())end
local function tczrIB(fuZ3z86)
return
fuZ3z86:DebuffUp(pVRj.JudgmentDebuff)and
not fuZ3z86:HasPvEImmunity()and
(
pVRj.CrusadersMight:IsAvailable()and
pVRj.HolyShock:CooldownRemains()>1+QKKks_zt:GCD()or not
pVRj.CrusadersMight:IsAvailable()and
(rHSjalVy and fuZ3z86:HealthPercentage()<=
QKKks_zt:ManaPercentage()or not rHSjalVy))end
local function tczrIB(pVRj)return
(pVRj:IsInRange(40)and JLCOx_ak(pVRj)and
(
pVRj:AffectingCombat()or
pVRj:IsDummy()or pVRj:NPCID()==153285 or pVRj:NPCID()==168326))end
local function xL7OTb()
if
(
(not lqT:IsAvailable()and QKKks_zt:HolyPower()>=3)or
(lqT:IsAvailable()and
((QKKks_zt:HolyPower()==5)or
(
QKKks_zt:BuffUp(PrPyxMK)and QKKks_zt:HolyPower()==3))))then if
pVRj.ShieldOfTheRighteous:IsReady()and hDc_M>=1 then
if ZG(pVRj.ShieldOfTheRighteous)then return"ShieldOfTheRighteous - DPS"end end end
if pVRj.HammerOfWrath:IsReady(Are7xU)then if ZG(pVRj.HammerOfWrath)then return
"HammerOfWrath - DPS"end end
if
pVRj.DivineToll:IsReady(QKKks_zt)and seMLr==2 and
Are7xU:IsInMeleeRange(8)and(UnitExists("boss1")or
XL_.FightRemains(N9L)>30)then if ZG(pVRj.DivineToll)then return"Divine Toll 1"end end
if
pVRj.LightSHammer:IsReady(QKKks_zt)and qX==2 and
Are7xU:IsInMeleeRange(8)and not QKKks_zt:IsMoving()then
if ZG(pVRj.LightSHammer)then return"Lights Hammer - DPS"end end
if
pVRj.Consecration:IsReady()and Are7xU:IsInMeleeRange(5)and not QKKks_zt:IsMoving()then if
ZG(pVRj.Consecration)then return"Consecration - DPS"end end;if pVRj.Judgment:IsReady()then
if ZG(pVRj.Judgment)then return"Judgement - DPS"end end
if
pVRj.HolyShock:IsReady(Are7xU)and JZAU2 ==2 then
fuZ3z86.SetTopColor(6,"Holy Shock Enemy")return"HolyShock - DPS"end
if pVRj.CrusaderStrike:IsReady(Are7xU)then if ZG(pVRj.CrusaderStrike)then return
"CrusaderStrike - DPS"end end end
local function seMLr()local rHSjalVy,yxjl,tczrIB,yxjl,yxjl,yxjl=DFb100j:Update()Ib4()
if Vu0cCAf()then
N9L=QKKks_zt:GetEnemiesInRangeFilter(5)qW0lRiD1=WYdR:GetEnemiesInSplashRange(5)hDc_M=#N9L
iD1IUx=WYdR:GetEnemiesInSplashRangeCount(5)else hDc_M=1;iD1IUx=1 end;local WYdR=XL_.CombatTime()
local XL_=not QKKks_zt:IsMoving()
local yxjl=(QKKks_zt:HealthPercentage()>=60 or
QKKks_zt:BuffUp(pVRj.DivineShield))local N9L=Are7xU:IsInMeleeRange(5)
local TjhsnP=#tczrIB>1 and
(TjhsnP==1 and
DFb100j:AverageHP()<=t5jzEd9 or TjhsnP==2)and
QKKks_zt:BuffDown(pVRj.AvengingWrath)and
QKKks_zt:BuffDown(pVRj.HolyAvenger)local N9L=Vu0cCAf()and#tczrIB>=1
local N9L=(
pVRj.HolyShock:IsReady()or pVRj.BestowFaith:IsReady()or
pVRj.HammerOfWrath:IsReady()or
pVRj.CrusaderStrike:IsReady())local N9L=QKKks_zt:GUID()
if
Are7xU:IsAPlayer()and Are7xU:IsDeadOrGhost()and not Are7xU:IsEnemy()and
Are7xU:IsInParty()then if WYdR==0 and
pVRj.Absolution:IsReady(QKKks_zt)then
if ZG(pVRj.Absolution)then return'Resurrection'end end end;if pVRj.DevotionAura:IsReady()and
QKKks_zt:BuffDown(pVRj.DevotionAura)then
if ZG(pVRj.DevotionAura)then return"DevotionAura"end end
if
pVRj.DivineProtection:IsReady()and
(QKKks_zt:HealthPercentage()<=urkh or
QKKks_zt:BuffUp(pVRj.BlessingOfSacrifice))then if
ZG(pVRj.DivineProtection)then return"DivineProtection Player"end end
if pVRj.DivineShield:IsReady()and
QKKks_zt:BuffDown(pVRj.ForberanceDebuff)and
QKKks_zt:HealthPercentage()<=zhzpBSx then if
ZG(pVRj.DivineShield)then return"DivineShield Player"end end
if pVRj.LayOnHands:IsReady()and WYdR>0 then
if
fuZ3z86.CastCycleAlly(pVRj.LayOnHands,tczrIB,function(fuZ3z86)return


fuZ3z86:DebuffDown(pVRj.ForberanceDebuff)and fuZ3z86:HealthPercentage()<=Ch and not JLCOx_ak(fuZ3z86)end)then return'Lay On Hands Lower HP'end end
if pVRj.BlessingOfSacrifice:IsReady()then
if
fuZ3z86.CastCycleAlly(pVRj.BlessingOfSacrifice,tczrIB,function(pVRj)
return


not QKKks_zt:IsUnit(pVRj)and yxjl and WYdR>0 and pVRj:HealthPercentage()<=Hv and not JLCOx_ak(pVRj)end)then return'Blessing of Sacrifice Lower HP'end end
local WYdR=fuZ3z86.HealingEngine:BuffTotal(pVRj.BeaconOfLightBuff)
if WYdR==0 and pVRj.BeaconOfLight:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.BeaconOfLight,rHSjalVy,function(fuZ3z86)return


fuZ3z86:BuffDown(pVRj.BeaconOfLightBuff)and fuZ3z86:BuffDown(pVRj.BeaconOfFaithBuff)and not JLCOx_ak(fuZ3z86)end)then return'Beacon Tank Members'end end
local WYdR=fuZ3z86.HealingEngine:BuffTotal(pVRj.BeaconOfFaithBuff)
if pVRj.BeaconOfFaith:IsCastable()and WYdR==0 then
if
GetNumGroupMembers()<=5 then
if
fuZ3z86.CastCycleAlly(pVRj.BeaconOfFaith,tczrIB,function(fuZ3z86)
return


fuZ3z86:BuffDown(pVRj.BeaconOfLightBuff)and fuZ3z86:BuffDown(pVRj.BeaconOfFaithBuff)and
((GetNumGroupMembers()<=5 and
(




(vfIyB and vfIyB==fuZ3z86:GUID())or(SUn and SUn==fuZ3z86:GUID())or(quNsijN and quNsijN==fuZ3z86:GUID())or(QUh2tc and QUh2tc==fuZ3z86:GUID())or(qboV and qboV==fuZ3z86:GUID())or(
not vfIyB and not SUn and not quNsijN and not QUh2tc and not qboV))))end)then return'Beacon Faith Party Members'end elseif GetNumGroupMembers()>5 then
if
fuZ3z86.CastCycleAlly(pVRj.BeaconOfFaith,rHSjalVy,function(fuZ3z86)return

fuZ3z86:BuffDown(pVRj.BeaconOfLightBuff)and fuZ3z86:BuffDown(pVRj.BeaconOfFaithBuff)end)then return'Beacon Faith Tank Members'end end end
if TjhsnP then if pVRj.AuraMastery:IsReady()then
if ZG(pVRj.AuraMastery)then return'AuraMastery'end end
if
pVRj.AvengingWrath:IsReady()then if ZG(pVRj.AvengingWrath)then return'AvengingWrath'end end;if pVRj.HolyAvenger:IsReady()then
if ZG(pVRj.HolyAvenger)then return'HolyAvenger'end end
if
pVRj.TyrSDeliverance:IsReady()then if ZG(pVRj.TyrSDeliverance)then return'TyrSDeliverance'end end
if

pVRj.LightSHammer:IsReady(QKKks_zt)and Are7xU:IsInMeleeRange(8)and not QKKks_zt:IsMoving()and er.TargetIsValid()then if
ZG(pVRj.LightSHammer)then return"Lights Hammer"end end end
if
pVRj.DivineToll:IsReady(QKKks_zt)and Are7xU:IsInMeleeRange(8)and(qL(60)>=3)then if ZG(pVRj.DivineToll)then return
"Divine Toll 1"end end;if pVRj.Seraphim:IsReady(QKKks_zt)then if ZG(pVRj.Seraphim)then
return"Seraphim Player"end end
if

(
(not
lqT:IsAvailable()and QKKks_zt:HolyPower()>=3)or
(lqT:IsAvailable()and
((QKKks_zt:HolyPower()==5)or
(
QKKks_zt:BuffUp(PrPyxMK)and QKKks_zt:HolyPower()==3))))and qL(DPSThreshold)>0 then
if
pVRj.WordOfGlory:IsReady()and(qL(NsoTwDs)<3)and QKKks_zt:BuffUp(mP3mlD)then
if
fuZ3z86.CastCycleAlly(pVRj.WordOfGlory,tczrIB,function(pVRj)return

(
pVRj:HealthPercentage()<=NsoTwDs or
(pVRj:HealthPercentage()<90 and not
QKKks_zt:AffectingCombat()))and not JLCOx_ak(pVRj)end)then return'WordofGlory Members'end end
if pVRj.LightOfDawn:IsReady()then
if
fuZ3z86.CastCycleAlly(pVRj.LightOfDawn,tczrIB,function(pVRj)return
(
(
(m6SCS0 and not
QKKks_zt:IsUnit(pVRj)and pVRj:IsInRange(15))or not m6SCS0)and not JLCOx_ak(pVRj))end)then return'LightofDawn Members'end end end
if
pVRj.BlessingOfSummer:IsCastable()and QKKks_zt:AffectingCombat()then
if
fuZ3z86.CastCycleAlly(pVRj.BlessingOfSummer,tczrIB,function(pVRj)
return
(
(nSBOx7 and nSBOx7 ==pVRj:GUID())or
(not nSBOx7 and
(

(LBf and LBf==pVRj:GUID())or(u and
u==pVRj:GUID())or
(
Ki1 and Ki1 ==pVRj:GUID()and pVRj~=QKKks_zt:GUID())or(dijn4Ph and
dijn4Ph==pVRj:GUID())or(RlZo and RlZo==pVRj:GUID())or(SUn and SUn==pVRj:GUID()))))end)then return'Blessing Of Summer non-pet class'end end
if a:IsCastable()and QKKks_zt:AffectingCombat()then
if
fuZ3z86.CastCycleAlly(pVRj.BlessingOfSummer,tczrIB,function(pVRj)return
(
((
CO1 and CO1 ==pVRj:GUID())or
(SUn and SUn==pVRj:GUID())or
(kFTAh and kFTAh==pVRj:GUID()))or(not CO1 and not SUn and not kFTAh))end)then return'Blessing of Autumn (Prio Monk/Evoker/Warlock)'end end
if wqU76o:IsCastable()and QKKks_zt:AffectingCombat()then
if
fuZ3z86.CastCycleAlly(pVRj.BlessingOfSummer,tczrIB,function(pVRj)
return
(
(

(
nSBOx7 and nSBOx7 ==pVRj:GUID())or(CO1 and
CO1 ==pVRj:GUID())or(u and
u==pVRj:GUID())or(zz1QI and zz1QI==
pVRj:GUID())or(RlZo and RlZo==pVRj:GUID())or
(Ki1 and Ki1 ==pVRj:GUID()and pVRj~=QKKks_zt:GUID()))or
(not nSBOx7 and not CO1 and not u and not zz1QI and
not RlZo and not Ki1 and pVRj==
QKKks_zt:GUID()))end)then return'Blessing of Winter (Prio Melee)'end end
if LB1Z:IsCastable()and QKKks_zt:AffectingCombat()then if
ZG(pVRj.BlessingOfSummer)then return'Blessing of Spring (Prio Player)'end end
if

pVRj.HolyShock:IsCastable()and(qL(DPSThreshold)==0 or not
QKKks_zt:AffectingCombat())and pVRj.GlimmerOfLight:IsAvailable()then
if
fuZ3z86.CastCycleAlly(pVRj.HolyShock,tczrIB,function(pVRj)return
pVRj:BuffDown(qkP7O5)and not JLCOx_ak(pVRj)end)then return'HolyShock Spread Glimmer'end end
if
QKKks_zt:AffectingCombat()and qL(DPSThreshold)==0 and er.TargetIsValid()then return xL7OTb()end
if pVRj.HolyShock:IsReady()then
if
fuZ3z86.CastCycleAlly(pVRj.HolyShock,tczrIB,function(pVRj)
return
pVRj:HealthPercentage()<=R1FIoQI and not JLCOx_ak(pVRj)end)then return'HolyShock Members'end end
if pVRj.BeaconOfVirtue:IsReady()then
if
fuZ3z86.CastCycleAlly(pVRj.BeaconOfVirtue,tczrIB,function(fuZ3z86)return
(
(

pVRj.LightOfDawn:IsReady(fuZ3z86)or pVRj.WordOfGlory:IsReady(fuZ3z86)or pVRj.HolyShock:IsReady(fuZ3z86))and not JLCOx_ak(fuZ3z86))end)then return'Beacon Of Virtue Members'end end
if pVRj.BestowFaith:IsReady()then
if
fuZ3z86.CastCycleAlly(pVRj.BestowFaith,tczrIB,function(pVRj)
return
pVRj:HealthPercentage()<=hPQ and not JLCOx_ak(pVRj)end)then return'BestowFaith Members'end end
if pVRj.FlashOfLight:IsCastable()and XL_ then
if
fuZ3z86.CastCycleAlly(pVRj.FlashOfLight,tczrIB,function(pVRj)return

(
pVRj:HealthPercentage()<=HGli or
(pVRj:HealthPercentage()<60 and not
QKKks_zt:AffectingCombat()))and not JLCOx_ak(pVRj)end)then return'FlashofLight Members'end end
if pVRj.HolyLight:IsCastable()and XL_ then
if
fuZ3z86.CastCycleAlly(pVRj.HolyLight,tczrIB,function(pVRj)return

((
pVRj:HealthPercentage()<=iy)or
(pVRj:HealthPercentage()<90 and not
QKKks_zt:AffectingCombat()))and not JLCOx_ak(pVRj)end)then return'HolyLight Members'end end
if pVRj.LightOfTheMartyr:IsReady()and yxjl then
if
fuZ3z86.CastCycleAlly(pVRj.LightOfTheMartyr,tczrIB,function(pVRj)
return

pVRj:HealthPercentage()<=NUhYw6R4 and not QKKks_zt:IsUnit(pVRj)and not JLCOx_ak(pVRj)end)then return'LightOfTheMartyr Members'end end;if
pVRj.CrusaderStrike:IsReady(Are7xU)and UnitIsEnemy("target","player")then
if ZG(pVRj.CrusaderStrike)then return"CrusaderStrike - Holy Power"end end end;local function pVRj()h_8()return seMLr()end
fuZ3z86.SetCustomAPL(_IQQ,XpkjA,pVRj,Q)end;local function ZA()
C_Timer.After(1,function()if MainAddon then Q()else ZA()end end)end;ZA()