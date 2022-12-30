
local function Q()local _IQQ='Aya_RDruid'local XpkjA=105;local pVRj=LibStub('StdUi')
local fuZ3z86=LibStub("AceAddon-3.0"):GetAddon(Z_AddonName)local er=fuZ3z86;local DFb100j=fuZ3z86.HealingEngine;local XL_=HeroLibEx;local pVRj=HeroCache
local WYdR=XL_.Unit;local QKKks_zt=WYdR.Player;local Are7xU=WYdR.Target;local pVRj=WYdR.Arena;local pVRj=WYdR.Party
local pVRj=WYdR.MouseOver;local yxjl=XL_.Spell;local pVRj=XL_.Item;local ZG=er.Cast;local pVRj=er.CastAlly
local Vu0cCAf=er.AoEON;local pVRj=er.CDsON;local pVRj=yxjl.Druid.Restoration;local qkP7O5,lqT;local mP3mlD,PrPyxMK
local mP3mlD,mP3mlD;local mP3mlD=fuZ3z86.Config.GetClassSetting;local tczrIB="Aya_Rdruid_Config"
local mP3mlD='FF7C0A'
local mP3mlD={key=tczrIB,title='Aya - Restoration Druid',subtitle='Aya '..fuZ3z86.Version,width=470,height=650,profiles=true,config={{type='header',text='Restoration',size=24,align='Center',color=mP3mlD},{type='spacer'},{type='ruler'},{type='spacer'},{type='header',text='Spells',color=mP3mlD},{type='spinner',text='DPS Threshold',key='DPSThreshold1',min=1,max=100,default=80},{type='spinner',text='Regrowth',key='RegrowthHP',min=1,max=100,default=75},{type='spinner',text='Regrowth Refresh',key='RegrowthHP2',min=1,max=100,default=50},{type='spinner',text='Rejuvenation',key='RejuvenationHP',min=1,max=100,default=85},{type='spinner',text='Wild Growth',key='WildGrowthHP',min=1,max=100,default=85},{type='spinner',text='Wild Growth Units',key='WildGrowthNum',min=1,max=40,default=3},{type='spinner',text='Efflorescence',key='EfflorescenceHP',min=1,max=100,default=100},{type='spinner',text='Efflorescence Units',key='EfflorescenceNum',min=1,max=40,default=1},{type='spinner',text='Ironbark',key='IronbarkHP',min=1,max=100,default=50},{type='spinner',text='Swiftmend',key='SwiftmendHP',min=1,max=100,default=80},{type='spinner',text='Convoke the Spirits',key='ConvokeHP',min=1,max=100,default=70},{type='spinner',text='Convoke the Spirits Units',key='ConvokeNum',min=1,max=40,default=3},{type='spacer'},{type='header',text='Defensive',color=mP3mlD},{type='spinner',text='Barkskin',key='BarkSkinHP',min=1,max=100,default=60},{type='spinner',text='Renewal',key='RenewalHP',min=1,max=100,default=70},{type='spacer'},{type='header',text='Class',color=mP3mlD},{type='spinner',text="Cooldowns HP",key='CooldownSlider',min=1,max=100,default=75},{type='dropdown',text='Cooldown Options',key='CooldownOption',list={{text='Auto',key=1},{text='Manually',key=2}},default=1},{type='dropdown',text='Convoke the Spirits',key='ConvokeOption',list={{text='Heal',key=1},{text='Heal + Damage',key=2}},default=2},{type='checkbox',text='Form Swap for DPS',key='FormSwap',default=true},{type='checkbox',text='Mana Management',key='ManaManagement',default=true}}}fuZ3z86.SetCustomConfig(_IQQ,XpkjA,mP3mlD)local function a()end
local wqU76o,LB1Z,N9L,hDc_M,qW0lRiD1,iD1IUx,JLCOx_ak;local hPQ,R1FIoQI,NsoTwDs,HGli;local iy,mP3mlD,m6SCS0,NUhYw6R4;local Hv,Ch,urkh;local tczrIB={}
XL_:RegisterForEvent(function(QKKks_zt,...)
local Are7xU,pVRj,ZG,fuZ3z86=...
if QKKks_zt=="UNIT_SPELLCAST_SENT"then if Are7xU=="player"and pVRj then
currentspell=fuZ3z86;currentspelltarget=pVRj end end
if QKKks_zt=="UI_ERROR_MESSAGE"then if pVRj==SPELL_FAILED_LINE_OF_SIGHT then
missedunit=currentspelltarget;missedspell=currentspell end end end,"UI_ERROR_MESSAGE","UNIT_SPELLCAST_SENT")local function zhzpBSx(pVRj)if pVRj then return 1 else return 0 end end;local function rHSjalVy(pVRj)
return pVRj~=0 end
local function rHSjalVy()
DPSThreshold=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"DPSThreshold1")
N9L=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"RegrowthHP")
hDc_M=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"RegrowthHP2")
qW0lRiD1=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"RejuvenationHP")
hPQ=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"WildGrowthHP")
R1FIoQI=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"WildGrowthNum")
NsoTwDs=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"EfflorescenceHP")
HGli=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"EfflorescenceNum")
iD1IUx=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"IronbarkHP")
JLCOx_ak=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"SwiftmendHP")
RenewalHP=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"RenewalHP")
ConvokeHP=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"ConvokeHP")
LB1Z=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"CooldownSlider")
wqU76o=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"CooldownOption")
Hv=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"ConvokeOption")
iy=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"TopTrinketTarget")
mP3mlD=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"TopTrinketOption")
m6SCS0=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"BotTrinketTarget")
NUhYw6R4=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"BotTrinketOption")
BarkSkinHP=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"BarkSkinHP")
Ch=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"FormSwap")
urkh=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"ManaManagement")end
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
local function NUhYw6R4()if missedunit then
table.insert(tczrIB,(mP3mlD(missedunit).." "..GetTime()))missedunit=nil end
if
table.getn(tczrIB)>0 then
for QKKks_zt=1,table.getn(tczrIB)do
if tczrIB[QKKks_zt]~=nil then
for pVRj in
string.gmatch(tczrIB[QKKks_zt],"([^%s]+)")do pVRj=tonumber(pVRj)
if type(pVRj)=="number"then if pVRj<=GetTime()-1.5 then
table.remove(tczrIB,QKKks_zt)end end end end end end end
local function mP3mlD(pVRj)
if table.getn(tczrIB)>0 and pVRj~=nil then
for QKKks_zt=1,table.getn(tczrIB)do for QKKks_zt in
string.gmatch(tczrIB[QKKks_zt],"([^%s]+)")do
if QKKks_zt and QKKks_zt==pVRj:GUID()then return true end end end else return false end end
local function tczrIB(pVRj)
if(WYdR(pVRj):BuffUp(yxjl(365153)))then
for QKKks_zt=1,40 do if
select(10,UnitBuff(pVRj,QKKks_zt))==365153 then
return select(16,UnitBuff(pVRj,QKKks_zt))end end else return 0 end end
local function iy(fuZ3z86)
if fuZ3z86 ==nil or type(fuZ3z86)=="string"then return nil end;fuZ3z86=fuZ3z86/100;local pVRj=0
if GetNumGroupMembers()>0 and
GetNumGroupMembers()<=5 then
for QKKks_zt=1,GetNumGroupMembers()do
if
UnitExists("party"..QKKks_zt)and
not WYdR("party"..QKKks_zt):IsDeadOrGhost()and
WYdR("party"..QKKks_zt):DebuffDown(yxjl(228578))then
local Are7xU=UnitHealth("party"..
QKKks_zt)+
(UnitGetIncomingHeals("party"..QKKks_zt)or 0)-tczrIB("party"..QKKks_zt)local QKKks_zt=UnitHealthMax("party"..QKKks_zt)if
Are7xU/QKKks_zt<fuZ3z86 then pVRj=pVRj+1 end end end;if
(
((UnitHealth("player")+
(UnitGetIncomingHeals("player")or 0))/
UnitHealthMax("player"))<fuZ3z86)then pVRj=pVRj+1 end end
if GetNumGroupMembers()>5 then
for QKKks_zt=1,GetNumGroupMembers()do
if



UnitExists("raid"..QKKks_zt)and not UnitIsDead("raid"..QKKks_zt)and
WYdR("raid"..QKKks_zt):DebuffDown(yxjl(362075))and
WYdR("raid"..QKKks_zt):DebuffDown(yxjl(362397))and
WYdR("raid"..QKKks_zt):DebuffDown(yxjl(191587))then local Are7xU=0
local Are7xU=
UnitHealth("raid"..QKKks_zt)+ (
UnitGetIncomingHeals("raid"..QKKks_zt)or 0)-tczrIB("raid"..QKKks_zt)local QKKks_zt=UnitHealthMax("raid"..QKKks_zt)if Are7xU/QKKks_zt<
fuZ3z86 then pVRj=pVRj+1 end end end end
if GetNumGroupMembers()==0 then
local Are7xU=UnitHealth("player")+ (
UnitGetIncomingHeals("player")or 0)-
tczrIB("player")local QKKks_zt=UnitHealthMax("player")if Are7xU/QKKks_zt<fuZ3z86 then
pVRj=pVRj+1 end end;return pVRj end
local function m6SCS0()
for QKKks_zt=1,4 do local ZG,QKKks_zt,fuZ3z86,Are7xU=GetTotemInfo(QKKks_zt)
if QKKks_zt==
pVRj.Efflorescence:Name()then return
(floor(fuZ3z86+Are7xU-GetTime()+.5))or 0 end end;return 0 end
local function yxjl()
if

pVRj.ConvoketheSpirits:IsReady()and Are7xU:IsInMeleeRange(40)and Hv==2 and
(UnitExists("boss1")or
XL_.FightRemains(Enemies10ySplash)>30)and
XL_.CombatTime()>5 then
if pVRj.MoonkinForm:IsReady()then if ZG(pVRj.MoonkinForm)then
return'MoonkinForm for Convoke - DPS'end end
if
lqT<3 and Are7xU:IsInMeleeRange(10)and lqT>0 and Ch then if pVRj.CatForm:IsReady()and
QKKks_zt:BuffDown(pVRj.CatForm)then
if ZG(pVRj.CatForm)then return'Cat Form for Convoke'end end elseif lqT>=3 and
Are7xU:IsInMeleeRange(10)and Ch then if pVRj.BearForm:IsReady()and
QKKks_zt:BuffDown(pVRj.BearForm)then
if ZG(pVRj.BearForm)then return'BearForm for Convoke'end end end;if ZG(pVRj.ConvoketheSpirits)and
(QKKks_zt:BuffUp(pVRj.MoonkinForm)or not
pVRj.MoonkinForm:IsAvailable())then
return"Convoke the Spirits - DPS"end end
if pVRj.NaturesVigil:IsReady()and
(UnitExists("boss1")or
XL_.FightRemains(Enemies10ySplash)>30)then if ZG(pVRj.NaturesVigil,true)then return
'NaturesVigil - DPS'end end
if lqT<3 and lqT>0 and Ch then
if QKKks_zt:ComboPoints()>=5 and
Are7xU:IsInMeleeRange(10)then if pVRj.CatForm:IsReady()and
QKKks_zt:BuffDown(pVRj.CatForm)then
if ZG(pVRj.CatForm)then return'Cat Form for CP Spend'end end
if

pVRj.Rip:IsReady()and Are7xU:TimeToDie()>20 and
QKKks_zt:BuffUp(pVRj.CatForm)and
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
pVRj.Moonfire:IsReady()and Are7xU:DebuffDown(pVRj.MoonfireDebuff)then if ZG(pVRj.Moonfire)then return'Moonfire - DPS'end end
if

pVRj.Sunfire:IsReady()and Are7xU:DebuffDown(pVRj.SunfireDebuff)and
(

(QKKks_zt:BuffDown(pVRj.CatForm)and QKKks_zt:BuffDown(pVRj.BearForm))or Are7xU:DebuffDown(pVRj.MoonfireDebuff)or not QKKks_zt:AffectingCombat())then if ZG(pVRj.Sunfire)then return'Sunfire - DPS'end end
if

(Are7xU:DebuffDown(pVRj.ThrashRestoDebuff)or
Are7xU:DebuffStack(pVRj.ThrashRestoDebuff)<3)and pVRj.ThrashResto:IsReady()then
if
pVRj.BearForm:IsReady()and QKKks_zt:BuffDown(pVRj.BearForm)then if ZG(pVRj.BearForm)then return'BearForm for Thrash'end end;if QKKks_zt:BuffUp(pVRj.BearForm)then
if ZG(pVRj.ThrashResto)then return'Thrash - DPS'end end end
if Are7xU:IsInMeleeRange(10)then
if pVRj.CatForm:IsReady()and
QKKks_zt:BuffDown(pVRj.CatForm)then if ZG(pVRj.CatForm)then
return'Cat Form for Shred/Auto Attack'end end
if
pVRj.Shred:IsReady()and QKKks_zt:BuffUp(pVRj.CatForm)then if ZG(pVRj.Shred)then return'Shred (Cat Form) - DPS'end end end elseif lqT>=3 and Ch then
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

(Are7xU:DebuffDown(pVRj.ThrashRestoDebuff)or
Are7xU:DebuffStack(pVRj.ThrashRestoDebuff)<3)and pVRj.ThrashResto:IsReady()then
if
pVRj.BearForm:IsReady()and QKKks_zt:BuffDown(pVRj.BearForm)and Are7xU:IsInMeleeRange(10)then if
ZG(pVRj.BearForm)then return'BearForm for Thrash'end end;if QKKks_zt:BuffUp(pVRj.BearForm)then
if ZG(pVRj.ThrashResto)then return'Thrash - DPS'end end end
if Are7xU:IsInMeleeRange(10)then
if QKKks_zt:BuffDown(pVRj.BearForm)then if
ZG(pVRj.BearForm)then return'BearForm for Swipe/Auto Attack'end end;if
pVRj.SwipeResto:IsReady()and QKKks_zt:BuffUp(pVRj.BearForm)then
if ZG(pVRj.SwipeResto)then return'Swipe (Bear Form) - DPS'end end end end
if
pVRj.Moonfire:IsReady()and Are7xU:DebuffDown(pVRj.MoonfireDebuff)and
(not Are7xU:IsInMeleeRange(10)or not Ch)then if ZG(pVRj.Moonfire)then return
'Moonfire - DPS - Range'end end
if
pVRj.Sunfire:IsReady()and Are7xU:DebuffDown(pVRj.SunfireDebuff)and
(not Are7xU:IsInMeleeRange(10)or not Ch)then if ZG(pVRj.Sunfire)then return
'Sunfire - DPS'end end
if
pVRj.Wrath:IsReady()and not QKKks_zt:IsMoving()and
(not Are7xU:IsInMeleeRange(10)or not Ch)then if ZG(pVRj.Wrath)then
return'Wrath - DPS'end end end
local function Hv()local Ch,Hv,tczrIB,Hv,Hv,Hv=DFb100j:Update()rHSjalVy()
if Vu0cCAf()then
qkP7O5=QKKks_zt:GetEnemiesInRangeFilter(10)Enemies10ySplash=WYdR:GetEnemiesInSplashRange(10)
lqT=#qkP7O5;PrPyxMK=WYdR:GetEnemiesInSplashRangeCount(10)else lqT=1
PrPyxMK=1 end;local XL_=XL_.CombatTime()
local lqT=not QKKks_zt:IsMoving()
local lqT=(QKKks_zt:HealthPercentage()>=60)local lqT=Are7xU:IsInMeleeRange(5)
local lqT=

#tczrIB>1 and
(wqU76o==1 and
DFb100j:AverageHP()<=LB1Z or wqU76o==2)and not
QKKks_zt:IsChanneling(pVRj.Tranquility)and QKKks_zt:BuffDown(pVRj.Flourish)and QKKks_zt:BuffDown(pVRj.IncarnationTreeofLife)local wqU76o=Vu0cCAf()and#tczrIB>=1
if
Are7xU:IsAPlayer()and
Are7xU:IsDeadOrGhost()and not Are7xU:IsEnemy()and Are7xU:IsInParty()then if XL_==0 and
pVRj.Revive:IsReady(QKKks_zt)then
if ZG(pVRj.Revive)then return'Resurrection'end end end;if pVRj.Barkskin:IsReady()and
QKKks_zt:HealthPercentage()<BarkSkinHP then
if ZG(pVRj.Barkskin)then return'Barkskin Defensive'end end
if

pVRj.Renewal:IsReady()and QKKks_zt:HealthPercentage()<RenewalHP then if ZG(pVRj.Renewal)then return'Renewal Deffensive'end end
if pVRj.AdaptiveSwarm:IsCastable()and not lqT then
if
fuZ3z86.CastCycleAlly(pVRj.AdaptiveSwarm,tczrIB,function(QKKks_zt)return

QKKks_zt:BuffStack(pVRj.AdaptiveSwarmBuff)==2 and not mP3mlD(QKKks_zt)end)then return'Adaptive Swarm Members 2 Stacks'end
if
fuZ3z86.CastCycleAlly(pVRj.AdaptiveSwarm,tczrIB,function(QKKks_zt)return
QKKks_zt:BuffStack(pVRj.AdaptiveSwarmBuff)==
1 and not mP3mlD(QKKks_zt)end)then return'Adaptive Swarm Members 1 Stacks'end
if
fuZ3z86.CastCycleAlly(pVRj.AdaptiveSwarm,tczrIB,function(QKKks_zt)return
QKKks_zt:BuffStack(pVRj.AdaptiveSwarmBuff)==
3 and not mP3mlD(QKKks_zt)end)then return'Adaptive Swarm Members 3 Stacks'end
if
fuZ3z86.CastCycleAlly(pVRj.AdaptiveSwarm,tczrIB,function(QKKks_zt)return
QKKks_zt:BuffStack(pVRj.AdaptiveSwarmBuff)==
0 and not mP3mlD(QKKks_zt)end)then return'Adaptive Swarm Members 0 Stacks'end end
if lqT then
if pVRj.Ironbark:IsReady()then
if
fuZ3z86.CastCycleAlly(pVRj.Ironbark,tczrIB,function(pVRj)
return
pVRj:HealthPercentage()<iD1IUx and not mP3mlD(pVRj)end)then return'Ironbark Members'end end
if pVRj.NaturesSwiftness:IsReady()and
pVRj.ConvoketheSpirits:IsReady()then if ZG(pVRj.NaturesSwiftness,true)then return
'Natures Swiftness before Convoke'end end
if pVRj.ConvoketheSpirits:IsReady()and
not QKKks_zt:IsMoving()then
if
fuZ3z86.CastCycleAlly(pVRj.ConvoketheSpirits,tczrIB,function(pVRj)
return
pVRj:HealthPercentage()<LB1Z and not mP3mlD(pVRj)end)then return'Convoke the Spirits - Heal'end end
if
pVRj.Flourish:IsReady()and pVRj.WildGrowth:IsReady()and not QKKks_zt:IsMoving()and
DFb100j:AverageHP()<=LB1Z then
if
fuZ3z86.CastCycleAlly(pVRj.WildGrowth,tczrIB,function(pVRj)
return
pVRj:HealthPercentage()<LB1Z and not mP3mlD(pVRj)end)then return'Wild Growth before Flourish'end end
if

pVRj.Flourish:IsReady()and not QKKks_zt:IsMoving()and DFb100j:AverageHP()<=LB1Z then if ZG(pVRj.Flourish)then return'Flourish'end end
if pVRj.IncarnationTreeofLife:IsReady()then if
ZG(pVRj.IncarnationTreeofLife)then return'IncarnationTreeofLife'end end
if
pVRj.Tranquility:IsReady()and pVRj.WildGrowth:IsReady()and not QKKks_zt:IsMoving()and
DFb100j:AverageHP()<=LB1Z then
if
fuZ3z86.CastCycleAlly(pVRj.WildGrowth,tczrIB,function(pVRj)
return
pVRj:HealthPercentage()<LB1Z and not mP3mlD(pVRj)end)then return'Wild Growth before Tranquility'end end
if

pVRj.Tranquility:IsReady()and not QKKks_zt:IsMoving()and DFb100j:AverageHP()<=LB1Z then if ZG(pVRj.Tranquility)then return'Tranquility'end end end
if pVRj.Rejuvenation:IsCastable()and
fuZ3z86.Toggle:GetToggle("SpreadRejuvenation")then
if
fuZ3z86.CastCycleAlly(pVRj.Rejuvenation,tczrIB,function(QKKks_zt)return
(
(QKKks_zt:BuffDown(pVRj.Rejuvenation))and not mP3mlD(QKKks_zt))end)then return'Rejuvenation Spread Members - toggle'end end
if GetNumGroupMembers()<=5 then
if

pVRj.LifebloomResto:IsCastable()and
pVRj.Undergrowth:IsAvailable()and
(
DFb100j:BuffTotal(pVRj.LifebloomResto)+zhzpBSx(QKKks_zt:BuffUp(pVRj.LifebloomResto)))<2 and
(
(QKKks_zt:BuffDown(pVRj.CatForm)and QKKks_zt:BuffDown(pVRj.BearForm))or not QKKks_zt:AffectingCombat())then
if
fuZ3z86.CastCycleAlly(pVRj.LifebloomResto,tczrIB,function(QKKks_zt)
return QKKks_zt:BuffDown(pVRj.LifebloomResto)and
QKKks_zt:HealthPercentage()<80 and
not mP3mlD(QKKks_zt)end)then return'Lifebloom Members'end
if
fuZ3z86.CastCycleAlly(pVRj.LifebloomResto,tczrIB,function(fuZ3z86)
return fuZ3z86:BuffDown(pVRj.LifebloomResto)and
fuZ3z86:GUID()==QKKks_zt:GUID()and not
mP3mlD(fuZ3z86)end)then return'Lifebloom Player'end end end
if

pVRj.LifebloomResto:IsCastable()and
(
(
pVRj.Undergrowth:IsAvailable()and
(DFb100j:BuffTotal(pVRj.LifebloomResto)+
zhzpBSx(QKKks_zt:BuffUp(pVRj.LifebloomResto)))<2)or
(not pVRj.Undergrowth:IsAvailable()and
(
DFb100j:BuffTotal(pVRj.LifebloomResto2)<
1+zhzpBSx(QKKks_zt:BuffUp(pVRj.LifebloomResto2)))))and
(
(QKKks_zt:BuffDown(pVRj.CatForm)and QKKks_zt:BuffDown(pVRj.BearForm))or not QKKks_zt:AffectingCombat())then
if
fuZ3z86.CastCycleAlly(pVRj.LifebloomResto,Ch,function(QKKks_zt)
return QKKks_zt:BuffDown(pVRj.LifebloomResto)and not
mP3mlD(QKKks_zt)end)then return'Lifebloom Tanks'end end
if


pVRj.LifebloomResto2:IsCastable()and
(
DFb100j:BuffTotal(pVRj.LifebloomResto2)+zhzpBSx(QKKks_zt:BuffUp(pVRj.LifebloomResto2)))<1 and not pVRj.Undergrowth:IsAvailable()and
(
(QKKks_zt:BuffDown(pVRj.CatForm)and QKKks_zt:BuffDown(pVRj.BearForm))or not QKKks_zt:AffectingCombat())then
if
fuZ3z86.CastCycleAlly(pVRj.LifebloomResto2,Ch,function(QKKks_zt)
return QKKks_zt:BuffDown(pVRj.LifebloomResto2)and not
mP3mlD(QKKks_zt)end)then return'Lifebloom Tanks - No S.Undergrowth'end end
if
pVRj.TreantForm:IsReady(QKKks_zt)and
QKKks_zt:BuffDown(pVRj.TreantForm)and
not QKKks_zt:AffectingCombat()and iy(90)==0 then
if ZG(pVRj.TreantForm)then return"Treant Form to look cool"end end
if




pVRj.Efflorescence:IsReady()and(er.TargetIsValid()or
QKKks_zt:AffectingCombat())and not QKKks_zt:IsMoving()and m6SCS0()<2 and
iy(NsoTwDs)>=HGli and not lqT and
(
(QKKks_zt:BuffDown(pVRj.CatForm)and QKKks_zt:BuffDown(pVRj.BearForm))or not QKKks_zt:AffectingCombat())then
if ZG(pVRj.Efflorescence)then return"Efflorescence Members"end end
if
QKKks_zt:AffectingCombat()and iy(DPSThreshold)==0 and er.TargetIsValid()then return yxjl()end
if pVRj.Swiftmend:CooldownRemains()<=0 and not
QKKks_zt:IsMoving()then
if
fuZ3z86.CastCycleAlly(pVRj.Swiftmend,tczrIB,function(QKKks_zt)
return

QKKks_zt:HealthPercentage()<JLCOx_ak and
(QKKks_zt:BuffUp(pVRj.Regrowth)or
QKKks_zt:BuffUp(pVRj.WildGrowth)or QKKks_zt:BuffUp(pVRj.Rejuvenation))and not
mP3mlD(QKKks_zt)end)then return'Swiftmend Members'end
if

(iy(hPQ)>=R1FIoQI or QKKks_zt:BuffUp(pVRj.IncarnationTreeofLifeBuff))and QKKks_zt:BuffDown(pVRj.SouloftheForestBuff)then
if
fuZ3z86.CastCycleAlly(pVRj.Swiftmend,tczrIB,function(pVRj)return not mP3mlD(pVRj)end)then return'Swiftmend Before WildGrowth'end end
if



pVRj.Rejuvenation:IsReady()and(iy(hPQ)>=R1FIoQI or
QKKks_zt:BuffUp(pVRj.IncarnationTreeofLifeBuff))and DFb100j:BuffTotal(pVRj.Regrowth)==0 and DFb100j:BuffTotal(pVRj.WildGrowth)==0 and DFb100j:BuffTotal(pVRj.Rejuvenation)==0 then
if
fuZ3z86.CastCycleAlly(pVRj.Rejuvenation,tczrIB,function(pVRj)return not mP3mlD(pVRj)end)then return'Rejuv Members for Swiftmend into WildGrowth'end end end
if

pVRj.WildGrowth:IsCastable()and not QKKks_zt:IsMoving()and
(QKKks_zt:BuffUp(pVRj.SouloftheForestBuff)or
pVRj.Swiftmend:CooldownRemains()>0)and
(
iy(hPQ)>=R1FIoQI or QKKks_zt:BuffUp(pVRj.IncarnationTreeofLifeBuff))then if ZG(pVRj.WildGrowth)then return'Wild Growth Members'end end
if pVRj.CenarionWard:IsReady()then
if
fuZ3z86.CastCycleAlly(pVRj.CenarionWard,Ch,function(QKKks_zt)
return
QKKks_zt:BuffDown(pVRj.CenarionWard)and not mP3mlD(QKKks_zt)end)then return'Cenarion Ward Tanks'end end
if
pVRj.Regrowth:IsCastable()and not QKKks_zt:IsMoving()then
if
fuZ3z86.CastCycleAlly(pVRj.Regrowth,tczrIB,function(pVRj)return pVRj:HealthPercentage()<hDc_M and not
mP3mlD(pVRj)end)then return'Regrowth Members - Spam'end end
if

pVRj.Rejuvenation:IsCastable()and not lqT and
(not urkh or

QKKks_zt:ManaPercentage()>=WYdR("boss1"):HealthPercentage()+10 or(not UnitExists("boss1")and
QKKks_zt:ManaPercentage()>60))and
(
(QKKks_zt:BuffDown(pVRj.CatForm)and QKKks_zt:BuffDown(pVRj.BearForm))or not QKKks_zt:AffectingCombat())then
if
fuZ3z86.CastCycleAlly(pVRj.Rejuvenation,tczrIB,function(QKKks_zt)
return
(

(
(QKKks_zt:BuffDown(pVRj.Rejuvenation))or
(pVRj.Germination:IsAvailable()and
QKKks_zt:BuffStack(pVRj.Rejuvenation)<2))and QKKks_zt:HealthPercentage()<qW0lRiD1 and not mP3mlD(QKKks_zt))end)then return'Rejuvenation Members'end end
if
pVRj.Regrowth:IsCastable()and(not QKKks_zt:IsMoving()or
QKKks_zt:BuffUp(pVRj.IncarnationTreeofLifeBuff))then
if
fuZ3z86.CastCycleAlly(pVRj.Regrowth,tczrIB,function(fuZ3z86)
return
(fuZ3z86:HealthPercentage()<N9L or


(
QKKks_zt:BuffUp(pVRj.IncarnationTreeofLifeBuff)and fuZ3z86:HealthPercentage()<100)and fuZ3z86:BuffDown(pVRj.Regrowth)and not mP3mlD(fuZ3z86))end)then return'Regrowth Members'end end
if QKKks_zt:AffectingCombat()and er.TargetIsValid()and
DPSThreshold<100 then return yxjl()end end;local function pVRj()NUhYw6R4()return Hv()end
fuZ3z86.SetCustomAPL(_IQQ,XpkjA,pVRj,a)end;local function ZA()
C_Timer.After(1,function()if MainAddon then Q()else ZA()end end)end;print("here")ZA()