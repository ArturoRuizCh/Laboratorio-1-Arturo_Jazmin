###############################################################################
############Función para leer los 12 archivos##################################
funcion_pesos <- function(i){
  
  i <- 1
  f <- paste("~/Trading/lab1/IYW_holdings_",i,".csv", sep="")
  datos_iak <- read.delim2(f)
  
  primero <- which(x = datos_iak[,1] == "Ticker")
  ultimo <- length(datos_iak[,1])
  
  tk <- datos_iak[(primero+1):ultimo,1]
  pesos <- datos_iak[(primero+1):ultimo,4]
  pesos1 <- as.numeric(pesos)
  fecha <- datos_iak[2,2]
  precios <- datos_iak[(primero+1):ultimo,5]
  precios1 <- as.numeric(precios)
  
  resultado <- data.frame(tk,pesos1,precios1) 
  
  return(resultado)
  
}
base_datos <- list()

for (i in 1:12){
  base_datos[[i]] <- funcion_pesos(i)
  
}