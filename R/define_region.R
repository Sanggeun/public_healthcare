library(devtools)
library(tidyverse)
install_github("Sanggeun/g.function.bsg")
library(g.function.bsg)
library(readxl)

a <- read_excel("./data/공공보건의료 협력체계 구축사업 관련 통계자료(2002).xlsx", 
           sheet = "Sheet1")

area = list(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17)


k = NULL
for(i in 1:NROW(a[,1])) {
  j = a[,1][i,][[1]]
  k = c(k, j)
}
  
k

k.list = as.list(k)
names(k.list) = k

k.list$서울서북 = a[1, 2:7] 
k.list$서울동북 = a[2, 2:9]
k.list$서울서남 = a[3, 2:6]
k.list$서울동남 = a[4, 2:7]
k.list$부산서부 = a[5, 2:5]
k.list$부산중부 = a[6, 2:9]
k.list$부산동부 = a[7, 2:5]
k.list$대구동북 = a[8, 2:5]
k.list$대구서남 = a[9, 2:5]
k.list$인천서북 = a[10, 2:3]
k.list$인천동북 = a[11, 2:3]
k.list$인천중부 = a[12, 2:5]
k.list$인천남부 = a[13, 2:3]
k.list$광주광서 = a[14, 2:3]
k.list$광주동남 = a[15, 2:4]
k.list$대전서부 = a[16, 2:3]
k.list$대전동부 = a[17, 2:4]
k.list$울산서남 = a[18, 2:3]
k.list$울산동북 = a[19, 2:4]
k.list$세종 = a[20, 2]
k.list$수원시 = a[21, 2:4]
k.list$성남시 = a[22, 2:5]
k.list$의정부시 = a[23, 2:5]
k.list$안양시 = a[24, 2:5]
k.list$부천시 = a[25, 2:3]
k.list$평택시 = a[26, 2:3]
k.list$안산시 = a[27, 2:3]
k.list$고양시 = a[28, 2:3]
k.list$남양주시 = a[29, 2:5]
k.list$파주시 = as_tibble("파주시")
k.list$이천시 = a[31, 2:3]
k.list$포천시 = a[32, 2]
k.list$춘천시 = a[33, 2:6]
k.list$원주시 = a[34, 2:3]
k.list$영월군 = a[35, 2:4]
k.list$강릉시 = a[36, 2]
k.list$동해시 = a[37, 2:4]
k.list$속초시 = a[38, 2:5]
k.list$청주시 = a[39, 2:7]
k.list$충주시 = a[40, 2:4]
k.list$제천시 = a[41, 2:3]
k.list$천안시 = a[42, 2:3]
k.list$공주시 = a[43, 2:3]
k.list$서산시 = a[44, 2:4]
k.list$논산시 = a[45, 2:5]
k.list$홍성군 = a[46, 2:5]
k.list$전주시 = a[47, 2:6]
k.list$군산시 = a[48, 2]
k.list$익산시 = a[49, 2]
k.list$정읍시 = a[50, 2:4]
k.list$남원시 = a[51, 2:5]
k.list$목포시 = a[52, 2:7]
k.list$여수시 = a[53, 2]
k.list$순천시 = a[54, 2:6]
k.list$나주시 = a[55, 2:4]
k.list$해남군 = a[56, 2:5]
k.list$영광군 = a[57, 2:4]
k.list$포항시 = a[58, 2:5]
k.list$경주시 = a[59, 2:5]
k.list$안동시 = a[60, 2:5]
k.list$구미시 = a[61, 2:7]
k.list$영주시 = a[62, 2:4]
k.list$상주시 = a[63, 2:3]
k.list$창원시 = a[64, 2:5]
k.list$진주시 = a[65, 2:6]
k.list$통영시 = a[66, 2:4]
k.list$김해시 = a[67, 2:4]
k.list$거창군 = a[68, 2:4]
k.list$제주시 = a[69, 2]
k.list$서귀포시 = a[70, 2]

area_catchment = list(seoul = k.list[1:4],
     busan = k.list[5:7], 
     daegu = k.list[8:9],
     incheon = k.list[10:13],
     kwangju = k.list[14:15],
     daejeon = k.list[16:17],
     ulsan = k.list[18:19],
     sejong = k.list[20],
     kyungki = k.list[21:32],
     kangwon = k.list[33:38],
     chungbuk = k.list[39:41],
     chungnam = k.list[42:46],
     jeonbuk = k.list[47:51],
     jeonnam = k.list[52:57],
     kyungbuk = k.list[58:63],
     kyungnam = k.list[64:68],
     jeju = k.list[69:70])

area_catchment

saveRDS(area_catchment, "./data/area_catchment.RDS")

