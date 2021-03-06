# Лабораторная работа №8
Исследование работы одновибратора на 2-х биполярных транзисторах.

## Описание файлов

* "lab-8.sch" - схема устройства, созданная с помощью `gschem`

* "lab-8.ckt" - созданная автоматически с помощью программы `gnetlist`
SPICE описание схемы устройства

* "lab-8.png" - экспортированная из `gschem` схема устройства

## Описание схемы
Входные импульсы длительностью ~0.3 мс c периодом следования 10 мс
поступают на дифференцирующую цепь из конденсатора C1 и резистора R1.
Для восстановления постоянной составляющей и для ограничения отрицательных
импульсов установлен диод VD1. В точке Vd можно наблюдать короткие
импульсы положительной полярности длительностью ~ 1 мкс. Длительность
данных импульсов определяется постоянной времени R1 C1 и крутизной фронтов
входного сигнала.

На транзисторе VT1 и VT2 собран простейший одновибратор.
Одно из состояний одновибратора устойчивое (Vout=0), второе (Vout=5В) -
неустойчивое, время нахождения в котором определяется постоянной
времени C2 R4.
Резистов R6 обеспечивает глубокую положительную обратную связь и
приводит к лавинообразному переключению одновибратора из одного состояния
в другое.

## Порядок работы с моделью

Запуск симулятора ngspice:

> ngspice lab-8.ckt

### Проверка исходного состояния

> -> op

Котроль напряжений на транзисторах:

> -> print vb1 vc1 vb2 vout

### Симуляция переходного процесса

> -> run

Эпюры входного сигнала и входного сигнала после дифференцирующей цепи R1 C1.

> -> plot vin vd

Эпюры входного и выходного сигнала:

> -> plot vout vin

Напряжение на конденсаторе С2 и на выходе устройства:

> -> plot vc1 - vb2  vout

### Задания для самостоятельной работы

* определите постоянную времени одновибратора

* постройте эпюры напряжений на электродах транзисторов,
в т.ч. разности потенциалов коллектор-эмиттер, база-эмиттер

* попробуйте изменить номинальные значения сопротивлений на схеме,
приводящие к изменению работы схемы

* проверьте работу схемы с другим напряжением питания (3...10в)

* проверьте работу схемы при различных температурах
(от -20 до +50 град.Ц.)

* исключите из схемы R6, как изменится работа схемы?

* все результаты измерений, полученные эпюры и вывод программы ngspice
перенесите в отчет, сформулируйте свои выводы по каждому из проведенных
экспериментов

