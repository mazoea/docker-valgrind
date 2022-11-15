git push origin :v1.2
git tag -d v1.2
git tag v1.2
git push origin master --tags 

IF "%1"=="nopause" GOTO No1
    pause
:No1 