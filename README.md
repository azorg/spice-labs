# Лабораторный практикум по SPICE моделированию аналоговых электронных устройств
SPICE = Simulation Program with Integrated Circuit Emphasis
(программа моделирования с ориентацией на интегральные схемы)

## Каталог "lab-0"
Лабораторная работа №0.
Изучение простейших схем включения биполярного транзистора по схеме с общим
эмиттером (ОЭ) в качестве усилителя переменного тока.

## Каталог "lab-1"
Лабораторная работа №1.
Усилитель переменного тока на 2-х биполярных транзисторах с непосредственными
связями по схеме ОЭ и ОК с обратной отрицательной связью по постоянному
и переменному току.

## Каталог "lab-2"
Лабораторная работа №2.
Симметричный мультивибратор с нагрузкой на светодиоды.

## Каталог "lab-3"
Лабораторная работа №3.
Измерение входных и выходных вольт-амперных характеристик (ВАХ)
SPICE модели биполярного транзистора.
Анализ зависимости тока коллектора от тока базы.

## Каталог "lab-4"
Лабораторная работа №4.
Исследование работы триггера Шмидта.

## Каталог "lab-5"
Лабораторная работа №5.
Исследование работы двухполупериодного двуполярного выпрямителя напряжения.

## Каталог "lab-6"
Лабораторная работа №6.
Исследование компенсационного стабилизатора напряжения.

## Каталог "lab-7"
Лабораторная работа №7.
Исследование пассивного LC фильтра.

## Каталог "lab-8"
Лабораторная работа №8.
Исследование работы одновибратора на 2-х биполярных транзисторах.

## Каталог "lab-9"
Лабораторная работа №9.
Исследование работы Т-триггера с емкостной памятью.

## Каталог "lab-10"
Лабораторная работа №10.
Изучение работы LC автогенератора Колпитца ("емкостная трехточка").

## Каталог "lab-11"
Лабораторная работа №11.
Изучение работы простейшего несимметричного мультивибратора.

## Каталог "models"
Файлы SPICE моделей.

## Каталог "doc"
Различная документация по ngspice, gnucap, geda и т.п..

## Каталог "sandbox"
Простые схемы для проверки SPICE моделей транзисторов и диодов.
Это т.н. "песочница", "лягушатник" или "черновик" для простейших схем.

### Полезные ссылки:
NGSPICE online: http://www.ngspice.com/

Домашняя страница NGSPICE: http://ngspice.sourceforge.net/

Домашняя страница (WiKi) gnucap: http://www.gnucap.org/

Домашняя страница проекта gEDA: http://www.geda-project.org/

Русская версия Wiki проекта gEDA: http://wiki.geda-project.org/start_ru

Использование gschem и ngspice:
http://wiki.geda-project.org/geda:ngspice_and_gschem.ru 

Схемотехническое моделирование с помощью gEDA и SPICE:
http://wiki.geda-project.org/geda:csygas.ru

FAQ по SPICE моделированию в gEDA:
http://wiki.geda-project.org/geda:faq-simulation.ru

gEDA для MS-Windows:
http://bibo.iqo.uni-hannover.de/dokuwiki/doku.php?id=english:geda_for_ms-windows

"Моделирование принципиальных цифро-аналоговых схем в САПР Ngspice"
Н.Н. Войт (УЛЬЯНОВСКИЙ ГОСУДАРСТВЕННЫЙ ТЕХНИЧЕСКИЙ УНИВЕРСИТЕТ):
http://venec.ulstu.ru/lib/disk/2013/Voit2.pdf

Текстовый редактор (среда разработки) Geany
(хорошая альтернатива Notepad в среде Windows)
http://geany.org/
http://download.geany.org/

### Памятка для пользователей ОС Windows

Настоящий лабораторный практикум разработан и отработан в среде ОС Linux.
Использовался популярный дистрибутив Debian 8.

С запуском `gschem` из состава gEDA в ОС Windows могут быть проблемы,
т.к. данное программное обеспечение предназначено в первую очередь
для Linux, но для выполнения лабораторных работ это не обязательно.

Изменение файлов схем (*.ckt или *.cir) возможно с помощью текстового редактора,
а для симуляции схем достаточно иметь программу `ngspice`.

Сборки `ngspice` для Windows свободно доступны (ng-spice-network).
Программа `ngspice` под ОС семейства Windows распространяется в форме ZIP архива.
Пользователь должен распаковать данный архив в любой удобное для него место.
Для простоты можно распаковать архив в корень системного диска (обычно диск C:),
например в каталог C:\ngspice.

Для запуска `ngspice` из командной строки windows нужно или указывать полный путь
к программе, или добавить каталог, в котором содержится файл ngspice.exe, в переменную
окружения PATH (обычно через точку с запятой) через стандартное меню
(Мой компьютер -> Свойства -> Переменные среды и т.п.).

Для запуска `ngspice` нужно запустить оболочку `cmd` (Пуск -> Выполнить -> cmd).
В командной строке нужно указать полный путь до ngspice.exe,
а через пробел полный путь до SPICE файла схемы (*.cir или *.ckt).

Альтернативным способом может быть запуск `ngspice` и загрузка файла схемы
с помощью команды `source`, после которой нужно указать полный путь к файлу.
В оболочке `ngspice` так же доступна команда cd (Change Directory), с помощью
которой можно изменить рабочий каталог и при использовании команды `source`
указать относительный путь (в простейшем случае имя файла в текущем каталоге).

Для всех текстовых файлов (это файлы README.md, *.cir, *.ckt и *.net
файлы описания схем) использовалась кодировка UTF-8 и принятый в UNIX
способ обозначения конца строки одним символом перевода строки '\n'
без дополнительного символа перевода каретки '\r'.
Стандартный текстовый редактор `notepad` в среде Windows может не
корректно отображать данные файлы (вместо русских символов будут "закорючки"
и весь текст будет в одну строчку).
Простейшим решением проблемы может быть установка альтернативного текстового
редактора, который справляется с задачей автоматического определения
кодировки и символов конца строк. При отработке практикума под Windows
был испытан редактор Geany (см. http://geany.org), который является
свободным программным продуктом и может быть свободно скачен в Интернет.
Для открытия файлов в Geany используйте контекстное меню обозревателя
файлов (по правой кнопки мыши) "Open with Geany".

