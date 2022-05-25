
# Time series - ggplot2 e lubridate --------------------------------------------------------------------------------------------------------
# Autoria do script ------------------------------------------------------------------------------------------------------------------------
# Data: 23/05/22 ---------------------------------------------------------------------------------------------------------------------------

# Conceito ---------------------------------------------------------------------------------------------------------------------------------

### Time series estuda a evolução de uma ou mais variáveis ao longo do tempo.
### Existe um foco sobre o tidyverse: o pacote lubridate é o melhor para lidar
### com o formato de datas, e o ggplot2 faz o gráfico de forma eficiente. O
### pacote dygraphs é também considerado para produzir incríveis gráficos
### interativos. 

# Formato de datas -------------------------------------------------------------------------------------------------------------------------

### Para construie séries temporais, é necessário que a variável tempo esteja
### em formato de data. O primeiro passo de suas análises é checar se o R ler
### corretamente o formato de data da sua variável. Isso é possível usando a
### função str().

### Caso não esteja em formato de data, o lubridate pode corrigir esse problema
### facilmente. Esse pacote oferece várias funções com os nomes compostos pelas 
### letras: year (y), month (m) and day (d).

library(lubridate)

time <- c("2019-04-17", "2019-03-21") # Isso é um character
ymd(time) # Isso é formato de data

