#Conversor MultiConverterFileSacer

#Funções para o Histórico do Conversor
backups_historico="HIST_Backups" 
historico="historico.txt"
nome_backups=$(date +%b%d_%H-%M-%S)_HIST

#Formatação da data para o ficheiro Histórico
DiaSemana=$(date +%A)
DiaAno=$(date +%F)
HorasDia=$(date +%T)



#Funções para Converter Unidades de Comprimento

    ## Função para converter metros para quilómetros
    metros_quilometros() {
        local metros="$1"
        local quilometros=$(echo "scale=2; $metros / 1000" | bc)
        echo "Resultado da Conversão: $metros m é igual a $quilometros Km."
        echo "$DiaSemana, $DiaAno, $HorasDia - $metros m é igual a $quilometros Km." >> $historico
        echo
    }

    ## Função para converter quilómetros para metros
    quilometros_metros() {  
        local quilometros="$1"
        local metros=$(echo "scale=2; $quilometros * 1000" | bc)
        echo "Resultado da Conversão: $quilometros km é igual a $metros m."
        echo "$DiaSemana, $DiaAno, $HorasDia - $quilometros km é igual a $metros m." >> $historico
        echo
    }

    ## Função para converter metros para centímetros
    metros_centimetros() {  
        local metros="$1"
        local centimetros=$(echo "scale=2; $metros * 100" | bc)
        echo "Resultado da Conversão: $metros m é igual a $centimetros cm."
        echo "$DiaSemana, $DiaAno, $HorasDia - $metros m é igual a $centimetros cm." >> $historico
        echo
    }  

    ## Função para converter centímetros para metros
    centimetros_metros() {  
        local centimetros="$1"
        local metros=$(echo "scale=2; $centimetros / 100" | bc)
        echo "Resultado da Conversão: $centimetros cm é igual a $metros m."
        echo "$DiaSemana, $DiaAno, $HorasDia - $centimetros cm é igual a $metros m." >> $historico
        echo
    }   

    ## Função para converter quilómetros para centímetros
    quilometros_centimetros() {  
        local quilometros="$1"
        local centimetros=$(echo "scale=2; $quilometros * 100000" | bc)
        echo "Resultado da Conversão: $quilometros Km é igual a $centimetros cm."
        echo "$DiaSemana, $DiaAno, $HorasDia - $quilometros Km é igual a $centimetros cm.">> $historico
        echo
    }   

    ## Função para converter centímetros para quilómetros
    centimetros_quilometros() {  
        local centimetros="$1"
        local quilometros=$(echo "scale=2; $centimetros / 100000" | bc)
        echo "Resultado da Conversão: $centimetros cm é igual a $quilometros Km."
        echo "$DiaSemana, $DiaAno, $HorasDia - $centimetros cm é igual a $quilometros Km.">> $historico
        echo
    }   


#Funções para Converter Unidades de Byte

    ## Função para converter bytes para kilobytes
    bytes_kilobytes() {
        local bytes="$1"
        local kilobytes=$(echo "scale=2; $bytes / 1024" | bc)
        echo "Resultado da Conversão: $bytes B é igual a $kilobytes KB."
        echo "$DiaSemana, $DiaAno, $HorasDia - $bytes B é igual a $kilobytes KB." >> $historico
        echo
    }

    ## Função para converter bytes para megabytes
    bytes_megabytes() {
        local bytes="$1"
        local megabytes=$(echo "scale=2; $bytes / (1024 * 1024)" | bc)
        echo "Resultado da Conversão: $bytes B é igual a $megabytes MB."
        echo "$DiaSemana, $DiaAno, $HorasDia - $bytes B é igual a $megabytes MB." >> $historico
        echo
    }

    ## Função para converter bytes para gigabytes
    bytes_gigabytes() {
        local bytes="$1"
        local gigabytes=$(echo "scale=2; $bytes / (1024 * 1024 * 1024)" | bc)
        echo "Resultado da Conversão: $bytes B é igual a $gigabytes GB."
        echo "$DiaSemana, $DiaAno, $HorasDia - $bytes B é igual a $gigabytes GB." >> $historico
        echo
    }

    ## Função para converter bytes para terabytes
    bytes_terabytes() {
        local bytes="$1"
        local terabytes=$(echo "scale=2; $bytes / (1024 * 1024 * 1024 * 1024)" | bc)
        echo "Resultado da Conversão: $bytes B é igual a $terabytes TB."
        echo "$DiaSemana, $DiaAno, $HorasDia - $bytes B é igual a $terabytes TB." >> $historico
        echo
    }
    
    ## Função para converter megabytes para bytes
    megabytes_bytes() {
        local megabytes="$1"
        local bytes=$(echo "scale=2; $megabytes * (1024 * 1024)" | bc)
        echo "Resultado da Conversão: $megabytes MB é igual a $bytes B."
        echo "$DiaSemana, $DiaAno, $HorasDia - $megabytes MB é igual a $bytes B." >> $historico
        echo
    }

    ## Função para converter gigabytes para megabytes
    gigabytes_megabytes() {
        local gigabytes="$1"
        local megabytes=$(echo "scale=2; $gigabytes * 1024" | bc)
        echo "Resultado da Conversão: $gigabytes GB é igual a $megabytes MB."
        echo "$DiaSemana, $DiaAno, $HorasDia - $gigabytes GB é igual a $megabytes MB." >> $historico
        echo
    }


#Funções para Converter Unidades de Tempo

    ## Função para converter horas para minutos
    horas_minutos() {
        local horas="$1"
        local minutos=$(echo "scale=2; $horas * 60" | bc)
        echo "Resultado da Conversão: $horas h é igual a $minutos min."
        echo "$DiaSemana, $DiaAno, $HorasDia - $horas h é igual a $minutos min." >> $historico
        echo
    }

    ## Função para converter horas para segundos
    horas_segundos() {
        local horas="$1"
        local segundos=$(echo "scale=2; $horas * 3600" | bc)
        echo "Resultado da Conversão: $horas h é igual a $segundos s."
        echo "$DiaSemana, $DiaAno, $HorasDia - $horas h é igual a $segundos s." >> $historico
        echo
    }

    ## Função para converter minutos para horas
    minutos_horas() {
        local minutos="$1"
        local horas=$(echo "scale=2; $minutos / 60" | bc)
        echo "Resultado da Conversão: $minutos min é igual a $horas h."
        echo "$DiaSemana, $DiaAno, $HorasDia - $minutos min é igual a $horas h." >> $historico
        echo
    }

    ## Função para converter minutos para segundos
    minutos_segundos() {
        local minutos="$1"
        local segundos=$(echo "scale=2; $minutos * 60" | bc)
        echo "Resultado da Conversão: $minutos min é igual a $segundos s."
        echo "$DiaSemana, $DiaAno, $HorasDia - $minutos min é igual a $segundos s." >> $historico
        echo
    }

    ## Função para converter segundos para minutos
    segundos_minutos() {
        local segundos="$1"
        local minutos=$(echo "scale=2; $segundos / 60" | bc)
        echo "Resultado da Conversão: $segundos s é igual a $minutos min."
        echo "$DiaSemana, $DiaAno, $HorasDia - $segundos s é igual a $minutos min." >> $historico
        echo
    }  


#Funções para Converter Moedas

    ## Função para converter euros para reais
    euros_reais(){
        local euros="$1"
        local reais=$(echo "scale=3; $euros * 5.35" | bc)
        echo "Resultado da Conversão: $euros € é igual a $reais R$."
        echo "$DiaSemana, $DiaAno, $HorasDia - $euros € é igual a $reais R$." >> $historico
        echo
    }

    ## Função para converter euros para dólares
    euros_dolares(){
        local euros="$1"
        local dolares=$(echo "scale=3; $euros * 1.078" | bc)
        echo "Resultado da Conversão: $euros € é igual a $dolares $."
        echo "$DiaSemana, $DiaAno, $HorasDia - $euros € é igual a $dolares $." >> $historico
        echo
    }   

    ## Função para converter euros para ienes
    euros_ienes(){
        local euros="$1"
        local ienes=$(echo "scale=3; $euros * 157.26" | bc)
        echo "Resultado da Conversão: $euros € é igual a $ienes ¥."
        echo "$DiaSemana, $DiaAno, $HorasDia - $euros € é igual a $ienes ¥." >> $historico
        echo
    }   

    ## Função para converter reais para euros
    reais_euros(){
        local reais="$1"
        local euros=$(echo "scale=3; $reais / 5.35" | bc)
        echo "Resultado da Conversão: $reais R$ é igual a $euros €."
        echo "$DiaSemana, $DiaAno, $HorasDia - $reais R$ é igual a $euros €." >> $historico
        echo
    }  
    
    ## Função para converter reais para dólares
    reais_dolares(){
        local reais="$1"
        local dolares=$(echo "scale=3; $reais / 4.97" | bc)
        echo "Resultado da Conversão: $reais R$ é igual a $dolares $."
        echo "$DiaSemana, $DiaAno, $HorasDia - $reais R$ é igual a $dolares $." >> $historico
        echo
    }  

    ## Função para converter reais para ienes
    reais_ienes(){
        local reais="$1"
        local ienes=$(echo "scale=3; $reais / 0.034" | bc)
        echo "Resultado da Conversão: $reais R$ é igual a $ienes ¥."
        echo "$DiaSemana, $DiaAno, $HorasDia - $reais R$ é igual a $ienes ¥." >> $historico
        echo
    }  

    ## Função para converter dólares para euros
    dolares_euros(){
        local dolares="$1"
        local euros=$(echo "scale=3; $dolares / 1.078" | bc)
        echo "Resultado da Conversão: $dolares $ é igual a $euros €."
        echo "$DiaSemana, $DiaAno, $HorasDia - $dolares $ é igual a $euros €." >> $historico
        echo
    } 
    
    ## Função para converter dólares para reais
    dolares_reais(){
        local dolares="$1"
        local reais=$(echo "scale=3; $dolares * 4.97" | bc)
        echo "Resultado da Conversão: $dolares $ é igual a $reais R$."
        echo "$DiaSemana, $DiaAno, $HorasDia - $dolares $ é igual a $reais R$." >> $historico
        echo
    }

    ## Função para converter dólares para ienes
    dolares_ienes(){
        local dolares="$1"
        local ienes=$(echo "scale=3; $dolares * 145.80" | bc)
        echo "Resultado da Conversão: $dolares $ é igual a $ienes ¥."
        echo "$DiaSemana, $DiaAno, $HorasDia - $dolares $ é igual a $ienes ¥." >> $historico
        echo
    }

    ## Função para converter ienes para euros
    ienes_euros(){
        local ienes="$1"
        local euros=$(echo "scale=3; $ienes / 157.26" | bc)
        echo "Resultado da Conversão: $ienes ¥ é igual a $euros €."
        echo "$DiaSemana, $DiaAno, $HorasDia - $ienes ¥ é igual a $euros €." >> $historico
        echo
    }

    ## Função para converter ienes para dólares
    ienes_dolares(){
        local ienes="$1"
        local dolares=$(echo "scale=3; $ienes / 145.80" | bc)
        echo "Resultado da Conversão: $ienes ¥ é igual a $dolares $."
        echo "$DiaSemana, $DiaAno, $HorasDia - $ienes ¥ é igual a $dolares $." >> $historico
        echo
    }

    ## Função para converter ienes para reais
    ienes_reais(){
        local ienes="$1"
        local reais=$(echo "scale=3; $ienes * 0.034" | bc)
        echo "Resultado da Conversão: $ienes ¥ é igual a $reais R$."
        echo "$DiaSemana, $DiaAno, $HorasDia - $ienes ¥ é igual a $reais R$." >> $historico
        echo
    }


# Script Principal
echo "
          @%%%%%%%%%%%%%%%%%%%%%%%%%%%%%@
          %%@                         @%%
          %%                           %%
          %% %%%%%%%%%%%%%%%%%%%%%%%%% %%
          %% %%      BEM-VINDO      %% %%
          %% %%         AO          %% %%
          %% %%    MultiConverter   %% %% 
          %% %%%%%%%%%%%%%%%%%%%%%%%%% %%
          %%                           %%
          %%                           %%
          %%  %%%%%%% %%%%%%% %%%%%%%  %%
          %%  %%   %% %%   %% %%   %%  %%
          %%  %%%%%%% %%%%%%% %%%%%%%  %%
          %%   %%%%@   %%%%%   %%%%%   %%
          %%   %%%%%   %%%%%   %%%%%   %%
          %%  %%@ @%% %%@ @%% %%@ @%%  %%
          %%  %%@ @%% %%@ @%% %%   %%  %%
          %%  @%%%%%% @%%%%%@ %%   %%  %%
          %%    @@@     @@@   %%   %%  %%
          %%  %%%%%%% %%%%%%% %%   %%  %%
          %%  %%   %% %%   %% %%   %%  %%
          %%  %%%%%%% %%%%%%% %%%%%%%  %%
          %%                           %%
          %%@                         @%%
          @%%%%%%%%%%%%%%%%%%%%%%%%%%%%%@ "

while true; do
    echo
    echo "**** MultiConverterFileSaver ****"
    echo "1. Conversor de unidades de Comprimento (Centrímetro/Metros/Quilômetros)"
    echo "2. Conversor de unidades de Byte (B/KB/MB/GB/TB)"
    echo "3. Conversor de unidades de Tempo (Segundos/Minutos/Horas)"
    echo "4. Conversor de Moedas (Euro/Dólar/Real/Ienes)"
    echo "5. Ver o histórico do MultiConverter"
    echo "6. Sair do Conversor (Exit)"
    echo
    read -p "Escolha uma opção (1-6): " conversion_type

    case $conversion_type in
        1) while true; do
            echo 
            echo "**** Conversor Unidades Comprimento ****"
            echo "1. Metros para Quilómetros" 
            echo "2. Quilómetros para Metros" 
            echo "3. Metros para Centímetros" 
            echo "4. Centímetros para Metros" 
            echo "5. Quilómetros para Centímetros" 
            echo "6. Centrímetros para Quilómetros" 
            echo "7. Voltar ao Menu Principal"
            echo "8. Sair do Conversor (Exit)"
            echo
            read -p "Escolha uma opção (1-8): " option   

            case $option in
                1)  
                    echo
                    echo "#### A CONVERTER ####"
                    echo
                    read -p "Coloca um tamanho em Metros: " distance
                    result=$(metros_quilometros "$distance")
                    echo "$result"
                    echo
                    echo "#### CONVERSÃO REALIZADA ####"
                    echo
                    ;;
                2)  
                    echo
                    echo "#### A CONVERTER ####"
                    echo
                    read -p "Coloca um tamanho em Quilómetros: " distance
                    result=$(quilometros_metros "$distance")
                    echo "$result"
                    echo
                    echo "#### CONVERSÃO REALIZADA ####"
                    echo
                    ;;
                3)  
                    echo
                    echo "#### A CONVERTER ####"
                    echo
                    read -p "Coloca um tamanho em Metros: " distance
                    result=$(metros_centimetros "$distance")
                    echo "$result"
                    echo
                    echo "#### CONVERSÃO REALIZADA ####"
                    echo
                    ;;
                4)  
                    echo
                    echo "#### A CONVERTER ####"
                    echo
                    read -p "Coloca um tamanho em Centímetros: " distance
                    result=$(centimetros_metros "$distance")
                    echo "$result"
                    echo
                    echo "#### CONVERSÃO REALIZADA ####"
                    echo
                    ;;
                5)  
                    echo
                    echo "#### A CONVERTER ####"
                    echo
                    read -p "Coloca um tamanho em Quilómetros: " distance
                    result=$(quilometros_centimetros "$distance")
                    echo "$result"
                    echo
                    echo "#### CONVERSÃO REALIZADA ####"
                    echo
                    ;;
                6)  
                    echo
                    echo "#### A CONVERTER ####"
                    echo
                    read -p "Coloca um tamanho em Centímetros: " distance
                    result=$(centimetros_quilometros "$distance")
                    echo "$result"
                    echo
                    echo "#### CONVERSÃO REALIZADA ####"
                    echo
                    ;;
                7)  
                    break
                    ;;
                8)  
                    echo
                    echo "#### A sair do MultiConverter ####" 
                    exit 0
                    ;;
                *)
                    echo
                    echo "#### Opção Inválida. Por Favor escolha entre 1 a 8 ####"
                    echo
                    ;;
            esac
        done
        ;; 

        2) while true; do
            echo
            echo "**** Conversor Unidades Byte ****"
            echo "1. Bytes para Kilobytes"
            echo "2. Bytes para Megabytes"
            echo "3. Bytes para Gigabytes"
            echo "4. Bytes para Terabytes"
            echo "5. Megabytes para Bytes"
            echo "6. Gigabytes para Megabytes"
            echo "7. Voltar ao Menu Principal"
            echo "8. Sair do Conversor (Exit)"
            echo 
            read -p "Escolha uma opção (1-8): " option

            case $option in
                1)  
                    echo
                    echo "#### A CONVERTER ####"
                    echo
                    read -p "Coloca um tamanho em bytes: " size
                    result=$(bytes_kilobytes "$size")
                    echo "$result"
                    echo
                    echo "#### CONVERSÃO REALIZADA ####"
                    echo
                    ;;
                2)  
                    echo
                    echo "#### A CONVERTER ####"
                    echo
                    read -p "Coloca um tamanho em bytes: " size
                    result=$(bytes_megabytes "$size")
                    echo "$result"
                    echo
                    echo "#### CONVERSÃO REALIZADA ####"
                    echo
                    ;;
                3)  
                    echo
                    echo "#### A CONVERTER ####"
                    echo
                    read -p "Coloca um tamanho em bytes:" size
                    result=$(bytes_gigabytes "$size")
                    echo "$result"
                    echo
                    echo "#### CONVERSÃO REALIZADA ####"
                    echo
                    ;;
                4)  
                    echo
                    echo "#### A CONVERTER ####"
                    echo
                    read -p "Coloca um tamanho em bytes: " size
                    result=$(bytes_terabytes "$size")
                    echo "$result"
                    echo
                    echo "#### CONVERSÃO REALIZADA ####"
                    echo
                    ;;
                5)  
                    echo
                    echo "#### A CONVERTER ####"
                    echo
                    read -p "Coloca um tamanho em megabytes: " size
                    result=$(megabytes_bytes "$size")
                    echo "$result"
                    echo
                    echo "#### CONVERSÃO REALIZADA ####"
                    echo
                    ;;
                6)  
                    echo
                    echo "#### A CONVERTER ####"
                    echo
                    read -p "Coloca um tamanho em gigabytes: " size
                    result=$(gigabytes_megabytes "$size")
                    echo "$result"
                    echo
                    echo "#### CONVERSÃO REALIZADA ####"
                    echo
                    ;;
                7) 
                    break 
                    ;;
                8)  
                    echo
                    echo "#### A sair do MultiConverter ####" 
                    exit 0
                    ;;
                *)  
                    echo
                    echo "#### Opção Inválida. Por Favor escolha entre 1 a 8 ####"
                    echo
                    ;;
            esac
        done
        ;;

        3) while true; do
            echo
            echo "**** Conversor Unidades Tempo ****"
            echo "1. Horas para Minutos"
            echo "2. Horas para Segundos"
            echo "3. Minutos para Horas"
            echo "4. Minutos para Segundos"
            echo "5. Segundos para Minutos"
            echo "6. Voltar ao Menu Principal"
            echo "7. Sair do Conversor (Exit)"
            echo 
            read -p "Escolha uma opção (1-7): " option

            case $option in
                1)
                    echo
                    echo "#### A CONVERTER ####"
                    echo
                    read -p "Coloca um tempo em horas: " time
                    result=$(horas_minutos "$time")
                    echo "$result"
                    echo
                    echo "#### CONVERSÃO REALIZADA ####"
                    echo
                    ;;
                2)
                    echo
                    echo "#### A CONVERTER ####"
                    echo
                    read -p "Coloca um tempo em horas: " time
                    result=$(horas_segundos "$time")
                    echo "$result"
                    echo
                    echo "#### CONVERSÃO REALIZADA ####"
                    echo
                    ;;
                3)
                    echo
                    echo "#### A CONVERTER ####"
                    echo
                    read -p "Coloca um tempo em minutos: " time
                    result=$(minutos_horas "$time")
                    echo "$result"
                    echo
                    echo "#### CONVERSÃO REALIZADA ####"
                    echo
                    ;;
                4)
                    echo
                    echo "#### A CONVERTER ####"
                    echo
                    read -p "Coloca um tempo em minutos: " time
                    result=$(minutos_segundos "$time")
                    echo "$result"
                    echo
                    echo "#### CONVERSÃO REALIZADA ####"
                    echo
                    ;;
                5)
                    echo
                    echo "#### A CONVERTER ####"
                    echo
                    read -p "Coloca um tempo em segundos: " time
                    result=$(segundos_minutos "$time")
                    echo "$result"
                    echo
                    echo "#### CONVERSÃO REALIZADA ####"
                    echo
                    ;;
                6) 
                    break 
                    ;;
                7)  
                    echo
                    echo "#### A sair do MultiConverter ####" 
                    exit 0
                    ;;  
                *)
                    echo
                    echo "#### Opção Inválida. Por Favor escolha entre 1 a 7 ####"
                    echo
                    ;;
            esac
        done
        ;;

        4) while true; do 
            echo
            echo "**** Conversor de Moedas ****"
            echo "1. Euros para Reais" 
            echo "2. Euros para Dólares" 
            echo "3. Euros para Ienes" 
            echo "4. Reais para Euros" 
            echo "5. Reais para Dólares" 
            echo "6. Reais para Ienes"
            echo "7. Dólares para Euros"
            echo "8. Dólares para Reais"
            echo "9. Dólares para Ienes"
            echo "10. Ienes para Euros"
            echo "11. Ienes para Dólares"
            echo "12. Ienes para Reais" 
            echo "13. Voltar ao Menu Principal"
            echo "14. Sair do Conversor (Exit)"
            echo
            read -p "Escolha uma opção (1-14): " option

            case $option in
                1)
                    echo
                    echo "#### A CONVERTER ####"
                    echo
                    read -p "Coloca um valor em euros: " value 
                    result=$(euros_reais "$value")
                    echo "$result"
                    echo   
                    echo "#### CONVERSÃO REALIZADA ####"
                    echo 
                    ;;
                2)
                    echo
                    echo "#### A CONVERTER ####"
                    echo
                    read -p "Coloca um valor em euros: " value 
                    result=$(euros_dolares "$value")
                    echo "$result"
                    echo  
                    echo "#### CONVERSÃO REALIZADA ####"
                    echo   
                    ;;
                3)
                    echo
                    echo "#### A CONVERTER ####"
                    echo
                    read -p "Coloca um valor em euros: " value 
                    result=$(euros_ienes "$value")
                    echo "$result"
                    echo 
                    echo "#### CONVERSÃO REALIZADA ####"
                    echo   
                    ;;
                4)
                    echo
                    echo "#### A CONVERTER ####"
                    echo
                    read -p "Coloca um valor em reais: " value 
                    result=$(reais_euros "$value")
                    echo "$result"
                    echo  
                    echo "#### CONVERSÃO REALIZADA ####"
                    echo    
                    ;;
                5)
                    echo
                    echo "#### A CONVERTER ####"
                    echo
                    read -p "Coloca um valor em reais: " value 
                    result=$(reais_dolares "$value")
                    echo "$result"
                    echo   
                    echo "#### CONVERSÃO REALIZADA ####"
                    echo 
                    ;;
                6)
                    echo
                    echo "#### A CONVERTER ####"
                    echo
                    read -p "Coloca um valor em reais: " value 
                    result=$(reais_ienes "$value")
                    echo "$result"
                    echo 
                    echo "#### CONVERSÃO REALIZADA ####"
                    echo    
                    ;;
                7)
                    echo
                    echo "#### A CONVERTER ####"
                    echo
                    read -p "Coloca um valor em dólares: " value 
                    result=$(dolares_euros "$value")
                    echo "$result"
                    echo 
                    echo "#### CONVERSÃO REALIZADA ####"
                    echo    
                    ;;
                8)
                    echo
                    echo "#### A CONVERTER ####"
                    echo
                    read -p "Coloca um valor em dólares: " value 
                    result=$(dolares_reais "$value")
                    echo "$result"
                    echo
                    echo "#### CONVERSÃO REALIZADA ####"
                    echo     
                    ;;
                9)
                    echo
                    echo "#### A CONVERTER ####"
                    echo
                    read -p "Coloca um valor em dólares: " value 
                    result=$(dolares_ienes "$value")
                    echo "$result"
                    echo 
                    echo "#### CONVERSÃO REALIZADA ####"
                    echo      
                    ;;
                10)
                    echo
                    echo "#### A CONVERTER ####"
                    echo
                    read -p "Coloca um valor em ienes: " value 
                    result=$(ienes_euros "$value")
                    echo "$result"
                    echo  
                    echo "#### CONVERSÃO REALIZADA ####"
                    echo    
                    ;;
                11)
                    echo
                    echo "#### A CONVERTER ####"
                    echo
                    read -p "Coloca um valor em ienes: " value 
                    result=$(ienes_dolares "$value")
                    echo "$result"
                    echo   
                    echo "#### CONVERSÃO REALIZADA ####"
                    echo   
                    ;;
                12)
                    echo
                    echo "#### A CONVERTER ####"
                    echo
                    read -p "Coloca um valor em ienes: " value 
                    result=$(ienes_reais "$value")
                    echo "$result"
                    echo  
                    echo "#### CONVERSÃO REALIZADA ####"
                    echo   
                    ;;
                13) 
                    break 
                    ;;
                14)  
                    echo
                    echo "#### A sair do MultiConverter ####" 
                    exit 0
                    ;;  
                *)
                    echo
                    echo "#### Opção Inválida. Por Favor escolha entre 1 a 14 ####"
                    echo
                    ;;
            esac
        done
        ;;
        
        5) while true; do 
            echo
            echo "**** Histórico MultiConverter ****"
            echo "1. Ver o histórico"
            echo "2. Limpar todo o histórico"
            echo "3. Voltar ao Menu Principal"
            echo "4. Sair do Conversor (Exit)"
            echo 
            read -p "Escolha uma opção (1-4): " option

            case $option in
                1)  
                    echo
                    echo "#### Estamos a ver o Histórico ####"
                    cat historico.txt
                    echo
                    ;;
                2)  
                    echo
                    echo "#### Estamos a fazer um backup do histórico e posteriormente a limpá-lo ####"
                    echo
                    # Verificar se o diretório de backups histórico não existe
                        if [ ! -d "$backups_historico" ]; then
                    # Se não existir, cria o diretório
                            mkdir -p "$backups_historico"
                            echo "O diretório \"$backups_historico\" foi criado com sucesso."
                        fi
                    # Se já exitir, copia o ficheiro histórico para o diretório de backups
                            cp historico.txt "$backups_historico/$nome_backups"
                            echo "O ficheiro historico.txt foi copiado com sucesso." 
                    echo
                    echo "#### Operações realizadas com sucesso ####"
                    # Posteriormente vai limpar todo o histórico
                            rm historico.txt
                            echo "" > historico.txt
                    echo
                    ;;        
                3) 
                    break 
                    ;;
                4)  
                    echo
                    echo "#### A sair do MultiConverter ####" 
                    exit 0
                    ;; 
                *)
                    echo
                    echo "#### Opção Inválida. Por Favor escolha entre 1 a 4 ####"
                    echo
                    ;;
            esac
        done
        ;;

        6)
            echo
            echo "#### A sair do MultiConverter ####" 
            exit 0 
            ;;

        *)
            echo
            echo "#### Opção Inválida. Por Favor escolha entre 1 a 6 ####"
            echo
            ;;    
    esac
done 