
local function Q()local _IQQ='Aya_Hpal 1.0'local XpkjA=65;local pVRj=LibStub('StdUi')
local fuZ3z86=LibStub("AceAddon-3.0"):GetAddon(Z_AddonName)local er=fuZ3z86;local DFb100j=fuZ3z86.HealingEngine;local XL_=HeroLibEx;local pVRj=HeroCache
local WYdR=XL_.Unit;local QKKks_zt=WYdR.Player;local Are7xU=WYdR.Target;local pVRj=WYdR.Arena;local pVRj=WYdR.Party
local pVRj=WYdR.MouseOver;local yxjl=XL_.Spell;local pVRj=XL_.Item;local ZG=er.Cast;local pVRj=er.CastAlly
local Vu0cCAf=er.AoEON;local pVRj=er.CDsON;local pVRj=yxjl.Paladin.Holy;local qkP7O5=yxjl(287280)
local lqT=yxjl(385125)local mP3mlD=yxjl(394709)local PrPyxMK=yxjl(385127)local tczrIB=yxjl(385126)
local a=yxjl(388010)local wqU76o=yxjl(388011)local LB1Z=yxjl(388013)local N9L,hDc_M;local qW0lRiD1,iD1IUx;local tczrIB,tczrIB
local tczrIB=fuZ3z86.Config.GetClassSetting;local JLCOx_ak="Aya_Hpal_Condig"local tczrIB='F48CBA'
local tczrIB={key=JLCOx_ak,title='Aya - Holy',subtitle='Aya '..fuZ3z86.Version,width=470,height=650,profiles=true,config={{type='header',text='Holy',size=24,align='Center',color=tczrIB},{type='spacer'},{type='ruler'},{type='spacer'},{type='header',text='Spells',color=tczrIB},{type='spinner',text='DPS Threshold',key='DPSThreshold1',min=1,max=100,default=80},{type='spinner',text='Bestow Faith',key='BestowFaith',min=1,max=100,default=95},{type='spinner',text='Holy Shock',key='HolyShock',min=1,max=100,default=95},{type='spinner',text='Word of GLory',key='WordofGlory',min=1,max=100,default=70},{type='spinner',text='Holy Light',key='HolyLight',min=1,max=100,default=0},{type='spinner',text='Flash of Light',key='FlashofLight',min=1,max=100,default=40},{type='spinner',text='Light of Martyr',key='LightofMartyr',min=1,max=100,default=70},{type='spinner',text='Lay on Hands',key='LayOnHands',min=1,max=100,default=25},{type='spacer'},{type='header',text='Defensive',color=tczrIB},{type='spinner',text='Blessing of Sacrifice',key='BlessingOfSacrifice',min=1,max=100,default=40},{type='spinner',text='Divine Protection',key='DivineProtection',min=1,max=100,default=40},{type='spinner',text='Divine Shield',key='DivineShield',min=1,max=100,default=20},{type='spacer'},{type='header',text='Class',color=tczrIB},{type='spinner',text="Cooldowns HP",key='CooldownSlider',min=1,max=100,default=75},{type='dropdown',text='Cooldown Options',key='CooldownOption',list={{text='Auto',key=1},{text='Manually',key=2}},default=1},{type='dropdown',text='Holy Shock',key='HolyShockOption',list={{text='Heal',key=1},{text='Heal + Damage',key=2}},default=2},{type='checkbox',text='Consecration while Standing',key='ConsecrationWhileStanding',default=true},{type='checkbox',text='Light of Dawn: Check for Range',key='LightofDawnRange',default=false},{type='checkbox',text='Mana Management',key='ManaManagement',default=false},{type='checkbox',text='Judgment & Crusader Strike sniping',key='JCSSniping',default=false}}}fuZ3z86.SetCustomConfig(_IQQ,XpkjA,tczrIB)
local function hPQ()end;local R1FIoQI,NsoTwDs,HGli,iy,m6SCS0,NUhYw6R4,Hv;local Ch,urkh,zhzpBSx,rHSjalVy,TjhsnP;local t5jzEd9,JZAU2,zPXTTg,seMLr;local JLCOx_ak;local qX={}
local h_8,tczrIB,xL7OTb,w8T3f,K,qL,vfIyB,quNsijN,QUh2tc,qboV,nSBOx7,uK,i1,zz1QI,kFTAh=false,false,false,false,false,false,false,false,false,false,false,false,false,false,false;local tczrIB=nil
XL_:RegisterForEvent(function(QKKks_zt,...)local WYdR,pVRj,ZG,fuZ3z86=...if QKKks_zt=="UNIT_SPELLCAST_SENT"then
if
WYdR=="player"and pVRj then currentspell=fuZ3z86;currentspelltarget=pVRj end end
if
QKKks_zt=="UI_ERROR_MESSAGE"then if pVRj==SPELL_FAILED_LINE_OF_SIGHT then missedunit=currentspelltarget
missedspell=currentspell end end end,"UI_ERROR_MESSAGE","UNIT_SPELLCAST_SENT")
local function LBf()
DPSThreshold=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"DPSThreshold1")
R1FIoQI=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"BestowFaith")
NsoTwDs=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"HolyShock")
HGli=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"WordofGlory")
m6SCS0=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"HolyLight")
iy=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"FlashofLight")
Hv=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"LightofMartyr")
Ch=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"BlessingOfSacrifice")
urkh=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"LayOnHands")
zhzpBSx=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"DivineProtection")
rHSjalVy=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"DivineShield")
JZAU2=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"CooldownSlider")
t5jzEd9=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"CooldownOption")
zPXTTg=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"HolyShockOption")
seMLr=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"ConsecrationWhileStanding")
NUhYw6R4=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"LightofDawnRange")
TjhsnP=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"ManaManagement")
JLCOx_ak=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"JCSSniping")
h_8,kFTAh,xL7OTb,w8T3f,K,qL,vfIyB,quNsijN,QUh2tc,qboV,nSBOx7,uK,i1,zz1QI,kFTAh=false,false,false,false,false,false,false,false,false,false,false,false,false,false,false;tczrIB=nil
if
GetNumGroupMembers()>1 and GetNumGroupMembers()<=5 then tczrIB="party"elseif GetNumGroupMembers()>5 then tczrIB="raid"end
if tczrIB then
for QKKks_zt=1,GetNumGroupMembers()do
local fuZ3z86,pVRj=UnitClassBase(tczrIB..QKKks_zt)
if
not WYdR(tczrIB..QKKks_zt):IsATank()then
if pVRj==1 then
vfIyB=WYdR(tczrIB..QKKks_zt):GUID()elseif pVRj==2 then
quNsijN=WYdR(tczrIB..QKKks_zt):GUID()elseif pVRj==3 then
h_8=WYdR(tczrIB..QKKks_zt):GUID()elseif pVRj==4 then
qL=WYdR(tczrIB..QKKks_zt):GUID()elseif pVRj==5 then
w8T3f=WYdR(tczrIB..QKKks_zt):GUID()elseif pVRj==6 then
QUh2tc=WYdR(tczrIB..QKKks_zt):GUID()elseif pVRj==7 then
xL7OTb=WYdR(tczrIB..QKKks_zt):GUID()elseif pVRj==8 or pVRj==9 or pVRj==11 then
K=WYdR(tczrIB..QKKks_zt):GUID()
if pVRj==8 then
nSBOx7=WYdR(tczrIB..QKKks_zt):GUID()elseif pVRj==9 then
qboV=WYdR(tczrIB..QKKks_zt):GUID()elseif pVRj==11 then
uK=WYdR(tczrIB..QKKks_zt):GUID()end elseif pVRj==10 then
i1=WYdR(tczrIB..QKKks_zt):GUID()elseif pVRj==12 then
zz1QI=WYdR(tczrIB..QKKks_zt):GUID()elseif pVRj==13 then
kFTAh=WYdR(tczrIB..QKKks_zt):GUID()end end end end end
local function tczrIB(QKKks_zt,fuZ3z86)local ZG,pVRj
if not fuZ3z86 then if GetUnitName("player",true)==QKKks_zt then return
UnitGUID("player")end
if GetUnitName("target",true)==
QKKks_zt then return WYdR("target"):GUID()end
if GetUnitName("focus",true)==QKKks_zt then return UnitGUID("focus")end;pVRj=GetNumGroupMembers()
if pVRj>0 and pVRj<=5 then for pVRj=1,pVRj do
if
GetUnitName("party"..pVRj,true)==QKKks_zt then return UnitGUID("party"..pVRj)end end end;if pVRj>5 then
for pVRj=1,pVRj do if GetUnitName("raid"..pVRj,true)==QKKks_zt then return
UnitGUID("raid"..pVRj)end end end else if
GetUnitName("player",true)==QKKks_zt then return"player"end;if
GetUnitName("target",true)==QKKks_zt then return"target"end;if
GetUnitName("focus",true)==QKKks_zt then return"focus"end
pVRj=GetNumGroupMembers()if pVRj>0 and pVRj<=5 then
for pVRj=1,pVRj do if
GetUnitName("party"..pVRj,true)==QKKks_zt then return"party"..pVRj end end end
if pVRj>5 then for pVRj=1,pVRj do
if GetUnitName(
"raid"..pVRj,true)==QKKks_zt then return"raid"..pVRj end end end end;return QKKks_zt end
local function Q()if missedunit then
table.insert(qX,(tczrIB(missedunit).." "..GetTime()))missedunit=nil end
if
table.getn(qX)>0 then
for QKKks_zt=1,table.getn(qX)do
if qX[QKKks_zt]~=nil then
for pVRj in
string.gmatch(qX[QKKks_zt],"([^%s]+)")do pVRj=tonumber(pVRj)if type(pVRj)=="number"then if pVRj<=GetTime()-1.5 then
table.remove(qX,QKKks_zt)end end end end end end end
local function JLCOx_ak(pVRj)
if table.getn(qX)>0 and pVRj~=nil then
for QKKks_zt=1,table.getn(qX)do for QKKks_zt in
string.gmatch(qX[QKKks_zt],"([^%s]+)")do
if QKKks_zt and QKKks_zt==pVRj:GUID()then return true end end end else return false end end
local function tczrIB()
for QKKks_zt=1,4 do local ZG,QKKks_zt,fuZ3z86,WYdR=GetTotemInfo(QKKks_zt)
if QKKks_zt==
pVRj.Consecration:Name()then return
(floor(fuZ3z86+WYdR-GetTime()+.5))or 0 end end;return 0 end
local function tczrIB(pVRj)
if(WYdR(pVRj):BuffUp(yxjl(365153)))then
for QKKks_zt=1,40 do if
select(10,UnitBuff(pVRj,QKKks_zt))==365153 then
return select(16,UnitBuff(pVRj,QKKks_zt))end end else return 0 end end
local function qX(pVRj)
if pVRj==nil or type(pVRj)=="string"then return nil end;pVRj=pVRj/100;local QKKks_zt=0
if GetNumGroupMembers()>0 and
GetNumGroupMembers()<=5 then
for fuZ3z86=1,GetNumGroupMembers()do
if
UnitExists("party"..fuZ3z86)and
not WYdR("party"..fuZ3z86):IsDeadOrGhost()and
WYdR("party"..fuZ3z86):DebuffDown(yxjl(228578))then
local ZG=
UnitHealth("party"..fuZ3z86)+
(UnitGetIncomingHeals("party"..fuZ3z86)or 0)-tczrIB("party"..fuZ3z86)local WYdR=UnitHealthMax("party"..fuZ3z86)
if ZG/WYdR<=pVRj or
(UnitHealth(
"party"..fuZ3z86)/WYdR==1 and pVRj==1)then QKKks_zt=QKKks_zt+1 end end end
if
(
((UnitHealth("player")+
(UnitGetIncomingHeals("player")or 0))/
UnitHealthMax("player"))<pVRj or
(UnitHealth("player")/
UnitHealthMax("player")==1 and pVRj==1))then QKKks_zt=QKKks_zt+1 end end
if GetNumGroupMembers()>5 then
for fuZ3z86=1,GetNumGroupMembers()do
if



UnitExists("raid"..fuZ3z86)and not UnitIsDead("raid"..fuZ3z86)and
WYdR("raid"..fuZ3z86):DebuffDown(yxjl(362075))and
WYdR("raid"..fuZ3z86):DebuffDown(yxjl(362397))and
WYdR("raid"..fuZ3z86):DebuffDown(yxjl(191587))then local WYdR=0
local WYdR=
UnitHealth("raid"..fuZ3z86)+ (
UnitGetIncomingHeals("raid"..fuZ3z86)or 0)-tczrIB("raid"..fuZ3z86)local fuZ3z86=UnitHealthMax("raid"..fuZ3z86)if
WYdR/fuZ3z86 <=pVRj then QKKks_zt=QKKks_zt+1 end end end end
if GetNumGroupMembers()==0 then
local WYdR=UnitHealth("player")+ (
UnitGetIncomingHeals("player")or 0)-
tczrIB("player")local fuZ3z86=UnitHealthMax("player")if WYdR/fuZ3z86 <pVRj then
QKKks_zt=QKKks_zt+1 end end;return QKKks_zt end
local function tczrIB()
for fuZ3z86,QKKks_zt in pairs(QKKks_zt:GetEnemiesInRange(5))do if

QKKks_zt:DebuffUp(pVRj.JudgmentDebuff)and QKKks_zt:IsSpellInRange(pVRj.CrusaderStrike)then return true end end;return false end;local function tczrIB(QKKks_zt)
return QKKks_zt:DebuffRemains(pVRj.JudgmentOfLightDebuff)end;local function tczrIB(pVRj)return
not pVRj:HasPvEImmunity()end
local function tczrIB(pVRj)return JLCOx_ak(pVRj)end
local function tczrIB(QKKks_zt)return QKKks_zt:BuffRemains(pVRj.JudgmentDebuff)end
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
(TjhsnP and fuZ3z86:HealthPercentage()<=
QKKks_zt:ManaPercentage()or not TjhsnP))end
local function tczrIB(pVRj)return
(pVRj:IsInRange(40)and JLCOx_ak(pVRj)and
(
pVRj:AffectingCombat()or
pVRj:IsDummy()or pVRj:NPCID()==153285 or pVRj:NPCID()==168326))end
local function seMLr()
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
pVRj.DivineToll:IsReady(QKKks_zt)and Are7xU:IsInMeleeRange(8)and
(UnitExists("boss1")or XL_.FightRemains(N9L)>30)then if
ZG(pVRj.DivineToll)then return"Divine Toll 1"end end
if

pVRj.LightSHammer:IsReady(QKKks_zt)and Are7xU:IsInMeleeRange(8)and not QKKks_zt:IsMoving()then
if ZG(pVRj.LightSHammer)then return"Lights Hammer - DPS"end end
if
pVRj.Consecration:IsReady()and Are7xU:IsInMeleeRange(5)and not QKKks_zt:IsMoving()then if
ZG(pVRj.Consecration)then return"Consecration - DPS"end end;if pVRj.Judgment:IsReady()then
if ZG(pVRj.Judgment)then return"Judgement - DPS"end end
if
pVRj.HolyShock:IsReady(Are7xU)and zPXTTg==2 then
fuZ3z86.SetTopColor(6,"Holy Shock Enemy")return"HolyShock - DPS"end
if pVRj.CrusaderStrike:IsReady(Are7xU)then if ZG(pVRj.CrusaderStrike)then return
"CrusaderStrike - DPS"end end end
local function zPXTTg()local TjhsnP,yxjl,tczrIB,yxjl,yxjl,yxjl=DFb100j:Update()LBf()
if Vu0cCAf()then
N9L=QKKks_zt:GetEnemiesInRangeFilter(5)qW0lRiD1=WYdR:GetEnemiesInSplashRange(5)hDc_M=#N9L
iD1IUx=WYdR:GetEnemiesInSplashRangeCount(5)else hDc_M=1;iD1IUx=1 end;local WYdR=XL_.CombatTime()
local yxjl=not QKKks_zt:IsMoving()
local XL_=(QKKks_zt:HealthPercentage()>=60 or
QKKks_zt:BuffUp(pVRj.DivineShield))local hDc_M=Are7xU:IsInMeleeRange(5)
local t5jzEd9=#tczrIB>1 and
(t5jzEd9 ==1 and
DFb100j:AverageHP()<=JZAU2 or t5jzEd9 ==2)and
QKKks_zt:BuffDown(pVRj.AvengingWrath)and
QKKks_zt:BuffDown(pVRj.HolyAvenger)local hDc_M=Vu0cCAf()and#tczrIB>=1
local hDc_M=(
pVRj.HolyShock:IsReady()or pVRj.BestowFaith:IsReady()or
pVRj.HammerOfWrath:IsReady()or
pVRj.CrusaderStrike:IsReady())local hDc_M=QKKks_zt:GUID()
if
Are7xU:IsAPlayer()and
Are7xU:IsDeadOrGhost()and not Are7xU:IsEnemy()and Are7xU:IsInParty()then if WYdR==0 and
pVRj.Absolution:IsReady(QKKks_zt)then
if ZG(pVRj.Absolution)then return'Resurrection'end end end;if pVRj.DevotionAura:IsReady()and
QKKks_zt:BuffDown(pVRj.DevotionAura)then
if ZG(pVRj.DevotionAura)then return"DevotionAura"end end
if
pVRj.DivineProtection:IsReady()and
(QKKks_zt:HealthPercentage()<=zhzpBSx or
QKKks_zt:BuffUp(pVRj.BlessingOfSacrifice))then if
ZG(pVRj.DivineProtection)then return"DivineProtection Player"end end
if pVRj.DivineShield:IsReady()and
QKKks_zt:BuffDown(pVRj.ForberanceDebuff)and
QKKks_zt:HealthPercentage()<=rHSjalVy then if
ZG(pVRj.DivineShield)then return"DivineShield Player"end end
if pVRj.LayOnHands:IsReady()and WYdR>0 then
if
fuZ3z86.CastCycleAlly(pVRj.LayOnHands,tczrIB,function(QKKks_zt)return


QKKks_zt:DebuffDown(pVRj.ForberanceDebuff)and QKKks_zt:HealthPercentage()<=urkh and not JLCOx_ak(QKKks_zt)end)then return'Lay On Hands Lower HP'end end
if pVRj.BlessingOfSacrifice:IsReady()then
if
fuZ3z86.CastCycleAlly(pVRj.BlessingOfSacrifice,tczrIB,function(pVRj)
return


not QKKks_zt:IsUnit(pVRj)and XL_ and WYdR>0 and pVRj:HealthPercentage()<=Ch and not JLCOx_ak(pVRj)end)then return'Blessing of Sacrifice Lower HP'end end
local WYdR=fuZ3z86.HealingEngine:BuffTotal(pVRj.BeaconOfLightBuff)
if WYdR==0 and pVRj.BeaconOfLight:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.BeaconOfLight,TjhsnP,function(QKKks_zt)return


QKKks_zt:BuffDown(pVRj.BeaconOfLightBuff)and QKKks_zt:BuffDown(pVRj.BeaconOfFaithBuff)and not JLCOx_ak(QKKks_zt)end)then return'Beacon Tank Members'end end
local WYdR=fuZ3z86.HealingEngine:BuffTotal(pVRj.BeaconOfFaithBuff)
if pVRj.BeaconOfFaith:IsCastable()and WYdR==0 then
if
GetNumGroupMembers()<=5 then
if
fuZ3z86.CastCycleAlly(pVRj.BeaconOfFaith,tczrIB,function(QKKks_zt)
return


QKKks_zt:BuffDown(pVRj.BeaconOfLightBuff)and QKKks_zt:BuffDown(pVRj.BeaconOfFaithBuff)and
((GetNumGroupMembers()<=5 and
(




(h_8 and h_8 ==QKKks_zt:GUID())or(kFTAh and kFTAh==QKKks_zt:GUID())or(xL7OTb and xL7OTb==QKKks_zt:GUID())or(w8T3f and w8T3f==QKKks_zt:GUID())or(K and K==QKKks_zt:GUID())or(
not h_8 and not kFTAh and not xL7OTb and not w8T3f and not K))))end)then return'Beacon Faith Party Members'end elseif GetNumGroupMembers()>5 then
if
fuZ3z86.CastCycleAlly(pVRj.BeaconOfFaith,TjhsnP,function(QKKks_zt)return

QKKks_zt:BuffDown(pVRj.BeaconOfLightBuff)and QKKks_zt:BuffDown(pVRj.BeaconOfFaithBuff)end)then return'Beacon Faith Tank Members'end end end
if t5jzEd9 then if pVRj.AuraMastery:IsReady()then if ZG(pVRj.AuraMastery)then
return'AuraMastery'end end
if
pVRj.AvengingWrath:IsReady()then if ZG(pVRj.AvengingWrath)then return'AvengingWrath'end end;if pVRj.HolyAvenger:IsReady()then
if ZG(pVRj.HolyAvenger)then return'HolyAvenger'end end
if
pVRj.TyrSDeliverance:IsReady()then if ZG(pVRj.TyrSDeliverance)then return'TyrSDeliverance'end end end
if
pVRj.DivineToll:IsReady(QKKks_zt)and Are7xU:IsInMeleeRange(8)and(qX(60)>=3)then if ZG(pVRj.DivineToll)then return
"Divine Toll 1"end end;if pVRj.Seraphim:IsReady(QKKks_zt)then if ZG(pVRj.Seraphim)then
return"Seraphim Player"end end
if

(
(not
lqT:IsAvailable()and QKKks_zt:HolyPower()>=3)or
(lqT:IsAvailable()and
((QKKks_zt:HolyPower()==5)or
(
QKKks_zt:BuffUp(PrPyxMK)and QKKks_zt:HolyPower()==3))))and qX(DPSThreshold)>0 then
if pVRj.WordOfGlory:IsReady()and(qX(HGli)<3)and
QKKks_zt:BuffUp(mP3mlD)then
if
fuZ3z86.CastCycleAlly(pVRj.WordOfGlory,tczrIB,function(pVRj)return

(
pVRj:HealthPercentage()<=HGli or
(pVRj:HealthPercentage()<90 and not
QKKks_zt:AffectingCombat()))and not JLCOx_ak(pVRj)end)then return'WordofGlory Members'end end
if pVRj.LightOfDawn:IsReady()then
if
fuZ3z86.CastCycleAlly(pVRj.LightOfDawn,tczrIB,function(pVRj)return
(
(
(NUhYw6R4 and not
QKKks_zt:IsUnit(pVRj)and pVRj:IsInRange(15))or not NUhYw6R4)and not JLCOx_ak(pVRj))end)then return'LightofDawn Members'end end end
if
pVRj.BlessingOfSummer:IsCastable()and QKKks_zt:AffectingCombat()then
if
fuZ3z86.CastCycleAlly(pVRj.BlessingOfSummer,tczrIB,function(pVRj)
return
((qL and qL==pVRj:GUID())or
(
not qL and
(

(nSBOx7 and nSBOx7 ==pVRj:GUID())or(vfIyB and vfIyB==
pVRj:GUID())or
(
quNsijN and quNsijN==pVRj:GUID()and pVRj~=QKKks_zt:GUID())or(uK and uK==
pVRj:GUID())or(zz1QI and zz1QI==pVRj:GUID())or(kFTAh and kFTAh==pVRj:GUID()))))end)then return'Blessing Of Summer non-pet class'end end
if a:IsCastable()and QKKks_zt:AffectingCombat()then
if
fuZ3z86.CastCycleAlly(pVRj.BlessingOfSummer,tczrIB,function(pVRj)return
(
((
i1 and i1 ==pVRj:GUID())or
(kFTAh and kFTAh==pVRj:GUID())or
(qboV and qboV==pVRj:GUID()))or(not i1 and not kFTAh and not qboV))end)then return'Blessing of Autumn (Prio Monk/Evoker/Warlock)'end end
if wqU76o:IsCastable()and QKKks_zt:AffectingCombat()then
if
fuZ3z86.CastCycleAlly(pVRj.BlessingOfSummer,tczrIB,function(pVRj)
return
(
(
(
qL and qL==pVRj:GUID())or
(i1 and i1 ==pVRj:GUID())or
(vfIyB and vfIyB==pVRj:GUID())or
(QUh2tc and QUh2tc==pVRj:GUID())or(zz1QI and zz1QI==
pVRj:GUID())or(quNsijN and quNsijN==pVRj:GUID()and
pVRj~=QKKks_zt:GUID()))or
(
not qL and not i1 and not vfIyB and not QUh2tc and
not zz1QI and not quNsijN and pVRj==QKKks_zt:GUID()))end)then return'Blessing of Winter (Prio Melee)'end end
if LB1Z:IsCastable()and QKKks_zt:AffectingCombat()then if
ZG(pVRj.BlessingOfSummer)then return'Blessing of Spring (Prio Player)'end end
if

pVRj.HolyShock:IsCastable()and(qX(DPSThreshold)==0 or not
QKKks_zt:AffectingCombat())and pVRj.GlimmerOfLight:IsAvailable()then
if
fuZ3z86.CastCycleAlly(pVRj.HolyShock,tczrIB,function(pVRj)return
pVRj:BuffDown(qkP7O5)and not JLCOx_ak(pVRj)end)then return'HolyShock Spread Glimmer'end end
if
QKKks_zt:AffectingCombat()and qX(DPSThreshold)==0 and er.TargetIsValid()then return seMLr()end
if pVRj.HolyShock:IsReady()then
if
fuZ3z86.CastCycleAlly(pVRj.HolyShock,tczrIB,function(pVRj)
return
pVRj:HealthPercentage()<=NsoTwDs and not JLCOx_ak(pVRj)end)then return'HolyShock Members'end end
if pVRj.BeaconOfVirtue:IsReady()then
if
fuZ3z86.CastCycleAlly(pVRj.BeaconOfVirtue,tczrIB,function(QKKks_zt)return
(
(

pVRj.LightOfDawn:IsReady(QKKks_zt)or pVRj.WordOfGlory:IsReady(QKKks_zt)or pVRj.HolyShock:IsReady(QKKks_zt))and not JLCOx_ak(QKKks_zt))end)then return'Beacon Of Virtue Members'end end
if pVRj.BestowFaith:IsReady()then
if
fuZ3z86.CastCycleAlly(pVRj.BestowFaith,tczrIB,function(pVRj)
return
pVRj:HealthPercentage()<=R1FIoQI and not JLCOx_ak(pVRj)end)then return'BestowFaith Members'end end
if pVRj.FlashOfLight:IsCastable()and yxjl then
if
fuZ3z86.CastCycleAlly(pVRj.FlashOfLight,tczrIB,function(pVRj)return

(
pVRj:HealthPercentage()<=iy or
(pVRj:HealthPercentage()<60 and not
QKKks_zt:AffectingCombat()))and not JLCOx_ak(pVRj)end)then return'FlashofLight Members'end end
if pVRj.HolyLight:IsCastable()and yxjl then
if
fuZ3z86.CastCycleAlly(pVRj.HolyLight,tczrIB,function(pVRj)return

((
pVRj:HealthPercentage()<=m6SCS0)or
(pVRj:HealthPercentage()<90 and not
QKKks_zt:AffectingCombat()))and not JLCOx_ak(pVRj)end)then return'HolyLight Members'end end
if pVRj.LightOfTheMartyr:IsReady()and XL_ then
if
fuZ3z86.CastCycleAlly(pVRj.LightOfTheMartyr,tczrIB,function(pVRj)
return

pVRj:HealthPercentage()<=Hv and not QKKks_zt:IsUnit(pVRj)and not JLCOx_ak(pVRj)end)then return'LightOfTheMartyr Members'end end;if
pVRj.CrusaderStrike:IsReady(Are7xU)and UnitIsEnemy("target","player")then
if ZG(pVRj.CrusaderStrike)then return"CrusaderStrike - Holy Power"end end
if

pVRj.LightSHammer:IsReady(QKKks_zt)and Are7xU:IsInMeleeRange(8)and not
QKKks_zt:IsMoving()and er.TargetIsValid()then if ZG(pVRj.LightSHammer)then return"Lights Hammer"end end end;local function pVRj()Q()return zPXTTg()end
fuZ3z86.SetCustomAPL(_IQQ,XpkjA,pVRj,hPQ)end;local function ZA()
C_Timer.After(1,function()if MainAddon then Q()else ZA()end end)end;ZA()