
local function Q()local _IQQ='Aya_Hpal 1.0'local XpkjA=65;local pVRj=LibStub('StdUi')
local fuZ3z86=LibStub("AceAddon-3.0"):GetAddon(Z_AddonName)local er=fuZ3z86;local DFb100j=fuZ3z86.HealingEngine;local XL_=HeroLibEx;local pVRj=HeroCache
local WYdR=XL_.Unit;local QKKks_zt=WYdR.Player;local Are7xU=WYdR.Target;local pVRj=WYdR.Arena;local pVRj=WYdR.Party
local yxjl=WYdR.MouseOver;local ZG=XL_.Spell;local pVRj=XL_.Item;local Vu0cCAf=GetMouseFocus
local qkP7O5=UnitHasIncomingResurrection;local lqT=GetNumGroupMembers;local mP3mlD=UnitClassBase;local PrPyxMK=GetUnitName;local tczrIB=UnitGUID
local a=UnitExists;local wqU76o=UnitHealth;local LB1Z=UnitHealthMax;local N9L=type;local hDc_M=GetTime;local qW0lRiD1=tonumber
local iD1IUx=UnitGetIncomingHeals;local JLCOx_ak=er.Cast;local pVRj=er.CastAlly;local hPQ=er.AoEON;local pVRj=er.CDsON
local pVRj=ZG.Paladin.Holy;local R1FIoQI=ZG(287280)local NsoTwDs=ZG(385125)local Q=ZG(394709)
local HGli=ZG(385127)local iy=ZG(385126)local m6SCS0=ZG(388010)local NUhYw6R4=ZG(388011)
local Hv=ZG(388013)local Ch,urkh;local zhzpBSx,rHSjalVy;local TjhsnP;local iy,iy;local iy=fuZ3z86.Config.GetClassSetting
local t5jzEd9="Aya_Hpal_Condig"local iy='F48CBA'
local iy={key=t5jzEd9,title='Aya - Holy',subtitle='Aya '..fuZ3z86.Version,width=470,height=750,profiles=true,config={{type='header',text='Holy',size=24,align='Center',color=iy},{type='spacer'},{type='ruler'},{type='spacer'},{type='header',text='Spells',color=iy},{type='spinner',text='DPS Threshold',key='DPSThreshold1',min=1,max=100,default=80},{type='spinner',text='Bestow Faith',key='BestowFaith',min=1,max=100,default=95},{type='spinner',text='Holy Shock',key='HolyShock',min=1,max=100,default=95},{type='spinner',text='Word of GLory',key='WordofGlory',min=1,max=100,default=70},{type='spinner',text='Holy Light',key='HolyLight',min=1,max=100,default=0},{type='spinner',text='Flash of Light',key='FlashofLight',min=1,max=100,default=40},{type='spinner',text='Light of Martyr',key='LightofMartyr',min=1,max=100,default=70},{type='spinner',text='Lay on Hands',key='LayOnHands',min=1,max=100,default=25},{type='spacer'},{type='header',text='Defensive',color=iy},{type='spinner',text='Blessing of Sacrifice',key='BlessingOfSacrifice',min=1,max=100,default=40},{type='spinner',text='Divine Protection',key='DivineProtection',min=1,max=100,default=40},{type='spinner',text='Divine Shield',key='DivineShield',min=1,max=100,default=20},{type='spacer'},{type='header',text='Trinkets',color=iy},{type='dropdown',text='Top Trinket Target',key='TopTrinketTarget',list={{text='None',key=1},{text='Enemy',key=2}},default=1},{type='dropdown',text='Top Trinket Use',key='TopTrinketOption',list={{text='Off',key=1},{text='On Cooldown',key=2},{text='With Cooldowns HP',key=3}},default=1},{type='dropdown',text='Bottom Trinket Target',key='BotTrinketTarget',list={{text='None',key=1},{text='Enemy',key=2}},default=1},{type='dropdown',text='Bottom Trinket Use',key='BotTrinketOption',list={{text='Off',key=1},{text='On Cooldown',key=2},{text='With Cooldowns HP',key=3}},default=1},{type='header',text='Class',color=iy},{type='spinner',text="Cooldowns HP",key='CooldownSlider',min=1,max=100,default=75},{type='dropdown',text='Cooldown Options',key='CooldownOption',list={{text='Auto',key=1},{text='Manually',key=2}},default=1},{type='dropdown',text='Holy Shock',key='HolyShockOption',list={{text='Heal',key=1},{text='Heal + Damage',key=2}},default=2},{type='dropdown',text='Divine Toll',key='DivineTollOption',list={{text='Heal',key=1},{text='Heal + Damage',key=2}},default=2},{type='dropdown',text='Lights Hammer',key='LightsHammerOption',list={{text='Heal',key=1},{text='Heal + Damage',key=2}},default=2},{type='checkbox',text='Light of Dawn: Check for Range',key='LightofDawnRange',default=false},{type='checkbox',text='Mana Management',key='ManaManagement',default=false},{type='dropdown',text=' Intercession',key='autorebirth',multiselect=true,icon=pVRj.Intercession:ID(),list={{text='Target',key='autorebirth_target'},{text='MouseOver',key='autorebirth_mouseover'}},default={}}}}fuZ3z86.SetCustomConfig(_IQQ,XpkjA,iy)local function JZAU2()end
local zPXTTg,seMLr,qX,h_8,xL7OTb,w8T3f,K,qL;local vfIyB,quNsijN,QUh2tc,qboV,nSBOx7;local uK,i1,zz1QI,iy,kFTAh,LBf;local dijn4Ph,CO1,RlZo,SUn;local iy;local Ib4={}
local fjV1G2,iy,Do,_,TqYJ4,DI,b,EKMw7_i1s,CQi,nHlJ,lw4Q7kbl,IN,QYf1,RfsnisO,lvW2ga=false,false,false,false,false,false,false,false,false,false,false,false,false,false,false;local iy=nil;local T7RKP,_L6Bs,t5jzEd9
XL_:RegisterForEvent(function(QKKks_zt,...)local fuZ3z86,pVRj,JLCOx_ak,WYdR=...if
QKKks_zt=="UNIT_SPELLCAST_SENT"then
if fuZ3z86 =="player"and pVRj then currentspell=WYdR;currentspelltarget=pVRj end end
if
QKKks_zt=="UI_ERROR_MESSAGE"then if pVRj==SPELL_FAILED_LINE_OF_SIGHT then missedunit=currentspelltarget
missedspell=currentspell end end end,"UI_ERROR_MESSAGE","UNIT_SPELLCAST_SENT")
local function SH()T7RKP=er.TargetIsValid()
_L6Bs=QKKks_zt:AffectingCombat()t5jzEd9=lqT()
qL=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"DPSThreshold1")
zPXTTg=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"BestowFaith")
seMLr=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"HolyShock")
qX=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"WordofGlory")
xL7OTb=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"HolyLight")
h_8=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"FlashofLight")
K=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"LightofMartyr")
vfIyB=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"BlessingOfSacrifice")
quNsijN=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"LayOnHands")
QUh2tc=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"DivineProtection")
qboV=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"DivineShield")
i1=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"CooldownSlider")
uK=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"CooldownOption")
zz1QI=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"HolyShockOption")
kFTAh=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"DivineTollOption")
LBf=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"LightsHammerOption")
dijn4Ph=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"TopTrinketTarget")
CO1=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"TopTrinketOption")
RlZo=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"BotTrinketTarget")
SUn=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"BotTrinketOption")
w8T3f=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"LightofDawnRange")
nSBOx7=fuZ3z86.Config.GetSetting('Aya_Hpal_Condig',"ManaManagement")
fjV1G2,lvW2ga,Do,_,TqYJ4,DI,b,EKMw7_i1s,CQi,nHlJ,lw4Q7kbl,IN,QYf1,RfsnisO,lvW2ga=false,false,false,false,false,false,false,false,false,false,false,false,false,false,false;iy=nil
if t5jzEd9 >1 and t5jzEd9 <=5 then iy="party"elseif t5jzEd9 >5 then iy="raid"end
if iy then
for QKKks_zt=1,t5jzEd9 do local fuZ3z86,pVRj=mP3mlD(iy..QKKks_zt)
if not
WYdR(iy..QKKks_zt):IsATank()then
if pVRj==1 then
b=WYdR(iy..QKKks_zt):GUID()elseif pVRj==2 then EKMw7_i1s=WYdR(iy..QKKks_zt):GUID()elseif
pVRj==3 then fjV1G2=WYdR(iy..QKKks_zt):GUID()elseif
pVRj==4 then DI=WYdR(iy..QKKks_zt):GUID()elseif pVRj==5 then
_=WYdR(iy..QKKks_zt):GUID()elseif pVRj==6 then CQi=WYdR(iy..QKKks_zt):GUID()elseif pVRj==7 then Do=WYdR(
iy..QKKks_zt):GUID()elseif
pVRj==8 or pVRj==9 or pVRj==11 then
TqYJ4=WYdR(iy..QKKks_zt):GUID()
if pVRj==8 then lw4Q7kbl=WYdR(iy..QKKks_zt):GUID()elseif pVRj==
9 then nHlJ=WYdR(iy..QKKks_zt):GUID()elseif pVRj==11 then IN=WYdR(
iy..QKKks_zt):GUID()end elseif pVRj==10 then QYf1=WYdR(iy..QKKks_zt):GUID()elseif
pVRj==12 then RfsnisO=WYdR(iy..QKKks_zt):GUID()elseif pVRj==13 then lvW2ga=WYdR(
iy..QKKks_zt):GUID()end end end end end
local function iy(QKKks_zt,fuZ3z86)local JLCOx_ak,pVRj
if not fuZ3z86 then if PrPyxMK("player",true)==QKKks_zt then
return tczrIB("player")end;if PrPyxMK("target",true)==QKKks_zt then return
WYdR("target"):GUID()end;if
PrPyxMK("focus",true)==QKKks_zt then return tczrIB("focus")end;pVRj=lqT()if pVRj>0 and
pVRj<=5 then
for pVRj=1,pVRj do if PrPyxMK("party"..pVRj,true)==QKKks_zt then return tczrIB(
"party"..pVRj)end end end;if pVRj>5 then
for pVRj=1,pVRj do if PrPyxMK(
"raid"..pVRj,true)==QKKks_zt then
return tczrIB("raid"..pVRj)end end end else if
PrPyxMK("player",true)==QKKks_zt then return"player"end;if
PrPyxMK("target",true)==QKKks_zt then return"target"end;if
PrPyxMK("focus",true)==QKKks_zt then return"focus"end;pVRj=t5jzEd9;if pVRj>0 and
pVRj<=5 then
for pVRj=1,pVRj do if PrPyxMK("party"..pVRj,true)==QKKks_zt then return
"party"..pVRj end end end
if pVRj>5 then for pVRj=1,pVRj do
if PrPyxMK(
"raid"..pVRj,true)==QKKks_zt then return"raid"..pVRj end end end end;return QKKks_zt end
local function lqT()if missedunit then
table.insert(Ib4,(iy(missedunit).." "..hDc_M()))missedunit=nil end
if
table.getn(Ib4)>0 then
for QKKks_zt=1,table.getn(Ib4)do
if Ib4[QKKks_zt]~=nil then
for pVRj in
string.gmatch(Ib4[QKKks_zt],"([^%s]+)")do pVRj=qW0lRiD1(pVRj)if N9L(pVRj)=="number"then if pVRj<=hDc_M()-1.5 then
table.remove(Ib4,QKKks_zt)end end end end end end end
local function PrPyxMK(QKKks_zt)
if table.getn(Ib4)>0 and QKKks_zt~=nil then
for pVRj=1,table.getn(Ib4)do for pVRj in
string.gmatch(Ib4[pVRj],"([^%s]+)")do
if pVRj and pVRj==QKKks_zt:GUID()then return true end end end else return false end end
local function iy(pVRj)
if(WYdR(pVRj):BuffUp(ZG(365153)))then
for QKKks_zt=1,40 do if
select(10,UnitBuff(pVRj,QKKks_zt))==365153 then
return select(16,UnitBuff(pVRj,QKKks_zt))end end else return 0 end end
local function Ib4()
for QKKks_zt=1,4 do local JLCOx_ak,WYdR,fuZ3z86,QKKks_zt=GetTotemInfo(QKKks_zt)
if WYdR==
pVRj.Consecration:Name()then return
(floor(fuZ3z86+QKKks_zt-hDc_M()+.5))or 0 end end;return 0 end
local function Ib4(pVRj)
if pVRj==nil or N9L(pVRj)=="string"then return nil end;pVRj=pVRj/100;local fuZ3z86=0
if t5jzEd9 >0 and t5jzEd9 <=5 then
for QKKks_zt=1,t5jzEd9 do
if
a("party"..QKKks_zt)and
not WYdR("party"..QKKks_zt):IsDeadOrGhost()and
WYdR("party"..QKKks_zt):DebuffDown(ZG(228578))then
local JLCOx_ak=

wqU76o("party"..QKKks_zt)+ (iD1IUx("party"..QKKks_zt)or 0)-iy("party"..QKKks_zt)local WYdR=LB1Z("party"..QKKks_zt)
if JLCOx_ak/WYdR<=pVRj or
(wqU76o(
"party"..QKKks_zt)/WYdR==1 and pVRj==1)then fuZ3z86=fuZ3z86+1 end end end
if
(
(
(wqU76o("player")+ (iD1IUx("player")or 0))/LB1Z("player"))<pVRj or
(wqU76o("player")/LB1Z("player")==1 and pVRj==1))then fuZ3z86=fuZ3z86+1 end end
if t5jzEd9 >5 then
for QKKks_zt=1,t5jzEd9 do
if

a("raid"..QKKks_zt)and
not UnitIsDead("raid"..QKKks_zt)and
WYdR("raid"..QKKks_zt):DebuffDown(ZG(362075))and
WYdR("raid"..QKKks_zt):DebuffDown(ZG(362397))and
WYdR("raid"..QKKks_zt):DebuffDown(ZG(191587))then local WYdR=0
local WYdR=wqU76o("raid"..QKKks_zt)+
(iD1IUx("raid"..QKKks_zt)or 0)-iy("raid"..QKKks_zt)local QKKks_zt=LB1Z("raid"..QKKks_zt)if WYdR/QKKks_zt<=pVRj then fuZ3z86=
fuZ3z86+1 end end end end
if t5jzEd9 ==0 then local WYdR=
wqU76o("player")+ (iD1IUx("player")or 0)-iy("player")
local QKKks_zt=LB1Z("player")if WYdR/QKKks_zt<pVRj then fuZ3z86=fuZ3z86+1 end end;return fuZ3z86 end
local function iy()
for fuZ3z86,QKKks_zt in pairs(QKKks_zt:GetEnemiesInRange(5))do if

QKKks_zt:DebuffUp(pVRj.JudgmentDebuff)and QKKks_zt:IsSpellInRange(pVRj.CrusaderStrike)then return true end end;return false end;local function iy(pVRj)return pVRj:TimeToDie()end
local function ZG(pVRj)return

pVRj:HealthPercentage()<20 and not Are7xU:HasPvEImmunity()end
local function wqU76o(pVRj)return not pVRj:HasPvEImmunity()end;local function wqU76o(pVRj)return PrPyxMK(pVRj)end;local function wqU76o(QKKks_zt)return
QKKks_zt:BuffRemains(pVRj.JudgmentDebuff)end
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
(nSBOx7 and fuZ3z86:HealthPercentage()<=
QKKks_zt:ManaPercentage()or not nSBOx7))end
local function wqU76o(pVRj)return
(pVRj:IsInRange(40)and PrPyxMK(pVRj)and
(
pVRj:AffectingCombat()or
pVRj:IsDummy()or pVRj:NPCID()==153285 or pVRj:NPCID()==168326))end
local function LB1Z()
if _L6Bs then
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
local function tczrIB()
if
(
(not NsoTwDs:IsAvailable()and QKKks_zt:HolyPower()>=3)or
(NsoTwDs:IsAvailable()and
((QKKks_zt:HolyPower()==5)or
(
QKKks_zt:BuffUp(HGli)and QKKks_zt:HolyPower()==3))))then if
pVRj.ShieldOfTheRighteous:IsReady()and urkh>=1 then
if JLCOx_ak(pVRj.ShieldOfTheRighteous)then return"ShieldOfTheRighteous - DPS"end end end
if pVRj.HammerOfWrath:IsCastable()then if
er.CastTargetIf(pVRj.HammerOfWrath,TjhsnP,"min",iy,ZG)then return"HammerOfWrath - DPS"end end
if
pVRj.DivineToll:IsReady(QKKks_zt)and kFTAh==2 and
Are7xU:IsInMeleeRange(8)and(a("boss1")or
XL_.FightRemains(Ch)>30)then if JLCOx_ak(pVRj.DivineToll)then return"Divine Toll 1"end end
if
pVRj.LightSHammer:IsReady(QKKks_zt)and LBf==2 and
Are7xU:IsInMeleeRange(8)and not QKKks_zt:IsMoving()then
if JLCOx_ak(pVRj.LightSHammer)then return"Lights Hammer - DPS"end end
if
pVRj.Consecration:IsReady()and Are7xU:IsInMeleeRange(5)and not QKKks_zt:IsMoving()then if
JLCOx_ak(pVRj.Consecration)then return"Consecration - DPS"end end;if pVRj.Judgment:IsReady()then
if JLCOx_ak(pVRj.Judgment)then return"Judgement - DPS"end end
if
pVRj.HolyShock:IsReady()and zz1QI==2 then
fuZ3z86.SetTopColor(6,"Holy Shock Enemy")return"HolyShock - DPS"end
if pVRj.CrusaderStrike:IsReady()then if JLCOx_ak(pVRj.CrusaderStrike)then return
"CrusaderStrike - DPS"end end end
local function yxjl()local wqU76o,ZG,iy,ZG,ZG,ZG=DFb100j:Update()SH()
if hPQ()then
Ch=QKKks_zt:GetEnemiesInRangeFilter(5)zhzpBSx=WYdR:GetEnemiesInSplashRange(5)urkh=#Ch
rHSjalVy=WYdR:GetEnemiesInSplashRangeCount(5)TjhsnP=QKKks_zt:GetEnemiesInRange(30)else urkh=1;rHSjalVy=1
TjhsnP={}end;local ZG=not QKKks_zt:IsMoving()
local WYdR=(
QKKks_zt:HealthPercentage()>=60 or QKKks_zt:BuffUp(pVRj.DivineShield))local er=Are7xU:IsInMeleeRange(5)
local XL_=

#iy>1 and(uK==1 and
DFb100j:AverageHP()<=i1 or uK==2)and QKKks_zt:BuffDown(pVRj.AvengingWrath)and QKKks_zt:BuffDown(pVRj.HolyAvenger)local er=hPQ()and#iy>=1
local er=(
pVRj.HolyShock:IsReady()or
pVRj.BestowFaith:IsReady()or pVRj.HammerOfWrath:IsReady()or pVRj.CrusaderStrike:IsReady())local er=QKKks_zt:GUID()local er=LB1Z()if er then return er end
if

Are7xU:IsDeadOrGhost()and Are7xU:IsInParty()and Are7xU:IsAPlayer()and not Are7xU:IsEnemy()then
if
pVRj.Absolution:IsReady(QKKks_zt)then if JLCOx_ak(pVRj.Absolution)then return'Resurrection'end end end
if pVRj.DevotionAura:IsReady()and
QKKks_zt:BuffDown(pVRj.DevotionAura)then if JLCOx_ak(pVRj.DevotionAura)then
return"DevotionAura"end end
if pVRj.DivineProtection:IsReady()and
(QKKks_zt:HealthPercentage()<=
QUh2tc or QKKks_zt:BuffUp(pVRj.BlessingOfSacrifice))then if
JLCOx_ak(pVRj.DivineProtection)then return"DivineProtection Player"end end
if pVRj.DivineShield:IsReady()and
QKKks_zt:BuffDown(pVRj.ForberanceDebuff)and
QKKks_zt:HealthPercentage()<=qboV then if
JLCOx_ak(pVRj.DivineShield)then return"DivineShield Player"end end
if pVRj.LayOnHands:IsCastable()and _L6Bs then
if
fuZ3z86.CastCycleAlly(pVRj.LayOnHands,iy,function(QKKks_zt)return


QKKks_zt:DebuffDown(pVRj.ForberanceDebuff)and QKKks_zt:HealthPercentage()<=quNsijN and not PrPyxMK(QKKks_zt)end)then return'Lay On Hands Lower HP'end end
if pVRj.BlessingOfSacrifice:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.BlessingOfSacrifice,iy,function(pVRj)
return


not QKKks_zt:IsUnit(pVRj)and WYdR and _L6Bs and pVRj:HealthPercentage()<=vfIyB and not PrPyxMK(pVRj)end)then return'Blessing of Sacrifice Lower HP'end end
local er=fuZ3z86.HealingEngine:BuffTotal(pVRj.BeaconOfLightBuff)
if er==0 and pVRj.BeaconOfLight:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.BeaconOfLight,wqU76o,function(QKKks_zt)return


QKKks_zt:BuffDown(pVRj.BeaconOfLightBuff)and QKKks_zt:BuffDown(pVRj.BeaconOfFaithBuff)and not PrPyxMK(QKKks_zt)end)then return'Beacon Tank Members'end end
local er=fuZ3z86.HealingEngine:BuffTotal(pVRj.BeaconOfFaithBuff)
if pVRj.BeaconOfFaith:IsCastable()and er==0 then
if t5jzEd9 <=5 then
if
fuZ3z86.CastCycleAlly(pVRj.BeaconOfFaith,iy,function(QKKks_zt)
return


QKKks_zt:BuffDown(pVRj.BeaconOfLightBuff)and QKKks_zt:BuffDown(pVRj.BeaconOfFaithBuff)and
((t5jzEd9 <=5 and
(




(fjV1G2 and fjV1G2 ==QKKks_zt:GUID())or(lvW2ga and lvW2ga==QKKks_zt:GUID())or(Do and Do==QKKks_zt:GUID())or(_ and _==QKKks_zt:GUID())or(TqYJ4 and TqYJ4 ==QKKks_zt:GUID())or(
not fjV1G2 and not lvW2ga and not Do and not _ and not TqYJ4))))end)then return'Beacon Faith Party Members'end elseif t5jzEd9 >5 then
if
fuZ3z86.CastCycleAlly(pVRj.BeaconOfFaith,wqU76o,function(QKKks_zt)return

QKKks_zt:BuffDown(pVRj.BeaconOfLightBuff)and QKKks_zt:BuffDown(pVRj.BeaconOfFaithBuff)end)then return'Beacon Faith Tank Members'end end end
if XL_ and _L6Bs then
if pVRj.AuraMastery:IsReady(QKKks_zt)then if
JLCOx_ak(pVRj.AuraMastery)then return'AuraMastery'end end
if pVRj.AvengingWrath:IsReady(QKKks_zt)then if
JLCOx_ak(pVRj.AvengingWrath,true)then return'AvengingWrath'end end
if pVRj.HolyAvenger:IsReady(QKKks_zt)then if JLCOx_ak(pVRj.HolyAvenger,true)then return
'HolyAvenger'end end
if pVRj.TyrSDeliverance:IsReady(QKKks_zt)then if
JLCOx_ak(pVRj.TyrSDeliverance)then return'TyrSDeliverance'end end
if

pVRj.LightSHammer:IsReady(QKKks_zt)and Are7xU:IsInMeleeRange(8)and not QKKks_zt:IsMoving()and T7RKP then if
JLCOx_ak(pVRj.LightSHammer)then return"Lights Hammer"end end end
if
pVRj.DivineToll:IsReady(QKKks_zt)and Are7xU:IsInMeleeRange(8)and(Ib4(60)>=3)then if
JLCOx_ak(pVRj.DivineToll)then return"Divine Toll 1"end end
if pVRj.Seraphim:IsReady(QKKks_zt)then if JLCOx_ak(pVRj.Seraphim)then
return"Seraphim Player"end end
if

(
(not NsoTwDs:IsAvailable()and QKKks_zt:HolyPower()>=3)or
(NsoTwDs:IsAvailable()and
((QKKks_zt:HolyPower()==5)or
(
QKKks_zt:BuffUp(HGli)and QKKks_zt:HolyPower()==3))))and Ib4(qL)>0 then
if
pVRj.WordOfGlory:IsCastable()and(Ib4(qX)<3)and QKKks_zt:BuffUp(Q)then
if
fuZ3z86.CastCycleAlly(pVRj.WordOfGlory,iy,function(pVRj)
return(
pVRj:HealthPercentage()<=qX or
(pVRj:HealthPercentage()<90 and not _L6Bs))and not
PrPyxMK(pVRj)end)then return'WordofGlory Members'end end
if pVRj.LightOfDawn:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.LightOfDawn,iy,function(pVRj)return
(
(
(w8T3f and not
QKKks_zt:IsUnit(pVRj)and pVRj:IsInRange(15))or not w8T3f)and not PrPyxMK(pVRj))end)then return'LightofDawn Members'end end end
if _L6Bs then
if pVRj.BlessingOfSummer:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.BlessingOfSummer,iy,function(pVRj)
return
((
DI and DI==pVRj:GUID())or
(not DI and
(

(lw4Q7kbl and
lw4Q7kbl==pVRj:GUID())or
(b and b==pVRj:GUID())or
(
EKMw7_i1s and EKMw7_i1s==pVRj:GUID()and pVRj~=QKKks_zt:GUID())or(IN and IN==
pVRj:GUID())or(RfsnisO and RfsnisO==pVRj:GUID())or(lvW2ga and lvW2ga==pVRj:GUID()))))end)then return'Blessing Of Summer non-pet class'end end
if m6SCS0:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.BlessingOfSummer,iy,function(pVRj)return
(
(

(QYf1 and QYf1 ==pVRj:GUID())or(lvW2ga and lvW2ga==pVRj:GUID())or(nHlJ and nHlJ==pVRj:GUID()))or(not QYf1 and not lvW2ga and not nHlJ))end)then return'Blessing of Autumn (Prio Monk/Evoker/Warlock)'end end
if NUhYw6R4:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.BlessingOfSummer,iy,function(pVRj)
return
(
(




(DI and DI==pVRj:GUID())or(QYf1 and QYf1 ==pVRj:GUID())or(b and b==pVRj:GUID())or(CQi and CQi==pVRj:GUID())or(RfsnisO and RfsnisO==pVRj:GUID())or(EKMw7_i1s and EKMw7_i1s==pVRj:GUID()and
pVRj~=QKKks_zt:GUID()))or
(
not DI and not QYf1 and not b and not CQi and not RfsnisO and not EKMw7_i1s and
pVRj==QKKks_zt:GUID()))end)then return'Blessing of Winter (Prio Melee)'end end
if Hv:IsCastable()then if JLCOx_ak(pVRj.BlessingOfSummer)then
return'Blessing of Spring (Prio Player)'end end end
if
pVRj.HolyShock:IsCastable()and
(Ib4(qL)==0 or not _L6Bs)and pVRj.GlimmerOfLight:IsAvailable()then
if
fuZ3z86.CastCycleAlly(pVRj.HolyShock,iy,function(pVRj)return
pVRj:BuffDown(R1FIoQI)and not PrPyxMK(pVRj)end)then return'HolyShock Spread Glimmer'end end
if _L6Bs and Ib4(qL)==0 and T7RKP then return tczrIB()end
if pVRj.HolyShock:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.HolyShock,iy,function(pVRj)
return
pVRj:HealthPercentage()<=seMLr and not PrPyxMK(pVRj)end)then return'HolyShock Members'end end
if _L6Bs and pVRj.BeaconOfVirtue:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.BeaconOfVirtue,iy,function(QKKks_zt)return
(
(

pVRj.LightOfDawn:IsReady(QKKks_zt)or pVRj.WordOfGlory:IsReady(QKKks_zt)or pVRj.HolyShock:IsReady(QKKks_zt))and not PrPyxMK(QKKks_zt))end)then return'Beacon Of Virtue Members'end end
if pVRj.BestowFaith:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.BestowFaith,iy,function(pVRj)
return
pVRj:HealthPercentage()<=zPXTTg and not PrPyxMK(pVRj)end)then return'BestowFaith Members'end end
if pVRj.FlashOfLight:IsCastable()and ZG then
if
fuZ3z86.CastCycleAlly(pVRj.FlashOfLight,iy,function(pVRj)
return
(
pVRj:HealthPercentage()<=h_8 or
(pVRj:HealthPercentage()<60 and not _L6Bs))and not PrPyxMK(pVRj)end)then return'FlashofLight Members'end end
if pVRj.HolyLight:IsCastable()and ZG then
if
fuZ3z86.CastCycleAlly(pVRj.HolyLight,iy,function(pVRj)
return
((
pVRj:HealthPercentage()<=xL7OTb)or(pVRj:HealthPercentage()<90 and not
_L6Bs))and not PrPyxMK(pVRj)end)then return'HolyLight Members'end end
if pVRj.LightOfTheMartyr:IsCastable()and WYdR then
if
fuZ3z86.CastCycleAlly(pVRj.LightOfTheMartyr,iy,function(pVRj)
return

pVRj:HealthPercentage()<=K and not QKKks_zt:IsUnit(pVRj)and not PrPyxMK(pVRj)end)then return'LightOfTheMartyr Members'end end
if
pVRj.CrusaderStrike:IsReady(Are7xU)and QKKks_zt:CanAttack(Are7xU)then
if JLCOx_ak(pVRj.CrusaderStrike)then return"CrusaderStrike - Holy Power"end end end;local function pVRj()lqT()return yxjl()end
fuZ3z86.SetCustomAPL(_IQQ,XpkjA,pVRj,JZAU2)local pVRj
pVRj=XL_.AddCoreOverride("Spell.IsCastable",function(JLCOx_ak,WYdR,iy,fuZ3z86,QKKks_zt)QKKks_zt=true
local pVRj,QKKks_zt=pVRj(JLCOx_ak,WYdR,iy,fuZ3z86,QKKks_zt)return pVRj,QKKks_zt end,65)end;local function ZA()
C_Timer.After(1,function()if MainAddon then Q()else ZA()end end)end;ZA()