#program to plot global temperature data
setwd("/Users/odadaj/Dropbox/R_Mlearning/Rstudy")
temp <- read.csv('temp.csv', row.names = 1, header= TRUE)
Jan <- temp[["Jan"]]  # by column name
Feb <- temp[["Feb"]]
Mar <- temp[["Mar"]]
Apr <- temp[["Apr"]]
May <- temp[["May"]]
Jun <- temp[["Jun"]]
Jul <- temp[["Jul"]]
Aug <- temp[["Aug"]]
Sep <- temp[["Sep"]]
Oct <- temp[["Oct"]]
Nov <- temp[["Nov"]]
Dec <- temp[["Dec"]]
mwaka <- rownames(temp)

#Plot graph with months
plot(mwaka,Jan, type="l", col="blue")
lines(mwaka,Feb, col="black")
lines(mwaka,Mar, col="red")
lines(mwaka,Apr, col="yellow")
lines(mwaka,May, col="green")
lines(mwaka,Jun, col="pink")
lines(mwaka,Jul, col="cyan")
lines(mwaka,Aug, col="brown")
lines(mwaka,Sep, col="orange")
lines(mwaka,Oct, col="grey")
lines(mwaka,Nov, col="purple")
lines(mwaka,Dec, col="magenta")