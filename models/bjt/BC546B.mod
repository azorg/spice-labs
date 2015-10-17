* SPICE модель транзистора BC546B - аналог КТ3102БМ
* Uкэ.max=50В, Iк.max=100mA, Pк.max=250мВт, Fmax~150МГц,
* h21э=200...450 (2мА/5В)
* позаимствовано из "LTSpice IV"
.model BC546B NPN(IS=2.39E-14 NF=1.008 ISE=3.55E-15 NE=1.541 BF=294.3
+             IKF=0.1357 VAF=63.2 NR=1.004 ISC=6.27E-14 NC=1.243
+             BR=7.946 IKR=0.1144 VAR=25.9 RB=1 IRB=1.00E-06 RBM=1
+             RE=0.4683 RC=0.85 XTB=0 EG=1.11 XTI=3 CJE=1.36E-11
+             VJE=0.65 MJE=0.3279 TF=4.39E-10 XTF=120 VTF=2.643
+             ITF=0.7495 PTF=0 CJC=3.73E-12 VJC=0.3997 MJC=0.2955
+             XCJC=0.6193 TR=1.00E-32 CJS=0 VJS=0.75 MJS=0.333
+             FC=0.9579)
*             Vceo=65 Icrating=100m mfg=NXP

