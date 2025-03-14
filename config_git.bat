@echo off

git init

:: Inicializa o repositório git, se não for um repositório
git rev-parse --is-inside-work-tree >nul 2>&1
if errorlevel 1 (
    echo Não é um repositório Git. Inicializando o repositório...
    git init
)

:: Configurações globais do Git
git config --global user.name "leandro-etec-2025"
git config --global user.email "https://github.com/leandro-etec-2025/testeremoto.git"

:: Adiciona o repositório remoto (só executa se já não estiver adicionado)
git remote get-url origin >nul 2>&1
if errorlevel 1 (
    git remote add origin "https://github.com/mobile-2025/AulasJava.git"
)

git checkout -b main

git pull origin main 

:: Exibe mensagem de sucesso
echo Configurações do Git foram aplicadas com sucesso!
pause