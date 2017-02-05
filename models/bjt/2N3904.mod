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

* SPICE модель транзистора 2N3904 (из просторов Интернет):
.MODEL 2N3904_I npn
+IS=6.9716e-14 BF=545.416 NF=1.09328 VAF=10
+IKF=0.0228393 ISE=5.71808e-12 NE=1.88204 BR=4.70256
+NR=1.3912 VAR=2.31769 IKR=0.074093 ISC=5.71808e-12
+NC=1.36259 RB=1.733 IRB=1.12054 RBM=0.876202
+RE=0.356192 RC=1.78096 XTB=0.1 XTI=1
+EG=1.05 CJE=4.47982e-12 VJE=0.4 MJE=0.240345
+TF=4e-10 XTF=1.5 VTF=1 ITF=1
+CJC=3.76637e-12 VJC=0.4 MJC=0.241382 XCJC=0.8
+FC=0.533333 CJS=0 VJS=0.75 MJS=0.5
+TR=3.77901e-05 PTF=0 KF=0 AF=1

