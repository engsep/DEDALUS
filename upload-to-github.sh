#!/bin/bash

echo -e "\033[0;36m🟦 CREATE ACCESS TOKEN \033[0m"
echo To create a new access token, go to: https://github.com/settings/tokens/new && echo ""

echo -e "\033[0;36m🟦 CLONE REPO AND CONFIG USER \033[0m"
echo git clone https://github.com/engsep/dedalus-ontology
echo git config [--global] user.email smartenergyprojects.eng@gmail.com
echo git config [--global] user.name engsep && echo ""
git config user.email smartenergyprojects.eng@gmail.com
git config user.name engsep

echo -e "\033[0;36m🟦 LOG STATUS AND COMMIT HISTORY \033[0m"
echo git log --graph --pretty=format:'"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset"'
echo git status && echo ""
git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset"
git status

echo -e "\033[0;36m🟦 COMMIT ALL CHANGES IN FOLDER \033[0m"
echo git add .
echo git commit
git add .
echo -e "\033[0;32mPress Enter to set commit title (CTRL+S+X to terminate)...\033[0m" && read key
git commit && echo ""

echo -e "\033[0;33m🟨 GIT CREDENTIALS \033[0m"
echo Username: engsep
echo Password: $(cat .token) && echo ""

echo -e "\033[0;36m🟦 PUSH TO MAIN BRANCH \033[0m"
echo git push [origin]
git push # origin
