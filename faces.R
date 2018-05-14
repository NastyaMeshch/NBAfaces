library(aplpack) #For the faces
library(xtable) #For fancy latex-table
bos <- read.csv("/Users/EmilsHem/Documents/KSport/cavsatbos13may.txt", header =TRUE,stringsAsFactors = FALSE)

cavs_start <- bos[1:5,]
bos_start <- bos[6:10,]

#Subseting some variables from the plot since they don't make the faces funny enough.
faces(cavs_start[,-c(1,2,5,8,11:13)], labels =  cavs_start[,1])
faces(bos_start[,-c(1,2,5,8,11:13)], labels =  bos_start[,1])

#Save the meta data generated from the graph
graph_meta <-faces(bos_start[,-c(1,2,5,8,11:13)], labels =  bos_start[,1])

#Latex table
xtable(graph_meta$info)
