# Лабораторная работа №6
Исследование компенсационного стабилизатора напряжения.

## Описание файлов

* "lab-6.sch" - схема устройства, созданная с помощью `gschem`

* "lab-6.ckt" - созданная автоматически с помощью программы `gnetlist`
SPICE описание схемы устройства

* "lab-6.png" - экспортированная из `gschem` схема устройства

* "simulation.cmd" - SPICE команды для симуляции работы схемы

Примечание:
В gEDA былы найдена досадная ошибка.
При создании net-листа для SPICE (файла "lab-6.ckt")
указывается неверная полярность включения светодиода.
Чтобы обойти эту проблему светодиод VD1 включен неверно!
Будте внимательны, возможно в вашей версии gEDA этой ошибки нет.

## Порядок работы с моделью

Запуск симулятора ngspice:

> ngspice lab-6.ckt

### Проверка работы схемы по постоянному току

> -> op

Напряжение на входе, выходе, на делителе, на светодиоде, на R1:

> -> print vin vout vd vop, ve

Рабочие точки транзисторов:

> -> show qvt1

> -> show qvt2

> -> show qvt3

> -> show qvt4

Рабочая точка светодиода - стабистора:

> -> show dvd1

### Симуляция переходного процесса

> -> run

или (с установкой времени и шага моделирования)

> -> tran 1us 30ms

Эпюры напряжений на входе/выходе:

> -> plot vin vout

Зависимость выходного напряжения от входного
(по крутизне наклона определяется коэффициент стабилизации):

> -> plot vout vs vin

### Задания для самостоятельной работы

* измерьте коэффициент стабилизации схемы как dUвх/dUвых

* оцените выходное сопротивление стабилизатора сравнив напряжение
холостого хода (без нагрузки RL) и под нагрузкой RL=5
(что определяет ток нагрузки 5В/5Ом=1А).

* оцените уровень пульсаций на выходе стабилизатора

* попробуйте ответить о функции R3, что будет если его исключить из
реальной схемы?

* все результаты измерений, полученные эпюры и вывод программы ngspice
перенесите в отчет, сформулируйте свои выводы по работе схемы


