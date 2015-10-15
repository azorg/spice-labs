#!/bin/sh

for i in `seq 0 10`
do
  d="lab-${i}"
  test -d "${d}" || continue
  cd      "${d}"

  rm -f "lab-${i}.net"
  rm -f "lab-${i}.raw"
  rm -f "lab-${i}.log"
  rm -f "lab-${i}.sch~"
  rm -f "result.dat"
  rm -f "result.txt"
  cd ..
done

