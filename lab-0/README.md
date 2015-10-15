# Лабораторная работа №0
Изучение простейших схем включения биполярного транзистора по схеме с общим
эмиттером (ОЭ) в качестве усилителя переменного тока.

## Описание файлов

* "lab-0.cir" - SPICE описание схемы, создан в текстовом редакторе

* "lab-0.sch" - схема устройства, созданная с помощью `gschem`

* "lab-0.net" - созданная автоматически с помощью программы `gnetlist`
SPICE описание схемы устройства

* "lab-0.png" - экспортированная из `gschem` схема устройства

* "simulation.cmd" - SPICE команды для симуляции работы схемы
(включаются из "lab-0.sch" и "lab-0.net" соответственно)

## Порядок работы с моделью
Для симуляции схемы может использоваться "lab-1.cir" или "lab-1.net" файл.
Первый файл создан с помощью текстового редактора и содержит фиктивные
источники нулевого напряжения, позволяющие анализировать токи в схеме.
Второй файл создан с помощью gschem + gnetlist автоматически и для
изящности принципиальной схемы фиктивных источников нулевого напряжения
не содержит.

Запуск симулятора ngspice:

> ngspice lab-0.cir

или

> ngspice lab-0.net

Программа `ngspice` может быть получена по адресу:
http://ngspice.sourceforge.net/

Альтернативно может использоваться online SPICE симулятор
по адресу: http://ngspice.com Данный ресурс содержит ряд простых
и полезных примеров для ознакомления с возможностями схемотехнического
моделирования в NGSPICE. Для работы online симулятора необходимо включить
текст SPICE моделей выбранных биполярных транзисторов непосредственно в
текстовое описание схемы (директива .include недопустима).

Для использования online симулатора нужно вставить содержимое файла
"lab-0.cir" в оно ввода "to netlist" и отредактировать
В окно ввода "Plots:" ввести необходимые для построения идентификаторы
узлов напряжения (например: "v(vsin) v(vout1) v(vout2)").

### Установка температуры

Установка нормальной температуры 25 градусов по Цельсию:

> -> options TEMP=25

### Проверка работы транзисторов по постоянному току

> -> op

Контроль напряжений:

> -> display
> -> print vb1 vb2 vc1 vc2

Контроль токов (только для "lab-0.cir"):

> -> print i(vb1) i(vc1) i(ve1)
> -> print i(vb2) i(vc2) i(ve2)

Контроль рабочей точки транзисторов (в т.ч. начальных токов):

> -> show qvt1
> -> show qvt2

### Симуляция переходного процесса

> -> run

или (с установкой времени и шага моделирования)

> -> tran 1u 10m

Анализ только переменных напряжений (без постоянной составляющей):

> -> plot v(vsin) v(vout1) v(vout2)

или

> -> plot tran.v(vsin) tran.v(vout1) tran.v(vout2)

Анализ напряжений на базах и коллекторах транзисторов во временной области:

> -> plot v(vb1) v(vb2) v(vc1) v(vc2)

### Снятие АЧХ/ФЧХ

> -> ac oct 3000 1Hz 100MegHz
> -> plot db(ac.v(vout1)/1m) db(ac.v(vout2)/1m)
> -> plot ph(ac.v(vout1))*360/(2*pi) ph(ac.v(vout2))*360/(2*pi)

### Задания для самостоятельной работы

* проверьте смещение рабочих точек VT1 и VT2 при изменении температуры 
от минус 60 до плюс 90 градусов Цельсия

* Какая схема задания начального смещения более температурно стабильна?

* подберите уровень входного сигнала VSIN при котором начинают проявляются
видимые в TRAN режиме искажения синусоидального сигнала на выходе

* что нужно изменить в схемах и как изменить рабочую точку транзисторов,
чтобы каскады усиливали без искажений сигналы с большей амплитудой?

* Попробуйте экспериментально увеличить динамический диапазон усилительных
каскадов по напряжению в два раза путем изменения номиналов сопротивлений.

* Какая по вашему схема начального смещения обеспечивает большую
линейность усилительного каскада при прочих равных условиях?

* по эпюре АЧХ сделайте выводы по полосе пропускания усилителей с допустимым
снижения коэффициента передачи до 3 дБ

* как изменяется полоса пропускания усилителей при изменении RB1 и RB2
с 1 кОм до 50 Ом?

* как изменится коэффициент усиления по напряжению усилителей при уменьшении
сопротивления нагрузки RL1 и RL2 с 1 кОм до 50 Ом?

