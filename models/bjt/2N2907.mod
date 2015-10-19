* SPICE модель импортного PNP транзистора 2N2907
* позаимствовано из "LTSpice IV"
.model 2N2907 PNP(IS=1E-14 VAF=120
+   BF=250 IKF=0.3 XTB=1.5 BR=3
+   CJC=8E-12 CJE=30E-12 TR=100E-9 TF=400E-12
+   ITF=1 VTF=2 XTF=3 RB=10 RC=.3 RE=.2)
*   Vceo=40 Icrating=600m mfg=NXP

