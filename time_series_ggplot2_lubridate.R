
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

# Séries de tempo com ggplot2 --------------------------------------------------------------------------------------------------------------

### O ggplot2 oferece muitas funcionalidades para visualizar séries temporais. O
### formato de data será reconhecido automaticamente, resultando nos rótulos do
### eixo x. A função scale_x_data() torna fácil a customização desses rótulos.
### O pacote plotly pode tornar os gráficos interativos adicionando uma linha de 
### código a mais.

# Gráfico básico de linhas para visualizar séries temporais --------------------------------------------------------------------------------

library(ggplot2)
library(dplyr)

### Dados fictícios

data <- data.frame(
  day = as.Date("2017-06-14") - 0:364, 
  value = runif(365) + seq(-140, 224)^2 / 10000
)

### Gráfico básico

p <- ggplot(data, aes(x = day, y = value)) +
  geom_line() + 
  xlab("")
p

### Observação: o ggplot2 irá apenas produzir gráficos de séries temporais caso
### a variável tempo esteja em formato de data.

# Outros formatos de datas -----------------------------------------------------------------------------------------------------------------

### A partir que a variável é definida como data, você pode usar a função scale_x_data()
### do ggplot2 para modificar o formato da data.

p + scale_x_date(date_labels = "%b")
p + scale_x_date(date_labels = "%Y %b %d")
p + scale_x_date(date_labels = "%W")
p + scale_x_date(date_labels = "%m-%Y")
p + scale_x_date(date_labels = "%B")
p + scale_x_date(date_labels = "%y")
p + scale_x_date(date_labels = "%Y")
