
local function Q()local _IQQ='Aya_Hpal 1.0'local XpkjA=65;local pVRj=LibStub('StdUi')
local fuZ3z86=LibStub("AceAddon-3.0"):GetAddon(Z_AddonName)local er=fuZ3z86;local DFb100j=fuZ3z86.HealingEngine;local XL_=HeroLibEx;local pVRj=HeroCache
local WYdR=XL_.Unit;local QKKks_zt=WYdR.Player;local Are7xU=WYdR.Target;local pVRj=WYdR.Arena;local pVRj=WYdR.Party
local pVRj=WYdR.MouseOver;local yxjl=XL_.Spell;local pVRj=XL_.Item;local ZG=er.Cast;local pVRj=er.CastAlly
local Vu0cCAf=er.AoEON;local pVRj=er.CDsON;local pVRj=yxjl.Paladin.Holy;local q=yxjl(287280)
local kP7O5=yxjl(385125)local lqT=yxjl(394709)local mP3mlD=yxjl(385127)local PrPyxMK=yxjl(385126)
local tczrIB,a;local wqU76o,LB1Z;local PrPyxMK,PrPyxMK;local PrPyxMK=fuZ3z86.Config.GetClassSetting
local N9L="Aya_Hpal_Condig"local PrPyxMK='F48CBA'
local PrPyxMK={key=N9L,title='Aya - Holy',subtitle='Aya '..fuZ3z86.Version,width=470,height=650,profiles=true,config={{type='header',text='Holy',size=24,align='Center',color=PrPyxMK},{type='spacer'},{type='ruler'},{type='spacer'},{type='header',text='Spells',color=PrPyxMK},{type='spinner',text='DPS Threshold',key='DPSThreshold1',min=1,max=100,default=80},{type='spinner',text='Bestow Faith',key='BestowFaith',min=1,max=100,default=95},{type='spinner',text='Holy Shock',key='HolyShock',min=1,max=100,default=95},{type='spinner',text='Word of GLory',key='WordofGlory',min=1,max=100,default=70},{type='spinner',text='Holy Light',key='HolyLight',min=1,max=100,default=0},{type='spinner',text='Flash of Light',key='FlashofLight',min=1,max=100,default=40},{type='spinner',text='Light of Martyr',key='LightofMartyr',min=1,max=100,default=70},{type='spinner',text='Lay on Hands',key='LayOnHands',min=1,max=100,default=25},{type='spacer'},{type='header',text='Defensive',color=PrPyxMK},{type='spinner',text='Blessing of Sacrifice',key='BlessingOfSacrifice',min=1,max=100,default=40},{type='spinner',text='Divine Protection',key='DivineProtection',min=1,max=100,default=40},{type='spinner',text='Divine Shield',key='DivineShield',min=1,max=100,default=20},{type='spacer'},{type='header',text='Class',color=PrPyxMK},{type='spinner',text="Cooldowns HP",key='CooldownSlider',min=1,max=100,default=75},{type='dropdown',text='Cooldown Options',key='CooldownOption',list={{text='Auto',key=1},{text='Manually',key=2}},default=1},{type='dropdown',text='Holy Shock',key='HolyShockOption',list={{text='Heal',key=1},{text='Heal + Damage',key=2}},default=2},{type='checkbox',text='Consecration while Standing',key='ConsecrationWhileStanding',default=true},{type='checkbox',text='Light of Dawn: Check for Range',key='LightofDawnRange',default=false},{type='checkbox',text='Mana Management',key='ManaManagement',default=false},{type='checkbox',text='Judgment & Crusader Strike sniping',key='JCSSniping',default=false}}}fuZ3z86.SetCustomConfig(_IQQ,XpkjA,PrPyxMK)
local function hDc_M()end;local qW0lRiD1,iD1IUx,JLCOx_ak,hPQ,R1FIoQI,NsoTwDs,HGli;local iy,m6SCS0,NUhYw6R4,Hv,Ch;local urkh,zhzpBSx,rHSjalVy,N9L;local TjhsnP;local PrPyxMK={}
XL_:RegisterForEvent(function(QKKks_zt,...)
local WYdR,pVRj,ZG,fuZ3z86=...
if QKKks_zt=="UNIT_SPELLCAST_SENT"then if WYdR=="player"and pVRj then
currentspell=fuZ3z86;currentspelltarget=pVRj end end
if QKKks_zt=="UI_ERROR_MESSAGE"then if pVRj==SPELL_FAILED_LINE_OF_SIGHT then
missedunit=currentspelltarget;missedspell=currentspell end end end,"UI_ERROR_MESSAGE","UNIT_SPELLCAST_SENT")
local function t5jzEd9()
DPSThreshold=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"DPSThreshold1")
qW0lRiD1=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"BestowFaith")
iD1IUx=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"HolyShock")
JLCOx_ak=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"WordofGlory")
R1FIoQI=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"HolyLight")
hPQ=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"FlashofLight")
HGli=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"LightofMartyr")
iy=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"BlessingOfSacrifice")
m6SCS0=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"LayOnHands")
NUhYw6R4=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"DivineProtection")
Hv=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"DivineShield")
zhzpBSx=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"CooldownSlider")
urkh=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"CooldownOption")
rHSjalVy=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"HolyShockOption")
N9L=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"ConsecrationWhileStanding")
NsoTwDs=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"LightofDawnRange")
Ch=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"ManaManagement")
TjhsnP=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"JCSSniping")end
local function N9L(QKKks_zt,fuZ3z86)local ZG,pVRj
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
table.insert(PrPyxMK,(N9L(missedunit).." "..GetTime()))missedunit=nil end
if
table.getn(PrPyxMK)>0 then
for QKKks_zt=1,table.getn(PrPyxMK)do
if PrPyxMK[QKKks_zt]~=nil then
for pVRj in
string.gmatch(PrPyxMK[QKKks_zt],"([^%s]+)")do pVRj=tonumber(pVRj)
if type(pVRj)=="number"then if pVRj<=GetTime()-1.5 then
table.remove(PrPyxMK,QKKks_zt)end end end end end end end
local function N9L(QKKks_zt)
if table.getn(PrPyxMK)>0 and QKKks_zt~=nil then for pVRj=1,table.getn(PrPyxMK)
do
for pVRj in string.gmatch(PrPyxMK[pVRj],"([^%s]+)")do if pVRj and
pVRj==QKKks_zt:GUID()then return true end end end else return
false end end
local function PrPyxMK()
for QKKks_zt=1,4 do local ZG,QKKks_zt,fuZ3z86,WYdR=GetTotemInfo(QKKks_zt)
if QKKks_zt==
pVRj.Consecration:Name()then return
(floor(fuZ3z86+WYdR-GetTime()+.5))or 0 end end;return 0 end
local function PrPyxMK(pVRj)
if(WYdR(pVRj):BuffUp(yxjl(365153)))then
for QKKks_zt=1,40 do if
select(10,UnitBuff(pVRj,QKKks_zt))==365153 then
return select(16,UnitBuff(pVRj,QKKks_zt))end end else return 0 end end
local function TjhsnP(pVRj)
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
(UnitGetIncomingHeals("party"..QKKks_zt)or 0)-PrPyxMK("party"..QKKks_zt)local WYdR=UnitHealthMax("party"..QKKks_zt)
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
UnitGetIncomingHeals("raid"..QKKks_zt)or 0)-PrPyxMK("raid"..QKKks_zt)local QKKks_zt=UnitHealthMax("raid"..QKKks_zt)if
WYdR/QKKks_zt<=pVRj then fuZ3z86=fuZ3z86+1 end end end end
if GetNumGroupMembers()==0 then
local QKKks_zt=UnitHealth("player")+ (
UnitGetIncomingHeals("player")or 0)-
PrPyxMK("player")local WYdR=UnitHealthMax("player")if QKKks_zt/WYdR<pVRj then
fuZ3z86=fuZ3z86+1 end end;return fuZ3z86 end
local function PrPyxMK()
for fuZ3z86,QKKks_zt in pairs(QKKks_zt:GetEnemiesInRange(5))do if

QKKks_zt:DebuffUp(pVRj.JudgmentDebuff)and QKKks_zt:IsSpellInRange(pVRj.CrusaderStrike)then return true end end;return false end;local function PrPyxMK(QKKks_zt)
return QKKks_zt:DebuffRemains(pVRj.JudgmentOfLightDebuff)end;local function PrPyxMK(pVRj)return
not pVRj:HasPvEImmunity()end
local function PrPyxMK(pVRj)return N9L(pVRj)end
local function PrPyxMK(QKKks_zt)return QKKks_zt:BuffRemains(pVRj.JudgmentDebuff)end
local function PrPyxMK(fuZ3z86)
return
fuZ3z86:DebuffUp(pVRj.JudgmentDebuff)and
not fuZ3z86:HasPvEImmunity()and
pVRj.CrusaderStrike:Charges()==2 and
(
pVRj.CrusadersMight:IsAvailable()and
pVRj.HolyShock:CooldownRemains()>1+QKKks_zt:GCD()or not
pVRj.CrusadersMight:IsAvailable())end
local function PrPyxMK(fuZ3z86)
return
fuZ3z86:DebuffUp(pVRj.JudgmentDebuff)and
not fuZ3z86:HasPvEImmunity()and
pVRj.CrusaderStrike:Charges()==1 and
(
pVRj.CrusadersMight:IsAvailable()and
pVRj.HolyShock:CooldownRemains()>1+QKKks_zt:GCD()or not
pVRj.CrusadersMight:IsAvailable())end
local function PrPyxMK(fuZ3z86)
return
fuZ3z86:DebuffUp(pVRj.JudgmentDebuff)and
not fuZ3z86:HasPvEImmunity()and
(
pVRj.CrusadersMight:IsAvailable()and
pVRj.HolyShock:CooldownRemains()>1+QKKks_zt:GCD()or not
pVRj.CrusadersMight:IsAvailable()and
(Ch and fuZ3z86:HealthPercentage()<=
QKKks_zt:ManaPercentage()or not Ch))end
local function PrPyxMK(pVRj)return
(pVRj:IsInRange(40)and N9L(pVRj)and
(
pVRj:AffectingCombat()or
pVRj:IsDummy()or pVRj:NPCID()==153285 or pVRj:NPCID()==168326))end
local function JZAU2()
if
(
(not kP7O5:IsAvailable()and QKKks_zt:HolyPower()>=3)or
(kP7O5:IsAvailable()and
((QKKks_zt:HolyPower()==5)or
(
QKKks_zt:BuffUp(mP3mlD)and QKKks_zt:HolyPower()==3))))then
if pVRj.ShieldOfTheRighteous:IsReady()and a>=1 then if
ZG(pVRj.ShieldOfTheRighteous)then return"ShieldOfTheRighteous - DPS"end end end
if pVRj.HammerOfWrath:IsReady(Are7xU)then if ZG(pVRj.HammerOfWrath)then return
"HammerOfWrath - DPS"end end
if
pVRj.DivineToll:IsReady(QKKks_zt)and Are7xU:IsInMeleeRange(8)and
(UnitExists("boss1")or XL_.FightRemains(tczrIB)>30)then if
ZG(pVRj.DivineToll)then return"Divine Toll 1"end end
if

pVRj.LightSHammer:IsReady(QKKks_zt)and Are7xU:IsInMeleeRange(8)and not QKKks_zt:IsMoving()then
if ZG(pVRj.LightSHammer)then return"Lights Hammer - DPS"end end
if
pVRj.Consecration:IsReady()and Are7xU:IsInMeleeRange(5)and not QKKks_zt:IsMoving()then if
ZG(pVRj.Consecration)then return"Consecration - DPS"end end;if pVRj.Judgment:IsReady()then
if ZG(pVRj.Judgment)then return"Judgement - DPS"end end
if
pVRj.HolyShock:IsReady(Are7xU)and rHSjalVy==2 then
fuZ3z86.SetTopColor(6,"Holy Shock Enemy")return"HolyShock - DPS"end
if pVRj.CrusaderStrike:IsReady(Are7xU)then if ZG(pVRj.CrusaderStrike)then return
"CrusaderStrike - DPS"end end end
local function zPXTTg()local XpkjA,Ch,PrPyxMK,Ch,Ch,Ch=DFb100j:Update()t5jzEd9()
if Vu0cCAf()then
tczrIB=QKKks_zt:GetEnemiesInRangeFilter(5)wqU76o=WYdR:GetEnemiesInSplashRange(5)a=#tczrIB
LB1Z=WYdR:GetEnemiesInSplashRangeCount(5)else a=1;LB1Z=1 end;local LB1Z=XL_.CombatTime()
local wqU76o=not QKKks_zt:IsMoving()
local rHSjalVy=(QKKks_zt:HealthPercentage()>=60 or
QKKks_zt:BuffUp(pVRj.DivineShield))local XL_=Are7xU:IsInMeleeRange(5)
local DFb100j=#PrPyxMK>1 and
(urkh==1 and
DFb100j:AverageHP()<=zhzpBSx or urkh==2)and
QKKks_zt:BuffDown(pVRj.AvengingWrath)and
QKKks_zt:BuffDown(pVRj.HolyAvenger)local XL_=Vu0cCAf()and#PrPyxMK>=1
local XL_=(
pVRj.HolyShock:IsReady()or pVRj.BestowFaith:IsReady()or
pVRj.HammerOfWrath:IsReady()or
pVRj.CrusaderStrike:IsReady())local XL_=QKKks_zt:GUID()local tczrIB,XL_,a,Ch,urkh=nil,nil,nil,nil,nil
for QKKks_zt=1,GetNumGroupMembers()
do
if
GetNumGroupMembers()>1 and GetNumGroupMembers()<=5 then local fuZ3z86,pVRj=UnitClassBase("party"..QKKks_zt)
if not
WYdR("party"..QKKks_zt):IsATank()then
if pVRj==3 then
tczrIB=WYdR("party"..QKKks_zt):GUID()elseif pVRj==13 then
XL_=WYdR("party"..QKKks_zt):GUID()elseif pVRj==7 then
a=WYdR("party"..QKKks_zt):GUID()elseif pVRj==5 then
Ch=WYdR("party"..QKKks_zt):GUID()elseif pVRj==8 or pVRj==9 or pVRj==11 then
urkh=WYdR("party"..QKKks_zt):GUID()end end end end
if
Are7xU:IsAPlayer()and Are7xU:IsDeadOrGhost()and not
Are7xU:IsEnemy()and Are7xU:IsInParty()then
if LB1Z==0 and pVRj.Absolution:IsReady(QKKks_zt)then if
ZG(pVRj.Absolution)then return'Resurrection'end end end;if pVRj.DevotionAura:IsReady()and
QKKks_zt:BuffDown(pVRj.DevotionAura)then
if ZG(pVRj.DevotionAura)then return"DevotionAura"end end
if
pVRj.DivineProtection:IsReady()and
(QKKks_zt:HealthPercentage()<=NUhYw6R4 or
QKKks_zt:BuffUp(pVRj.BlessingOfSacrifice))then if
ZG(pVRj.DivineProtection)then return"DivineProtection Player"end end
if pVRj.DivineShield:IsReady()and
QKKks_zt:BuffDown(pVRj.ForberanceDebuff)and
QKKks_zt:HealthPercentage()<=Hv then if ZG(pVRj.DivineShield)then return
"DivineShield Player"end end
if pVRj.LayOnHands:IsReady()and LB1Z>0 then
if
fuZ3z86.CastCycleAlly(pVRj.LayOnHands,PrPyxMK,function(QKKks_zt)
return

QKKks_zt:DebuffDown(pVRj.ForberanceDebuff)and QKKks_zt:HealthPercentage()<=m6SCS0 and not N9L(QKKks_zt)end)then return'Lay On Hands Lower HP'end end
if pVRj.BlessingOfSacrifice:IsReady()then
if
fuZ3z86.CastCycleAlly(pVRj.BlessingOfSacrifice,PrPyxMK,function(pVRj)
return


not QKKks_zt:IsUnit(pVRj)and rHSjalVy and LB1Z>0 and pVRj:HealthPercentage()<=iy and not N9L(pVRj)end)then return'Blessing of Sacrifice Lower HP'end end
local LB1Z=fuZ3z86.HealingEngine:BuffTotal(pVRj.BeaconOfLightBuff)
if LB1Z==0 and pVRj.BeaconOfLight:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.BeaconOfLight,XpkjA,function(QKKks_zt)
return

QKKks_zt:BuffDown(pVRj.BeaconOfLightBuff)and QKKks_zt:BuffDown(pVRj.BeaconOfFaithBuff)and not N9L(QKKks_zt)end)then return'Beacon Tank Members'end end
local LB1Z=fuZ3z86.HealingEngine:BuffTotal(pVRj.BeaconOfFaithBuff)
if pVRj.BeaconOfFaith:IsCastable()and LB1Z==0 then
if
fuZ3z86.CastCycleAlly(pVRj.BeaconOfFaith,PrPyxMK,function(QKKks_zt)
return


QKKks_zt:BuffDown(pVRj.BeaconOfLightBuff)and QKKks_zt:BuffDown(pVRj.BeaconOfFaithBuff)and
(
(GetNumGroupMembers()<=5 and
(




(tczrIB and tczrIB==QKKks_zt:GUID())or(XL_ and XL_==QKKks_zt:GUID())or(a and a==QKKks_zt:GUID())or(Ch and Ch==QKKks_zt:GUID())or(urkh and urkh==QKKks_zt:GUID())or
(not tczrIB and not XL_ and not a and not Ch and not urkh)))or GetNumGroupMembers()>5)end)then return'Beacon Faith Members'end end
if DFb100j then if pVRj.AuraMastery:IsReady()then if ZG(pVRj.AuraMastery)then
return'AuraMastery'end end
if
pVRj.AvengingWrath:IsReady()then if ZG(pVRj.AvengingWrath)then return'AvengingWrath'end end;if pVRj.HolyAvenger:IsReady()then
if ZG(pVRj.HolyAvenger)then return'HolyAvenger'end end
if
pVRj.TyrSDeliverance:IsReady()then if ZG(pVRj.TyrSDeliverance)then return'TyrSDeliverance'end end end
if
pVRj.DivineToll:IsReady(QKKks_zt)and Are7xU:IsInMeleeRange(8)and(TjhsnP(60)>=3)then if
ZG(pVRj.DivineToll)then return"Divine Toll 1"end end;local XL_=nil
if
pVRj.Cleanse:IsCastable()and GetNumGroupMembers()>0 and not StopHeal then
if GetNumGroupMembers()>0 and
GetNumGroupMembers()<=5 then
for QKKks_zt=1,GetNumGroupMembers()do
if



UnitExists("party"..QKKks_zt)and not UnitIsDead("party"..QKKks_zt)and IsItemInRange(17067,"party"..QKKks_zt)and not UnitCanAttack("player","party"..QKKks_zt)then
for pVRj=1,10 do
local N9L,N9L,WYdR,fuZ3z86,ZG,PrPyxMK,N9L,N9L,N9L,pVRj=UnitDebuff("party"..QKKks_zt,pVRj)
if(TjhsnP(50)==0 or pVRj==227404)then
if



(fuZ3z86 =="Poison"or
fuZ3z86 =="Magic"or fuZ3z86 =="Disease")and pVRj~=320788 and
((pVRj~=323347)or(
pVRj==323347 and WYdR>=2))and
pVRj~=350469 and pVRj~=
350541 and pVRj~=351117 and pVRj~=229159 then if(PrPyxMK-ZG)+ (500/1000)<=GetTime()then
if
pVRj~=227404 then XL_=UnitGUID("party"..QKKks_zt)end end end end end end end end end
if not WYdR("player"):IsDeadOrGhost()and
WYdR("player"):DebuffDown(yxjl(228578))then
for pVRj=1,10 do
local PrPyxMK,PrPyxMK,WYdR,QKKks_zt,ZG,fuZ3z86,PrPyxMK,PrPyxMK,PrPyxMK,pVRj,PrPyxMK,PrPyxMK,PrPyxMK,PrPyxMK,PrPyxMK=UnitDebuff("player",pVRj)
if(TjhsnP(50)==0 or pVRj==227404)then
if



(QKKks_zt=="Poison"or
QKKks_zt=="Magic"or QKKks_zt=="Disease")and pVRj~=320788 and
((pVRj~=323347)or(
pVRj==323347 and WYdR>=2))and
pVRj~=350469 and pVRj~=
350541 and pVRj~=351117 and pVRj~=229159 then
if(fuZ3z86-ZG)+ (500/1000)<=GetTime()then if
pVRj~=227404 then XL_=UnitGUID("player")end end end end end end
if pVRj.Cleanse:IsReady()then
if
fuZ3z86.CastCycleAlly(pVRj.Cleanse,PrPyxMK,function(pVRj)return
(pVRj:GUID()==XL_)and not N9L(pVRj)end)then return'Cleanse Members'end end
if
QKKks_zt:AffectingCombat()and TjhsnP(DPSThreshold)==0 and er.TargetIsValid()then return JZAU2()end;if pVRj.Seraphim:IsReady(QKKks_zt)then if ZG(pVRj.Seraphim)then
return"Seraphim Player"end end
if
(
(not
kP7O5:IsAvailable()and QKKks_zt:HolyPower()>=3)or
(kP7O5:IsAvailable()and
((QKKks_zt:HolyPower()==5)or
(
QKKks_zt:BuffUp(mP3mlD)and QKKks_zt:HolyPower()==3))))then
if
pVRj.WordOfGlory:IsReady()and(TjhsnP(JLCOx_ak)<3)and QKKks_zt:BuffUp(lqT)then
if
fuZ3z86.CastCycleAlly(pVRj.WordOfGlory,PrPyxMK,function(pVRj)
return
(
pVRj:HealthPercentage()<=JLCOx_ak or
(pVRj:HealthPercentage()<90 and not
QKKks_zt:AffectingCombat()))and not N9L(pVRj)end)then return'WordofGlory Members'end end
if pVRj.LightOfDawn:IsReady()then
if
fuZ3z86.CastCycleAlly(pVRj.LightOfDawn,PrPyxMK,function(pVRj)return
(
(
(NsoTwDs and not
QKKks_zt:IsUnit(pVRj)and pVRj:IsInRange(15))or not NsoTwDs)and not N9L(pVRj))end)then return'LightofDawn Members'end end end
if

pVRj.HolyShock:IsCastable()and(TjhsnP(DPSThreshold)==0 or not
QKKks_zt:AffectingCombat())and pVRj.GlimmerOfLight:IsAvailable()then
if
fuZ3z86.CastCycleAlly(pVRj.HolyShock,PrPyxMK,function(pVRj)
return pVRj:BuffDown(q)and not N9L(pVRj)end)then return'HolyShock Spread Glimmer'end end
if pVRj.HolyShock:IsReady()then
if
fuZ3z86.CastCycleAlly(pVRj.HolyShock,PrPyxMK,function(pVRj)
return
pVRj:HealthPercentage()<=iD1IUx and not N9L(pVRj)end)then return'HolyShock Members'end end
if pVRj.BeaconOfVirtue:IsReady()then
if
fuZ3z86.CastCycleAlly(pVRj.BeaconOfVirtue,PrPyxMK,function(QKKks_zt)return
(
(

pVRj.LightOfDawn:IsReady(QKKks_zt)or pVRj.WordOfGlory:IsReady(QKKks_zt)or pVRj.HolyShock:IsReady(QKKks_zt))and not N9L(QKKks_zt))end)then return'Beacon Of Virtue Members'end end
if pVRj.BestowFaith:IsReady()then
if
fuZ3z86.CastCycleAlly(pVRj.BestowFaith,PrPyxMK,function(pVRj)
return
pVRj:HealthPercentage()<=qW0lRiD1 and not N9L(pVRj)end)then return'BestowFaith Members'end end
if pVRj.FlashOfLight:IsCastable()and wqU76o then
if
fuZ3z86.CastCycleAlly(pVRj.FlashOfLight,PrPyxMK,function(pVRj)
return
(
pVRj:HealthPercentage()<=hPQ or
(pVRj:HealthPercentage()<60 and not
QKKks_zt:AffectingCombat()))and not N9L(pVRj)end)then return'FlashofLight Members'end end
if pVRj.HolyLight:IsCastable()and wqU76o then
if
fuZ3z86.CastCycleAlly(pVRj.HolyLight,PrPyxMK,function(pVRj)return

((
pVRj:HealthPercentage()<=R1FIoQI)or
(
pVRj:HealthPercentage()<90 and not QKKks_zt:AffectingCombat()))and not N9L(pVRj)end)then return'HolyLight Members'end end
if pVRj.LightOfTheMartyr:IsReady()and rHSjalVy then
if
fuZ3z86.CastCycleAlly(pVRj.LightOfTheMartyr,PrPyxMK,function(pVRj)
return

pVRj:HealthPercentage()<=HGli and not QKKks_zt:IsUnit(pVRj)and not N9L(pVRj)end)then return'LightOfTheMartyr Members'end end;if
pVRj.CrusaderStrike:IsReady(Are7xU)and UnitIsEnemy("target","player")then
if ZG(pVRj.CrusaderStrike)then return"CrusaderStrike - Holy Power"end end
if

pVRj.LightSHammer:IsReady(QKKks_zt)and Are7xU:IsInMeleeRange(8)and not
QKKks_zt:IsMoving()and er.TargetIsValid()then if ZG(pVRj.LightSHammer)then return"Lights Hammer"end end end;local function pVRj()Q()return zPXTTg()end
fuZ3z86.SetCustomAPL(_IQQ,XpkjA,pVRj,hDc_M)end;local function ZA()
C_Timer.After(1,function()if MainAddon then Q()else ZA()end end)end;ZA()