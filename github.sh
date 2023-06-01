#!/bin/sh

#Altere as variáveis abaixo de acordo com a sua necessidade
#na variável repositório, prefira a url do repositório baseada em https para nao termos que configurar SSH
export name='Leandro Silva'
export email="leandroedaniela2019@gmail.com"
export repositorio="https://github.com/SLeandr0/pw2_etapa2_b-1";

#Daqui pra baixo mexa somente se for realmente necessário ou se souber o que está fazendo :P

export branch_name="aula-$(date -I)"

#add linux, mac and windows folders to gitignore
echo "" >> .gitignore
echo "#ignoring windows, mac and linux folders" >> .gitignore
echo "windows" >> .gitignore
echo "macos" >> .gitignore
echo "linux" >> .gitignore

rm -Rf .git

git init
git remote add origin $repositorio
git checkout -b $branch_name

git config --global user.name $name
git config --global user.email $email

git add .gitignore
git commit -m "added ignored files" .gitignore

git add .

git commit -am "Conector ORM com Sequelize Aula: $(date)"

git push origin $branch_name