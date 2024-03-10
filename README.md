# batch_descompactador
---
<img src="/imagens/batch.png"> 

# Arquivo batch para execução no Windows contendo script para descompactação de arquivos ZIP ou RAR na pasta desejada , utilizando o Winrar, e em seguida exclui os arquivos compactados mantendo somente os descompactados.

| _**Para que o script funcione é necessário ter o Winrar instalado no computador.**_ 

# Para utilização do script siga os passos abaixo:
---

1) Copie o conteúdo do arquivo _descompaq.bat_ localizado na pasta _main_ neste respositório;
2) Abra o Notepad ou outro editor de texto e cole o conteúdo do script nele;
3) Ajuste as linhas onde constam os caminhos de "pasta_origem" e "pasta_destino" informando o caminho da pasta onde estarão os arquivos a serem descompactados e onde os mesmos serão descompcatados;
4) Ajuste também a linha onde é feita a chamada do executável Winrar.exe informando o local onde se encontra o programa
5) Após as edições necessárias salve o arquivo na pasta que desejar e o nomeie por exemplo como "compaq.bat". </br>
6) Para executar o arquivo basta clicar duas vezes sobre o mesmo, caso vá o executar em ambiente grafico do Windows (forma recomendada).

# A seguir está a descrição das linhas de comando contidas no script e o que fazem:
---

_@echo off_: Este comando desativa a exibição dos comandos no prompt de comando, fazendo com que apenas os resultados das operações sejam exibidos.

_set "pasta_origem=C:\Users\andre\Documents\zipados"_: Este comando atribui o caminho da pasta de origem dos arquivos compactados à variável _pasta_origem._

_set "pasta_destino=C:\Users\andre\Documents\zipados"_: Este comando atribui o caminho da pasta de destino, onde os arquivos compactados serão descompactados, à variável pasta_destino.

_rem Descompactar arquivos ZIP_: Este é um comentário que indica a próxima seção do script, que é responsável por descompactar arquivos **ZIP**.

_for %%f in ("%pasta_origem%\*.zip") do (...)_: Este é um loop for que itera sobre todos os arquivos com a extensão **.zip** na pasta de origem. Para cada arquivo **.zip** encontrado, o código entre _do_ e _(_ é executado.

_"...WinRAR.exe" x "%%f" "%pasta_destino%"_: Este comando chama o **WinRAR** para descompactar o arquivo **ZIP** atual _(%%f)_ para a pasta de destino especificada _(%pasta_destino%)_.

_if exist "%%f" del "%%f"_: Este comando verifica se o arquivo **ZIP** ainda existe após a descompactação. Se o arquivo existir, ele será excluído usando o comando _del_.

_rem Descompactar arquivos RAR_: Este é um comentário que indica a próxima seção do script, que é responsável por descompactar arquivos **RAR**.

_for %%f in ("%pasta_origem%\*.rar") do (...)_: Este é outro loop for que itera sobre todos os arquivos com a extensão **.rar** na pasta de origem. Para cada arquivo **.rar** encontrado, o código entre _do_ e _(_ é executado.

_"...WinRAR.exe" x "%%f" "%pasta_destino%"_: Este comando chama o **WinRAR** para descompactar o arquivo **RAR** atual _(%%f)_ para a pasta de destino especificada _(%pasta_destino%)_.

_if exist "%%f" del "%%f"_: Este comando verifica se o arquivo **RAR** ainda existe após a descompactação. Se o arquivo existir, ele será excluído usando o comando _del_. </br>

**Essas são as principais operações realizadas em cada linha do script. Basicamente, o script procura por arquivos ZIP e RAR na pasta de origem, os descompacta usando o WinRAR e, em seguida, exclui os arquivos compactados após a descompactação.**





