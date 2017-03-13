#!/bin/sh

# номер лабораторной работы
i=$(basename `pwd` | sed 's/lab-//')

# расширение SPICE модели
ext="cir"
#ext="net"

ngspice "lab-${i}.${ext}"
#ngspice "lab-${i}-alt.${ext}"

