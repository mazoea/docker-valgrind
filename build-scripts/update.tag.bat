git push origin :v3.2
git tag -d v3.2
git tag v3.2
git push origin master --tags 

IF "%1"=="nopause" GOTO No1
    pause
:No1 