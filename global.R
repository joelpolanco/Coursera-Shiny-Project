
# read CDNOW_SAMPLE.txt
df <- read.table("data/CDNOW_sample.txt",header=F,stringsAsFactors = FALSE)

# construct a data frame with the necessary columns of customer ID, transaction date, and money amount paid by a customer per transaction
df <- as.data.frame(cbind(df[,1],df[,3],df[,5]))

# add appropriate column names for the above three column and 
names <- c("ID","Date","Amount")
names(df) <- names

#tranfer the the text column type to date type
df[,2] <- as.Date(as.character(df[,2]),"%Y%m%d")


#order the dataframe by customer ID and transcation date
df <- df[order(df$ID,df$Date),]

#get the number of rows in the dataset
nrow<-nrow(df)

#record the number of days between a customer's each transcation, say 10 days between 1st purchase and the second, 15 days between the second and the third 
Interval <-rep(0,times=nrow)

# record the # of a customer's each transaction say 1st transcation, 2nd transcation
Times <- rep(1,times=nrow)

# record the total number of a customer's transcations
TotalTimes <- rep(1,times=nrow)

#calculate the data for the above three vectors.
n<-2

for (i in 2 : nrow){
  
  if (df[i,"ID"] == df[i-1,"ID"]){
    Interval[i] <- as.numeric(difftime(df[i,"Date"],df[i-1,"Date"],units="days"))	
    Times[i] <- n
    n <- n+1
  }else{
    TotalTimes[(i-n+1) : (i-1)] <- n-1
    n<-2
    
  }
  
}

#add the three vectors to the data frame 
df <- cbind(df, Interval,Times,TotalTimes)

