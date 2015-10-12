# Лабораторная работа №2
Изучение работы симметричного мультивибратора.

## Описание файлов

* `lab-2.cir` - SPICE описание схемы. Создано в текстовом редакторе

* `lab-2.sch` - схема устройства, созданная с помощью `gschem`

* `lab-2.net` - созданная автоматически с помощью программы `gnetlist`
SPICE описание схемы устройства

* `lab-2.png` - экспортированная из `gschem` схема устройства

* `simulation.cmd` - SPICE команды для симуляции работы схемы

## Порядок работы
Для симуляции схемы может использоваться "lab-2.cir" или "lab-2.net" файл
(по вкусу).

Запуск симулятора ngspice:

> ngspice lab-2.cir

или

> ngspice lab-2.net

### Симуляция переходного процесса

> ngspice 2 -> run

или (с установкой времени и шага моделирования)

> ngspice 2 -> tran 1m 10

Напряжения на светодиодах:

> ngspice 2 -> plot (vcc-vled1) (vcc-vled2)

или

> ngspice 2 -> plot tran.v(vcc - vled1) tran.v(vcc - vled2)

Напряжние на C1:

> ngspice 2 -> plot vc1 - vb2

Ток через светодиод LED1:

> ngspice 2 -> plot (vled1 - vc3)/51

### Задания для самостоятельной работы

* измените емкость конденсаторов C1 и C2

Как изменяется частота и скважность?
Выясните максимальную устойчивую частоту работы схему путем
изменения номиналов конденсаторов.

* измените номинал сопротивлений R2 и R3.

Как изменяется частота и скважность?
Добейтесь минимальной частоты автоколебаний при условии устойчивой работы.

Как частота колебаний связанна с постоянной времени R2*C1 + R3*C2?

* проверьте работу схемы при повышенной/пониженной температуре

Как изменяется часта автоколебаний от температуры?

* попробуйте что-нибудь улучшить в схеме путем изменения номиналов элементов,
зафиксируйте ваше достижение и попытайтесь объясните достигнутое 

* попробуйте исключить из схемы светодиод LED2 и транзистор VT4 при
сохранении работоспособности схемы (устойчивом "мигании" LED1)

* все результаты измерений, полученные эпюры и вывод программы ngspice
перенесите в отчет, сформулируйте свои выводы по каждому из проведенных
экспериментов
