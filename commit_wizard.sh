#!/bin/bash

echo "=== Commit Wizard Enhanced ==="

echo "Select Commit Type:"
echo "1) feat"
echo "2) fix"
echo "3) docs"
echo "4) refactor"
echo "5) test"
echo "6) style"

read -p "번호 선택: " num

case $num in
  1) type="feat" ;;
  2) type="fix" ;;
  3) type="docs" ;;
  4) type="refactor" ;;
  5) type="test" ;;
  6) type="style" ;;
  *) echo "잘못된 입력입니다"; exit 1 ;;
esac

read -p "요약 입력: " summary
read -p "상세 입력: " detail

echo "$type: $summary

상세내용:
- $detail
" > commit_template.txt

echo "템플릿 생성 완료 → commit_template.txt"
