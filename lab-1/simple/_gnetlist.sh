#!/bin/sh

INP="lab-1-simple.sch"
OUT="lab-1-simple.net"

BACKEND="spice-sdb"
#BACKEND="spice" # bad idea

# ключ `sort_mode` нужен для правильной работы gnucap
gnetlist -g "$BACKEND" -O sort_mode -o "$OUT" "$INP"

