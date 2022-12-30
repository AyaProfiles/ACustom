
local function Q()local _IQQ='Aya_RDruid'local XpkjA=105;local pVRj=LibStub('StdUi')
local fuZ3z86=LibStub("AceAddon-3.0"):GetAddon(Z_AddonName)local er=fuZ3z86;local DFb100j=fuZ3z86.HealingEngine;local XL_=HeroLibEx;local pVRj=HeroCache
local WYdR=XL_.Unit;local QKKks_zt=WYdR.Player;local Are7xU=WYdR.Target;local pVRj=WYdR.Arena;local pVRj=WYdR.Party
local pVRj=WYdR.MouseOver;local yxjl=XL_.Spell;local pVRj=XL_.Item;local ZG=er.Cast;local pVRj=er.CastAlly
local Vu0cCAf=er.AoEON;local pVRj=er.CDsON;local pVRj=yxjl.Druid.Restoration;local qkP7O5=yxjl(391888)
local lqT=yxjl(391891)local mP3mlD=yxjl(391889)local PrPyxMK=yxjl(188550)local tczrIB=yxjl(114108)
local a=yxjl(77758)local wqU76o=yxjl(192090)local LB1Z=yxjl(213771)local N9L=yxjl(132158)
local hDc_M=yxjl(392301)local qW0lRiD1,iD1IUx;local mP3mlD,JLCOx_ak;local mP3mlD,mP3mlD
local mP3mlD=fuZ3z86.Config.GetClassSetting;local hPQ="Aya_Rdruid_Config"local mP3mlD='FF7C0A'
local mP3mlD={key=hPQ,title='Aya - Restoration Druid',subtitle='Aya '..fuZ3z86.Version,width=470,height=650,profiles=true,config={{type='header',text='Restoration',size=24,align='Center',color=mP3mlD},{type='spacer'},{type='ruler'},{type='spacer'},{type='header',text='Spells',color=mP3mlD},{type='spinner',text='DPS Threshold',key='DPSThreshold1',min=1,max=100,default=80},{type='spinner',text='Regrowth',key='RegrowthHP',min=1,max=100,default=75},{type='spinner',text='Regrowth Refresh',key='RegrowthHP2',min=1,max=100,default=50},{type='spinner',text='Rejuvenation',key='RejuvenationHP',min=1,max=100,default=85},{type='spinner',text='Wild Growth',key='WildGrowthHP',min=1,max=100,default=85},{type='spinner',text='Wild Growth Units',key='WildGrowthNum',min=1,max=40,default=3},{type='spinner',text='Efflorescence',key='EfflorescenceHP',min=1,max=100,default=100},{type='spinner',text='Efflorescence Units',key='EfflorescenceNum',min=1,max=40,default=1},{type='spinner',text='Ironbark',key='IronbarkHP',min=1,max=100,default=50},{type='spinner',text='Swiftmend',key='SwiftmendHP',min=1,max=100,default=80},{type='spinner',text='Convoke the Spirits',key='ConvokeHP',min=1,max=100,default=70},{type='spinner',text='Convoke the Spirits Units',key='ConvokeNum',min=1,max=40,default=3},{type='spacer'},{type='header',text='Defensive',color=mP3mlD},{type='spinner',text='Barkskin',key='BarkSkinHP',min=1,max=100,default=60},{type='spinner',text='Renewal',key='RenewalHP',min=1,max=100,default=70},{type='spacer'},{type='header',text='Class',color=mP3mlD},{type='spinner',text="Cooldowns HP",key='CooldownSlider',min=1,max=100,default=75},{type='dropdown',text='Cooldown Options',key='CooldownOption',list={{text='Auto',key=1},{text='Manually',key=2}},default=1},{type='dropdown',text='Convoke the Spirits',key='ConvokeOption',list={{text='Heal',key=1},{text='Heal + Damage',key=2}},default=2},{type='checkbox',text='Form Swap for DPS',key='FormSwap',default=true}}}fuZ3z86.SetCustomConfig(_IQQ,XpkjA,mP3mlD)
local function R1FIoQI()end;local NsoTwDs,HGli,iy,m6SCS0,NUhYw6R4,Hv,Ch;local urkh,zhzpBSx,rHSjalVy,TjhsnP;local Q,t5jzEd9,JZAU2,mP3mlD;local zPXTTg,hPQ;local seMLr={}
XL_:RegisterForEvent(function(QKKks_zt,...)
local ZG,pVRj,Are7xU,fuZ3z86=...
if QKKks_zt=="UNIT_SPELLCAST_SENT"then if ZG=="player"and pVRj then currentspell=fuZ3z86
currentspelltarget=pVRj end end
if QKKks_zt=="UI_ERROR_MESSAGE"then if pVRj==SPELL_FAILED_LINE_OF_SIGHT then
missedunit=currentspelltarget;missedspell=currentspell end end end,"UI_ERROR_MESSAGE","UNIT_SPELLCAST_SENT")
local function qX()
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
HGli=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"CooldownSlider")
NsoTwDs=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"CooldownOption")
zPXTTg=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"ConvokeOption")
Q=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"TopTrinketTarget")
t5jzEd9=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"TopTrinketOption")
JZAU2=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"BotTrinketTarget")
mP3mlD=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"BotTrinketOption")
BarkSkinHP=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"BarkSkinHP")
hPQ=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"FormSwap")end
local function mP3mlD(QKKks_zt,fuZ3z86)local ZG,pVRj
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
table.insert(seMLr,(mP3mlD(missedunit).." "..GetTime()))missedunit=nil end
if
table.getn(seMLr)>0 then
for QKKks_zt=1,table.getn(seMLr)do
if seMLr[QKKks_zt]~=nil then
for pVRj in
string.gmatch(seMLr[QKKks_zt],"([^%s]+)")do pVRj=tonumber(pVRj)if type(pVRj)=="number"then if pVRj<=GetTime()-1.5 then
table.remove(seMLr,QKKks_zt)end end end end end end end
local function mP3mlD(QKKks_zt)
if table.getn(seMLr)>0 and QKKks_zt~=nil then for pVRj=1,table.getn(seMLr)
do
for pVRj in string.gmatch(seMLr[pVRj],"([^%s]+)")do if pVRj and
pVRj==QKKks_zt:GUID()then return true end end end else
return false end end
local function seMLr(pVRj)
if(WYdR(pVRj):BuffUp(yxjl(365153)))then
for QKKks_zt=1,40 do if
select(10,UnitBuff(pVRj,QKKks_zt))==365153 then
return select(16,UnitBuff(pVRj,QKKks_zt))end end else return 0 end end
local function t5jzEd9(pVRj)
if pVRj==nil or type(pVRj)=="string"then return nil end;pVRj=pVRj/100;local fuZ3z86=0
if GetNumGroupMembers()>0 and
GetNumGroupMembers()<=5 then
for QKKks_zt=1,GetNumGroupMembers()do
if
UnitExists("party"..QKKks_zt)and
not WYdR("party"..QKKks_zt):IsDeadOrGhost()and
WYdR("party"..QKKks_zt):DebuffDown(yxjl(228578))then
local Are7xU=UnitHealth("party"..
QKKks_zt)+
(UnitGetIncomingHeals("party"..QKKks_zt)or 0)-seMLr("party"..QKKks_zt)local ZG=UnitHealthMax("party"..QKKks_zt)if

Are7xU/ZG<=pVRj or(UnitHealth("party"..QKKks_zt)/ZG==1 and
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
WYdR("raid"..QKKks_zt):DebuffDown(yxjl(191587))then local ZG=0
local ZG=
UnitHealth("raid"..QKKks_zt)+ (
UnitGetIncomingHeals("raid"..QKKks_zt)or 0)-seMLr("raid"..QKKks_zt)local QKKks_zt=UnitHealthMax("raid"..QKKks_zt)if
ZG/QKKks_zt<=pVRj then fuZ3z86=fuZ3z86+1 end end end end
if GetNumGroupMembers()==0 then
local ZG=UnitHealth("player")+ (
UnitGetIncomingHeals("player")or 0)-
seMLr("player")local QKKks_zt=UnitHealthMax("player")if ZG/QKKks_zt<pVRj then
fuZ3z86=fuZ3z86+1 end end;return fuZ3z86 end
local function JZAU2()
for QKKks_zt=1,4 do local Are7xU,ZG,QKKks_zt,fuZ3z86=GetTotemInfo(QKKks_zt)
if ZG==
pVRj.Efflorescence:Name()then return
(floor(QKKks_zt+fuZ3z86-GetTime()+.5))or 0 end end;return 0 end
local function seMLr()
if



pVRj.ConvoketheSpirits:IsReady()and Are7xU:IsInMeleeRange(40)and not QKKks_zt:IsMoving()and zPXTTg==2 and
(
UnitExists("boss1")or XL_.FightRemains(Enemies10ySplash)>30)and CombatTime>5 then
if pVRj.MoonkinForm:IsReady()then if ZG(pVRj.MoonkinForm)then
return'MoonkinForm for Convoke - DPS'end end
if iD1IUx<3 and iD1IUx>0 and hPQ then if pVRj.CatForm:IsReady()and
QKKks_zt:BuffDown(pVRj.CatForm)then
if ZG(pVRj.CatForm)then return'Cat Form for Convoke'end end elseif
iD1IUx>=3 and hPQ then
if
pVRj.BearForm:IsReady()and QKKks_zt:BuffDown(pVRj.BearForm)then if ZG(pVRj.BearForm)then return'BearForm for Convoke'end end end;if ZG(pVRj.ConvoketheSpirits)and
(QKKks_zt:BuffUp(pVRj.MoonkinForm)or not
pVRj.MoonkinForm:IsAvailable())then
return"Convoke the Spirits - DPS"end end
if pVRj.NaturesVigil:IsReady()and
(UnitExists("boss1")or
XL_.FightRemains(Enemies10ySplash)>30)then if ZG(pVRj.NaturesVigil,true)then return
'NaturesVigil - DPS'end end
if iD1IUx<3 and iD1IUx>0 and hPQ then
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
(Are7xU:DebuffDown(wqU76o)or Are7xU:DebuffStack(wqU76o)<3)and a:IsReady()then
if
pVRj.BearForm:IsReady()and QKKks_zt:BuffDown(pVRj.BearForm)then if
ZG(pVRj.BearForm)then return'BearForm for Thrash'end end
if QKKks_zt:BuffUp(pVRj.BearForm)then if ZG(a)then return'Thrash - DPS'end end end
if Are7xU:IsInMeleeRange(10)then
if pVRj.CatForm:IsReady()and
QKKks_zt:BuffDown(pVRj.CatForm)then if ZG(pVRj.CatForm)then
return'Cat Form for Shred/Auto Attack'end end
if
pVRj.Shred:IsReady()and QKKks_zt:BuffUp(pVRj.CatForm)then if ZG(pVRj.Shred)then return'Shred (Cat Form) - DPS'end end end elseif iD1IUx>=3 and hPQ then
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
(Are7xU:DebuffDown(wqU76o)or Are7xU:DebuffStack(wqU76o)<3)and a:IsReady()then
if
pVRj.BearForm:IsReady()and QKKks_zt:BuffDown(pVRj.BearForm)then if
ZG(pVRj.BearForm)then return'BearForm for Thrash'end end
if QKKks_zt:BuffUp(pVRj.BearForm)then if ZG(a)then return'Thrash - DPS'end end end
if Are7xU:IsInMeleeRange(10)then
if QKKks_zt:BuffDown(pVRj.BearForm)then if
ZG(pVRj.BearForm)then return'BearForm for Swipe/Auto Attack'end end
if LB1Z:IsReady()and QKKks_zt:BuffUp(pVRj.BearForm)then if
ZG(LB1Z)then return'Swipe (Bear Form) - DPS'end end end end
if
pVRj.Moonfire:IsReady()and Are7xU:DebuffDown(pVRj.MoonfireDebuff)and
(not Are7xU:IsInMeleeRange(10)or not hPQ)then if ZG(pVRj.Moonfire)then return
'Moonfire - DPS - Range'end end
if
pVRj.Sunfire:IsReady()and Are7xU:DebuffDown(pVRj.SunfireDebuff)and
(not Are7xU:IsInMeleeRange(10)or not hPQ)then if ZG(pVRj.Sunfire)then return
'Sunfire - DPS'end end
if
pVRj.Wrath:IsReady()and not QKKks_zt:IsMoving()and
(not Are7xU:IsInMeleeRange(10)or not hPQ)then if ZG(pVRj.Wrath)then
return'Wrath - DPS'end end end
local function a()local wqU76o,a,yxjl,a,a,a=DFb100j:Update()qX()
if Vu0cCAf()then
qW0lRiD1=QKKks_zt:GetEnemiesInRangeFilter(10)Enemies10ySplash=WYdR:GetEnemiesInSplashRange(10)
iD1IUx=#qW0lRiD1;JLCOx_ak=WYdR:GetEnemiesInSplashRangeCount(10)else iD1IUx=1
JLCOx_ak=1 end;local iD1IUx=XL_.CombatTime()
local WYdR=not QKKks_zt:IsMoving()
local WYdR=(QKKks_zt:HealthPercentage()>=60)local WYdR=Are7xU:IsInMeleeRange(5)
local WYdR=

#yxjl>1 and
(NsoTwDs==1 and
DFb100j:AverageHP()<=HGli or NsoTwDs==2)and not
QKKks_zt:IsChanneling(pVRj.Tranquility)and QKKks_zt:BuffDown(pVRj.Flourish)and QKKks_zt:BuffDown(pVRj.IncarnationTreeofLife)local XL_=Vu0cCAf()and#yxjl>=1
if
Are7xU:IsAPlayer()and
Are7xU:IsDeadOrGhost()and not Are7xU:IsEnemy()and Are7xU:IsInParty()then if iD1IUx==0 and
pVRj.Revive:IsReady(QKKks_zt)then
if ZG(pVRj.Revive)then return'Resurrection'end end end;if pVRj.Barkskin:IsReady()and
QKKks_zt:HealthPercentage()<BarkSkinHP then
if ZG(pVRj.Barkskin)then return'Barkskin Defensive'end end
if

pVRj.Renewal:IsReady()and QKKks_zt:HealthPercentage()<RenewalHP then if ZG(pVRj.Renewal)then return'Renewal Deffensive'end end
if qkP7O5:IsCastable()and not WYdR then
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
if WYdR then
if pVRj.Ironbark:IsReady()then
if
fuZ3z86.CastCycleAlly(pVRj.Ironbark,yxjl,function(pVRj)
return
pVRj:HealthPercentage()<Hv and not mP3mlD(pVRj)end)then return'Ironbark Members'end end;if
N9L:IsReady()and pVRj.ConvoketheSpirits:IsReady()then
if ZG(N9L,true)then return'Natures Swiftness before Convoke'end end
if
pVRj.ConvoketheSpirits:IsReady()and not QKKks_zt:IsMoving()then
if
fuZ3z86.CastCycleAlly(pVRj.ConvoketheSpirits,yxjl,function(pVRj)
return
pVRj:HealthPercentage()<HGli and not mP3mlD(pVRj)end)then return'Convoke the Spirits - Heal'end end
if
pVRj.Flourish:IsReady()and pVRj.WildGrowth:IsReady()and not QKKks_zt:IsMoving()and
DFb100j:AverageHP()<=HGli then
if
fuZ3z86.CastCycleAlly(pVRj.WildGrowth,yxjl,function(pVRj)
return
pVRj:HealthPercentage()<HGli and not mP3mlD(pVRj)end)then return'Wild Growth before Flourish'end end
if

pVRj.Flourish:IsReady()and not QKKks_zt:IsMoving()and DFb100j:AverageHP()<=HGli then if ZG(pVRj.Flourish)then return'Flourish'end end
if pVRj.IncarnationTreeofLife:IsReady()then if
ZG(pVRj.IncarnationTreeofLife)then return'IncarnationTreeofLife'end end
if
pVRj.Tranquility:IsReady()and pVRj.WildGrowth:IsReady()and not QKKks_zt:IsMoving()and
DFb100j:AverageHP()<=HGli then
if
fuZ3z86.CastCycleAlly(pVRj.WildGrowth,yxjl,function(pVRj)
return
pVRj:HealthPercentage()<HGli and not mP3mlD(pVRj)end)then return'Wild Growth before Tranquility'end end
if

pVRj.Tranquility:IsReady()and not QKKks_zt:IsMoving()and DFb100j:AverageHP()<=HGli then if ZG(pVRj.Tranquility)then return'Tranquility'end end end
if pVRj.Rejuvenation:IsCastable()and
fuZ3z86.Toggle:GetToggle("SpreadRejuvenation")then
if
fuZ3z86.CastCycleAlly(pVRj.Rejuvenation,yxjl,function(QKKks_zt)return
(
(QKKks_zt:BuffDown(pVRj.Rejuvenation))and not mP3mlD(QKKks_zt))end)then return'Rejuvenation Spread Members - toggle'end end
if
PrPyxMK:IsCastable()and
(
(hDc_M:IsAvailable()and
fuZ3z86.HealingEngine:BuffTotal(PrPyxMK)<2)or fuZ3z86.HealingEngine:BuffTotal(PrPyxMK)<1)and
((
QKKks_zt:BuffDown(pVRj.CatForm)and QKKks_zt:BuffDown(pVRj.BearForm)or not
QKKks_zt:AffectingCombat()))then
if
fuZ3z86.CastCycleAlly(PrPyxMK,wqU76o,function(pVRj)return
pVRj:BuffDown(PrPyxMK)and not mP3mlD(pVRj)end)then return'Lifebloom Tanks'end end
if GetNumGroupMembers()<=5 then
if


PrPyxMK:IsCastable()and hDc_M:IsAvailable()and fuZ3z86.HealingEngine:BuffTotal(PrPyxMK)<2 and
((
QKKks_zt:BuffDown(pVRj.CatForm)and QKKks_zt:BuffDown(pVRj.BearForm)or not QKKks_zt:AffectingCombat()))then
if
fuZ3z86.CastCycleAlly(PrPyxMK,yxjl,function(pVRj)return
pVRj:BuffDown(PrPyxMK)and
pVRj:HealthPercentage()<80 and not mP3mlD(pVRj)end)then return'Lifebloom Members'end
if
fuZ3z86.CastCycleAlly(PrPyxMK,yxjl,function(pVRj)return
pVRj:BuffDown(PrPyxMK)and
pVRj:GUID()==QKKks_zt:GUID()and not mP3mlD(pVRj)end)then return'Lifebloom Player'end end end
if


pVRj.Efflorescence:IsReady()and not QKKks_zt:IsMoving()and JZAU2()<2 and
t5jzEd9(rHSjalVy)>=TjhsnP and not WYdR and
((
QKKks_zt:BuffDown(pVRj.CatForm)and QKKks_zt:BuffDown(pVRj.BearForm)or not QKKks_zt:AffectingCombat()))then
if ZG(pVRj.Efflorescence)then return"Efflorescence Members"end end
if
QKKks_zt:AffectingCombat()and t5jzEd9(DPSThreshold)==0 and er.TargetIsValid()then return seMLr()end
if
pVRj.WildGrowth:IsCastable()and not QKKks_zt:IsMoving()and QKKks_zt:BuffUp(tczrIB)and
t5jzEd9(urkh)>=zhzpBSx then
if
fuZ3z86.CastCycleAlly(pVRj.WildGrowth,yxjl,function(pVRj)
return
pVRj:HealthPercentage()<urkh and not mP3mlD(pVRj)end)then return'Wild Growth Members'end end
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
fuZ3z86.CastCycleAlly(pVRj.CenarionWard,wqU76o,function(QKKks_zt)
return
QKKks_zt:BuffDown(pVRj.CenarionWard)and not mP3mlD(QKKks_zt)end)then return'Cenarion Ward Tanks'end end
if
pVRj.Regrowth:IsCastable()and not QKKks_zt:IsMoving()then
if
fuZ3z86.CastCycleAlly(pVRj.Regrowth,yxjl,function(pVRj)return pVRj:HealthPercentage()<m6SCS0 and not
mP3mlD(pVRj)end)then return'Regrowth Members - Spam'end end
if
pVRj.Rejuvenation:IsCastable()and not WYdR and
((
QKKks_zt:BuffDown(pVRj.CatForm)and QKKks_zt:BuffDown(pVRj.BearForm)or not
QKKks_zt:AffectingCombat()))then
if
fuZ3z86.CastCycleAlly(pVRj.Rejuvenation,yxjl,function(QKKks_zt)
return
(

(
(QKKks_zt:BuffDown(pVRj.Rejuvenation))or
(pVRj.Germination:IsAvailable()and
QKKks_zt:BuffStack(pVRj.Rejuvenation)<2))and QKKks_zt:HealthPercentage()<NUhYw6R4 and not mP3mlD(QKKks_zt))end)then return'Rejuvenation Members'end end
if
pVRj.Regrowth:IsCastable()and not QKKks_zt:IsMoving()then
if
fuZ3z86.CastCycleAlly(pVRj.Regrowth,yxjl,function(QKKks_zt)return
QKKks_zt:HealthPercentage()<iy and
QKKks_zt:BuffDown(pVRj.Regrowth)and not mP3mlD(QKKks_zt)end)then return'Regrowth Members'end end;if
QKKks_zt:AffectingCombat()and er.TargetIsValid()and(not
QKKks_zt:IsMoving()or not hPQ)then return seMLr()end end;local function pVRj()Q()return a()end
fuZ3z86.SetCustomAPL(_IQQ,XpkjA,pVRj,R1FIoQI)end;local function ZA()
C_Timer.After(1,function()if MainAddon then Q()else ZA()end end)end;print("here")ZA()