v 20130925 2
C 40000 40000 0 0 0 title-B.sym
C 40700 46300 1 0 0 vdc-1.sym
{
T 41400 47150 5 10 0 1 0 0 1
refdes=VCC
T 41400 47150 5 10 0 0 0 0 1
device=VOLTAGE_SOURCE
T 41400 47350 5 10 0 0 0 0 1
footprint=none
T 41400 47050 5 10 1 1 0 0 1
value=DC 4.5V
}
C 47400 43000 1 0 0 gnd-1.sym
N 41000 47500 41000 49000 4
{
T 41000 45800 5 10 0 1 0 0 1
netname=VCC
}
N 41000 49000 51500 49000 4
{
T 47300 49100 5 10 1 1 0 0 1
netname=VCC
}
N 41000 46300 41000 43700 4
N 41000 43700 51500 43700 4
{
T 46900 43400 5 10 1 1 0 0 1
netname=GND
}
T 51300 40800 9 12 1 0 0 0 2
Симметричный мультивибратор
"Светодиодная - мигалка"
N 47500 43300 47500 43700 4
C 47100 47600 1 90 0 resistor-2.sym
{
T 46750 48000 5 10 0 0 90 0 1
device=RESISTOR
T 46800 48200 5 10 1 1 180 0 1
refdes=R2
T 46500 47800 5 10 1 1 0 0 1
value=33k
}
C 49400 45000 1 0 0 npn-3.sym
{
T 50300 45500 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 50300 45700 5 10 1 1 0 0 1
refdes=VT2
T 50300 45400 5 10 1 1 0 0 1
value=2N2222
}
C 53400 47500 1 0 0 spice-include-1.sym
{
T 53500 47800 5 10 0 1 0 0 1
device=include
T 53500 47900 5 10 1 1 0 0 1
refdes=A2
T 53900 47600 5 10 1 1 0 0 1
file=simulation.cmd
}
C 53400 46400 1 0 0 spice-model-1.sym
{
T 53500 47100 5 10 0 1 0 0 1
device=model
T 53500 47000 5 10 1 1 0 0 1
refdes=A3
T 54600 46700 5 10 1 1 0 0 1
model-name=2N2222
T 53900 46500 5 10 1 1 0 0 1
file=../models/bjt/2N2222.mod
}
C 53400 48400 1 0 0 spice-directive-1.sym
{
T 53500 48700 5 10 0 1 0 0 1
device=directive
T 53500 48800 5 10 1 1 0 0 1
refdes=A1
T 53400 48500 5 10 1 1 0 0 1
value=.options TEMP=25
}
C 50900 44000 1 0 0 npn-3.sym
{
T 51800 44500 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 51800 44700 5 10 1 1 0 0 1
refdes=VT4
T 51800 44400 5 10 1 1 0 0 1
value=2N2222
}
T 54100 40400 9 10 1 0 0 0 1
2015.10.12
T 50800 40400 9 10 1 0 0 0 1
lab-2.sch
T 50700 40100 9 10 1 0 0 0 1
1
T 51800 40100 9 10 1 0 0 0 1
1
T 54000 40100 9 10 1 0 0 0 1
Alex Zorg <azorg@mail.ru>
T 41400 46500 9 10 1 0 0 0 2
Источник
питания
C 45600 45000 1 0 1 npn-3.sym
{
T 44700 45500 5 10 0 0 0 6 1
device=NPN_TRANSISTOR
T 44700 45700 5 10 1 1 0 6 1
refdes=VT1
T 44700 45400 5 10 1 1 0 6 1
value=2N2222
}
C 45100 47600 1 90 0 resistor-2.sym
{
T 44750 48000 5 10 0 0 90 0 1
device=RESISTOR
T 44800 48200 5 10 1 1 180 0 1
refdes=R1
T 44600 47800 5 10 1 1 0 0 1
value=1k
}
C 45500 46600 1 0 0 capacitor-4.sym
{
T 45700 47700 5 10 0 0 0 0 1
device=POLARIZED_CAPACITOR
T 45800 47100 5 10 1 1 0 0 1
refdes=C1
T 45700 47300 5 10 0 0 0 0 1
symversion=0.1
T 45700 46400 5 10 1 1 0 0 1
value=22uF
}
C 49500 46600 1 0 1 capacitor-4.sym
{
T 49300 47700 5 10 0 0 0 6 1
device=POLARIZED_CAPACITOR
T 49200 47100 5 10 1 1 0 6 1
refdes=C2
T 49300 47300 5 10 0 0 0 6 1
symversion=0.1
T 48900 46400 5 10 1 1 0 0 1
value=22uF
}
C 48100 47600 1 90 0 resistor-2.sym
{
T 47750 48000 5 10 0 0 90 0 1
device=RESISTOR
T 47800 48200 5 10 1 1 180 0 1
refdes=R3
T 47500 47800 5 10 1 1 0 0 1
value=33k
}
C 50100 47600 1 90 0 resistor-2.sym
{
T 49750 48000 5 10 0 0 90 0 1
device=RESISTOR
T 49800 48200 5 10 1 1 180 0 1
refdes=R4
T 49500 47800 5 10 1 1 0 0 1
value=1k
}
C 51600 46000 1 90 0 resistor-2.sym
{
T 51250 46400 5 10 0 0 90 0 1
device=RESISTOR
T 51300 46600 5 10 1 1 180 0 1
refdes=R6
T 51100 46200 5 10 1 1 0 0 1
value=57
}
C 51300 48500 1 270 0 led-1.sym
{
T 51900 47700 5 10 0 0 270 0 1
device=DIODE
T 52000 48200 5 10 1 1 0 0 1
refdes=LED2
T 52100 47700 5 10 0 0 270 0 1
symversion=0.1
T 52000 47900 5 10 1 1 0 0 1
value=NSPW500BS
}
N 50000 46000 50000 47600 4
{
T 50100 46700 5 10 1 1 0 0 1
netname=vc2
}
N 49500 46800 50000 46800 4
N 50000 48500 50000 49000 4
N 48000 48500 48000 49000 4
N 48000 45500 48000 47600 4
N 48000 46800 48600 46800 4
N 47000 48500 47000 49000 4
N 47000 46000 47000 47600 4
N 47000 46800 46400 46800 4
N 45500 46800 45000 46800 4
N 45000 46000 45000 47600 4
{
T 44600 46700 5 10 1 1 0 0 1
netname=vc1
}
N 45000 48500 45000 49000 4
N 45600 45500 48000 45500 4
{
T 45900 45600 5 10 1 1 0 0 1
netname=vb1
}
N 49400 45500 48500 45500 4
{
T 48800 45600 5 10 1 1 0 0 1
netname=vb2
}
N 48500 45500 48500 46000 4
N 48500 46000 47000 46000 4
C 53400 45300 1 0 0 spice-model-1.sym
{
T 53500 46000 5 10 0 1 0 0 1
device=model
T 53500 45900 5 10 1 1 0 0 1
refdes=A4
T 54600 45600 5 10 1 1 0 0 1
model-name=NSPW500BS
T 53900 45400 5 10 1 1 0 0 1
file=../models/led/NSPW500BS.mod
}
C 43600 46000 1 90 0 resistor-2.sym
{
T 43250 46400 5 10 0 0 90 0 1
device=RESISTOR
T 43300 46600 5 10 1 1 180 0 1
refdes=R5
T 43100 46200 5 10 1 1 0 0 1
value=57
}
C 43300 48500 1 270 0 led-1.sym
{
T 43900 47700 5 10 0 0 270 0 1
device=DIODE
T 44100 47700 5 10 0 0 270 0 1
symversion=0.1
T 42700 48200 5 10 1 1 0 0 1
refdes=LED1
T 42100 47900 5 10 1 1 0 0 1
value=NSPW500BS
}
C 44100 44000 1 0 1 npn-3.sym
{
T 43200 44500 5 10 0 0 0 6 1
device=NPN_TRANSISTOR
T 43200 44700 5 10 1 1 0 6 1
refdes=VT3
T 43200 44400 5 10 1 1 0 6 1
value=2N2222
}
N 43500 48500 43500 49000 4
N 43500 47600 43500 46900 4
{
T 43000 47200 5 10 1 1 0 0 1
netname=vled1
}
N 43500 46000 43500 45000 4
{
T 43100 45500 5 10 1 1 0 0 1
netname=vc3
}
N 43500 44000 43500 43700 4
N 44100 44500 45000 44500 4
N 45000 44500 45000 45000 4
{
T 44600 44700 5 10 1 1 0 0 1
netname=ve1
}
N 50900 44500 50000 44500 4
N 50000 44500 50000 45000 4
{
T 50100 44700 5 10 1 1 0 0 1
netname=ve2
}
N 51500 44000 51500 43700 4
N 51500 45000 51500 46000 4
{
T 51600 45200 5 10 1 1 0 0 1
netname=vc4
}
N 51500 46900 51500 47600 4
{
T 51600 47200 5 10 1 1 0 0 1
netname=vled2
}
N 51500 48500 51500 49000 4
