#!/bin/sh

# номер лабораторной работы
i=$(basename `pwd` | sed 's/lab-//')

# расширение SPICE модели
#ext="cir"
ext="net"

# пакетный режим
gnucap -b "lab-${i}.${ext}"

