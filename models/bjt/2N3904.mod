* SPICE модель транзистора 2N3904 из примеров документации gEDA
* и из "официальной" документации:
* http://dpnc.unige.ch/tp/elect/spec-sheets/2N3904.pdf
*
* Данный транзистор может быть принят за примерный аналог для отечественных
* КТ375А, КТ375Б и, возможно, КТ3117Б
*
.model 2N3904 NPN(Is=6.734f Xti=3 Eg=1.11 Vaf=74.03 Bf=416.4 Ne=1.259
+             Ise=6.734f Ikf=66.78m Xtb=1.5 Br=.7371 Nc=2 Isc=0 Ikr=0 Rc=1
+             Cjc=3.638p Mjc=.3085 Vjc=.75 Fc=.5 Cje=4.493p Mje=.2593 Vje=.75
+             Tr=239.5n Tf=301.2p Itf=.4 Vtf=4 Xtf=2 Rb=10)
*             Fairchild        pid=23          case=TO92
*             88-09-08 bam    creation

* SPICE модель транзистора 2N3904
* позаимствовано из "LTSpice IV"
.model 2N3904_LT NPN(IS=1E-14 VAF=100
+  Bf=300 IKF=0.4 XTB=1.5 BR=4
+  CJC=4E-12 CJE=8E-12 RB=20 RC=0.1 RE=0.1
+  TR=250E-9 TF=350E-12 ITF=1 VTF=2 XTF=3 Vceo=40)
*  Icrating=200m mfg=NXP


