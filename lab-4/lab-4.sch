v 20130925 2
C 40000 40000 0 0 0 title-B.sym
C 42800 43200 1 0 0 vdc-1.sym
{
T 43500 44050 5 10 0 1 0 0 1
refdes=VCC
T 43500 44050 5 10 0 0 0 0 1
device=VOLTAGE_SOURCE
T 43500 44250 5 10 0 0 0 0 1
footprint=none
T 43500 43950 5 10 1 1 0 0 1
value=DC 5V
}
C 44800 43200 1 0 0 vac-1.sym
{
T 45500 43950 5 10 0 1 0 0 1
refdes=VIN
T 45500 44050 5 10 0 0 0 0 1
device=vac
T 45500 44250 5 10 0 0 0 0 1
footprint=none
T 45500 44000 5 10 1 1 0 0 1
value=DC 2V pulse(0V 5V 2ms 2ms 2ms 3ms 10ms)
}
C 43000 42400 1 0 0 gnd-1.sym
{
T 43000 42400 5 10 0 0 0 0 1
netname=0
}
N 43100 44400 43100 44800 4
{
T 43400 45300 5 10 0 1 0 0 1
netname=VCC
}
T 51100 41000 9 12 1 0 0 0 1
Эммиторно-связный триггер Шмидта
C 49400 47200 1 270 0 resistor-2.sym
{
T 49750 46800 5 10 0 0 270 0 1
device=RESISTOR
T 49700 46800 5 10 1 1 0 0 1
refdes=R2
T 50000 46700 5 10 1 1 180 0 1
value=2.2k
}
C 51400 45100 1 0 0 npn-3.sym
{
T 52300 45600 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 52300 45800 5 10 1 1 0 0 1
refdes=T2
T 52300 45500 5 10 1 1 0 0 1
value=KT315B
}
C 43000 48000 1 0 0 spice-include-1.sym
{
T 43100 48300 5 10 0 1 0 0 1
device=include
T 43100 48400 5 10 1 1 0 0 1
refdes=A2
T 43500 48100 5 10 1 1 0 0 1
file=simulation.cmd
}
C 43000 46900 1 0 0 spice-model-1.sym
{
T 43100 47600 5 10 0 1 0 0 1
device=model
T 43100 47500 5 10 1 1 0 0 1
refdes=A3
T 44200 47200 5 10 1 1 0 0 1
model-name=KT315B
T 43400 47000 5 10 1 1 0 0 1
file=../models/KT315B.mod
}
T 45500 43500 9 10 1 0 0 0 2
Источник
сигнала
C 43000 48900 1 0 0 spice-directive-1.sym
{
T 43100 49200 5 10 0 1 0 0 1
device=directive
T 43100 49300 5 10 1 1 0 0 1
refdes=A1
T 43000 49000 5 10 1 1 0 0 1
value=.options TEMP=27
}
T 54100 40400 9 10 1 0 0 0 1
2015.10.15
T 50800 40400 9 10 1 0 0 0 1
lab-4.sch
T 50700 40100 9 10 1 0 0 0 1
1
T 51800 40100 9 10 1 0 0 0 1
1
T 54000 40100 9 10 1 0 0 0 1
Alex Zorg <azorg@mail.ru>
T 43500 43500 9 10 1 0 0 0 2
Источник
питания
N 43100 43200 43100 42700 4
{
T 43100 43200 5 10 0 0 0 0 1
netname=0
}
C 45000 42400 1 0 0 gnd-1.sym
{
T 45000 42400 5 10 0 0 0 0 1
netname=0
}
N 45100 42700 45100 43200 4
{
T 45100 42700 5 10 0 0 0 0 1
netname=0
}
C 53400 44000 1 270 0 resistor-2.sym
{
T 53750 43600 5 10 0 0 270 0 1
device=RESISTOR
T 54000 43800 5 10 1 1 180 0 1
refdes=RL
T 53800 43400 5 10 1 1 0 0 1
value=1k
}
C 53400 42400 1 0 0 gnd-1.sym
{
T 53400 42400 5 10 0 0 0 0 1
netname=0
}
N 53500 44000 53500 47000 4
{
T 53600 45000 5 10 1 1 0 0 1
netname=vout
}
N 53500 43100 53500 42700 4
T 52500 43500 9 10 1 0 0 0 1
Нагрузка
C 42900 44800 1 0 0 vcc-1.sym
{
T 42900 44800 5 10 0 1 0 0 1
netname=vcc
}
C 48500 44900 1 180 0 resistor-2.sym
{
T 48100 44550 5 10 0 0 180 0 1
device=RESISTOR
T 47900 45300 5 10 1 1 0 0 1
refdes=R1
T 48200 45200 5 10 1 1 180 0 1
value=4.7k
}
C 49600 43000 1 90 0 resistor-2.sym
{
T 49250 43400 5 10 0 0 90 0 1
device=RESISTOR
T 50000 43700 5 10 1 1 180 0 1
refdes=R3
T 49700 43300 5 10 1 1 0 0 1
value=1.8k
}
C 49800 45500 1 0 0 resistor-2.sym
{
T 50200 45850 5 10 0 0 0 0 1
device=RESISTOR
T 50400 46200 5 10 1 1 180 0 1
refdes=R4
T 50100 45800 5 10 1 1 0 0 1
value=4.7k
}
C 48900 44300 1 0 0 npn-3.sym
{
T 49800 44800 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 49800 45000 5 10 1 1 0 0 1
refdes=T1
T 49800 44700 5 10 1 1 0 0 1
value=KT315B
}
C 49400 42400 1 0 0 gnd-1.sym
{
T 49400 42400 5 10 0 0 0 0 1
netname=0
}
C 51900 48700 1 270 0 resistor-2.sym
{
T 52250 48300 5 10 0 0 270 0 1
device=RESISTOR
T 52200 48400 5 10 1 1 0 0 1
refdes=R7
T 52500 48300 5 10 1 1 180 0 1
value=750
}
C 52900 48000 1 180 1 pnp-3.sym
{
T 53800 47500 5 10 0 0 180 6 1
device=PNP_TRANSISTOR
T 53900 47700 5 10 1 1 180 6 1
refdes=T3
T 53900 47300 5 10 1 1 0 0 1
value=KT361B
}
C 51800 49300 1 0 0 vcc-1.sym
{
T 51800 49300 5 10 0 1 0 0 1
netname=vcc
}
N 47600 44800 45100 44800 4
{
T 45700 44900 5 10 1 1 0 0 1
netname=vin
}
N 45100 44800 45100 44400 4
N 48500 44800 48900 44800 4
{
T 48600 44900 5 10 1 1 0 0 1
netname=vb1
}
N 49500 44300 49500 43900 4
N 49500 43000 49500 42700 4
N 52000 45100 52000 44100 4
N 52000 44100 49500 44100 4
{
T 49800 44200 5 10 1 1 0 0 1
netname=ve
}
N 49500 46300 49500 45300 4
{
T 49100 45600 5 10 1 1 0 0 1
netname=vc1
}
N 49800 45600 49500 45600 4
N 50700 45600 51400 45600 4
{
T 51100 45700 5 10 1 1 0 0 1
netname=vb2
}
N 52000 46100 52000 46300 4
{
T 52100 46100 5 10 1 1 0 0 1
netname=vc2
}
N 52000 47200 52000 47800 4
N 49500 49000 53500 49000 4
N 49500 49000 49500 47200 4
N 52000 49300 52000 49000 4
N 52000 47500 52900 47500 4
{
T 52400 47600 5 10 1 1 0 0 1
netname=vb3
}
N 53500 48000 53500 49000 4
N 52000 48700 52000 49000 4
C 50900 43900 1 270 0 resistor-2.sym
{
T 51250 43500 5 10 0 0 270 0 1
device=RESISTOR
T 51500 43700 5 10 1 1 180 0 1
refdes=R5
T 51200 43300 5 10 1 1 0 0 1
value=10k
}
C 50900 42400 1 0 0 gnd-1.sym
{
T 50900 42400 5 10 0 0 0 0 1
netname=0
}
N 51000 42700 51000 43000 4
N 51000 43900 51000 45600 4
C 43000 45800 1 0 0 spice-model-1.sym
{
T 43100 46500 5 10 0 1 0 0 1
device=model
T 43100 46400 5 10 1 1 0 0 1
refdes=A4
T 44200 46100 5 10 1 1 0 0 1
model-name=KT361B
T 43400 45900 5 10 1 1 0 0 1
file=../models/KT361B.mod
}
C 51900 47200 1 270 0 resistor-2.sym
{
T 52250 46800 5 10 0 0 270 0 1
device=RESISTOR
T 52200 46800 5 10 1 1 0 0 1
refdes=R6
T 52400 46700 5 10 1 1 180 0 1
value=2k
}