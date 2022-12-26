
local function Q()local _IQQ='Aya_Hpal 1.0'local XpkjA=65;local pVRj=LibStub('StdUi')
local fuZ3z86=LibStub("AceAddon-3.0"):GetAddon(Z_AddonName)local er=fuZ3z86;local DFb100j=fuZ3z86.HealingEngine;local XL_=HeroLibEx;local pVRj=HeroCache
local WYdR=XL_.Unit;local QKKks_zt=WYdR.Player;local Are7xU=WYdR.Target;local pVRj=WYdR.Arena;local pVRj=WYdR.Party
local pVRj=WYdR.MouseOver;local yxjl=XL_.Spell;local pVRj=XL_.Item;local ZG=er.Cast;local pVRj=er.CastAlly
local Vu0cCAf=er.AoEON;local pVRj=er.CDsON;local pVRj=yxjl.Paladin.Holy;local qkP7O5=yxjl(287280)
local lqT=yxjl(385125)local mP3mlD=yxjl(394709)local PrPyxMK=yxjl(385127)local tczrIB=yxjl(385126)
local a,wqU76o;local LB1Z,N9L;local tczrIB,tczrIB;local tczrIB=fuZ3z86.Config.GetClassSetting
local hDc_M="Aya_Hpal_Condig"local tczrIB='F48CBA'
local tczrIB={key=hDc_M,title='Aya - Holy',subtitle='Aya '..fuZ3z86.Version,width=470,height=650,profiles=true,config={{type='header',text='Holy',size=24,align='Center',color=tczrIB},{type='spacer'},{type='ruler'},{type='spacer'},{type='header',text='Spells',color=tczrIB},{type='spinner',text='DPS Threshold',key='DPSThreshold1',min=1,max=100,default=80},{type='spinner',text='Bestow Faith',key='BestowFaith',min=1,max=100,default=95},{type='spinner',text='Holy Shock',key='HolyShock',min=1,max=100,default=95},{type='spinner',text='Word of GLory',key='WordofGlory',min=1,max=100,default=70},{type='spinner',text='Holy Light',key='HolyLight',min=1,max=100,default=0},{type='spinner',text='Flash of Light',key='FlashofLight',min=1,max=100,default=40},{type='spinner',text='Light of Martyr',key='LightofMartyr',min=1,max=100,default=70},{type='spinner',text='Lay on Hands',key='LayOnHands',min=1,max=100,default=25},{type='spacer'},{type='header',text='Defensive',color=tczrIB},{type='spinner',text='Blessing of Sacrifice',key='BlessingOfSacrifice',min=1,max=100,default=40},{type='spinner',text='Divine Protection',key='DivineProtection',min=1,max=100,default=40},{type='spinner',text='Divine Shield',key='DivineShield',min=1,max=100,default=20},{type='spacer'},{type='header',text='Class',color=tczrIB},{type='spinner',text="Cooldowns HP",key='CooldownSlider',min=1,max=100,default=75},{type='dropdown',text='Cooldown Options',key='CooldownOption',list={{text='Auto',key=1},{text='Manually',key=2}},default=1},{type='dropdown',text='Holy Shock',key='HolyShockOption',list={{text='Heal',key=1},{text='Heal + Damage',key=2}},default=2},{type='checkbox',text='Consecration while Standing',key='ConsecrationWhileStanding',default=true},{type='checkbox',text='Light of Dawn: Check for Range',key='LightofDawnRange',default=false},{type='checkbox',text='Mana Management',key='ManaManagement',default=false},{type='checkbox',text='Judgment & Crusader Strike sniping',key='JCSSniping',default=false}}}fuZ3z86.SetCustomConfig(_IQQ,XpkjA,tczrIB)
local function qW0lRiD1()end;local iD1IUx,JLCOx_ak,hPQ,R1FIoQI,NsoTwDs,HGli,iy;local m6SCS0,NUhYw6R4,Hv,Ch,urkh;local zhzpBSx,rHSjalVy,TjhsnP,tczrIB;local t5jzEd9;local hDc_M={}
XL_:RegisterForEvent(function(QKKks_zt,...)
local WYdR,pVRj,ZG,fuZ3z86=...
if QKKks_zt=="UNIT_SPELLCAST_SENT"then if WYdR=="player"and pVRj then
currentspell=fuZ3z86;currentspelltarget=pVRj end end
if QKKks_zt=="UI_ERROR_MESSAGE"then if pVRj==SPELL_FAILED_LINE_OF_SIGHT then
missedunit=currentspelltarget;missedspell=currentspell end end end,"UI_ERROR_MESSAGE","UNIT_SPELLCAST_SENT")
local function JZAU2()
DPSThreshold=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"DPSThreshold1")
iD1IUx=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"BestowFaith")
JLCOx_ak=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"HolyShock")
hPQ=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"WordofGlory")
NsoTwDs=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"HolyLight")
R1FIoQI=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"FlashofLight")
iy=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"LightofMartyr")
m6SCS0=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"BlessingOfSacrifice")
NUhYw6R4=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"LayOnHands")
Hv=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"DivineProtection")
Ch=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"DivineShield")
rHSjalVy=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"CooldownSlider")
zhzpBSx=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"CooldownOption")
TjhsnP=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"HolyShockOption")
tczrIB=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"ConsecrationWhileStanding")
HGli=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"LightofDawnRange")
urkh=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"ManaManagement")
t5jzEd9=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"JCSSniping")end
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
table.insert(hDc_M,(tczrIB(missedunit).." "..GetTime()))missedunit=nil end
if
table.getn(hDc_M)>0 then
for QKKks_zt=1,table.getn(hDc_M)do
if hDc_M[QKKks_zt]~=nil then
for pVRj in
string.gmatch(hDc_M[QKKks_zt],"([^%s]+)")do pVRj=tonumber(pVRj)if type(pVRj)=="number"then if pVRj<=GetTime()-1.5 then
table.remove(hDc_M,QKKks_zt)end end end end end end end
local function tczrIB(pVRj)
if table.getn(hDc_M)>0 and pVRj~=nil then
for QKKks_zt=1,table.getn(hDc_M)do for QKKks_zt in
string.gmatch(hDc_M[QKKks_zt],"([^%s]+)")do
if QKKks_zt and QKKks_zt==pVRj:GUID()then return true end end end else return false end end
local function hDc_M()
for QKKks_zt=1,4 do local ZG,QKKks_zt,fuZ3z86,WYdR=GetTotemInfo(QKKks_zt)
if QKKks_zt==
pVRj.Consecration:Name()then return
(floor(fuZ3z86+WYdR-GetTime()+.5))or 0 end end;return 0 end
local function hDc_M(pVRj)
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
local ZG=UnitHealth("party"..
QKKks_zt)+
(UnitGetIncomingHeals("party"..QKKks_zt)or 0)-hDc_M("party"..QKKks_zt)local WYdR=UnitHealthMax("party"..QKKks_zt)
if ZG/WYdR<=pVRj or
(UnitHealth(
"party"..QKKks_zt)/WYdR==1 and pVRj==1)then fuZ3z86=fuZ3z86+1 end end end
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
UnitGetIncomingHeals("raid"..QKKks_zt)or 0)-hDc_M("raid"..QKKks_zt)local QKKks_zt=UnitHealthMax("raid"..QKKks_zt)if
WYdR/QKKks_zt<=pVRj then fuZ3z86=fuZ3z86+1 end end end end
if GetNumGroupMembers()==0 then
local WYdR=UnitHealth("player")+ (
UnitGetIncomingHeals("player")or 0)-
hDc_M("player")local QKKks_zt=UnitHealthMax("player")if WYdR/QKKks_zt<pVRj then
fuZ3z86=fuZ3z86+1 end end;return fuZ3z86 end
local function hDc_M()
for fuZ3z86,QKKks_zt in pairs(QKKks_zt:GetEnemiesInRange(5))do if

QKKks_zt:DebuffUp(pVRj.JudgmentDebuff)and QKKks_zt:IsSpellInRange(pVRj.CrusaderStrike)then return true end end;return false end;local function hDc_M(QKKks_zt)
return QKKks_zt:DebuffRemains(pVRj.JudgmentOfLightDebuff)end;local function hDc_M(pVRj)return
not pVRj:HasPvEImmunity()end
local function hDc_M(pVRj)return tczrIB(pVRj)end
local function hDc_M(QKKks_zt)return QKKks_zt:BuffRemains(pVRj.JudgmentDebuff)end
local function hDc_M(fuZ3z86)
return
fuZ3z86:DebuffUp(pVRj.JudgmentDebuff)and
not fuZ3z86:HasPvEImmunity()and
pVRj.CrusaderStrike:Charges()==2 and
(
pVRj.CrusadersMight:IsAvailable()and
pVRj.HolyShock:CooldownRemains()>1+QKKks_zt:GCD()or not
pVRj.CrusadersMight:IsAvailable())end
local function hDc_M(fuZ3z86)
return
fuZ3z86:DebuffUp(pVRj.JudgmentDebuff)and
not fuZ3z86:HasPvEImmunity()and
pVRj.CrusaderStrike:Charges()==1 and
(
pVRj.CrusadersMight:IsAvailable()and
pVRj.HolyShock:CooldownRemains()>1+QKKks_zt:GCD()or not
pVRj.CrusadersMight:IsAvailable())end
local function hDc_M(fuZ3z86)
return
fuZ3z86:DebuffUp(pVRj.JudgmentDebuff)and
not fuZ3z86:HasPvEImmunity()and
(
pVRj.CrusadersMight:IsAvailable()and
pVRj.HolyShock:CooldownRemains()>1+QKKks_zt:GCD()or not
pVRj.CrusadersMight:IsAvailable()and
(urkh and fuZ3z86:HealthPercentage()<=
QKKks_zt:ManaPercentage()or not urkh))end
local function hDc_M(pVRj)return
(pVRj:IsInRange(40)and tczrIB(pVRj)and
(
pVRj:AffectingCombat()or
pVRj:IsDummy()or pVRj:NPCID()==153285 or pVRj:NPCID()==168326))end
local function zPXTTg()
if
(
(not lqT:IsAvailable()and QKKks_zt:HolyPower()>=3)or
(lqT:IsAvailable()and
((QKKks_zt:HolyPower()==5)or
(
QKKks_zt:BuffUp(PrPyxMK)and QKKks_zt:HolyPower()==3))))then if
pVRj.ShieldOfTheRighteous:IsReady()and wqU76o>=1 then
if ZG(pVRj.ShieldOfTheRighteous)then return"ShieldOfTheRighteous - DPS"end end end
if pVRj.HammerOfWrath:IsReady(Are7xU)then if ZG(pVRj.HammerOfWrath)then return
"HammerOfWrath - DPS"end end
if
pVRj.DivineToll:IsReady(QKKks_zt)and Are7xU:IsInMeleeRange(8)and
(UnitExists("boss1")or XL_.FightRemains(a)>30)then if
ZG(pVRj.DivineToll)then return"Divine Toll 1"end end
if

pVRj.LightSHammer:IsReady(QKKks_zt)and Are7xU:IsInMeleeRange(8)and not QKKks_zt:IsMoving()then
if ZG(pVRj.LightSHammer)then return"Lights Hammer - DPS"end end
if
pVRj.Consecration:IsReady()and Are7xU:IsInMeleeRange(5)and not QKKks_zt:IsMoving()then if
ZG(pVRj.Consecration)then return"Consecration - DPS"end end;if pVRj.Judgment:IsReady()then
if ZG(pVRj.Judgment)then return"Judgement - DPS"end end
if
pVRj.HolyShock:IsReady(Are7xU)and TjhsnP==2 then
fuZ3z86.SetTopColor(6,"Holy Shock Enemy")return"HolyShock - DPS"end
if pVRj.CrusaderStrike:IsReady(Are7xU)then if ZG(pVRj.CrusaderStrike)then return
"CrusaderStrike - DPS"end end end
local function seMLr()local _IQQ,urkh,hDc_M,urkh,urkh,urkh=DFb100j:Update()JZAU2()
if Vu0cCAf()then
a=QKKks_zt:GetEnemiesInRangeFilter(5)LB1Z=WYdR:GetEnemiesInSplashRange(5)wqU76o=#a
N9L=WYdR:GetEnemiesInSplashRangeCount(5)else wqU76o=1;N9L=1 end;local N9L=XL_.CombatTime()
local LB1Z=not QKKks_zt:IsMoving()
local TjhsnP=(QKKks_zt:HealthPercentage()>=60 or
QKKks_zt:BuffUp(pVRj.DivineShield))local XL_=Are7xU:IsInMeleeRange(5)
local XpkjA=#hDc_M>1 and
(zhzpBSx==1 and
DFb100j:AverageHP()<=rHSjalVy or zhzpBSx==2)and
QKKks_zt:BuffDown(pVRj.AvengingWrath)and
QKKks_zt:BuffDown(pVRj.HolyAvenger)local XL_=Vu0cCAf()and#hDc_M>=1
local XL_=(
pVRj.HolyShock:IsReady()or pVRj.BestowFaith:IsReady()or
pVRj.HammerOfWrath:IsReady()or
pVRj.CrusaderStrike:IsReady())local XL_=QKKks_zt:GUID()local wqU76o,XL_,a,urkh,zhzpBSx=nil,nil,nil,nil,nil
for QKKks_zt=1,GetNumGroupMembers()
do
if
GetNumGroupMembers()>1 and GetNumGroupMembers()<=5 then local fuZ3z86,pVRj=UnitClassBase("party"..QKKks_zt)
if not
WYdR("party"..QKKks_zt):IsATank()then
if pVRj==3 then
wqU76o=WYdR("party"..QKKks_zt):GUID()elseif pVRj==13 then
XL_=WYdR("party"..QKKks_zt):GUID()elseif pVRj==7 then
a=WYdR("party"..QKKks_zt):GUID()elseif pVRj==5 then
urkh=WYdR("party"..QKKks_zt):GUID()elseif pVRj==8 or pVRj==9 or pVRj==11 then
zhzpBSx=WYdR("party"..QKKks_zt):GUID()end end end end
if
Are7xU:IsAPlayer()and Are7xU:IsDeadOrGhost()and not
Are7xU:IsEnemy()and Are7xU:IsInParty()then
if N9L==0 and pVRj.Absolution:IsReady(QKKks_zt)then if
ZG(pVRj.Absolution)then return'Resurrection'end end end;if pVRj.DevotionAura:IsReady()and
QKKks_zt:BuffDown(pVRj.DevotionAura)then
if ZG(pVRj.DevotionAura)then return"DevotionAura"end end
if
pVRj.DivineProtection:IsReady()and
(QKKks_zt:HealthPercentage()<=Hv or
QKKks_zt:BuffUp(pVRj.BlessingOfSacrifice))then if
ZG(pVRj.DivineProtection)then return"DivineProtection Player"end end
if pVRj.DivineShield:IsReady()and
QKKks_zt:BuffDown(pVRj.ForberanceDebuff)and
QKKks_zt:HealthPercentage()<=Ch then if ZG(pVRj.DivineShield)then return
"DivineShield Player"end end
if pVRj.LayOnHands:IsReady()and N9L>0 then
if
fuZ3z86.CastCycleAlly(pVRj.LayOnHands,hDc_M,function(QKKks_zt)return


QKKks_zt:DebuffDown(pVRj.ForberanceDebuff)and QKKks_zt:HealthPercentage()<=NUhYw6R4 and not tczrIB(QKKks_zt)end)then return'Lay On Hands Lower HP'end end
if pVRj.BlessingOfSacrifice:IsReady()then
if
fuZ3z86.CastCycleAlly(pVRj.BlessingOfSacrifice,hDc_M,function(pVRj)
return


not QKKks_zt:IsUnit(pVRj)and TjhsnP and N9L>0 and pVRj:HealthPercentage()<=m6SCS0 and not tczrIB(pVRj)end)then return'Blessing of Sacrifice Lower HP'end end
local N9L=fuZ3z86.HealingEngine:BuffTotal(pVRj.BeaconOfLightBuff)
if N9L==0 and pVRj.BeaconOfLight:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.BeaconOfLight,_IQQ,function(QKKks_zt)return


QKKks_zt:BuffDown(pVRj.BeaconOfLightBuff)and QKKks_zt:BuffDown(pVRj.BeaconOfFaithBuff)and not tczrIB(QKKks_zt)end)then return'Beacon Tank Members'end end
local N9L=fuZ3z86.HealingEngine:BuffTotal(pVRj.BeaconOfFaithBuff)
if pVRj.BeaconOfFaith:IsCastable()and N9L==0 then
if
fuZ3z86.CastCycleAlly(pVRj.BeaconOfFaith,hDc_M,function(QKKks_zt)
return


QKKks_zt:BuffDown(pVRj.BeaconOfLightBuff)and QKKks_zt:BuffDown(pVRj.BeaconOfFaithBuff)and
(
(GetNumGroupMembers()<=5 and
(




(wqU76o and wqU76o==QKKks_zt:GUID())or(XL_ and XL_==QKKks_zt:GUID())or(a and a==QKKks_zt:GUID())or(urkh and urkh==QKKks_zt:GUID())or(zhzpBSx and zhzpBSx==QKKks_zt:GUID())or(not wqU76o and not XL_ and not a and not urkh and
not zhzpBSx)))or GetNumGroupMembers()>5)end)then return'Beacon Faith Members'end end
if XpkjA then if pVRj.AuraMastery:IsReady()then
if ZG(pVRj.AuraMastery)then return'AuraMastery'end end
if
pVRj.AvengingWrath:IsReady()then if ZG(pVRj.AvengingWrath)then return'AvengingWrath'end end;if pVRj.HolyAvenger:IsReady()then
if ZG(pVRj.HolyAvenger)then return'HolyAvenger'end end
if
pVRj.TyrSDeliverance:IsReady()then if ZG(pVRj.TyrSDeliverance)then return'TyrSDeliverance'end end end
if
pVRj.DivineToll:IsReady(QKKks_zt)and Are7xU:IsInMeleeRange(8)and(t5jzEd9(60)>=3)then if
ZG(pVRj.DivineToll)then return"Divine Toll 1"end end;local XL_=nil;local zhzpBSx=0
if pVRj.Cleanse:IsCastable()and
GetNumGroupMembers()>0 and not StopHeal then
if
GetNumGroupMembers()>0 and GetNumGroupMembers()<=5 then
for fuZ3z86=1,GetNumGroupMembers()
do
if

UnitExists("party"..fuZ3z86)and
not UnitIsDead("party"..fuZ3z86)and IsItemInRange(17067,"party"..fuZ3z86)and not UnitCanAttack("player","party"..fuZ3z86)then
for QKKks_zt=1,10 do
local Are7xU,Are7xU,ZG,WYdR,hDc_M,tczrIB,Are7xU,Are7xU,Are7xU,QKKks_zt=UnitDebuff("party"..fuZ3z86,QKKks_zt)
if(t5jzEd9(50)==0 or QKKks_zt==227404)then
if





(
WYdR=="Poison"or(pVRj.ImprovedCleanse:IsAvailable()and
(WYdR=="Magic"or WYdR=="Disease")))and QKKks_zt~=320788 and
((
QKKks_zt~=323347)or(QKKks_zt==323347 and ZG>=2))and QKKks_zt~=350469 and QKKks_zt~=350541 and QKKks_zt~=351117 and QKKks_zt~=229159 then
if(tczrIB-hDc_M)+ (500/1000)<=GetTime()then if QKKks_zt~=
227404 then
if ZG>zhzpBSx then XL_=UnitGUID("party"..fuZ3z86)end end end end end end end end end end
if not WYdR("player"):IsDeadOrGhost()and
WYdR("player"):DebuffDown(yxjl(228578))then
for WYdR=1,10 do
local Are7xU,Are7xU,ZG,fuZ3z86,hDc_M,tczrIB,Are7xU,Are7xU,Are7xU,QKKks_zt,Are7xU,Are7xU,Are7xU,Are7xU,Are7xU=UnitDebuff("player",WYdR)
if(t5jzEd9(50)==0 or QKKks_zt==227404)then
if






(
fuZ3z86 =="Poison"or
(pVRj.ImprovedCleanse:IsAvailable()and(fuZ3z86 =="Magic"or
fuZ3z86 =="Disease")))and QKKks_zt~=320788 and
((QKKks_zt~=323347)or(QKKks_zt==323347 and ZG>=2))and QKKks_zt~=350469 and QKKks_zt~=350541 and QKKks_zt~=351117 and QKKks_zt~=229159 then
if(tczrIB-hDc_M)+ (500/1000)<=GetTime()then if QKKks_zt~=
227404 then
if ZG>zhzpBSx then XL_=UnitGUID("party"..WYdR)end end end end end end end
if pVRj.Cleanse:IsReady()then
if
fuZ3z86.CastCycleAlly(pVRj.Cleanse,hDc_M,function(pVRj)return
(pVRj:GUID()==XL_)and not tczrIB(pVRj)end)then return'Cleanse Members'end end;if pVRj.Seraphim:IsReady(QKKks_zt)then if ZG(pVRj.Seraphim)then
return"Seraphim Player"end end
if

(
(not
lqT:IsAvailable()and QKKks_zt:HolyPower()>=3)or
(lqT:IsAvailable()and
((QKKks_zt:HolyPower()==5)or
(
QKKks_zt:BuffUp(PrPyxMK)and QKKks_zt:HolyPower()==3))))and t5jzEd9(DPSThreshold)>0 then
if
pVRj.WordOfGlory:IsReady()and(t5jzEd9(hPQ)<3)and QKKks_zt:BuffUp(mP3mlD)then
if
fuZ3z86.CastCycleAlly(pVRj.WordOfGlory,hDc_M,function(pVRj)return

(
pVRj:HealthPercentage()<=hPQ or
(pVRj:HealthPercentage()<90 and not
QKKks_zt:AffectingCombat()))and not tczrIB(pVRj)end)then return'WordofGlory Members'end end
if pVRj.LightOfDawn:IsReady()then
if
fuZ3z86.CastCycleAlly(pVRj.LightOfDawn,hDc_M,function(pVRj)return
(
(
(HGli and not
QKKks_zt:IsUnit(pVRj)and pVRj:IsInRange(15))or not HGli)and not tczrIB(pVRj))end)then return'LightofDawn Members'end end end
if

pVRj.HolyShock:IsCastable()and(t5jzEd9(DPSThreshold)==0 or not
QKKks_zt:AffectingCombat())and pVRj.GlimmerOfLight:IsAvailable()then
if
fuZ3z86.CastCycleAlly(pVRj.HolyShock,hDc_M,function(pVRj)return
pVRj:BuffDown(qkP7O5)and not tczrIB(pVRj)end)then return'HolyShock Spread Glimmer'end end
if
QKKks_zt:AffectingCombat()and t5jzEd9(DPSThreshold)==0 and er.TargetIsValid()then return zPXTTg()end
if pVRj.HolyShock:IsReady()then
if
fuZ3z86.CastCycleAlly(pVRj.HolyShock,hDc_M,function(pVRj)
return
pVRj:HealthPercentage()<=JLCOx_ak and not tczrIB(pVRj)end)then return'HolyShock Members'end end
if pVRj.BeaconOfVirtue:IsReady()then
if
fuZ3z86.CastCycleAlly(pVRj.BeaconOfVirtue,hDc_M,function(QKKks_zt)return
(
(

pVRj.LightOfDawn:IsReady(QKKks_zt)or pVRj.WordOfGlory:IsReady(QKKks_zt)or pVRj.HolyShock:IsReady(QKKks_zt))and not tczrIB(QKKks_zt))end)then return'Beacon Of Virtue Members'end end
if pVRj.BestowFaith:IsReady()then
if
fuZ3z86.CastCycleAlly(pVRj.BestowFaith,hDc_M,function(pVRj)
return
pVRj:HealthPercentage()<=iD1IUx and not tczrIB(pVRj)end)then return'BestowFaith Members'end end
if pVRj.FlashOfLight:IsCastable()and LB1Z then
if
fuZ3z86.CastCycleAlly(pVRj.FlashOfLight,hDc_M,function(pVRj)return

(
pVRj:HealthPercentage()<=R1FIoQI or
(pVRj:HealthPercentage()<60 and not
QKKks_zt:AffectingCombat()))and not tczrIB(pVRj)end)then return'FlashofLight Members'end end
if pVRj.HolyLight:IsCastable()and LB1Z then
if
fuZ3z86.CastCycleAlly(pVRj.HolyLight,hDc_M,function(pVRj)return

((
pVRj:HealthPercentage()<=NsoTwDs)or
(
pVRj:HealthPercentage()<90 and not QKKks_zt:AffectingCombat()))and not tczrIB(pVRj)end)then return'HolyLight Members'end end
if pVRj.LightOfTheMartyr:IsReady()and TjhsnP then
if
fuZ3z86.CastCycleAlly(pVRj.LightOfTheMartyr,hDc_M,function(pVRj)
return

pVRj:HealthPercentage()<=iy and not QKKks_zt:IsUnit(pVRj)and not tczrIB(pVRj)end)then return'LightOfTheMartyr Members'end end;if
pVRj.CrusaderStrike:IsReady(Are7xU)and UnitIsEnemy("target","player")then
if ZG(pVRj.CrusaderStrike)then return"CrusaderStrike - Holy Power"end end
if

pVRj.LightSHammer:IsReady(QKKks_zt)and Are7xU:IsInMeleeRange(8)and not
QKKks_zt:IsMoving()and er.TargetIsValid()then if ZG(pVRj.LightSHammer)then return"Lights Hammer"end end end;local function pVRj()Q()return seMLr()end
fuZ3z86.SetCustomAPL(_IQQ,XpkjA,pVRj,qW0lRiD1)end;local function ZA()
C_Timer.After(1,function()if MainAddon then Q()else ZA()end end)end;ZA()