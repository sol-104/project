#!/bin/bash

echo "=== Error Inspector Pro ==="

report="log_report_$(date +%Y-%m-%d_%H-%M).txt"

find /var/log -name "*.log" | while read file; do
  echo "Checking $file..." >> $report
  tail -n 50 "$file" | grep -Ei "error|warning" >> $report
done

echo "Report saved to: $report"
cat $report