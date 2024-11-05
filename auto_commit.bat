@echo off

REM 작업 스케줄러에 AutoGitCommit 작업 추가 (매일 오전 10시 실행)
REM schtasks /create /tn "AutoGitCommit" /tr "C:\경로\auto_commit.bat" /sc daily /st 10:00 - 선택 사항

REM git 명령어 실행
cd "로컬_저장소_경로"
git add .
git commit -m "auto commit"
git push origin main
