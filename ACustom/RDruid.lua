
local function Q()local _IQQ='Aya_RDruid'local XpkjA=105;local pVRj=LibStub('StdUi')
local fuZ3z86=LibStub("AceAddon-3.0"):GetAddon(Z_AddonName)local er=fuZ3z86;local DFb100j=fuZ3z86.HealingEngine;local XL_=HeroLibEx;local pVRj=HeroCache
local WYdR=XL_.Unit;local QKKks_zt=WYdR.Player;local Are7xU=WYdR.Target;local pVRj=WYdR.Arena;local pVRj=WYdR.Party
local pVRj=WYdR.MouseOver;local yxjl=XL_.Spell;local pVRj=XL_.Item;local ZG=er.Cast;local pVRj=er.CastAlly
local Vu0cCAf=er.AoEON;local pVRj=er.CDsON;local pVRj=yxjl.Druid.Restoration;local qkP7O5=yxjl(391888)
local lqT=yxjl(391891)local mP3mlD=yxjl(391889)local PrPyxMK=yxjl(188550)local tczrIB=yxjl(33763)
local a=yxjl(114108)local wqU76o=yxjl(77758)local LB1Z=yxjl(192090)local N9L=yxjl(213771)
local hDc_M=yxjl(132158)local qW0lRiD1=yxjl(392301)local mP3mlD=yxjl(392302)local iD1IUx,JLCOx_ak;local mP3mlD,hPQ
local mP3mlD,mP3mlD;local mP3mlD=fuZ3z86.Config.GetClassSetting;local R1FIoQI="Aya_Rdruid_Config"
local mP3mlD='FF7C0A'
local mP3mlD={key=R1FIoQI,title='Aya - Restoration Druid',subtitle='Aya '..fuZ3z86.Version,width=470,height=650,profiles=true,config={{type='header',text='Restoration',size=24,align='Center',color=mP3mlD},{type='spacer'},{type='ruler'},{type='spacer'},{type='header',text='Spells',color=mP3mlD},{type='spinner',text='DPS Threshold',key='DPSThreshold1',min=1,max=100,default=80},{type='spinner',text='Regrowth',key='RegrowthHP',min=1,max=100,default=75},{type='spinner',text='Regrowth Refresh',key='RegrowthHP2',min=1,max=100,default=50},{type='spinner',text='Rejuvenation',key='RejuvenationHP',min=1,max=100,default=85},{type='spinner',text='Wild Growth',key='WildGrowthHP',min=1,max=100,default=85},{type='spinner',text='Wild Growth Units',key='WildGrowthNum',min=1,max=40,default=3},{type='spinner',text='Efflorescence',key='EfflorescenceHP',min=1,max=100,default=100},{type='spinner',text='Efflorescence Units',key='EfflorescenceNum',min=1,max=40,default=1},{type='spinner',text='Ironbark',key='IronbarkHP',min=1,max=100,default=50},{type='spinner',text='Swiftmend',key='SwiftmendHP',min=1,max=100,default=80},{type='spinner',text='Convoke the Spirits',key='ConvokeHP',min=1,max=100,default=70},{type='spinner',text='Convoke the Spirits Units',key='ConvokeNum',min=1,max=40,default=3},{type='spacer'},{type='header',text='Defensive',color=mP3mlD},{type='spinner',text='Barkskin',key='BarkSkinHP',min=1,max=100,default=60},{type='spinner',text='Renewal',key='RenewalHP',min=1,max=100,default=70},{type='spacer'},{type='header',text='Class',color=mP3mlD},{type='spinner',text="Cooldowns HP",key='CooldownSlider',min=1,max=100,default=75},{type='dropdown',text='Cooldown Options',key='CooldownOption',list={{text='Auto',key=1},{text='Manually',key=2}},default=1},{type='dropdown',text='Convoke the Spirits',key='ConvokeOption',list={{text='Heal',key=1},{text='Heal + Damage',key=2}},default=2},{type='checkbox',text='Form Swap for DPS',key='FormSwap',default=true},{type='checkbox',text='Mana Management',key='ManaManagement',default=true}}}fuZ3z86.SetCustomConfig(_IQQ,XpkjA,mP3mlD)
local function NsoTwDs()end;local HGli,R1FIoQI,iy,m6SCS0,NUhYw6R4,Hv,Ch;local urkh,zhzpBSx,rHSjalVy,TjhsnP;local t5jzEd9,mP3mlD,JZAU2,zPXTTg;local seMLr,qX,h_8;local xL7OTb={}
XL_:RegisterForEvent(function(QKKks_zt,...)
local fuZ3z86,pVRj,ZG,Are7xU=...
if QKKks_zt=="UNIT_SPELLCAST_SENT"then if fuZ3z86 =="player"and pVRj then
currentspell=Are7xU;currentspelltarget=pVRj end end
if QKKks_zt=="UI_ERROR_MESSAGE"then if pVRj==SPELL_FAILED_LINE_OF_SIGHT then
missedunit=currentspelltarget;missedspell=currentspell end end end,"UI_ERROR_MESSAGE","UNIT_SPELLCAST_SENT")
local function Q()
DPSThreshold=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"DPSThreshold1")
iy=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"RegrowthHP")
m6SCS0=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"RegrowthHP2")
NUhYw6R4=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"RejuvenationHP")
urkh=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"WildGrowthHP")
zhzpBSx=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"WildGrowthNum")
rHSjalVy=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"EfflorescenceHP")
TjhsnP=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"EfflorescenceNum")
Hv=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"IronbarkHP")
Ch=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"SwiftmendHP")
RenewalHP=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"RenewalHP")
ConvokeHP=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"ConvokeHP")
R1FIoQI=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"CooldownSlider")
HGli=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"CooldownOption")
seMLr=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"ConvokeOption")
t5jzEd9=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"TopTrinketTarget")
mP3mlD=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"TopTrinketOption")
JZAU2=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"BotTrinketTarget")
zPXTTg=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"BotTrinketOption")
BarkSkinHP=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"BarkSkinHP")
qX=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"FormSwap")
h_8=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"ManaManagement")end
local function mP3mlD(QKKks_zt,fuZ3z86)local Are7xU,pVRj
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
local function w8T3f()if missedunit then
table.insert(xL7OTb,(mP3mlD(missedunit).." "..GetTime()))missedunit=nil end
if
table.getn(xL7OTb)>0 then
for QKKks_zt=1,table.getn(xL7OTb)do
if xL7OTb[QKKks_zt]~=nil then
for pVRj in
string.gmatch(xL7OTb[QKKks_zt],"([^%s]+)")do pVRj=tonumber(pVRj)
if type(pVRj)=="number"then if pVRj<=GetTime()-1.5 then
table.remove(xL7OTb,QKKks_zt)end end end end end end end
local function mP3mlD(pVRj)
if table.getn(xL7OTb)>0 and pVRj~=nil then
for QKKks_zt=1,table.getn(xL7OTb)do for QKKks_zt in
string.gmatch(xL7OTb[QKKks_zt],"([^%s]+)")do
if QKKks_zt and QKKks_zt==pVRj:GUID()then return true end end end else return false end end
local function xL7OTb(pVRj)
if(WYdR(pVRj):BuffUp(yxjl(365153)))then
for QKKks_zt=1,40 do if
select(10,UnitBuff(pVRj,QKKks_zt))==365153 then
return select(16,UnitBuff(pVRj,QKKks_zt))end end else return 0 end end
local function JZAU2(pVRj)
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
(UnitGetIncomingHeals("party"..fuZ3z86)or 0)-xL7OTb("party"..fuZ3z86)local Are7xU=UnitHealthMax("party"..fuZ3z86)if

ZG/Are7xU<pVRj or(UnitHealth("party"..fuZ3z86)/Are7xU==1 and
pVRj==1)then QKKks_zt=QKKks_zt+1 end end end
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
WYdR("raid"..fuZ3z86):DebuffDown(yxjl(191587))then local Are7xU=0
local Are7xU=
UnitHealth("raid"..fuZ3z86)+ (
UnitGetIncomingHeals("raid"..fuZ3z86)or 0)-xL7OTb("raid"..fuZ3z86)local fuZ3z86=UnitHealthMax("raid"..fuZ3z86)if
Are7xU/fuZ3z86 <pVRj then QKKks_zt=QKKks_zt+1 end end end end
if GetNumGroupMembers()==0 then
local fuZ3z86=UnitHealth("player")+ (
UnitGetIncomingHeals("player")or 0)-
xL7OTb("player")local Are7xU=UnitHealthMax("player")if fuZ3z86/Are7xU<pVRj then
QKKks_zt=QKKks_zt+1 end end;return QKKks_zt end
local function t5jzEd9()
for QKKks_zt=1,4 do local ZG,Are7xU,fuZ3z86,QKKks_zt=GetTotemInfo(QKKks_zt)
if Are7xU==
pVRj.Efflorescence:Name()then return
(floor(fuZ3z86+QKKks_zt-GetTime()+.5))or 0 end end;return 0 end
local function zPXTTg()
if



pVRj.ConvoketheSpirits:IsReady()and Are7xU:IsInMeleeRange(40)and not QKKks_zt:IsMoving()and seMLr==2 and
(
UnitExists("boss1")or XL_.FightRemains(Enemies10ySplash)>30)and XL_.CombatTime()>5 then
if pVRj.MoonkinForm:IsReady()then if ZG(pVRj.MoonkinForm)then
return'MoonkinForm for Convoke - DPS'end end
if
JLCOx_ak<3 and Are7xU:IsInMeleeRange(10)and JLCOx_ak>0 and qX then if pVRj.CatForm:IsReady()and
QKKks_zt:BuffDown(pVRj.CatForm)then
if ZG(pVRj.CatForm)then return'Cat Form for Convoke'end end elseif JLCOx_ak>=3 and
Are7xU:IsInMeleeRange(10)and qX then
if
pVRj.BearForm:IsReady()and QKKks_zt:BuffDown(pVRj.BearForm)then if
ZG(pVRj.BearForm)then return'BearForm for Convoke'end end end;if ZG(pVRj.ConvoketheSpirits)and
(QKKks_zt:BuffUp(pVRj.MoonkinForm)or not
pVRj.MoonkinForm:IsAvailable())then
return"Convoke the Spirits - DPS"end end
if pVRj.NaturesVigil:IsReady()and
(UnitExists("boss1")or
XL_.FightRemains(Enemies10ySplash)>30)then if ZG(pVRj.NaturesVigil,true)then return
'NaturesVigil - DPS'end end
if JLCOx_ak<3 and JLCOx_ak>0 and qX then
if
QKKks_zt:ComboPoints()>=5 and Are7xU:IsInMeleeRange(10)then
if
pVRj.CatForm:IsReady()and QKKks_zt:BuffDown(pVRj.CatForm)then if
ZG(pVRj.CatForm)then return'Cat Form for CP Spend'end end
if

pVRj.Rip:IsReady()and Are7xU:TimeToDie()>20 and QKKks_zt:BuffUp(pVRj.CatForm)and
Are7xU:DebuffRemains(pVRj.RipDebuff)<6 then if ZG(pVRj.Rip)then return'Rip (Cat Form) - DPS'end end
if pVRj.FerociousBite:IsReady()and
(Are7xU:TimeToDie()<=20 or
Are7xU:DebuffRemains(pVRj.RipDebuff)>=6)and
QKKks_zt:BuffUp(pVRj.CatForm)then if
ZG(pVRj.FerociousBite)then return'Ferocious Bite (Cat Form) - DPS'end end end
if
pVRj.Rake:IsReady()and Are7xU:DebuffDown(pVRj.RakeDebuff)and Are7xU:TimeToDie()>15 and
Are7xU:IsInMeleeRange(10)then
if
pVRj.CatForm:IsReady()and QKKks_zt:BuffDown(pVRj.CatForm)then if
ZG(pVRj.CatForm)then return'Cat Form for Rake'end end;if QKKks_zt:BuffUp(pVRj.CatForm)then
if ZG(pVRj.Rake)then return'Rake (Cat Form) - DPS'end end end
if

pVRj.Moonfire:IsReady()and Are7xU:DebuffDown(pVRj.MoonfireDebuff)and
(

(QKKks_zt:BuffDown(pVRj.CatForm)and QKKks_zt:BuffDown(pVRj.BearForm))or Are7xU:DebuffDown(pVRj.SunfireDebuff)or not QKKks_zt:AffectingCombat())then if ZG(pVRj.Moonfire)then return'Moonfire - DPS'end end
if
pVRj.Sunfire:IsReady()and Are7xU:DebuffDown(pVRj.SunfireDebuff)then if ZG(pVRj.Sunfire)then return'Sunfire - DPS'end end
if
(Are7xU:DebuffDown(LB1Z)or Are7xU:DebuffStack(LB1Z)<3)and wqU76o:IsReady()then
if
pVRj.BearForm:IsReady()and QKKks_zt:BuffDown(pVRj.BearForm)then if
ZG(pVRj.BearForm)then return'BearForm for Thrash'end end;if QKKks_zt:BuffUp(pVRj.BearForm)then
if ZG(wqU76o)then return'Thrash - DPS'end end end
if Are7xU:IsInMeleeRange(10)then
if pVRj.CatForm:IsReady()and
QKKks_zt:BuffDown(pVRj.CatForm)then if ZG(pVRj.CatForm)then
return'Cat Form for Shred/Auto Attack'end end
if
pVRj.Shred:IsReady()and QKKks_zt:BuffUp(pVRj.CatForm)then if ZG(pVRj.Shred)then return'Shred (Cat Form) - DPS'end end end elseif JLCOx_ak>=3 and qX then
if QKKks_zt:ComboPoints()>=5 and
Are7xU:IsInMeleeRange(10)then if pVRj.CatForm:IsReady()and
QKKks_zt:BuffDown(pVRj.CatForm)then
if ZG(pVRj.CatForm)then return'Cat Form for CP Spend'end end
if
pVRj.Rip:IsReady()and Are7xU:TimeToDie()>20 and
QKKks_zt:BuffUp(pVRj.CatForm)then if ZG(pVRj.Rip)then
return'Rip (Cat Form) - DPS'end end
if

pVRj.FerociousBite:IsReady()and Are7xU:TimeToDie()<=20 and QKKks_zt:BuffUp(pVRj.CatForm)then
if ZG(pVRj.FerociousBite)then return'Ferocious Bite (Cat Form) - DPS'end end
if

pVRj.Rake:IsReady()and Are7xU:TimeToDie()>15 and Are7xU:DebuffDown(pVRj.RakeDebuff)then if ZG(pVRj.Rake)then return'Rake (Cat Form) - DPS'end end end
if

pVRj.Moonfire:IsReady()and Are7xU:DebuffDown(pVRj.MoonfireDebuff)and
(

(QKKks_zt:BuffDown(pVRj.CatForm)and QKKks_zt:BuffDown(pVRj.BearForm))or Are7xU:DebuffDown(pVRj.SunfireDebuff)or not QKKks_zt:AffectingCombat())then if ZG(pVRj.Moonfire)then return'Moonfire - DPS'end end
if
pVRj.Sunfire:IsReady()and Are7xU:DebuffDown(pVRj.SunfireDebuff)then if ZG(pVRj.Sunfire)then return'Sunfire - DPS'end end
if
(Are7xU:DebuffDown(LB1Z)or Are7xU:DebuffStack(LB1Z)<3)and wqU76o:IsReady()then
if
pVRj.BearForm:IsReady()and QKKks_zt:BuffDown(pVRj.BearForm)then if
ZG(pVRj.BearForm)then return'BearForm for Thrash'end end;if QKKks_zt:BuffUp(pVRj.BearForm)then
if ZG(wqU76o)then return'Thrash - DPS'end end end
if Are7xU:IsInMeleeRange(10)then
if QKKks_zt:BuffDown(pVRj.BearForm)then if
ZG(pVRj.BearForm)then return'BearForm for Swipe/Auto Attack'end end
if N9L:IsReady()and QKKks_zt:BuffUp(pVRj.BearForm)then if
ZG(N9L)then return'Swipe (Bear Form) - DPS'end end end end
if
pVRj.Moonfire:IsReady()and Are7xU:DebuffDown(pVRj.MoonfireDebuff)and
(not Are7xU:IsInMeleeRange(10)or not qX)then if ZG(pVRj.Moonfire)then return
'Moonfire - DPS - Range'end end
if
pVRj.Sunfire:IsReady()and Are7xU:DebuffDown(pVRj.SunfireDebuff)and
(not Are7xU:IsInMeleeRange(10)or not qX)then if ZG(pVRj.Sunfire)then return
'Sunfire - DPS'end end
if
pVRj.Wrath:IsReady()and not QKKks_zt:IsMoving()and
(not Are7xU:IsInMeleeRange(10)or not qX)then if ZG(pVRj.Wrath)then
return'Wrath - DPS'end end end
local function wqU76o()local LB1Z,xL7OTb,yxjl,xL7OTb,xL7OTb,xL7OTb=DFb100j:Update()Q()
if Vu0cCAf()then
iD1IUx=QKKks_zt:GetEnemiesInRangeFilter(10)Enemies10ySplash=WYdR:GetEnemiesInSplashRange(10)
JLCOx_ak=#iD1IUx;hPQ=WYdR:GetEnemiesInSplashRangeCount(10)else JLCOx_ak=1;hPQ=1 end;local JLCOx_ak=XL_.CombatTime()
local xL7OTb=not QKKks_zt:IsMoving()
local xL7OTb=(QKKks_zt:HealthPercentage()>=60)local xL7OTb=Are7xU:IsInMeleeRange(5)
local xL7OTb=

#yxjl>1 and
(HGli==1 and
DFb100j:AverageHP()<=R1FIoQI or HGli==2)and not
QKKks_zt:IsChanneling(pVRj.Tranquility)and QKKks_zt:BuffDown(pVRj.Flourish)and QKKks_zt:BuffDown(pVRj.IncarnationTreeofLife)local XL_=Vu0cCAf()and#yxjl>=1
if
Are7xU:IsAPlayer()and
Are7xU:IsDeadOrGhost()and not Are7xU:IsEnemy()and Are7xU:IsInParty()then
if
JLCOx_ak==0 and pVRj.Revive:IsReady(QKKks_zt)then if ZG(pVRj.Revive)then return
'Resurrection'end end end;if pVRj.Barkskin:IsReady()and
QKKks_zt:HealthPercentage()<BarkSkinHP then
if ZG(pVRj.Barkskin)then return'Barkskin Defensive'end end
if

pVRj.Renewal:IsReady()and QKKks_zt:HealthPercentage()<RenewalHP then if ZG(pVRj.Renewal)then return'Renewal Deffensive'end end
if qkP7O5:IsCastable()and not xL7OTb then
if
fuZ3z86.CastCycleAlly(qkP7O5,yxjl,function(pVRj)
return
pVRj:BuffStack(lqT)==2 and not mP3mlD(pVRj)end)then return'Adaptive Swarm Members 2 Stacks'end
if
fuZ3z86.CastCycleAlly(qkP7O5,yxjl,function(pVRj)return
pVRj:BuffStack(lqT)==1 and not mP3mlD(pVRj)end)then return'Adaptive Swarm Members 1 Stacks'end
if
fuZ3z86.CastCycleAlly(qkP7O5,yxjl,function(pVRj)return
pVRj:BuffStack(lqT)==3 and not mP3mlD(pVRj)end)then return'Adaptive Swarm Members 3 Stacks'end
if
fuZ3z86.CastCycleAlly(qkP7O5,yxjl,function(pVRj)return
pVRj:BuffStack(lqT)==0 and not mP3mlD(pVRj)end)then return'Adaptive Swarm Members 0 Stacks'end end
if xL7OTb then
if pVRj.Ironbark:IsReady()then
if
fuZ3z86.CastCycleAlly(pVRj.Ironbark,yxjl,function(pVRj)
return
pVRj:HealthPercentage()<Hv and not mP3mlD(pVRj)end)then return'Ironbark Members'end end;if
hDc_M:IsReady()and pVRj.ConvoketheSpirits:IsReady()then
if ZG(hDc_M,true)then return'Natures Swiftness before Convoke'end end
if
pVRj.ConvoketheSpirits:IsReady()and not QKKks_zt:IsMoving()then
if
fuZ3z86.CastCycleAlly(pVRj.ConvoketheSpirits,yxjl,function(pVRj)
return
pVRj:HealthPercentage()<R1FIoQI and not mP3mlD(pVRj)end)then return'Convoke the Spirits - Heal'end end
if
pVRj.Flourish:IsReady()and pVRj.WildGrowth:IsReady()and not QKKks_zt:IsMoving()and
DFb100j:AverageHP()<=R1FIoQI then
if
fuZ3z86.CastCycleAlly(pVRj.WildGrowth,yxjl,function(pVRj)
return
pVRj:HealthPercentage()<R1FIoQI and not mP3mlD(pVRj)end)then return'Wild Growth before Flourish'end end
if

pVRj.Flourish:IsReady()and not QKKks_zt:IsMoving()and DFb100j:AverageHP()<=R1FIoQI then if ZG(pVRj.Flourish)then return'Flourish'end end
if pVRj.IncarnationTreeofLife:IsReady()then if
ZG(pVRj.IncarnationTreeofLife)then return'IncarnationTreeofLife'end end
if

pVRj.Tranquility:IsReady()and pVRj.WildGrowth:IsReady()and not QKKks_zt:IsMoving()and
DFb100j:AverageHP()<=R1FIoQI then
if
fuZ3z86.CastCycleAlly(pVRj.WildGrowth,yxjl,function(pVRj)return pVRj:HealthPercentage()<R1FIoQI and not
mP3mlD(pVRj)end)then return'Wild Growth before Tranquility'end end
if

pVRj.Tranquility:IsReady()and not QKKks_zt:IsMoving()and DFb100j:AverageHP()<=R1FIoQI then if ZG(pVRj.Tranquility)then return'Tranquility'end end end
if pVRj.Rejuvenation:IsCastable()and
fuZ3z86.Toggle:GetToggle("SpreadRejuvenation")then
if
fuZ3z86.CastCycleAlly(pVRj.Rejuvenation,yxjl,function(QKKks_zt)return
(
(QKKks_zt:BuffDown(pVRj.Rejuvenation))and not mP3mlD(QKKks_zt))end)then return'Rejuvenation Spread Members - toggle'end end
if
PrPyxMK:IsCastable()and
(
(qW0lRiD1:IsAvailable()and
fuZ3z86.HealingEngine:BuffTotal(PrPyxMK)<2)or fuZ3z86.HealingEngine:BuffTotal(PrPyxMK)<1)and
((
QKKks_zt:BuffDown(pVRj.CatForm)and QKKks_zt:BuffDown(pVRj.BearForm)or not
QKKks_zt:AffectingCombat()))then
if
fuZ3z86.CastCycleAlly(PrPyxMK,LB1Z,function(pVRj)return
pVRj:BuffDown(PrPyxMK)and not mP3mlD(pVRj)end)then return'Lifebloom Tanks'end end
if
tczrIB:IsCastable()and
(
(qW0lRiD1:IsAvailable()and
fuZ3z86.HealingEngine:BuffTotal(tczrIB)<2)or fuZ3z86.HealingEngine:BuffTotal(tczrIB)<1)and
((
QKKks_zt:BuffDown(pVRj.CatForm)and QKKks_zt:BuffDown(pVRj.BearForm)or not
QKKks_zt:AffectingCombat()))then
if
fuZ3z86.CastCycleAlly(tczrIB,LB1Z,function(pVRj)return
pVRj:BuffDown(tczrIB)and not mP3mlD(pVRj)end)then return'Lifebloom Tanks'end end
if GetNumGroupMembers()<=5 then
if
PrPyxMK:IsCastable()and
qW0lRiD1:IsAvailable()and
fuZ3z86.HealingEngine:BuffTotal(PrPyxMK)<2 and
((
QKKks_zt:BuffDown(pVRj.CatForm)and QKKks_zt:BuffDown(pVRj.BearForm)or not
QKKks_zt:AffectingCombat()))then
if
fuZ3z86.CastCycleAlly(PrPyxMK,yxjl,function(pVRj)return
pVRj:BuffDown(PrPyxMK)and
pVRj:HealthPercentage()<80 and not mP3mlD(pVRj)end)then return'Lifebloom Members'end
if
fuZ3z86.CastCycleAlly(PrPyxMK,yxjl,function(pVRj)return
pVRj:BuffDown(PrPyxMK)and
pVRj:GUID()==QKKks_zt:GUID()and not mP3mlD(pVRj)end)then return'Lifebloom Player'end end end
if


pVRj.Efflorescence:IsReady()and not QKKks_zt:IsMoving()and t5jzEd9()<2 and
JZAU2(rHSjalVy)>=TjhsnP and not xL7OTb and
((
QKKks_zt:BuffDown(pVRj.CatForm)and QKKks_zt:BuffDown(pVRj.BearForm)or not QKKks_zt:AffectingCombat()))then
if ZG(pVRj.Efflorescence)then return"Efflorescence Members"end end
if
QKKks_zt:AffectingCombat()and JZAU2(DPSThreshold)==0 and er.TargetIsValid()then return zPXTTg()end
if

pVRj.WildGrowth:IsCastable()and not QKKks_zt:IsMoving()and QKKks_zt:BuffUp(a)and
(
JZAU2(urkh)>=zhzpBSx or QKKks_zt:BuffUp(pVRj.IncarnationTreeofLifeBuff))then if ZG(pVRj.WildGrowth)then return'Wild Growth Members'end end
if pVRj.Swiftmend:CooldownRemains()<=0 and not
QKKks_zt:IsMoving()then
if
fuZ3z86.CastCycleAlly(pVRj.Swiftmend,yxjl,function(QKKks_zt)
return

QKKks_zt:HealthPercentage()<Ch and
(QKKks_zt:BuffUp(pVRj.Regrowth)or
QKKks_zt:BuffUp(pVRj.WildGrowth)or QKKks_zt:BuffUp(pVRj.Rejuvenation))and not
mP3mlD(QKKks_zt)end)then return'Swiftmend Members'end end
if pVRj.CenarionWard:IsReady()then
if
fuZ3z86.CastCycleAlly(pVRj.CenarionWard,LB1Z,function(QKKks_zt)
return
QKKks_zt:BuffDown(pVRj.CenarionWard)and not mP3mlD(QKKks_zt)end)then return'Cenarion Ward Tanks'end end
if
pVRj.Regrowth:IsCastable()and not QKKks_zt:IsMoving()then
if
fuZ3z86.CastCycleAlly(pVRj.Regrowth,yxjl,function(pVRj)return pVRj:HealthPercentage()<m6SCS0 and not
mP3mlD(pVRj)end)then return'Regrowth Members - Spam'end end
if

pVRj.Rejuvenation:IsCastable()and not xL7OTb and
(not h_8 or

QKKks_zt:ManaPercentage()>=WYdR("boss1"):HealthPercentage()+10 or(not UnitExists("boss1")and
QKKks_zt:ManaPercentage()>60))and
((
QKKks_zt:BuffDown(pVRj.CatForm)and QKKks_zt:BuffDown(pVRj.BearForm)or not QKKks_zt:AffectingCombat()))then
if
fuZ3z86.CastCycleAlly(pVRj.Rejuvenation,yxjl,function(QKKks_zt)
return
(

(
(QKKks_zt:BuffDown(pVRj.Rejuvenation))or
(pVRj.Germination:IsAvailable()and
QKKks_zt:BuffStack(pVRj.Rejuvenation)<2))and QKKks_zt:HealthPercentage()<NUhYw6R4 and not mP3mlD(QKKks_zt))end)then return'Rejuvenation Members'end end
if
pVRj.Regrowth:IsCastable()and(not QKKks_zt:IsMoving()or
QKKks_zt:BuffUp(pVRj.IncarnationTreeofLifeBuff))then
if
fuZ3z86.CastCycleAlly(pVRj.Regrowth,yxjl,function(fuZ3z86)
return
(fuZ3z86:HealthPercentage()<iy or


(
QKKks_zt:BuffUp(pVRj.IncarnationTreeofLifeBuff)and fuZ3z86:HealthPercentage()<100)and fuZ3z86:BuffDown(pVRj.Regrowth)and not mP3mlD(fuZ3z86))end)then return'Regrowth Members'end end;if
QKKks_zt:AffectingCombat()and er.TargetIsValid()and(not
QKKks_zt:IsMoving()or not qX)and DPSThreshold<100 then return
zPXTTg()end end;local function pVRj()w8T3f()return wqU76o()end
fuZ3z86.SetCustomAPL(_IQQ,XpkjA,pVRj,NsoTwDs)end;local function ZA()
C_Timer.After(1,function()if MainAddon then Q()else ZA()end end)end;print("here")ZA()