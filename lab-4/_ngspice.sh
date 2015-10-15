#!/bin/sh

# номер лабораторной работы
i=$(basename `pwd` | sed 's/lab-//')

# расширение SPICE модели
ext="ckt"

ngspice "lab-${i}.${ext}"

