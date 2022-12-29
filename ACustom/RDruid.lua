
local function Q()local _IQQ='Aya_RDruid'local XpkjA=105;local pVRj=LibStub('StdUi')
local fuZ3z86=LibStub("AceAddon-3.0"):GetAddon(Z_AddonName)local er=fuZ3z86;local DFb100j=fuZ3z86.HealingEngine;local XL_=HeroLibEx;local pVRj=HeroCache
local WYdR=XL_.Unit;local QKKks_zt=WYdR.Player;local Are7xU=WYdR.Target;local pVRj=WYdR.Arena;local pVRj=WYdR.Party
local pVRj=WYdR.MouseOver;local yxjl=XL_.Spell;local pVRj=XL_.Item;local ZG=er.Cast;local pVRj=er.CastAlly
local Vu0cCAf=er.AoEON;local pVRj=er.CDsON;local pVRj=yxjl.Druid.Restoration;local qkP7O5=yxjl(391888)
local lqT=yxjl(391891)local mP3mlD=yxjl(391889)local PrPyxMK=yxjl(188550)local tczrIB=yxjl(114108)
local a=yxjl(77758)local wqU76o=yxjl(192090)local LB1Z=yxjl(213771)local N9L=yxjl(132158)
local hDc_M,qW0lRiD1;local mP3mlD,iD1IUx;local mP3mlD,mP3mlD;local mP3mlD=fuZ3z86.Config.GetClassSetting
local JLCOx_ak="Aya_Rdruid_Config"local mP3mlD='FF7C0A'
local mP3mlD={key=JLCOx_ak,title='Aya - Restoration Druid',subtitle='Aya '..fuZ3z86.Version,width=470,height=650,profiles=true,config={{type='header',text='Restoration',size=24,align='Center',color=mP3mlD},{type='spacer'},{type='ruler'},{type='spacer'},{type='header',text='Spells',color=mP3mlD},{type='spinner',text='DPS Threshold',key='DPSThreshold1',min=1,max=100,default=80},{type='spinner',text='Regrowth',key='RegrowthHP',min=1,max=100,default=75},{type='spinner',text='Regrowth Refresh',key='RegrowthHP2',min=1,max=100,default=50},{type='spinner',text='Rejuvenation',key='RejuvenationHP',min=1,max=100,default=85},{type='spinner',text='Wild Growth',key='WildGrowthHP',min=1,max=100,default=85},{type='spinner',text='Wild Growth Units',key='WildGrowthNum',min=1,max=40,default=3},{type='spinner',text='Efflorescence',key='EfflorescenceHP',min=1,max=100,default=100},{type='spinner',text='Efflorescence Units',key='EfflorescenceNum',min=1,max=40,default=1},{type='spinner',text='Ironbark',key='IronbarkHP',min=1,max=100,default=50},{type='spinner',text='Swiftmend',key='SwiftmendHP',min=1,max=100,default=80},{type='spinner',text='Renewal',key='RenewalHP',min=1,max=100,default=70},{type='spinner',text='Convoke the Spirits',key='ConvokeHP',min=1,max=100,default=70},{type='spinner',text='Convoke the Spirits Units',key='ConvokeNum',min=1,max=40,default=3},{type='spacer'},{type='header',text='Defensive',color=mP3mlD},{type='spinner',text='Barkskin',key='BarkSkinHP',min=1,max=100,default=60},{type='spacer'},{type='header',text='Trinkets',color=mP3mlD},{type='dropdown',text='Top Trinket Target',key='TopTrinketTarget',list={{text='None',key=1},{text='Enemy',key=2}},default=1},{type='dropdown',text='Top Trinket Use',key='TopTrinketOption',list={{text='Off',key=1},{text='On Cooldown',key=2},{text='With Cooldowns HP',key=3}},default=1},{type='dropdown',text='Bottom Trinket Target',key='BotTrinketTarget',list={{text='None',key=1},{text='Enemy',key=2}},default=1},{type='dropdown',text='Bottom Trinket Use',key='BotTrinketOption',list={{text='Off',key=1},{text='On Cooldown',key=2},{text='With Cooldowns HP',key=3}},default=1},{type='header',text='Class',color=mP3mlD},{type='spinner',text="Cooldowns HP",key='CooldownSlider',min=1,max=100,default=75},{type='dropdown',text='Cooldown Options',key='CooldownOption',list={{text='Auto',key=1},{text='Manually',key=2}},default=1},{type='dropdown',text='Convoke the Spirits',key='ConvokeOption',list={{text='Heal',key=1},{text='Heal + Damage',key=2}},default=2},{type='checkbox',text='Form Swap for DPS',key='FormSwap',default=true}}}fuZ3z86.SetCustomConfig(_IQQ,XpkjA,mP3mlD)
local function hPQ()end;local R1FIoQI,JLCOx_ak,NsoTwDs,HGli,iy,m6SCS0,NUhYw6R4;local Hv,Ch,urkh,zhzpBSx;local Q,mP3mlD,rHSjalVy,TjhsnP;local t5jzEd9,JZAU2;local zPXTTg={}
XL_:RegisterForEvent(function(QKKks_zt,...)
local Are7xU,pVRj,ZG,fuZ3z86=...
if QKKks_zt=="UNIT_SPELLCAST_SENT"then if Are7xU=="player"and pVRj then
currentspell=fuZ3z86;currentspelltarget=pVRj end end
if QKKks_zt=="UI_ERROR_MESSAGE"then if pVRj==SPELL_FAILED_LINE_OF_SIGHT then
missedunit=currentspelltarget;missedspell=currentspell end end end,"UI_ERROR_MESSAGE","UNIT_SPELLCAST_SENT")
local function seMLr()
DPSThreshold=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"DPSThreshold1")
NsoTwDs=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"RegrowthHP")
HGli=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"RegrowthHP2")
iy=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"RejuvenationHP")
Hv=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"WildGrowthHP")
Ch=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"WildGrowthNum")
urkh=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"EfflorescenceHP")
zhzpBSx=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"EfflorescenceNum")
m6SCS0=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"IronbarkHP")
NUhYw6R4=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"SwiftmendHP")
RenewalHP=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"RenewalHP")
ConvokeHP=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"ConvokeHP")
JLCOx_ak=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"CooldownSlider")
R1FIoQI=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"CooldownOption")
t5jzEd9=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"ConvokeOption")
Q=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"TopTrinketTarget")
mP3mlD=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"TopTrinketOption")
rHSjalVy=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"BotTrinketTarget")
TjhsnP=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"BotTrinketOption")
BarkSkinHP=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"BarkSkinHP")
JZAU2=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"FormSwap")end
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
local function Q()if missedunit then
table.insert(zPXTTg,(mP3mlD(missedunit).." "..GetTime()))missedunit=nil end
if
table.getn(zPXTTg)>0 then
for QKKks_zt=1,table.getn(zPXTTg)do
if zPXTTg[QKKks_zt]~=nil then
for pVRj in
string.gmatch(zPXTTg[QKKks_zt],"([^%s]+)")do pVRj=tonumber(pVRj)
if type(pVRj)=="number"then if pVRj<=GetTime()-1.5 then
table.remove(zPXTTg,QKKks_zt)end end end end end end end
local function mP3mlD(pVRj)
if table.getn(zPXTTg)>0 and pVRj~=nil then
for QKKks_zt=1,table.getn(zPXTTg)do for QKKks_zt in
string.gmatch(zPXTTg[QKKks_zt],"([^%s]+)")do
if QKKks_zt and QKKks_zt==pVRj:GUID()then return true end end end else return false end end
local function rHSjalVy(pVRj)
if(WYdR(pVRj):BuffUp(yxjl(365153)))then
for QKKks_zt=1,40 do if
select(10,UnitBuff(pVRj,QKKks_zt))==365153 then
return select(16,UnitBuff(pVRj,QKKks_zt))end end else return 0 end end
local function zPXTTg(pVRj)
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
(UnitGetIncomingHeals("party"..fuZ3z86)or 0)-rHSjalVy("party"..fuZ3z86)local Are7xU=UnitHealthMax("party"..fuZ3z86)if

ZG/Are7xU<=pVRj or(UnitHealth("party"..fuZ3z86)/Are7xU==1 and
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
UnitGetIncomingHeals("raid"..fuZ3z86)or 0)-rHSjalVy("raid"..fuZ3z86)local fuZ3z86=UnitHealthMax("raid"..fuZ3z86)if
Are7xU/fuZ3z86 <=pVRj then QKKks_zt=QKKks_zt+1 end end end end
if GetNumGroupMembers()==0 then
local fuZ3z86=UnitHealth("player")+ (
UnitGetIncomingHeals("player")or 0)-
rHSjalVy("player")local Are7xU=UnitHealthMax("player")if fuZ3z86/Are7xU<pVRj then
QKKks_zt=QKKks_zt+1 end end;return QKKks_zt end
local function TjhsnP()
for QKKks_zt=1,4 do local ZG,QKKks_zt,fuZ3z86,Are7xU=GetTotemInfo(QKKks_zt)
if QKKks_zt==
pVRj.Efflorescence:Name()then return
(floor(fuZ3z86+Are7xU-GetTime()+.5))or 0 end end;return 0 end
local function rHSjalVy()
if


pVRj.ConvoketheSpirits:IsReady()and Are7xU:IsInMeleeRange(40)and not QKKks_zt:IsMoving()and t5jzEd9 ==2 and
(
UnitExists("boss1")or XL_.FightRemains(Enemies10ySplash)>30)then
if pVRj.MoonkinForm:IsReady()then if ZG(pVRj.MoonkinForm)then
return'MoonkinForm for Convoke - DPS'end end;if ZG(pVRj.ConvoketheSpirits)and
(QKKks_zt:BuffUp(pVRj.MoonkinForm)or not
pVRj.MoonkinForm:IsAvailable())then
return"Convoke the Spirits - DPS"end end
if pVRj.NaturesVigil:IsReady()and
(UnitExists("boss1")or
XL_.FightRemains(Enemies10ySplash)>30)then if ZG(pVRj.NaturesVigil)then return
'NaturesVigil - DPS'end end
if qW0lRiD1 <3 and qW0lRiD1 >0 and JZAU2 then
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
Are7xU:DebuffDown(pVRj.MoonfireDebuff)and pVRj.Moonfire:IsReady()then if ZG(pVRj.Moonfire)then return'Moonfire - DPS'end end
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
pVRj.Shred:IsReady()and QKKks_zt:BuffUp(pVRj.CatForm)then if ZG(pVRj.Shred)then return'Shred (Cat Form) - DPS'end end end elseif qW0lRiD1 >=3 and JZAU2 then
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
Are7xU:DebuffDown(pVRj.MoonfireDebuff)and pVRj.Moonfire:IsReady()then if ZG(pVRj.Moonfire)then return'Moonfire - DPS'end end
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
(not Are7xU:IsInMeleeRange(5)or not JZAU2)then if ZG(pVRj.Moonfire)then return
'Moonfire - DPS - Range'end end
if
pVRj.Sunfire:IsReady()and Are7xU:DebuffDown(pVRj.SunfireDebuff)and
(not Are7xU:IsInMeleeRange(5)or not JZAU2)then if ZG(pVRj.Sunfire)then return
'Sunfire - DPS'end end
if
pVRj.Wrath:IsReady()and not QKKks_zt:IsMoving()and
(not Are7xU:IsInMeleeRange(5)or not JZAU2)then if ZG(pVRj.Wrath)then
return'Wrath - DPS'end end end
local function wqU76o()local JZAU2,wqU76o,yxjl,wqU76o,wqU76o,wqU76o=DFb100j:Update()seMLr()
if Vu0cCAf()then
hDc_M=QKKks_zt:GetEnemiesInRangeFilter(5)Enemies10ySplash=WYdR:GetEnemiesInSplashRange(10)
qW0lRiD1=#hDc_M;iD1IUx=WYdR:GetEnemiesInSplashRangeCount(10)else qW0lRiD1=1
iD1IUx=1 end;local XL_=XL_.CombatTime()
local WYdR=not QKKks_zt:IsMoving()
local WYdR=(QKKks_zt:HealthPercentage()>=60)local WYdR=Are7xU:IsInMeleeRange(5)
local WYdR=

#yxjl>1 and
(R1FIoQI==1 and
DFb100j:AverageHP()<=JLCOx_ak or R1FIoQI==2)and not
QKKks_zt:IsChanneling(pVRj.Tranquility)and QKKks_zt:BuffDown(pVRj.Flourish)and QKKks_zt:BuffDown(pVRj.IncarnationTreeofLife)local qW0lRiD1=Vu0cCAf()and#yxjl>=1
if
Are7xU:IsAPlayer()and
Are7xU:IsDeadOrGhost()and not Are7xU:IsEnemy()and Are7xU:IsInParty()then if XL_==0 and
pVRj.Revive:IsReady(QKKks_zt)then
if ZG(pVRj.Revive)then return'Resurrection'end end end;if pVRj.Barkskin:IsReady()and
QKKks_zt:HealthPercentage()<BarkSkinHP then
if ZG(pVRj.Barkskin)then return'Barkskin Defensive'end end
if
qkP7O5:IsCastable()and not WYdR then
if
fuZ3z86.CastCycleAlly(qkP7O5,yxjl,function(pVRj)return pVRj:BuffStack(lqT)==2 and not
mP3mlD(pVRj)end)then return'Adaptive Swarm Members 2 Stacks'end
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
pVRj:HealthPercentage()<m6SCS0 and not mP3mlD(pVRj)end)then return'Ironbark Members'end end
if
N9L:IsReady()and pVRj.ConvoketheSpirits:IsReady()then if ZG(N9L)then return'Natures Swiftness before Convoke'end end
if pVRj.ConvoketheSpirits:IsReady()and
not QKKks_zt:IsMoving()then
if
fuZ3z86.CastCycleAlly(pVRj.ConvoketheSpirits,yxjl,function(pVRj)
return
pVRj:HealthPercentage()<JLCOx_ak and not mP3mlD(pVRj)end)then return'Convoke the Spirits - Heal'end end
if

pVRj.Flourish:IsReady()and pVRj.WildGrowth:IsReady()and not QKKks_zt:IsMoving()and
DFb100j:AverageHP()<=JLCOx_ak then
if
fuZ3z86.CastCycleAlly(pVRj.WildGrowth,yxjl,function(pVRj)return pVRj:HealthPercentage()<JLCOx_ak and not
mP3mlD(pVRj)end)then return'Wild Growth before Flourish'end end
if

pVRj.Flourish:IsReady()and not QKKks_zt:IsMoving()and DFb100j:AverageHP()<=JLCOx_ak then if ZG(pVRj.Flourish)then return'Flourish'end end
if pVRj.IncarnationTreeofLife:IsReady()then if
ZG(pVRj.IncarnationTreeofLife)then return'IncarnationTreeofLife'end end
if

pVRj.Tranquility:IsReady()and pVRj.WildGrowth:IsReady()and not QKKks_zt:IsMoving()and
DFb100j:AverageHP()<=JLCOx_ak then
if
fuZ3z86.CastCycleAlly(pVRj.WildGrowth,yxjl,function(pVRj)return pVRj:HealthPercentage()<JLCOx_ak and not
mP3mlD(pVRj)end)then return'Wild Growth before Tranquility'end end
if

pVRj.Tranquility:IsReady()and not QKKks_zt:IsMoving()and DFb100j:AverageHP()<=JLCOx_ak then if ZG(pVRj.Tranquility)then return'Tranquility'end end end
if

PrPyxMK:IsCastable()and QKKks_zt:BuffDown(pVRj.CatForm)and QKKks_zt:BuffDown(pVRj.BearForm)then
if
fuZ3z86.CastCycleAlly(PrPyxMK,JZAU2,function(pVRj)return
pVRj:BuffDown(PrPyxMK)and not mP3mlD(pVRj)end)then return'Lifebloom Tanks'end end
if


pVRj.Efflorescence:IsReady()and not QKKks_zt:IsMoving()and TjhsnP()<2 and zPXTTg(urkh)>=zhzpBSx and not WYdR and
QKKks_zt:BuffDown(pVRj.BearForm)and
QKKks_zt:BuffDown(pVRj.CatForm)then
if ZG(pVRj.Efflorescence)then return"Efflorescence Members"end end
if
QKKks_zt:AffectingCombat()and zPXTTg(DPSThreshold)==0 and er.TargetIsValid()then return rHSjalVy()end
if
pVRj.WildGrowth:IsCastable()and not QKKks_zt:IsMoving()and QKKks_zt:BuffUp(tczrIB)and
zPXTTg(Hv)>=Ch then
if
fuZ3z86.CastCycleAlly(pVRj.WildGrowth,yxjl,function(pVRj)
return
pVRj:HealthPercentage()<Hv and not mP3mlD(pVRj)end)then return'Wild Growth Members'end end
if pVRj.Renewal:IsReady()then
if
fuZ3z86.CastCycleAlly(pVRj.Renewal,yxjl,function(pVRj)
return
pVRj:HealthPercentage()<RenewalHP and not mP3mlD(pVRj)end)then return'Renewal Members'end end
if pVRj.Swiftmend:CooldownRemains()<=0 and not
QKKks_zt:IsMoving()then
if
fuZ3z86.CastCycleAlly(pVRj.Swiftmend,yxjl,function(QKKks_zt)
return

QKKks_zt:HealthPercentage()<NUhYw6R4 and
(QKKks_zt:BuffUp(pVRj.Regrowth)or
QKKks_zt:BuffUp(pVRj.WildGrowth)or QKKks_zt:BuffUp(pVRj.Rejuvenation))and not
mP3mlD(QKKks_zt)end)then return'Swiftmend Members'end end
if pVRj.CenarionWard:IsReady()then
if
fuZ3z86.CastCycleAlly(pVRj.CenarionWard,JZAU2,function(QKKks_zt)
return
QKKks_zt:BuffDown(pVRj.CenarionWard)and not mP3mlD(QKKks_zt)end)then return'Cenarion Ward Tanks'end end
if
pVRj.Regrowth:IsCastable()and not QKKks_zt:IsMoving()then
if
fuZ3z86.CastCycleAlly(pVRj.Regrowth,yxjl,function(pVRj)return pVRj:HealthPercentage()<HGli and not
mP3mlD(pVRj)end)then return'Regrowth Members - Spam'end end
if pVRj.Rejuvenation:IsCastable()and not WYdR then
if
fuZ3z86.CastCycleAlly(pVRj.Rejuvenation,yxjl,function(QKKks_zt)
return
(

(
(QKKks_zt:BuffDown(pVRj.Rejuvenation))or
(pVRj.Germination:IsAvailable()and
QKKks_zt:BuffStack(pVRj.Rejuvenation)<2))and QKKks_zt:HealthPercentage()<iy and not mP3mlD(QKKks_zt))end)then return'Rejuvenation Members'end end
if
pVRj.Regrowth:IsCastable()and not QKKks_zt:IsMoving()then
if
fuZ3z86.CastCycleAlly(pVRj.Regrowth,yxjl,function(QKKks_zt)
return
QKKks_zt:HealthPercentage()<NsoTwDs and QKKks_zt:BuffDown(pVRj.Regrowth)and not
mP3mlD(QKKks_zt)end)then return'Regrowth Members'end end;if QKKks_zt:AffectingCombat()and er.TargetIsValid()then return
rHSjalVy()end end;local function pVRj()Q()return wqU76o()end
fuZ3z86.SetCustomAPL(_IQQ,XpkjA,pVRj,hPQ)end;local function ZA()
C_Timer.After(1,function()if MainAddon then Q()else ZA()end end)end;print("here")ZA()