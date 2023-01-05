
local function Q()local _IQQ='Aya_RDruid'local XpkjA=105;local pVRj=LibStub('StdUi')
local fuZ3z86=LibStub("AceAddon-3.0"):GetAddon(Z_AddonName)local er=fuZ3z86;local DFb100j=fuZ3z86.HealingEngine;local XL_=HeroLibEx;local pVRj=HeroCache
local WYdR=XL_.Unit;local QKKks_zt=WYdR.Player;local Are7xU=WYdR.Target;local pVRj=WYdR.Arena;local pVRj=WYdR.Party
local yxjl=WYdR.MouseOver;local ZG=XL_.Spell;local pVRj=XL_.Item;local Vu0cCAf=er.Cast;local pVRj=er.CastAlly
local qkP7O5=er.AoEON;local pVRj=er.CDsON;local pVRj=ZG.Druid.Restoration;local lqT=UnitExists
local mP3mlD=GetNumGroupMembers;local PrPyxMK=UnitGetIncomingHeals;local tczrIB=UnitHealthMax;local a=UnitIsDead
local wqU76o=UnitHealth;local LB1Z=GetUnitName;local N9L=UnitGUID;local hDc_M=table;local qW0lRiD1=GetTime;local iD1IUx=tonumber
local JLCOx_ak=string;local hPQ=UnitBuff;local R1FIoQI=select;local NsoTwDs=type;local HGli=GetTotemInfo;local Q=floor
local iy=ZG(210053)local m6SCS0=ZG(155777)local NUhYw6R4,Hv;local Ch,urkh,zhzpBSx;local Ch,Ch
local Ch=fuZ3z86.Config.GetClassSetting;local rHSjalVy="Aya_Rdruid_Config"local Ch='FF7C0A'
local Ch={key=rHSjalVy,title='Aya - Restoration Druid',subtitle='Aya '..fuZ3z86.Version,width=470,height=770,profiles=true,config={{type='header',text='Restoration',size=24,align='Center',color=Ch},{type='spacer'},{type='ruler'},{type='spacer'},{type='header',text='Class',color=Ch},{type='spinner',text="Cooldowns Average HP",key='CooldownSlider',min=1,max=100,default=75},{type='dropdown',text='Cooldown Options',key='CooldownOption',list={{text='Auto',key=1},{text='Manually',key=2}},default=1},{type='dropdown',text='Convoke the Spirits',key='ConvokeOption',icon=391528,multiselect=true,list={{text='Heal',key='ConvokeHeal'},{text='Damage',key='ConvokeDamage'}},default={"ConvokeHeal","ConvokeDamage"}},{type='spacer'},{type='checkbox',text='Form Swap for DPS',key='FormSwap',default=true},{type='spinner',text="Range for Form Swap",key='FormSwapRange',icon=pVRj.Prowl:ID(),min=5,max=40,default=10},{type='checkbox',text='Auto Prowl',key='AutoProwl',icon=pVRj.Prowl:ID(),default=false},{type='dropdown',text='Out of Combat Form',key='OOCForm',icon=pVRj.CatForm:ID(),list={{text='Bear Form',key='BearForm'},{text='Cat Form',key='CatForm'},{text='Travel Form',key='TravelForm'},{text='Treant Form',key='TreantForm'},{text='None',key='NoneForm'}},default={"CatForm"}},{type='spacer'},{type='checkbox',text='Mana Management',key='ManaManagement',default=true},{type='dropdown',text='Innervate',key='InnervateOption',icon=29166,multiselect=true,list={{text='Target',key='InnervateTarget'},{text='MouseOver',key='InnervateMouseover'},{text='Player',key='InnervatePlayer'}},default={"InnervatePlayer"}},{type='spinner',text="Innervate: Healer's Mana",key='InnervateMana',icon=29166,min=1,max=100,default=60},{type='spacer'},{type='header',text='Heal Sliders',color=Ch},{type='spinner',text='DPS Threshold',key='DPSThreshold1',min=1,max=100,default=80},{type='spinner',text='Regrowth',key='RegrowthHP',icon=8936,min=1,max=100,default=75},{type='spinner',text='Regrowth Refresh',key='RegrowthHP2',icon=8936,min=1,max=100,default=50},{type='spinner',text='Rejuvenation',key='RejuvenationHP',icon=122,min=1,max=100,default=85},{type='spinner',text='Wild Growth',key='WildGrowthHP',icon=48438,min=1,max=100,default=85},{type='spinner',text='Wild Growth Units',key='WildGrowthNum',icon=48438,min=1,max=40,default=3},{type='spinner',text='Efflorescence',key='EfflorescenceHP',icon=145205,min=1,max=100,default=100},{type='spinner',text='Efflorescence Units',key='EfflorescenceNum',icon=145205,min=1,max=40,default=1},{type='spinner',text='Ironbark',key='IronbarkHP',icon=102342,min=1,max=100,default=50},{type='spinner',text='Swiftmend',key='SwiftmendHP',icon=18562,min=1,max=100,default=80},{type='spinner',text='Convoke the Spirits',icon=391528,key='ConvokeHP',min=1,max=100,default=70},{type='spinner',text='Convoke the Spirits Units',icon=391528,key='ConvokeNum',min=1,max=40,default=3},{type='spacer'},{type='header',text='Defensive',color=Ch},{type='spinner',text='Barkskin',key='BarkSkinHP',icon=22812,min=1,max=100,default=60},{type='spinner',text='Renewal',key='RenewalHP',icon=108238,min=1,max=100,default=70},{type='spacer'},{type='header',text='WeakAuras',color=Ch},{type='button',text='Import Macro Tracker',width=150,callback=function()if
not WeakAuras then return false end
WeakAuras.Import("!WA:2!nxvtZnTvx4KXtltv6qtmTPz4Jwv(iFaLud0KstN0GvIsCcoogz7eG3sLVs6AlrKLe37vbmSZthgwNFcErxXkp9hqhw01NjT76USO)ay6(2ZvYecqzE30fvlSU6CpNJVNZ5555o4Mz5gZm9vM(kzBL1jRZto1Ewe7TDyHrlg6hYwltMmLZKB6z23kK5qzA93mAynFVh(qcZrTAyOVWlQRi0EhkJ7fgm2GpUl7bB0ObNkkSWWdK8yLMa3UPV1DAsJgPY9IjmQ6YX((QB56jO9ib2UHSYHEbcRf1lvv3OFav8Ei9D6LUo9On4GdMzpsSa9FJib()YvEoggLfq83m9K8igXozNzn4cctOO5f4juSAGV4UkDemVMnrxp(4S(lFCxhQvCJgvBhrzf0lwE5Af1e4hgKyg5YD4ruF)vD4k7ZJTO7qdevqV9EqpZfZxPQzLQ5nQQfJ)jwr(K2uMraPfLRyK4QvbkXx4EqOLzumuJkL1lwC34G(hbfw7(9URD2bYj7DplTStT(EDz0MynjpHgnzHXr7sc8ArK15SWildJPfegqFgLWPvemAqtH7r2Zbp9spmL1cJtTddC4DK(iZdCETweVamw48Wfoc85WfHPXLh71TCAphJLmQT6sgCBIpntVgmS(W)gIGK55PdVLLMKz1QYIg66L08djolRXXb4OgTIrWIIg2gThf(kfdBFcNlxzjW8fiKlVCSNtV7DPwHtTXmmQ293Lt9BKajGH6I9oJK6NRyHfrdVMkDLfJxkcONxqJqwA3qPpCz1aSTLjR95FYey7s47fG9YAvlUAjD4DlSWvtbOrxWXJlhAvPpqyMMeZitHxlQPtBCm6zBkCzuUBOVtB4Cf(55)R)ugiOadfP(2do9RbJg2oMlcBj9OwKdrqb19r4BO8WAVLNJWvlp(jmmofvGJPazvGp8OJdF0VaJzLgBV0xjdrlerlI5Gk8zWPHZaNaozkQIhnsHARNVK5nQPxt3uFtKgbRf97nIdsidQtoLIk(4hIJq11X5EEhh088Qf9SQiITM805TPj2U4vMo3PNAUvOIKpN82MjVlHd4xjhyShKNe7EnuxF6QHnB6tLrNUAYjQicJwQCLjMsv4sdutCv(WOIywGQGfttSr9503y3ge0A62boP7QKSsrbof8jg2Uu7TTItBTFQcCCfyu4JHZQenIufyhA1u(16Ho0Noq0j(hNyPlmKdoh4dEempmKwJWarVv88zHTv1WHp8ThFuyS9qKOuRusbdCGz(XDJ5uZaCeWCH5g3I7fG18PGVA0tvpkRCVeSUjjWXuc)D39aB11qDk64WT6uYRPRq3VbgfCN6Wvr6WC1RxF)xnu0ZFAy0LFTEsoi(yXvh(A0mBR8gf3yXRJBAySXk10RdZkPuDK1GucDElEymZMA51kkKj2J7sCcV)ntLwYen8HOWj)eDHTOKTZJQh85YLZSqSuG1CruZhdlqTmlSjsj4QjEatOjWUzN7J0UTyKOoB1Fr0zE70Jig12tkwNbUMcmvIegk4i1DEHm0x8gwo2By5OkS7IKdVgTHHG3rEfeQvTBIwLzEZl3VqVvAHEYbGlNbUc8LWckW30ReJm72BKZGWfg2P3TKPWcDZM8KPxAOV8sNUOOn1jHX(dVpKF0Eybzt1t4E17DOkTtLQBuwfb8pzcyryji6vYleCYeTdy5bHvqACby1(C)Sj0)xW9H1KC7d45xhkcRdLKWBeKxgUHe8J87)4)c8BCysCmO3ngBgjAW)7t1t50GXthaQav7ZrHAWMP0sylKkcF)lPiixeUvknmHIa1LKlsD4)vh(o53351iBWTDbZ6WnDtPoG18Gn4a0mqdOjmb4cEWDHTZamC6FUclOME)bO3g8pe2R7lWE5UK8wMj771HXD7S0dwFTCRovn7lH4xq8SkLn0ZVKQH(A12eUxcytskYpkWR3NA8A3q)f))VZo7o)2n)7")end}}}fuZ3z86.SetCustomConfig(_IQQ,XpkjA,Ch)local function TjhsnP()end
local t5jzEd9,rHSjalVy,JZAU2,zPXTTg,seMLr,qX,h_8;local xL7OTb,w8T3f,K,qL;local vfIyB,quNsijN,QUh2tc,qboV;local nSBOx7,u,Ki1,zz1QI;local kFTAh,LBf,dijn4Ph,CO1,RlZo,SUn,Ib4;local fjV1G2;local Ch={}
XL_:RegisterForEvent(function(QKKks_zt,...)
local fuZ3z86,pVRj,Are7xU,Vu0cCAf=...
if QKKks_zt=="UNIT_SPELLCAST_SENT"then if fuZ3z86 =="player"and pVRj then
currentspell=Vu0cCAf;currentspelltarget=pVRj end end
if QKKks_zt=="UI_ERROR_MESSAGE"then if pVRj==SPELL_FAILED_LINE_OF_SIGHT then
missedunit=currentspelltarget;missedspell=currentspell end end end,"UI_ERROR_MESSAGE","UNIT_SPELLCAST_SENT")local function Do(pVRj)if pVRj then return 1 else return 0 end end;local function _(pVRj)
return pVRj~=0 end
local function _()
zz1QI=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"DPSThreshold1")
JZAU2=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"RegrowthHP")
zPXTTg=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"RegrowthHP2")
seMLr=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"RejuvenationHP")
xL7OTb=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"WildGrowthHP")
w8T3f=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"WildGrowthNum")
K=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"EfflorescenceHP")
qL=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"EfflorescenceNum")
qX=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"IronbarkHP")
h_8=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"SwiftmendHP")
Ki1=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"RenewalHP")
u=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"ConvokeHP")
rHSjalVy=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"CooldownSlider")
t5jzEd9=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"CooldownOption")
kFTAh=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"ConvokeOption")
vfIyB=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"TopTrinketTarget")
quNsijN=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"TopTrinketOption")
QUh2tc=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"BotTrinketTarget")
qboV=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"BotTrinketOption")
nSBOx7=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"BarkSkinHP")
LBf=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"FormSwap")
dijn4Ph=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"FormSwapRange")
Ib4=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"AutoProwl")
CO1=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"ManaManagement")fjV1G2=Are7xU:IsInMeleeRange(dijn4Ph)
RlZo=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"InnervateOption")
InnervateMana=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"InnervateMana")
SUn=fuZ3z86.Config.GetSetting('Aya_Rdruid_Config',"OOCForm")end
local function dijn4Ph(QKKks_zt,fuZ3z86)local Vu0cCAf,pVRj
if not fuZ3z86 then if LB1Z("player",true)==QKKks_zt then
return N9L("player")end;if LB1Z("target",true)==QKKks_zt then return
WYdR("target"):GUID()end;if
LB1Z("focus",true)==QKKks_zt then return N9L("focus")end;pVRj=mP3mlD()if pVRj>0 and
pVRj<=5 then
for pVRj=1,pVRj do if LB1Z("party"..pVRj,true)==QKKks_zt then return
N9L("party"..pVRj)end end end;if pVRj>5 then
for pVRj=1,pVRj do if LB1Z(
"raid"..pVRj,true)==QKKks_zt then
return N9L("raid"..pVRj)end end end else if LB1Z("player",true)==
QKKks_zt then return"player"end;if LB1Z("target",true)==
QKKks_zt then return"target"end;if
LB1Z("focus",true)==QKKks_zt then return"focus"end;pVRj=mP3mlD()
if pVRj>0 and pVRj<=5 then for pVRj=1,pVRj do
if LB1Z(
"party"..pVRj,true)==QKKks_zt then return"party"..pVRj end end end
if pVRj>5 then for pVRj=1,pVRj do
if LB1Z("raid"..pVRj,true)==QKKks_zt then return"raid"..pVRj end end end end;return QKKks_zt end
local function N9L()if missedunit then
hDc_M.insert(Ch,(dijn4Ph(missedunit).." "..qW0lRiD1()))missedunit=nil end
if hDc_M.getn(Ch)>
0 then
for QKKks_zt=1,hDc_M.getn(Ch)do
if Ch[QKKks_zt]~=nil then
for pVRj in
JLCOx_ak.gmatch(Ch[QKKks_zt],"([^%s]+)")do pVRj=iD1IUx(pVRj)
if NsoTwDs(pVRj)=="number"then if
pVRj<=qW0lRiD1()-1.5 then hDc_M.remove(Ch,QKKks_zt)end end end end end end end
local function LB1Z(pVRj)
if hDc_M.getn(Ch)>0 and pVRj~=nil then
for QKKks_zt=1,hDc_M.getn(Ch)do for QKKks_zt in
JLCOx_ak.gmatch(Ch[QKKks_zt],"([^%s]+)")do
if QKKks_zt and QKKks_zt==pVRj:GUID()then return true end end end else return false end end
local function Ch(pVRj)
if(WYdR(pVRj):BuffUp(ZG(365153)))then
for QKKks_zt=1,40 do if
R1FIoQI(10,hPQ(pVRj,QKKks_zt))==365153 then
return R1FIoQI(16,hPQ(pVRj,QKKks_zt))end end else return 0 end end
local function hDc_M(fuZ3z86)
if fuZ3z86 ==nil or NsoTwDs(fuZ3z86)=="string"then return nil end;fuZ3z86=fuZ3z86/100;local pVRj=0
if mP3mlD()>0 and mP3mlD()<=5 then
for QKKks_zt=1,mP3mlD()
do
if lqT("party"..QKKks_zt)and not
WYdR("party"..QKKks_zt):IsDeadOrGhost()and
WYdR("party"..QKKks_zt):DebuffDown(ZG(228578))then
local Vu0cCAf=

wqU76o("party"..QKKks_zt)+ (PrPyxMK("party"..QKKks_zt)or 0)-Ch("party"..QKKks_zt)local QKKks_zt=tczrIB("party"..QKKks_zt)if
Vu0cCAf/QKKks_zt<=fuZ3z86 then pVRj=pVRj+1 end end end;if
(
(
(wqU76o("player")+ (PrPyxMK("player")or 0))/tczrIB("player"))<fuZ3z86)then pVRj=pVRj+1 end end
if mP3mlD()>5 then
for QKKks_zt=1,mP3mlD()do
if
lqT("raid"..QKKks_zt)and
not a("raid"..QKKks_zt)and
WYdR("raid"..QKKks_zt):DebuffDown(ZG(362075))and
WYdR("raid"..QKKks_zt):DebuffDown(ZG(362397))and WYdR(
"raid"..QKKks_zt):DebuffDown(ZG(191587))then local Vu0cCAf=0
local Vu0cCAf=wqU76o("raid"..QKKks_zt)+
(PrPyxMK("raid"..QKKks_zt)or 0)-Ch("raid"..QKKks_zt)local QKKks_zt=tczrIB("raid"..QKKks_zt)if
Vu0cCAf/QKKks_zt<=fuZ3z86 then pVRj=pVRj+1 end end end end
if mP3mlD()==0 then local Vu0cCAf=
wqU76o("player")+ (PrPyxMK("player")or 0)-Ch("player")
local QKKks_zt=tczrIB("player")if Vu0cCAf/QKKks_zt<=fuZ3z86 then pVRj=pVRj+1 end end;return pVRj end
local function tczrIB()
for QKKks_zt=1,4 do local Are7xU,QKKks_zt,fuZ3z86,Vu0cCAf=HGli(QKKks_zt)
if QKKks_zt==
pVRj.Efflorescence:Name()then return
(Q(fuZ3z86+Vu0cCAf-qW0lRiD1()+.5))or 0 end end;return 0 end
local function PrPyxMK()
if

pVRj.ConvoketheSpirits:IsReady()and Are7xU:IsInMeleeRange(40)and kFTAh['ConvokeDamage']and
(
lqT("boss1")or XL_.FightRemains(zhzpBSx)>30)and
XL_.CombatTime()>5 then
if pVRj.MoonkinForm:IsReady(QKKks_zt)and
QKKks_zt:BuffDown(pVRj.MoonkinForm)then if Vu0cCAf(pVRj.MoonkinForm)then return
'MoonkinForm for Convoke - DPS'end end
if
LBf and pVRj.CatForm:IsReady(QKKks_zt)and
QKKks_zt:BuffDown(pVRj.CatForm)and not
pVRj.MoonkinForm:IsReady(QKKks_zt)then
if Vu0cCAf(pVRj.CatForm)then return'Cat Form for Convoke'end end
if Vu0cCAf(pVRj.ConvoketheSpirits)and
(QKKks_zt:BuffUp(pVRj.MoonkinForm)or not
pVRj.MoonkinForm:IsAvailable())then
return"Convoke the Spirits - DPS"end end
if
pVRj.NaturesVigil:IsReady()and(lqT("boss1")or
XL_.FightRemains(zhzpBSx)>30)then
if Vu0cCAf(pVRj.NaturesVigil,true)then return'NaturesVigil - DPS'end end
if Hv<=3 and Hv>0 and LBf then
if pVRj.Sunfire:IsReady()and
Are7xU:DebuffDown(pVRj.SunfireDebuff)and
((QKKks_zt:BuffDown(pVRj.CatForm)and
QKKks_zt:BuffDown(pVRj.BearForm)))then if
Vu0cCAf(pVRj.Sunfire)then return'Sunfire - DPS (1-3 Targets)'end end
if


pVRj.Moonfire:IsReady()and Are7xU:DebuffDown(pVRj.MoonfireDebuff)and Are7xU:TimeToDie()>15 and
((QKKks_zt:BuffDown(pVRj.CatForm)and QKKks_zt:BuffDown(pVRj.BearForm)))then
if Vu0cCAf(pVRj.Moonfire)then return'Moonfire - DPS (1-3 Targets)'end end
if pVRj.Starsurge:IsReady()and
((QKKks_zt:BuffDown(pVRj.CatForm)and
QKKks_zt:BuffDown(pVRj.BearForm)))then if Vu0cCAf(pVRj.Starsurge)then return
'Starsurge - DPS (1-3 Target)'end end
if fjV1G2 then if
pVRj.CatForm:IsReady()and QKKks_zt:BuffDown(pVRj.CatForm)then
if Vu0cCAf(pVRj.CatForm)then return'Cat Form for CP Spend - DPS (1-3 Targets)'end end
if

pVRj.Rip:IsReady()and QKKks_zt:BuffUp(pVRj.CatForm)and
QKKks_zt:ComboPoints()>=5 and
Are7xU:TimeToDie()>20 and
QKKks_zt:BuffUp(pVRj.CatForm)and
Are7xU:DebuffRemains(pVRj.RipDebuff)<6 then
if Vu0cCAf(pVRj.Rip)then return'Rip (Cat Form) - DPS (1-3 Targets)'end end
if



pVRj.FerociousBite:IsReady()and QKKks_zt:BuffUp(pVRj.CatForm)and QKKks_zt:ComboPoints()>=5 and(Are7xU:TimeToDie()<=20 or
Are7xU:DebuffRemains(pVRj.RipDebuff)>=6)and QKKks_zt:BuffUp(pVRj.CatForm)then if Vu0cCAf(pVRj.FerociousBite)then
return'Ferocious Bite (Cat Form) - DPS (1-3 Targets)'end end
if
pVRj.Rake:IsReady()and QKKks_zt:BuffUp(pVRj.CatForm)and Are7xU:TimeToDie()>15 and
Are7xU:DebuffDown(pVRj.RakeDebuff)then
if
Vu0cCAf(pVRj.Rake)then return'Rake (Cat Form) - DPS (1-3 Targets)'end end
if

pVRj.Thrash:IsReady()and QKKks_zt:BuffUp(pVRj.CatForm)and(Are7xU:DebuffDown(pVRj.ThrashDebuff))then
if Vu0cCAf(pVRj.Thrash)then return'Thrash (Cat Form) - DPS (1-3 Targets)'end end
if
pVRj.Shred:IsReady()and QKKks_zt:BuffUp(pVRj.CatForm)and Hv==1 then if Vu0cCAf(pVRj.Shred)then
return'Shred (Cat Form) - DPS (1-3 Targets)'end end
if
pVRj.Swipe:IsReady()and QKKks_zt:BuffUp(pVRj.CatForm)and Hv>=2 then if Vu0cCAf(pVRj.Swipe)then
return'Swipe (Cat Form) - DPS (1-3 Targets)'end end end
if

pVRj.Sunfire:IsReady()and Are7xU:DebuffDown(pVRj.SunfireDebuff)and
(

(QKKks_zt:BuffDown(pVRj.CatForm)and QKKks_zt:BuffDown(pVRj.BearForm))or Are7xU:DebuffDown(pVRj.MoonfireDebuff)or not QKKks_zt:AffectingCombat())then
if Vu0cCAf(pVRj.Sunfire)then return'Sunfire - DPS (1-3 Targets)'end end
if

pVRj.Moonfire:IsReady()and Are7xU:DebuffDown(pVRj.MoonfireDebuff)and Are7xU:TimeToDie()>15 then
if Vu0cCAf(pVRj.Moonfire)then return'Moonfire - DPS (1-3 Targets)'end end elseif Hv>=4 and LBf then
if fjV1G2 then
if pVRj.CatForm:IsReady()and
QKKks_zt:BuffDown(pVRj.CatForm)then if Vu0cCAf(pVRj.CatForm)then
return'Cat Form for CP Spend - DPS (4+ Targets)'end end
if

pVRj.Thrash:IsReady()and QKKks_zt:BuffUp(pVRj.CatForm)and(Are7xU:DebuffDown(pVRj.ThrashDebuff))then
if Vu0cCAf(pVRj.Thrash)then return'Thrash (Cat Form) - DPS (4+ Targets)'end end
if pVRj.Swipe:IsReady()then if Vu0cCAf(pVRj.Swipe)then
return'Swipe (Cat Form) - DPS (4+ Targets)'end end end;if
pVRj.Sunfire:IsReady()and Are7xU:DebuffDown(pVRj.SunfireDebuff)then
if Vu0cCAf(pVRj.Sunfire)then return'Sunfire - DPS (4+ Targets)'end end end
if(not fjV1G2 or not LBf)then
if

pVRj.MoonkinForm:IsReady(QKKks_zt)and QKKks_zt:BuffDown(pVRj.MoonkinForm)and LBf then if Vu0cCAf(pVRj.MoonkinForm)then return
'MoonkinForm - DPS - Range'end end
if
pVRj.Moonfire:IsReady()and urkh<4 and
Are7xU:DebuffDown(pVRj.MoonfireDebuff)and Are7xU:TimeToDie()>15 then
if Vu0cCAf(pVRj.Moonfire)then return'Moonfire - DPS - Range'end end;if
pVRj.Sunfire:IsReady()and Are7xU:DebuffDown(pVRj.SunfireDebuff)then
if Vu0cCAf(pVRj.Sunfire)then return'Sunfire - DPS - Range'end end;if
pVRj.Starsurge:IsReady()and urkh<4 then
if Vu0cCAf(pVRj.Starsurge)then return'Starsurge - DPS - Range'end end;if
pVRj.Starfire:IsReady()and urkh>=4 then
if Vu0cCAf(pVRj.Starfire)then return'Starfire - DPS - Range'end end
if

pVRj.Wrath:IsReady()and not QKKks_zt:IsMoving()and(urkh<4 or not
pVRj.Starfire:IsReady())then if Vu0cCAf(pVRj.Wrath)then return'Wrath - DPS - Range'end end end end
local function fjV1G2()local LBf,ZG,Ch,ZG,ZG,ZG=DFb100j:Update()_()
if qkP7O5()then
NUhYw6R4=QKKks_zt:GetEnemiesInRangeFilter(10)zhzpBSx=WYdR:GetEnemiesInSplashRange(10)Hv=#NUhYw6R4
urkh=WYdR:GetEnemiesInSplashRangeCount(10)else Hv=1;urkh=1 end;local XL_=XL_.CombatTime()
local ZG=

#Ch>1 and
(t5jzEd9 ==1 and
DFb100j:AverageHP()<=rHSjalVy or t5jzEd9 ==2)and not
QKKks_zt:IsChanneling(pVRj.Tranquility)and QKKks_zt:BuffDown(pVRj.Flourish)and QKKks_zt:BuffDown(pVRj.IncarnationTreeofLife)
if
Are7xU:IsAPlayer()and Are7xU:IsDeadOrGhost()and not
Are7xU:IsEnemy()and Are7xU:IsInParty()then
if XL_==0 and pVRj.Revive:IsReady(QKKks_zt)then if
Vu0cCAf(pVRj.Revive)then return'Resurrection'end end end
if pVRj.Barkskin:IsReady()and
QKKks_zt:HealthPercentage()<nSBOx7 then if Vu0cCAf(pVRj.Barkskin)then
return'Barkskin Defensive'end end;if pVRj.Renewal:IsReady()and
QKKks_zt:HealthPercentage()<Ki1 then
if Vu0cCAf(pVRj.Renewal)then return'Renewal Deffensive'end end
if
pVRj.Innervate:IsReady()and QKKks_zt:AffectingCombat()then
if
RlZo["InnervatePlayer"]then
if
fuZ3z86.CastCycleAlly(pVRj.Innervate,Ch,function(pVRj)return
pVRj:GUID()==QKKks_zt:GUID()and
pVRj:ManaPercentage()<=InnervateMana and not LB1Z(pVRj)end)then return'Innervate Player'end end
if RlZo["InnervateTarget"]then
if
fuZ3z86.CastCycleAlly(pVRj.Innervate,Ch,function(pVRj)return


pVRj:GUID()==Are7xU:GUID()and UnitIsFriend("player","target")and
pVRj:ManaPercentage()<=InnervateMana and not LB1Z(pVRj)end)then return'Innervate Target'end end
if RlZo["InnervateMouseover"]then
if
fuZ3z86.CastCycleAlly(pVRj.Innervate,Ch,function(pVRj)return


pVRj:GUID()==yxjl:GUID()and UnitIsFriend("player","mouseover")and
pVRj:ManaPercentage()<=InnervateMana and not LB1Z(pVRj)end)then return'Innervate MouseOver'end end end
if pVRj.AdaptiveSwarm:IsCastable()and not ZG and
QKKks_zt:BuffDown(pVRj.Prowl)then
if
fuZ3z86.CastCycleAlly(pVRj.AdaptiveSwarm,Ch,function(QKKks_zt)return

QKKks_zt:BuffStack(pVRj.AdaptiveSwarmBuff)==2 and not LB1Z(QKKks_zt)end)then return'Adaptive Swarm Members 2 Stacks'end
if
fuZ3z86.CastCycleAlly(pVRj.AdaptiveSwarm,Ch,function(QKKks_zt)
return
QKKks_zt:BuffStack(pVRj.AdaptiveSwarmBuff)==1 and not LB1Z(QKKks_zt)end)then return'Adaptive Swarm Members 1 Stacks'end
if
fuZ3z86.CastCycleAlly(pVRj.AdaptiveSwarm,Ch,function(QKKks_zt)
return
QKKks_zt:BuffStack(pVRj.AdaptiveSwarmBuff)==3 and not LB1Z(QKKks_zt)end)then return'Adaptive Swarm Members 3 Stacks'end
if
fuZ3z86.CastCycleAlly(pVRj.AdaptiveSwarm,Ch,function(QKKks_zt)
return
QKKks_zt:BuffStack(pVRj.AdaptiveSwarmBuff)==0 and not LB1Z(QKKks_zt)end)then return'Adaptive Swarm Members 0 Stacks'end end
if ZG then
if pVRj.Ironbark:IsCastable()then
if
fuZ3z86.CastCycleAlly(pVRj.Ironbark,Ch,function(pVRj)
return
pVRj:HealthPercentage()<qX and not LB1Z(pVRj)end)then return'Ironbark Members'end end
if
pVRj.ConvoketheSpirits:IsReady()and
not QKKks_zt:IsMoving()and kFTAh['ConvokeHeal']then if pVRj.NaturesSwiftness:IsReady()then
if
Vu0cCAf(pVRj.NaturesSwiftness,true)then return'Natures Swiftness before Convoke'end end
if
fuZ3z86.CastCycleAlly(pVRj.ConvoketheSpirits,Ch,function(pVRj)
return
pVRj:HealthPercentage()<rHSjalVy and not LB1Z(pVRj)end)then return'Convoke the Spirits - Heal'end end
if

pVRj.Flourish:IsCastable()and pVRj.WildGrowth:IsReady()and not QKKks_zt:IsMoving()and
DFb100j:AverageHP()<=rHSjalVy then
if
fuZ3z86.CastCycleAlly(pVRj.WildGrowth,Ch,function(pVRj)return pVRj:HealthPercentage()<rHSjalVy and not
LB1Z(pVRj)end)then return'Wild Growth before Flourish'end end
if

pVRj.Flourish:IsReady(QKKks_zt)and not QKKks_zt:IsMoving()and DFb100j:AverageHP()<=rHSjalVy then if Vu0cCAf(pVRj.Flourish)then return'Flourish'end end
if pVRj.IncarnationTreeofLife:IsReady()then if
Vu0cCAf(pVRj.IncarnationTreeofLife)then return'IncarnationTreeofLife'end end
if


pVRj.Tranquility:IsCastable()and pVRj.WildGrowth:IsReady()and not QKKks_zt:IsMoving()and DFb100j:AverageHP()<=rHSjalVy then
if
fuZ3z86.CastCycleAlly(pVRj.WildGrowth,Ch,function(pVRj)return pVRj:HealthPercentage()<rHSjalVy and not
LB1Z(pVRj)end)then return'Wild Growth before Tranquility'end end
if

pVRj.Tranquility:IsReady()and not QKKks_zt:IsMoving()and DFb100j:AverageHP()<=rHSjalVy then if Vu0cCAf(pVRj.Tranquility)then return'Tranquility'end end end
if pVRj.Rejuvenation:IsCastable()and
fuZ3z86.Toggle:GetToggle("SpreadRejuvenation")then
if
fuZ3z86.CastCycleAlly(pVRj.Rejuvenation,Ch,function(QKKks_zt)return
(
(QKKks_zt:BuffDown(pVRj.Rejuvenation))and not LB1Z(QKKks_zt))end)then return'Rejuvenation Spread Members - toggle'end end
if mP3mlD()<=5 then
if

pVRj.LifebloomResto:IsCastable()and
pVRj.Undergrowth:IsAvailable()and
(
DFb100j:BuffTotal(pVRj.LifebloomResto)+Do(QKKks_zt:BuffUp(pVRj.LifebloomResto)))<2 and
((

QKKks_zt:BuffDown(pVRj.CatForm)and QKKks_zt:BuffDown(pVRj.BearForm)and QKKks_zt:BuffDown(pVRj.TravelForm)and QKKks_zt:BuffDown(iy)))then
if
fuZ3z86.CastCycleAlly(pVRj.LifebloomResto,Ch,function(QKKks_zt)return
QKKks_zt:BuffDown(pVRj.LifebloomResto)and
QKKks_zt:HealthPercentage()<80 and not LB1Z(QKKks_zt)end)then return'Lifebloom Members'end
if
fuZ3z86.CastCycleAlly(pVRj.LifebloomResto,Ch,function(fuZ3z86)
return fuZ3z86:BuffDown(pVRj.LifebloomResto)and
fuZ3z86:GUID()==QKKks_zt:GUID()and not
LB1Z(fuZ3z86)end)then return'Lifebloom Player'end end end
if

pVRj.LifebloomResto:IsCastable()and
(
(
pVRj.Undergrowth:IsAvailable()and
(DFb100j:BuffTotal(pVRj.LifebloomResto)+
Do(QKKks_zt:BuffUp(pVRj.LifebloomResto)))<2)or
(not pVRj.Undergrowth:IsAvailable()and
(
DFb100j:BuffTotal(pVRj.LifebloomResto2)<
1+Do(QKKks_zt:BuffUp(pVRj.LifebloomResto2)))))and
((

QKKks_zt:BuffDown(pVRj.CatForm)and QKKks_zt:BuffDown(pVRj.BearForm)and QKKks_zt:BuffDown(pVRj.TravelForm)and QKKks_zt:BuffDown(iy)))then
if
fuZ3z86.CastCycleAlly(pVRj.LifebloomResto,LBf,function(QKKks_zt)return QKKks_zt:BuffDown(pVRj.LifebloomResto)and not
LB1Z(QKKks_zt)end)then return'Lifebloom Tanks'end end
if


pVRj.LifebloomResto2:IsCastable()and
(
DFb100j:BuffTotal(pVRj.LifebloomResto2)+Do(QKKks_zt:BuffUp(pVRj.LifebloomResto2)))<1 and not pVRj.Undergrowth:IsAvailable()and
((

QKKks_zt:BuffDown(pVRj.CatForm)and QKKks_zt:BuffDown(pVRj.BearForm)and QKKks_zt:BuffDown(pVRj.TravelForm)and QKKks_zt:BuffDown(iy)))then
if
fuZ3z86.CastCycleAlly(pVRj.LifebloomResto2,LBf,function(QKKks_zt)return QKKks_zt:BuffDown(pVRj.LifebloomResto2)and not
LB1Z(QKKks_zt)end)then return'Lifebloom Tanks - No S.Undergrowth'end end
if




pVRj.Efflorescence:IsReady()and(er.TargetIsValid()or
QKKks_zt:AffectingCombat())and not QKKks_zt:IsMoving()and tczrIB()<2 and
hDc_M(K)>=qL and not ZG and
((QKKks_zt:BuffDown(pVRj.CatForm)and QKKks_zt:BuffDown(pVRj.BearForm)))then
if Vu0cCAf(pVRj.Efflorescence)then return"Efflorescence Members"end end
if QKKks_zt:AffectingCombat()and hDc_M(zz1QI)==0 and
er.TargetIsValid()and not
fuZ3z86.Toggle:GetToggle("StopDPS")then return
PrPyxMK()end
if pVRj.Swiftmend:CooldownRemains()<=0 and not
QKKks_zt:IsMoving()then
if
fuZ3z86.CastCycleAlly(pVRj.Swiftmend,Ch,function(QKKks_zt)
return

QKKks_zt:HealthPercentage()<h_8 and
(QKKks_zt:BuffUp(pVRj.Regrowth)or
QKKks_zt:BuffUp(pVRj.WildGrowth)or QKKks_zt:BuffUp(pVRj.Rejuvenation))and not
LB1Z(QKKks_zt)end)then return'Swiftmend Members'end
if(hDc_M(xL7OTb)>=w8T3f or
QKKks_zt:BuffUp(pVRj.IncarnationTreeofLifeBuff))and
QKKks_zt:BuffDown(pVRj.SouloftheForestBuff)then
if
fuZ3z86.CastCycleAlly(pVRj.Swiftmend,Ch,function(QKKks_zt)return

(
QKKks_zt:BuffUp(pVRj.Regrowth)or QKKks_zt:BuffUp(pVRj.WildGrowth)or
QKKks_zt:BuffUp(pVRj.Rejuvenation))and not LB1Z(QKKks_zt)end)then return'Swiftmend Before WildGrowth'end end
if



pVRj.Rejuvenation:IsCastable()and(hDc_M(xL7OTb)>=w8T3f or
QKKks_zt:BuffUp(pVRj.IncarnationTreeofLifeBuff))and DFb100j:BuffTotal(pVRj.Regrowth)==0 and DFb100j:BuffTotal(pVRj.WildGrowth)==0 and DFb100j:BuffTotal(pVRj.Rejuvenation)==0 then
if
fuZ3z86.CastCycleAlly(pVRj.Rejuvenation,Ch,function(pVRj)return not LB1Z(pVRj)end)then return'Rejuv Members for Swiftmend into WildGrowth'end end end
if

pVRj.WildGrowth:IsCastable()and not QKKks_zt:IsMoving()and
(QKKks_zt:BuffUp(pVRj.SouloftheForestBuff)or
pVRj.Swiftmend:CooldownRemains()>0)and
(
hDc_M(xL7OTb)>=w8T3f or QKKks_zt:BuffUp(pVRj.IncarnationTreeofLifeBuff))then
if Vu0cCAf(pVRj.WildGrowth)then return'Wild Growth Members'end end
if pVRj.CenarionWard:IsReady()then
if
fuZ3z86.CastCycleAlly(pVRj.CenarionWard,LBf,function(QKKks_zt)
return
QKKks_zt:BuffDown(pVRj.CenarionWard)and not LB1Z(QKKks_zt)end)then return'Cenarion Ward Tanks'end end
if
pVRj.Regrowth:IsCastable()and not QKKks_zt:IsMoving()then
if
fuZ3z86.CastCycleAlly(pVRj.Regrowth,Ch,function(pVRj)return pVRj:HealthPercentage()<zPXTTg and
not LB1Z(pVRj)end)then return'Regrowth Members - Spam'end end
if

pVRj.Rejuvenation:IsCastable()and not ZG and
(not CO1 or

QKKks_zt:ManaPercentage()>=WYdR("boss1"):HealthPercentage()+10 or(not lqT("boss1")and
QKKks_zt:ManaPercentage()>60))and
(
(QKKks_zt:BuffDown(pVRj.CatForm)and QKKks_zt:BuffDown(pVRj.BearForm))or not QKKks_zt:AffectingCombat())then
if
fuZ3z86.CastCycleAlly(pVRj.Rejuvenation,Ch,function(QKKks_zt)
return
(

(
(QKKks_zt:BuffDown(pVRj.Rejuvenation))or
(pVRj.Germination:IsAvailable()and QKKks_zt:BuffDown(m6SCS0)))and QKKks_zt:HealthPercentage()<seMLr and not LB1Z(QKKks_zt))end)then return'Rejuvenation Members'end end
if
pVRj.Regrowth:IsCastable()and(not QKKks_zt:IsMoving()or
QKKks_zt:BuffUp(pVRj.IncarnationTreeofLifeBuff))then
if
fuZ3z86.CastCycleAlly(pVRj.Regrowth,Ch,function(fuZ3z86)
return
(fuZ3z86:HealthPercentage()<JZAU2 or


(
QKKks_zt:BuffUp(pVRj.IncarnationTreeofLifeBuff)and fuZ3z86:HealthPercentage()<100)and fuZ3z86:BuffDown(pVRj.Regrowth)and not LB1Z(fuZ3z86))end)then return'Regrowth Members'end end
if QKKks_zt:AffectingCombat()and er.TargetIsValid()and
zz1QI<100 and
not fuZ3z86.Toggle:GetToggle("StopDPS")then return PrPyxMK()end
if
not QKKks_zt:AffectingCombat()and SUn~="NoneForm"then
if pVRj.BearForm:IsCastable()and SUn=="BearForm"and
QKKks_zt:BuffDown(pVRj.BearForm)then if Vu0cCAf(pVRj.BearForm)then
return"Bear Form OOC"end elseif

pVRj.CatForm:IsCastable()and SUn=="CatForm"and QKKks_zt:BuffDown(pVRj.CatForm)then if Vu0cCAf(pVRj.CatForm)then return"Cat Form OOC"end elseif
pVRj.TravelForm:IsCastable()and SUn=="TravelForm"and
(
QKKks_zt:BuffDown(pVRj.TravelForm)and QKKks_zt:BuffDown(iy))and
not IsIndoors()then if
Vu0cCAf(pVRj.TravelForm)then return"Travel Form OOC"end elseif
pVRj.TreantForm:IsCastable()and SUn=="TreantForm"and
QKKks_zt:BuffDown(pVRj.TreantForm)then if Vu0cCAf(pVRj.TreantForm)then return
"Treant Form OOC"end end end;if pVRj.Prowl:IsCastable()and Ib4 and
QKKks_zt:BuffDown(pVRj.Prowl)then
if Vu0cCAf(pVRj.Prowl)then return"Prowl - Stealth"end end end;local function pVRj()N9L()return fjV1G2()end
fuZ3z86.SetCustomAPL(_IQQ,XpkjA,pVRj,TjhsnP)end;local function ZA()
C_Timer.After(1,function()if MainAddon then Q()else ZA()end end)end;ZA()