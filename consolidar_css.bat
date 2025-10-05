@echo off
chcp 65001 > nul
:: Diretórios
set "SOURCE_DIR=D:\treinamento-brigada-incendio\Contact – FireZon_files"
set "TARGET_DIR=D:\treinamento-brigada-incendio\home\assets\css"
set "TARGET_FILE=%TARGET_DIR%\main.css"

echo.
echo Iniciando a consolidação de CSS para %TARGET_FILE%...
echo.

:: 1. Cria o diretório de destino se ele não existir
if not exist "%TARGET_DIR%" mkdir "%TARGET_DIR%"
echo Diretório de destino verificado/criado.

:: 2. Limpa o arquivo de destino (para garantir que a concatenação comece limpa)
if exist "%TARGET_FILE%" del "%TARGET_FILE%"
echo Arquivo de destino limpo.

:: 3. CONSOLIDAÇÃO EM ORDEM ESPECÍFICA (CRÍTICO PARA CASCATA)

echo /* === 01. SR7/SLIDER REVOLUTION CSS === */ >> "%TARGET_FILE%"
type "%SOURCE_DIR%\sr7.css" >> "%TARGET_FILE%"
echo. >> "%TARGET_FILE%"

echo /* === 02. FRONTEND/THEME CUSTOM CSS === */ >> "%TARGET_FILE%"
type "%SOURCE_DIR%\frontend.css" >> "%TARGET_FILE%"
echo. >> "%TARGET_FILE%"
type "%SOURCE_DIR%\font-icon.css" >> "%TARGET_FILE%"
echo. >> "%TARGET_FILE%"
type "%SOURCE_DIR%\style.css" >> "%TARGET_FILE%"
echo. >> "%TARGET_FILE%"
type "%SOURCE_DIR%\text-editor.css" >> "%TARGET_FILE%"
echo. >> "%TARGET_FILE%"

echo /* === 03. THEWEBS CORE FRAMEWORK CSS === */ >> "%TARGET_FILE%"
type "%SOURCE_DIR%\global.min.css" >> "%TARGET_FILE%"
echo. >> "%TARGET_FILE%"
type "%SOURCE_DIR%\header.min.css" >> "%TARGET_FILE%"
echo. >> "%TARGET_FILE%"
type "%SOURCE_DIR%\content.min.css" >> "%TARGET_FILE%"
echo. >> "%TARGET_FILE%"
type "%SOURCE_DIR%\footer.min.css" >> "%TARGET_FILE%"
echo. >> "%TARGET_FILE%"
type "%SOURCE_DIR%\style(1).css" >> "%TARGET_FILE%"
echo. >> "%TARGET_FILE%"
type "%SOURCE_DIR%\codecreator.css" >> "%TARGET_FILE%"
echo. >> "%TARGET_FILE%"

echo /* === 04. ELEMENTOR BASE WIDGETS CSS === */ >> "%TARGET_FILE%"
type "%SOURCE_DIR%\custom-frontend.min.css" >> "%TARGET_FILE%"
echo. >> "%TARGET_FILE%"
type "%SOURCE_DIR%\post-12.css" >> "%TARGET_FILE%"
echo. >> "%TARGET_FILE%"
type "%SOURCE_DIR%\widget-heading.min.css" >> "%TARGET_FILE%"
echo. >> "%TARGET_FILE%"
type "%SOURCE_DIR%\e-animation-float.min.css" >> "%TARGET_FILE%"
echo. >> "%TARGET_FILE%"
type "%SOURCE_DIR%\custom-widget-icon-box.min.css" >> "%TARGET_FILE%"
echo. >> "%TARGET_FILE%"
type "%SOURCE_DIR%\widget-social-icons.min.css" >> "%TARGET_FILE%"
echo. >> "%TARGET_FILE%"
type "%SOURCE_DIR%\custom-apple-webkit.min.css" >> "%TARGET_FILE%"
echo. >> "%TARGET_FILE%"
type "%SOURCE_DIR%\widget-google_maps.min.css" >> "%TARGET_FILE%"
echo. >> "%TARGET_FILE%"
type "%SOURCE_DIR%\post-20.css" >> "%TARGET_FILE%"
echo. >> "%TARGET_FILE%"

echo /* === 05. METFORM FORM SPECIFIC CSS === */ >> "%TARGET_FILE%"
type "%SOURCE_DIR%\metform-ui.css" >> "%TARGET_FILE%"
echo. >> "%TARGET_FILE%"
type "%SOURCE_DIR%\style(2).css" >> "%TARGET_FILE%"
echo. >> "%TARGET_FILE%"
type "%SOURCE_DIR%\post-304.css" >> "%TARGET_FILE%"
echo. >> "%TARGET_FILE%"

echo /* === 06. ELEMENTOR LOCAL FONTS CSS === */ >> "%TARGET_FILE%"
type "%SOURCE_DIR%\roboto.css" >> "%TARGET_FILE%"
echo. >> "%TARGET_FILE%"
type "%SOURCE_DIR%\robotoslab.css" >> "%TARGET_FILE%"
echo. >> "%TARGET_FILE%"
type "%SOURCE_DIR%\opensans.css" >> "%TARGET_FILE%"
echo. >> "%TARGET_FILE%"

echo.
echo Consolidação de CSS concluída com sucesso!
echo O arquivo main.css foi criado em %TARGET_FILE%
pause