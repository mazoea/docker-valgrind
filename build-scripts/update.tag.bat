git push origin :v4.0
git tag -d v4.0
git tag v4.0
git push origin master --tags 

IF "%1"=="nopause" GOTO No1
    pause
:No1 