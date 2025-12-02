#!/bin/bashba

echo "===== Linux Assistant Toolkit+ ====="
echo "1) System Dashboard"
echo "2) Error Inspector"
echo "3) Smart Organizer"
echo "4) Commit Wizard"
echo "------------------------"

read -p "번호 선택: " num

case $num in
  1) bash dashboard.sh ;;
  2) bash error_inspector.sh ;;
  3) bash smart_organizer.sh ;;
  4) bash commit_wizard.sh ;;
  *) echo "잘못된 입력입니다" ;;
esac