#!/bin/sh

# номер лабораторной работы
i=$(basename `pwd` | sed 's/lab-//')

INP="lab-${i}.sch"
OUT="lab-${i}.net"

BACKEND="spice-sdb"
#BACKEND="spice" # bad idea

# ключ `sort_mode` нужен для правильной работы gnucap
gnetlist -g "$BACKEND" -O sort_mode -o "$OUT" "$INP"

