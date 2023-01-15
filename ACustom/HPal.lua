
local function Q()local _IQQ='Aya_Hpal 1.0'local XpkjA=65;local pVRj=LibStub('StdUi')
local fuZ3z86=LibStub("AceAddon-3.0"):GetAddon(Z_AddonName)local er=fuZ3z86;local DFb100j=fuZ3z86.HealingEngine;local XL_=HeroLibEx;local pVRj=HeroCache
local WYdR=XL_.Unit;local QKKks_zt=WYdR.Player;local Are7xU=WYdR.Target;local pVRj=WYdR.Arena;local pVRj=WYdR.Party
local yxjl=WYdR.MouseOver;local ZG=XL_.Spell;local pVRj=XL_.Item;local Vu0cCAf=GetMouseFocus
local qkP7O5=UnitHasIncomingResurrection;local lqT=GetNumGroupMembers;local mP3mlD=UnitClassBase;local PrPyxMK=GetUnitName;local tczrIB=UnitGUID
local a=UnitExists;local wqU76o=UnitHealth;local LB1Z=UnitHealthMax;local N9L=type;local hDc_M=GetTime;local qW0lRiD1=tonumber
local iD1IUx=UnitGetIncomingHeals;local JLCOx_ak=er.Cast;local pVRj=er.CastAlly;local hPQ=er.AoEON;local pVRj=er.CDsON
local pVRj=ZG.Paladin.Holy;local R1FIoQI=ZG(287280)local NsoTwDs=ZG(385125)local HGli=ZG(394709)
local iy=ZG(385127)local m6SCS0=ZG(385126)local NUhYw6R4=ZG(388010)local Hv=ZG(388011)
local Ch=ZG(388013)local urkh,zhzpBSx;local rHSjalVy,TjhsnP;local t5jzEd9;local m6SCS0,m6SCS0
local m6SCS0=fuZ3z86.Config.GetClassSetting;local JZAU2="Aya_Hpal_Condig"local m6SCS0='F48CBA'
local m6SCS0={key=JZAU2,title='Aya - Holy',subtitle='Aya '..fuZ3z86.Version,width=470,height=750,profiles=true,config={{type='header',text='Holy',size=24,align='Center',color=m6SCS0},{type='spacer'},{type='ruler'},{type='spacer'},{type='header',text='Spells',color=m6SCS0},{type='spinner',text='DPS Threshold',key='DPSThreshold1',min=1,max=100,default=80},{type='spinner',text='Bestow Faith',key='BestowFaith',min=1,max=100,default=95},{type='spinner',text='Holy Shock',key='HolyShock',min=1,max=100,default=95},{type='spinner',text='Word of GLory',key='WordofGlory',min=1,max=100,default=70},{type='spinner',text='Holy Light',key='HolyLight',min=1,max=100,default=0},{type='spinner',text='Flash of Light',key='FlashofLight',min=1,max=100,default=40},{type='spinner',text='Light of Martyr',key='LightofMartyr',min=1,max=100,default=70},{type='spinner',text='Lay on Hands',key='LayOnHands',min=1,max=100,default=25},{type='spacer'},{type='header',text='Defensive',color=m6SCS0},{type='spinner',text='Blessing of Sacrifice',key='BlessingOfSacrifice',min=1,max=100,default=40},{type='spinner',text='Divine Protection',key='DivineProtection',min=1,max=100,default=40},{type='spinner',text='Divine Shield',key='DivineShield',min=1,max=100,default=20},{type='spacer'},{type='header',text='Trinkets',color=m6SCS0},{type='dropdown',text='Top Trinket Target',key='TopTrinketTarget',list={{text='None',key=1},{text='Enemy',key=2}},default=1},{type='dropdown',text='Top Trinket Use',key='TopTrinketOption',list={{text='Off',key=1},{text='On Cooldown',key=2},{text='With Cooldowns HP',key=3}},default=1},{type='dropdown',text='Bottom Trinket Target',key='BotTrinketTarget',list={{text='None',key=1},{text='Enemy',key=2}},default=1},{type='dropdown',text='Bottom Trinket Use',key='BotTrinketOption',list={{text='Off',key=1},{text='On Cooldown',key=2},{text='With Cooldowns HP',key=3}},default=1},{type='header',text='Class',color=m6SCS0},{type='spinner',text="Cooldowns HP",key='CooldownSlider',min=1,max=100,default=75},{type='dropdown',text='Cooldown Options',key='CooldownOption',list={{text='Auto',key=1},{text='Manually',key=2}},default=1},{type='dropdown',text='Holy Shock',key='HolyShockOption',list={{text='Heal',key=1},{text='Heal + Damage',key=2}},default=2},{type='dropdown',text='Divine Toll',key='DivineTollOption',list={{text='Heal',key=1},{text='Heal + Damage',key=2}},default=2},{type='dropdown',text='Lights Hammer',key='LightsHammerOption',list={{text='Heal',key=1},{text='Heal + Damage',key=2}},default=2},{type='checkbox',text='Light of Dawn: Check for Range',key='LightofDawnRange',default=false},{type='dropdown',text=' Intercession',key='autorebirth',multiselect=true,icon=pVRj.Intercession:ID(),list={{text='Target',key='autorebirth_target'},{text='MouseOver',key='autorebirth_mouseover'}},default={}}}}fuZ3z86.SetCustomConfig(_IQQ,XpkjA,m6SCS0)
local function zPXTTg()end;local seMLr,qX,h_8,xL7OTb,w8T3f,K,qL,vfIyB;local quNsijN,QUh2tc,qboV,nSBOx7,uK;local i1,zz1QI,kFTAh,LBf,dijn4Ph,CO1;local RlZo,SUn,Q,Ib4;local fjV1G2
local Do={}
local _TqYJ4,m6SCS0,DI,b,E,KMw7_i1s,CQi,nHlJ,lw4Q7kbl,IN,QYf1,RfsnisO,lvW2ga,T7RKP,_L6Bs=false,false,false,false,false,false,false,false,false,false,false,false,false,false,false;local m6SCS0=nil;local SH,wU4wYbA9,JZAU2
XL_:RegisterForEvent(function(fuZ3z86,...)local QKKks_zt,pVRj,JLCOx_ak,WYdR=...if
fuZ3z86 =="UNIT_SPELLCAST_SENT"then
if QKKks_zt=="player"and pVRj then currentspell=WYdR;currentspelltarget=pVRj end end
if
fuZ3z86 =="UI_ERROR_MESSAGE"then if pVRj==SPELL_FAILED_LINE_OF_SIGHT then missedunit=currentspelltarget
missedspell=currentspell end end end,"UI_ERROR_MESSAGE","UNIT_SPELLCAST_SENT")
local function fFeQcIM()SH=er.TargetIsValid()
wU4wYbA9=QKKks_zt:AffectingCombat()JZAU2=lqT()
vfIyB=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"DPSThreshold1")
seMLr=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"BestowFaith")
qX=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"HolyShock")
h_8=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"WordofGlory")
w8T3f=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"HolyLight")
xL7OTb=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"FlashofLight")
qL=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"LightofMartyr")
quNsijN=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"BlessingOfSacrifice")
QUh2tc=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"LayOnHands")
qboV=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"DivineProtection")
nSBOx7=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"DivineShield")
zz1QI=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"CooldownSlider")
i1=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"CooldownOption")
kFTAh=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"HolyShockOption")
dijn4Ph=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"DivineTollOption")
CO1=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"LightsHammerOption")
RlZo=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"TopTrinketTarget")
SUn=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"TopTrinketOption")
Q=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"BotTrinketTarget")
Ib4=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"BotTrinketOption")
LBf=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"ConsecrationWhileStanding")
K=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"LightofDawnRange")
uK=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"ManaManagement")
fjV1G2=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"JCSSniping")
_TqYJ4,_L6Bs,DI,b,E,KMw7_i1s,CQi,nHlJ,lw4Q7kbl,IN,QYf1,RfsnisO,lvW2ga,T7RKP,_L6Bs=false,false,false,false,false,false,false,false,false,false,false,false,false,false,false;m6SCS0=nil
if JZAU2 >1 and JZAU2 <=5 then m6SCS0="party"elseif JZAU2 >5 then m6SCS0="raid"end
if m6SCS0 then
for fuZ3z86=1,JZAU2 do local QKKks_zt,pVRj=mP3mlD(m6SCS0 ..fuZ3z86)
if not
WYdR(m6SCS0 ..fuZ3z86):IsATank()then
if pVRj==1 then
CQi=WYdR(m6SCS0 ..fuZ3z86):GUID()elseif pVRj==2 then
nHlJ=WYdR(m6SCS0 ..fuZ3z86):GUID()elseif pVRj==3 then
_TqYJ4=WYdR(m6SCS0 ..fuZ3z86):GUID()elseif pVRj==4 then
KMw7_i1s=WYdR(m6SCS0 ..fuZ3z86):GUID()elseif pVRj==5 then
b=WYdR(m6SCS0 ..fuZ3z86):GUID()elseif pVRj==6 then
lw4Q7kbl=WYdR(m6SCS0 ..fuZ3z86):GUID()elseif pVRj==7 then
DI=WYdR(m6SCS0 ..fuZ3z86):GUID()elseif pVRj==8 or pVRj==9 or pVRj==11 then
E=WYdR(m6SCS0 ..fuZ3z86):GUID()
if pVRj==8 then
QYf1=WYdR(m6SCS0 ..fuZ3z86):GUID()elseif pVRj==9 then
IN=WYdR(m6SCS0 ..fuZ3z86):GUID()elseif pVRj==11 then
RfsnisO=WYdR(m6SCS0 ..fuZ3z86):GUID()end elseif pVRj==10 then
lvW2ga=WYdR(m6SCS0 ..fuZ3z86):GUID()elseif pVRj==12 then
T7RKP=WYdR(m6SCS0 ..fuZ3z86):GUID()elseif pVRj==13 then
_L6Bs=WYdR(m6SCS0 ..fuZ3z86):GUID()end end end end end
local function m6SCS0(fuZ3z86,QKKks_zt)local JLCOx_ak,pVRj
if not QKKks_zt then if PrPyxMK("player",true)==fuZ3z86 then
return tczrIB("player")end;if PrPyxMK("target",true)==fuZ3z86 then return
WYdR("target"):GUID()end;if
PrPyxMK("focus",true)==fuZ3z86 then return tczrIB("focus")end;pVRj=lqT()if pVRj>0 and
pVRj<=5 then
for pVRj=1,pVRj do if PrPyxMK("party"..pVRj,true)==fuZ3z86 then return tczrIB("party"..
pVRj)end end end;if pVRj>5 then
for pVRj=1,pVRj do if PrPyxMK(
"raid"..pVRj,true)==fuZ3z86 then
return tczrIB("raid"..pVRj)end end end else if
PrPyxMK("player",true)==fuZ3z86 then return"player"end;if
PrPyxMK("target",true)==fuZ3z86 then return"target"end;if
PrPyxMK("focus",true)==fuZ3z86 then return"focus"end;pVRj=JZAU2;if pVRj>0 and
pVRj<=5 then
for pVRj=1,pVRj do if PrPyxMK("party"..pVRj,true)==fuZ3z86 then return
"party"..pVRj end end end
if pVRj>5 then for pVRj=1,pVRj do
if PrPyxMK(
"raid"..pVRj,true)==fuZ3z86 then return"raid"..pVRj end end end end;return fuZ3z86 end
local function tczrIB()if missedunit then
table.insert(Do,(m6SCS0(missedunit).." "..hDc_M()))missedunit=nil end
if
table.getn(Do)>0 then
for fuZ3z86=1,table.getn(Do)do
if Do[fuZ3z86]~=nil then
for pVRj in
string.gmatch(Do[fuZ3z86],"([^%s]+)")do pVRj=qW0lRiD1(pVRj)if N9L(pVRj)=="number"then if pVRj<=hDc_M()-1.5 then
table.remove(Do,fuZ3z86)end end end end end end end
local function PrPyxMK(fuZ3z86)
if table.getn(Do)>0 and fuZ3z86 ~=nil then
for pVRj=1,table.getn(Do)do for pVRj in
string.gmatch(Do[pVRj],"([^%s]+)")do
if pVRj and pVRj==fuZ3z86:GUID()then return true end end end else return false end end
local function m6SCS0(pVRj)
if(WYdR(pVRj):BuffUp(ZG(365153)))then
for fuZ3z86=1,40 do if
select(10,UnitBuff(pVRj,fuZ3z86))==365153 then
return select(16,UnitBuff(pVRj,fuZ3z86))end end else return 0 end end
local function Do()
for fuZ3z86=1,4 do local JLCOx_ak,fuZ3z86,WYdR,QKKks_zt=GetTotemInfo(fuZ3z86)
if fuZ3z86 ==
pVRj.Consecration:Name()then return
(floor(WYdR+QKKks_zt-hDc_M()+.5))or 0 end end;return 0 end
local function Do(pVRj)
if pVRj==nil or N9L(pVRj)=="string"then return nil end;pVRj=pVRj/100;local QKKks_zt=0
if JZAU2 >0 and JZAU2 <=5 then
for fuZ3z86=1,JZAU2 do
if
a("party"..fuZ3z86)and
not WYdR("party"..fuZ3z86):IsDeadOrGhost()and
WYdR("party"..fuZ3z86):DebuffDown(ZG(228578))then
local JLCOx_ak=

wqU76o("party"..fuZ3z86)+ (iD1IUx("party"..fuZ3z86)or 0)-m6SCS0("party"..fuZ3z86)local WYdR=LB1Z("party"..fuZ3z86)
if JLCOx_ak/WYdR<=pVRj or
(wqU76o("party"..
fuZ3z86)/WYdR==1 and pVRj==1)then QKKks_zt=QKKks_zt+1 end end end
if
(
(
(wqU76o("player")+ (iD1IUx("player")or 0))/LB1Z("player"))<pVRj or
(wqU76o("player")/LB1Z("player")==1 and pVRj==1))then QKKks_zt=QKKks_zt+1 end end
if JZAU2 >5 then
for fuZ3z86=1,JZAU2 do
if
a("raid"..fuZ3z86)and
not UnitIsDead("raid"..fuZ3z86)and
WYdR("raid"..fuZ3z86):DebuffDown(ZG(362075))and
WYdR("raid"..fuZ3z86):DebuffDown(ZG(362397))and WYdR(
"raid"..fuZ3z86):DebuffDown(ZG(191587))then local WYdR=0
local WYdR=wqU76o("raid"..fuZ3z86)+
(iD1IUx("raid"..fuZ3z86)or 0)-m6SCS0("raid"..fuZ3z86)local fuZ3z86=LB1Z("raid"..fuZ3z86)if WYdR/fuZ3z86 <=pVRj then QKKks_zt=QKKks_zt+
1 end end end end
if JZAU2 ==0 then
local WYdR=
wqU76o("player")+ (iD1IUx("player")or 0)-m6SCS0("player")local fuZ3z86=LB1Z("player")
if WYdR/fuZ3z86 <pVRj then QKKks_zt=QKKks_zt+1 end end;return QKKks_zt end
local function m6SCS0()
for QKKks_zt,fuZ3z86 in pairs(QKKks_zt:GetEnemiesInRange(5))do if

fuZ3z86:DebuffUp(pVRj.JudgmentDebuff)and fuZ3z86:IsSpellInRange(pVRj.CrusaderStrike)then return true end end;return false end;local function m6SCS0(pVRj)return pVRj:TimeToDie()end
local function ZG(pVRj)return

pVRj:HealthPercentage()<20 and not Are7xU:HasPvEImmunity()end
local function wqU76o(pVRj)return not pVRj:HasPvEImmunity()end;local function wqU76o(pVRj)return PrPyxMK(pVRj)end;local function wqU76o(fuZ3z86)return
fuZ3z86:BuffRemains(pVRj.JudgmentDebuff)end
local function wqU76o(fuZ3z86)
return



fuZ3z86:DebuffUp(pVRj.JudgmentDebuff)and not fuZ3z86:HasPvEImmunity()and pVRj.CrusaderStrike:Charges()==2 and
(
pVRj.CrusadersMight:IsAvailable()and
pVRj.HolyShock:CooldownRemains()>1+QKKks_zt:GCD()or not pVRj.CrusadersMight:IsAvailable())end
local function wqU76o(fuZ3z86)
return
fuZ3z86:DebuffUp(pVRj.JudgmentDebuff)and
not fuZ3z86:HasPvEImmunity()and
pVRj.CrusaderStrike:Charges()==1 and
(
pVRj.CrusadersMight:IsAvailable()and
pVRj.HolyShock:CooldownRemains()>1+QKKks_zt:GCD()or not
pVRj.CrusadersMight:IsAvailable())end
local function wqU76o(fuZ3z86)
return
fuZ3z86:DebuffUp(pVRj.JudgmentDebuff)and
not fuZ3z86:HasPvEImmunity()and
(
pVRj.CrusadersMight:IsAvailable()and
pVRj.HolyShock:CooldownRemains()>1+QKKks_zt:GCD()or not
pVRj.CrusadersMight:IsAvailable()and
(uK and fuZ3z86:HealthPercentage()<=
QKKks_zt:ManaPercentage()or not uK))end
local function wqU76o(pVRj)return
(pVRj:IsInRange(40)and PrPyxMK(pVRj)and
(
pVRj:AffectingCombat()or
pVRj:IsDummy()or pVRj:NPCID()==153285 or pVRj:NPCID()==168326))end
local function LB1Z()
if wU4wYbA9 then
local fuZ3z86=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig','autorebirth')
if
fuZ3z86['autorebirth_mouseover']and pVRj.Intercession:IsReady(yxjl)then
local fuZ3z86=Vu0cCAf()and Vu0cCAf():GetName()or"None"
if fuZ3z86 ~="WorldFrame"then
if
yxjl:IsDeadOrGhost()and QKKks_zt:IsFriend(yxjl)and not qkP7O5(yxjl.UnitID)and
yxjl:IsInPartyOrRaid()then if
JLCOx_ak(pVRj.Intercession)then return"Intercession MouseOver"end end end end
if
fuZ3z86['autorebirth_target']and pVRj.Intercession:IsReady()then
if


Are7xU:IsDeadOrGhost()and QKKks_zt:IsFriend(Are7xU)and not qkP7O5(Are7xU.UnitID)and Are7xU:IsInPartyOrRaid()then
if JLCOx_ak(pVRj.Intercession)then return"Intercession Target"end end end end end
local function yxjl()
if
(
(not NsoTwDs:IsAvailable()and QKKks_zt:HolyPower()>=3)or
(NsoTwDs:IsAvailable()and
((QKKks_zt:HolyPower()==5)or
(
QKKks_zt:BuffUp(iy)and QKKks_zt:HolyPower()==3))))then if
pVRj.ShieldOfTheRighteous:IsReady()and zhzpBSx>=1 then
if JLCOx_ak(pVRj.ShieldOfTheRighteous)then return"ShieldOfTheRighteous - DPS"end end end
if pVRj.HammerOfWrath:IsCastable()then if
er.CastTargetIf(pVRj.HammerOfWrath,t5jzEd9,"min",m6SCS0,ZG)then return"HammerOfWrath - DPS"end end
if
pVRj.DivineToll:IsReady(QKKks_zt)and dijn4Ph==2 and
Are7xU:IsInMeleeRange(8)and(a("boss1")or
XL_.FightRemains(urkh)>30)then if JLCOx_ak(pVRj.DivineToll)then return"Divine Toll 1"end end
if
pVRj.LightSHammer:IsReady(QKKks_zt)and CO1 ==2 and
Are7xU:IsInMeleeRange(8)and not QKKks_zt:IsMoving()then
if JLCOx_ak(pVRj.LightSHammer)then return"Lights Hammer - DPS"end end
if
pVRj.Consecration:IsReady()and Are7xU:IsInMeleeRange(5)and not QKKks_zt:IsMoving()then if
JLCOx_ak(pVRj.Consecration)then return"Consecration - DPS"end end;if pVRj.Judgment:IsReady()then
if JLCOx_ak(pVRj.Judgment)then return"Judgement - DPS"end end
if
pVRj.HolyShock:IsReady()and kFTAh==2 then
fuZ3z86.SetTopColor(6,"Holy Shock Enemy")return"HolyShock - DPS"end
if pVRj.CrusaderStrike:IsReady()then if JLCOx_ak(pVRj.CrusaderStrike)then return
"CrusaderStrike - DPS"end end end
local function XL_()local wqU76o,ZG,m6SCS0,ZG,ZG,ZG=DFb100j:Update()fFeQcIM()
if hPQ()then
urkh=QKKks_zt:GetEnemiesInRangeFilter(5)rHSjalVy=WYdR:GetEnemiesInSplashRange(5)zhzpBSx=#urkh
TjhsnP=WYdR:GetEnemiesInSplashRangeCount(5)t5jzEd9=QKKks_zt:GetEnemiesInRange(30)else zhzpBSx=1;TjhsnP=1
t5jzEd9={}end;local er=not QKKks_zt:IsMoving()
local ZG=(
QKKks_zt:HealthPercentage()>=60 or QKKks_zt:BuffUp(pVRj.DivineShield))local WYdR=Are7xU:IsInMeleeRange(5)
local XL_=
#m6SCS0 >1 and
(i1 ==1 and
DFb100j:AverageHP()<=zz1QI or i1 ==2)and QKKks_zt:BuffDown(pVRj.AvengingWrath)and QKKks_zt:BuffDown(pVRj.HolyAvenger)local WYdR=hPQ()and#m6SCS0 >=1
local WYdR=(
pVRj.HolyShock:IsReady()or
pVRj.BestowFaith:IsReady()or pVRj.HammerOfWrath:IsReady()or pVRj.CrusaderStrike:IsReady())local WYdR=QKKks_zt:GUID()local WYdR=LB1Z()if WYdR then return WYdR end
if

Are7xU:IsDeadOrGhost()and Are7xU:IsInParty()and Are7xU:IsAPlayer()and not Are7xU:IsEnemy()then
if
pVRj.Absolution:IsReady(QKKks_zt)then if JLCOx_ak(pVRj.Absolution)then return'Resurrection'end end end
if pVRj.DevotionAura:IsReady()and
QKKks_zt:BuffDown(pVRj.DevotionAura)then if JLCOx_ak(pVRj.DevotionAura)then
return"DevotionAura"end end
if pVRj.DivineProtection:IsReady()and
(
QKKks_zt:HealthPercentage()<=qboV or QKKks_zt:BuffUp(pVRj.BlessingOfSacrifice))then if
JLCOx_ak(pVRj.DivineProtection)then return"DivineProtection Player"end end
if pVRj.DivineShield:IsReady()and
QKKks_zt:BuffDown(pVRj.ForberanceDebuff)and
QKKks_zt:HealthPercentage()<=nSBOx7 then if
JLCOx_ak(pVRj.DivineShield)then return"DivineShield Player"end end
if pVRj.LayOnHands:IsCastable()and wU4wYbA9 then
if
fuZ3z86.CastCycleAlly(pVRj.LayOnHands,m6SCS0,function(fuZ3z86)return


fuZ3z86:DebuffDown(pVRj.ForberanceDebuff)and fuZ3z86:HealthPercentage()<=QUh2tc and not PrPyxMK(fuZ3z86)end)then return'Lay On Hands Lower HP'end end
if pVRj.BlessingOfSacrifice:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.BlessingOfSacrifice,m6SCS0,function(pVRj)
return


not QKKks_zt:IsUnit(pVRj)and ZG and wU4wYbA9 and pVRj:HealthPercentage()<=quNsijN and not PrPyxMK(pVRj)end)then return'Blessing of Sacrifice Lower HP'end end
local WYdR=fuZ3z86.HealingEngine:BuffTotal(pVRj.BeaconOfLightBuff)
if WYdR==0 and pVRj.BeaconOfLight:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.BeaconOfLight,wqU76o,function(fuZ3z86)return


fuZ3z86:BuffDown(pVRj.BeaconOfLightBuff)and fuZ3z86:BuffDown(pVRj.BeaconOfFaithBuff)and not PrPyxMK(fuZ3z86)end)then return'Beacon Tank Members'end end
local WYdR=fuZ3z86.HealingEngine:BuffTotal(pVRj.BeaconOfFaithBuff)
if pVRj.BeaconOfFaith:IsCastable()and WYdR==0 then
if
JZAU2 <=5 then
if
fuZ3z86.CastCycleAlly(pVRj.BeaconOfFaith,m6SCS0,function(fuZ3z86)
return
fuZ3z86:BuffDown(pVRj.BeaconOfLightBuff)and
fuZ3z86:BuffDown(pVRj.BeaconOfFaithBuff)and
((JZAU2 <=5 and
(

(_TqYJ4 and
_TqYJ4 ==fuZ3z86:GUID())or
(_L6Bs and _L6Bs==fuZ3z86:GUID())or
(DI and DI==fuZ3z86:GUID())or(b and
b==fuZ3z86:GUID())or(E and E==fuZ3z86:GUID())or(not _TqYJ4 and not _L6Bs and not DI and not b and
not E))))end)then return'Beacon Faith Party Members'end elseif JZAU2 >5 then
if
fuZ3z86.CastCycleAlly(pVRj.BeaconOfFaith,wqU76o,function(fuZ3z86)return

fuZ3z86:BuffDown(pVRj.BeaconOfLightBuff)and fuZ3z86:BuffDown(pVRj.BeaconOfFaithBuff)end)then return'Beacon Faith Tank Members'end end end
if XL_ and wU4wYbA9 then
if pVRj.AuraMastery:IsReady(QKKks_zt)then if
JLCOx_ak(pVRj.AuraMastery)then return'AuraMastery'end end
if pVRj.AvengingWrath:IsReady(QKKks_zt)then if
JLCOx_ak(pVRj.AvengingWrath,true)then return'AvengingWrath'end end
if pVRj.HolyAvenger:IsReady(QKKks_zt)then if JLCOx_ak(pVRj.HolyAvenger,true)then return
'HolyAvenger'end end
if pVRj.TyrSDeliverance:IsReady(QKKks_zt)then if
JLCOx_ak(pVRj.TyrSDeliverance)then return'TyrSDeliverance'end end
if

pVRj.LightSHammer:IsReady(QKKks_zt)and Are7xU:IsInMeleeRange(8)and not QKKks_zt:IsMoving()and SH then if
JLCOx_ak(pVRj.LightSHammer)then return"Lights Hammer"end end end
if
pVRj.DivineToll:IsReady(QKKks_zt)and Are7xU:IsInMeleeRange(8)and(Do(60)>=3)then if
JLCOx_ak(pVRj.DivineToll)then return"Divine Toll 1"end end
if pVRj.Seraphim:IsReady(QKKks_zt)then if JLCOx_ak(pVRj.Seraphim)then
return"Seraphim Player"end end
if

(
(not NsoTwDs:IsAvailable()and QKKks_zt:HolyPower()>=3)or
(NsoTwDs:IsAvailable()and
((QKKks_zt:HolyPower()==5)or
(
QKKks_zt:BuffUp(iy)and QKKks_zt:HolyPower()==3))))and Do(vfIyB)>0 then
if
pVRj.WordOfGlory:IsCastable()and(Do(h_8)<3)and QKKks_zt:BuffUp(HGli)then
if
fuZ3z86.CastCycleAlly(pVRj.WordOfGlory,m6SCS0,function(pVRj)
return
(
pVRj:HealthPercentage()<=h_8 or
(pVRj:HealthPercentage()<90 and not wU4wYbA9))and not PrPyxMK(pVRj)end)then return'WordofGlory Members'end end
if pVRj.LightOfDawn:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.LightOfDawn,m6SCS0,function(pVRj)return
((
(K and not
QKKks_zt:IsUnit(pVRj)and pVRj:IsInRange(15))or not K)and not
PrPyxMK(pVRj))end)then return'LightofDawn Members'end end end
if wU4wYbA9 then
if pVRj.BlessingOfSummer:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.BlessingOfSummer,m6SCS0,function(pVRj)
return
((
KMw7_i1s and KMw7_i1s==pVRj:GUID())or
(not KMw7_i1s and
(


(QYf1 and
QYf1 ==pVRj:GUID())or
(CQi and CQi==pVRj:GUID())or(nHlJ and nHlJ==pVRj:GUID()and pVRj~=
QKKks_zt:GUID())or(RfsnisO and RfsnisO==pVRj:GUID())or(T7RKP and T7RKP==pVRj:GUID())or(_L6Bs and _L6Bs==pVRj:GUID()))))end)then return'Blessing Of Summer non-pet class'end end
if NUhYw6R4:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.BlessingOfSummer,m6SCS0,function(pVRj)return
(
((lvW2ga and
lvW2ga==pVRj:GUID())or
(_L6Bs and _L6Bs==pVRj:GUID())or
(IN and IN==pVRj:GUID()))or(not lvW2ga and not _L6Bs and not IN))end)then return'Blessing of Autumn (Prio Monk/Evoker/Warlock)'end end
if Hv:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.BlessingOfSummer,m6SCS0,function(pVRj)
return
(
(




(KMw7_i1s and KMw7_i1s==pVRj:GUID())or(lvW2ga and lvW2ga==pVRj:GUID())or(CQi and CQi==pVRj:GUID())or(lw4Q7kbl and lw4Q7kbl==pVRj:GUID())or(T7RKP and T7RKP==pVRj:GUID())or
(nHlJ and nHlJ==pVRj:GUID()and pVRj~=QKKks_zt:GUID()))or
(

not KMw7_i1s and not lvW2ga and not CQi and not lw4Q7kbl and not T7RKP and not nHlJ and pVRj==QKKks_zt:GUID()))end)then return'Blessing of Winter (Prio Melee)'end end
if Ch:IsCastable()then if JLCOx_ak(pVRj.BlessingOfSummer)then
return'Blessing of Spring (Prio Player)'end end end
if
pVRj.HolyShock:IsCastable()and
(Do(vfIyB)==0 or not wU4wYbA9)and pVRj.GlimmerOfLight:IsAvailable()then
if
fuZ3z86.CastCycleAlly(pVRj.HolyShock,m6SCS0,function(pVRj)return
pVRj:BuffDown(R1FIoQI)and not PrPyxMK(pVRj)end)then return'HolyShock Spread Glimmer'end end
if wU4wYbA9 and Do(vfIyB)==0 and SH then return yxjl()end
if pVRj.HolyShock:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.HolyShock,m6SCS0,function(pVRj)
return
pVRj:HealthPercentage()<=qX and not PrPyxMK(pVRj)end)then return'HolyShock Members'end end
if wU4wYbA9 and pVRj.BeaconOfVirtue:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.BeaconOfVirtue,m6SCS0,function(fuZ3z86)return
(
(

pVRj.LightOfDawn:IsReady(fuZ3z86)or pVRj.WordOfGlory:IsReady(fuZ3z86)or pVRj.HolyShock:IsReady(fuZ3z86))and not PrPyxMK(fuZ3z86))end)then return'Beacon Of Virtue Members'end end
if pVRj.BestowFaith:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.BestowFaith,m6SCS0,function(pVRj)
return
pVRj:HealthPercentage()<=seMLr and not PrPyxMK(pVRj)end)then return'BestowFaith Members'end end
if pVRj.FlashOfLight:IsCastable()and er then
if
fuZ3z86.CastCycleAlly(pVRj.FlashOfLight,m6SCS0,function(pVRj)
return
(
pVRj:HealthPercentage()<=xL7OTb or
(pVRj:HealthPercentage()<60 and not wU4wYbA9))and not PrPyxMK(pVRj)end)then return'FlashofLight Members'end end
if pVRj.HolyLight:IsCastable()and er then
if
fuZ3z86.CastCycleAlly(pVRj.HolyLight,m6SCS0,function(pVRj)
return
((
pVRj:HealthPercentage()<=w8T3f)or(pVRj:HealthPercentage()<90 and not
wU4wYbA9))and not PrPyxMK(pVRj)end)then return'HolyLight Members'end end
if pVRj.LightOfTheMartyr:IsCastable()and ZG then
if
fuZ3z86.CastCycleAlly(pVRj.LightOfTheMartyr,m6SCS0,function(pVRj)
return

pVRj:HealthPercentage()<=qL and not QKKks_zt:IsUnit(pVRj)and not PrPyxMK(pVRj)end)then return'LightOfTheMartyr Members'end end
if
pVRj.CrusaderStrike:IsReady(Are7xU)and QKKks_zt:CanAttack(Are7xU)then
if JLCOx_ak(pVRj.CrusaderStrike)then return"CrusaderStrike - Holy Power"end end end;local function pVRj()tczrIB()return XL_()end
fuZ3z86.SetCustomAPL(_IQQ,XpkjA,pVRj,zPXTTg)end;local function ZA()
C_Timer.After(1,function()if MainAddon then Q()else ZA()end end)end;ZA()