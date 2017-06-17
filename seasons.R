#program to plot global temperature data
setwd("/Users/odadaj/Dropbox/R_Mlearning/Rstudy")
temp <- read.csv('seasons.csv', row.names = 1, header= TRUE)
DJF <- temp[["DJF"]]  # by column name
MAM <- temp[["MAM"]]
JJA <- temp[["JJA"]]
SON <- temp[["SON"]]
mwaka <- rownames(temp)

#Plot graph with months
plot(mwaka,DJF, xlab="Year", ylab="Deviation", type="l", main="Seasonal Temperature Deviation Relative to Years", col="Purple", lwd=2.5)
#lines(mwaka,DJF, col="Purple")
lines(mwaka,MAM, col="Blue", lwd=2.5)
lines(mwaka,JJA, col="red", lwd=2.5)
lines(mwaka,SON, col="green", lwd=2.5)
legend(1890,1, # places a legend at the appropriate place 
       c("Dec-Feb","Mar-May","Jun-Aug","Sep-Nov"), # puts text in the legend
       lty=c(1,1,1,1), # gives the legend appropriate symbols (lines)
       lwd=c(1.5,1.5,1.5,1.5),col=c("Purple","blue","red","Green"), title="Seasons") # gives the legend lines the correct color and width