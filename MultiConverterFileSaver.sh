#Conversor MultiConverterFileSacer
historico="historico.txt"

#Formatação da data para o ficheiro Histórico
DiaSemana=$(date +%A)
DiaAno=$(date +%F)
HorasDia=$(date +%T)


#Funções para Converter Unidades de Comprimento

    ## Função para converter metros em quilómetros
metros_quilometros() {
    local metros="$1"
    local quilometros=$(echo "scale=2; $metros / 1000" | bc)
    echo "Resultado da Conversão: $metros m é igual a $quilometros Km."
    echo "$DiaSemana, $DiaAno, $HorasDia: $metros m é igual a $quilometros Km." >> $historico
}

    ## Função para converter quilómetros em metros
quilometros_metros() {  
    local quilometros="$1"
    local metros=$(echo "scale=2; $quiloemtros * 1000" | bc)
    echo "Resultado da Conversão: $quilometros km é igual a $metros m."
    echo "$DiaSemana, $DiaAno, $HorasDia: $quilometros km é igual a $metros m." >> $historico
}

    ## Função para converter metros em centímetros
metros_centimetros() {  
    local metros="$1"
    local centimetros=$(echo "scale=2; $metros * 100" | bc)
    echo "Resultado da Conversão: $metros m é igual a $centrimetros cm."
    echo "$DiaSemana, $DiaAno, $HorasDia: $metros m é igual a $centrimetros cm." >> $historico
}  

    ## Função para converter centímetros em metros
centimetros_metros() {  
    local centimetros="$1"
    local metros=$(echo "scale=2; $centimetros / 100" | bc)
    echo "Resultado da Conversão: $centimetros cm é igual a $metros m."
    echo "$DiaSemana, $DiaAno, $HorasDia: $centimetros cm é igual a $metros m." >> $historico
}   

    ## Função para converter quilómetros em centímetros
quilometros_centimetros() {  
    local quilometros="$1"
    local centimetros=$(echo "scale=2; $quilometros * 100000" | bc)
    echo "Resultado da Conversão: $quilometros Km é igual a $centimetros cm."
    echo "$DiaSemana, $DiaAno, $HorasDia: $quilometros Km é igual a $centimetros cm.">> $historico
}   

    ## Função para converter centímetros em quilómetros
centimetros_quilometros() {  
    local centimetros="$1"
    local quilometros=$(echo "scale=2; $centimetros / 100000" | bc)
    echo "Resultado da Conversão: $centimetros cm é igual a $quilometros Km."
    echo "$DiaSemana, $DiaAno, $HorasDia: $centimetros cm é igual a $quilometros Km.">> $historico
}   




#Função para Converter Unidades de Byte

#Função para Converter Unidades de Tempo

# Função para Converter Moedas


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
          @%%%%%%%%%%%%%%%%%%%%%%%%%%%%%@ 
          "


echo "MultiConverterFileSaver"
echo "1. Conversor de unidades de Comprimento (Centrímetro/Metros/Quilômetros)"
echo "2. Conversor de unidades de Byte (Bytes para KB/MB/GB/TB)"
echo "3. Conversor de unidades de Tempo (Segundos/Minutos/Horas)"
echo "4. Conversor de Moedas (Euro/Dólar/Real/Ienes)"
read -p "Choose a conversion type (1, 2, 3 or 4): " conversion_type

case $conversion_type in
    1)  echo 
        echo "Conversor Unidades Comprimento"
        echo "1. Metros para Quilómetros" 
        echo "2. Quilómetros para Metros" 
        echo "3. Metros para Centímetros" 
        echo "4. Centímetros para Metros" 
        echo "5. Quilómetros para Centímetros" 
        echo "6. Centrímetros para Quilómetros" 
        read -p "Choose an option (1, 2, 3, 4, 5, 6): " option
        case $option in
            1)  echo
                read -p "Coloque a distância em Metros: " distance
                result=$(metros_quilometros "$distance")
                echo "$result"
                ;;
            2)  echo
                read -p "Coloque a distância em Quilómetros: " distance
                result=$(quilometros_metros "$distance")
                echo "$result"
                ;;
            3)  echo
                read -p "Coloque a distância em Metros: " distance
                result=$(metros_centimetros "$distance")
                echo "$result"
                ;;
            4)  echo
                read -p "Coloque a distância em Centímetros : " distance
                result=$(centimetros_metros "$distance")
                echo "$result"
                ;;
            5)  echo
                read -p "Coloque a distância em Quilómetros: " distance
                result=$(quilometros_centimetros "$distance")
                echo "$result"
                ;;
            6)  echo
                read -p "Coloque a distância em Centímetros: " distance
                result=$(centimetros_quilometros "$distance")
                echo "$result"
                ;;
            *)
                echo "Conversão não suportada. Por Favor escolha entre 1 a 6."
                ;;
        esac
        ;;
     *)
          
esac
