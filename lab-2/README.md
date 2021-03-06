# Лабораторная работа №2
Изучение работы симметричного мультивибратора.

## Описание файлов

* "lab-2.cir" - SPICE описание схемы, cоздан в текстовом редакторе

* "lab-2.sch" - схема устройства, созданная с помощью `gschem`

* "lab-2.net" - созданная автоматически с помощью программы `gnetlist`
SPICE описание схемы устройства

* "lab-2.png" - экспортированная из `gschem` схема устройства

* "simulation.cmd" - SPICE команды для симуляции работы схемы

## Порядок работы с моделью
Для симуляции схемы может использоваться "lab-2.cir" или "lab-2.net" файл
(по вкусу).

Запуск симулятора ngspice:

> ngspice lab-2.cir

или

> ngspice lab-2.net

### Симуляция переходного процесса

> -> run

или (с установкой времени и шага моделирования)

> -> tran 30u 3

Напряжения на светодиодах:

> -> plot (vcc-vled1) (vcc-vled2)

Напряжние на C1:

> -> plot vc1 - vb2

Ток через светодиод LED1:

> -> plot (vled1 - vc3)/57

### Задания для самостоятельной работы

* Проведите моделирование переходных процессов
при различных шагах моделирования (от 10 мкс до 1 мс)

Как качественно изменяются результаты (например напряжение в точке vc3)?

* измените емкость конденсаторов C1 и C2

Как изменяется частота и скважность?
Выясните максимальную устойчивую частоту работы схемы путем
изменения номиналов конденсаторов.

* измените номинал сопротивлений R2 и R3

Как изменяется частота и скважность?
Добейтесь минимальной частоты автоколебаний при условии устойчивой работы.

Как частота колебаний связанна с постоянной времени R2 C1 + R3 C2?

* проверьте работу схемы при повышенной/пониженной температуре

Как изменяется часта автоколебаний от температуры?

* попробуйте что-нибудь улучшить в схеме путем изменения номиналов элементов
и добавления в схему новых элементов

Зафиксируйте ваши достижения и попытайтесь их объяснить.

* попробуйте исключить из схемы светодиод LED2 и транзистор VT4 при
сохранении работоспособности схемы (устойчивом "мигании" LED1)

* все результаты измерений, полученные эпюры и вывод программы ngspice
перенесите в отчет

* сформулируйте свои выводы по каждому из проведенных экспериментов

