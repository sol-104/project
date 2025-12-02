#!/bin/bash

echo "=== Smart Organizer ==="

target_dir=$(pwd)
report="organize_report_$(date +%Y-%m-%d).txt"

echo "정리 대상 폴더: $target_dir" > $report
echo "==============================" >> $report

# 분류할 확장자 그룹
declare -A groups=(
  ["Images"]="jpg jpeg png gif bmp"
  ["Docs"]="pdf txt doc docx xls xlsx ppt pptx"
  ["Code"]="sh py js java c cpp html css"
  ["Archives"]="zip rar tar gz 7z"
)

# 분류 실행
for category in "${!groups[@]}"; do
  mkdir -p "$category"
  for ext in ${groups[$category]}; do
    mv *.$ext "$category" 2>/dev/null && \
    echo "Moved *.$ext → $category/" >> $report
  done
done

echo "정리 완료!"
echo "보고서 저장됨: $report"
cat $report
