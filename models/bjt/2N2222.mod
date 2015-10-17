* SPICE модель классического импортного транзистора 2N2222
* из datasheet:
* http://www.datasheetarchive.com/dl/Datasheet-021/DSA00361080.pdf
.model 2N2222 NPN (IS=19.34n EG=1.11 VAF=250.3 BF=163.8 ISE =174.3f
+  NE=1.647 IKF=3.0 XTB=1.5 BR=11.49 ISC=19.9f NC=1.88 IKR=10.75
+  RC=0.3567 CJC=11.02p VJC=0.3869 MJC=0.3292 FC=0.5 CJE=29.31p VJE=0.9036
+  MJE=0.4101 TR=38.32n TF=361.8p ITF=5.282 XTF=249.9 VTF=10)

* SPICE модель классического импортного транзистора 2N2222
* позаимствовано из "LTSpice IV"
.model 2N2222_LT NPN(IS=1E-14 VAF=100
+   BF=200 IKF=0.3 XTB=1.5 BR=3
+   CJC=8E-12 CJE=25E-12 TR=100E-9 TF=400E-12
+   ITF=1 VTF=2 XTF=3 RB=10 RC=.3 RE=.2)
*   Vceo=30 Icrating=800m  mfg=NXP

