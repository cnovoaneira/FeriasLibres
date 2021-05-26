#PROYECTO MERCADO ILICITO EN FERIAS LIBRES REGION METROPOLITANA
#CLAUDIA NOVOA
#git remote add origin https://github.com/cnovoaneira/FeriasLibres.git
#git push -u origin main
#rm(list = ls())
#Del Sistema de Consulta ESstadístico Territorial, Canal de comercialización ferias libres, se descargan los documentos
#"Ferias libres Región Metropolitana 31-01-2011
#La información fue recopilada mediante un Estudio encargado por Odepa. La empresa ejecutora del estudio en la región 
#fue la Universidad de Santiago de Chile (Usach), Facultad Tecnológica, Departamento de Gestión Agraria.
#https://icet.odepa.gob.cl/exp/exp_modulo180.php
#Mapa interactivo 
setwd("./ferias_libres_regi_n_metropolitana")
#install.packages("rgdal")
library(rgdal)
map<- readOGR(dsn= ".", layer="ferias_libres_regi_n_metropolitana")

#install.packages("sf")
library(sf)
shape<-read_sf(dsn = ".", layer = "ferias_libres_regi_n_metropolitana")
#install.packages("leaflet")

library(leaflet)
leaflet(shape) %>%
 addProviderTiles("CartoDB.Positron") %>%
 addPolygons(color = ~pal(shape$CODCOM),
 stroke = FALSE, fillOpacity = 0.6)

head(shape)
plot(map)
