#!/bin/bash

mem_info=$(</proc/meminfo)
mem_info=$(echo $(echo $(mem_info=${mem_info// /}; echo ${mem_info//kB/})))
for m in $mem_info; do
  case ${m//:*} in
    "MemTotal") usedmem=$((usedmem+=${m//*:})); totalmem=${m//*:} ;;
    "ShMem") usedmem=$((usedmem+=${m//*:})) ;;
    "MemFree"|"Buffers"|"Cached"|"SReclaimable") usedmem=$((usedmem-=${m//*:})) ;;
  esac
done
usedmem=$((usedmem / 1024))

echo "  $usedmem MB"