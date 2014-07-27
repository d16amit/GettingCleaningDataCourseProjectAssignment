
run_analysis <- function() {

# load required Libraries
  library(plyr)
  library(data.table)

#Links the class labels with their activity name.
  actlab=read.table("./activity_labels.txt")
  names(actlab)=c("ActivityLabel","ActivityName")

# List of all features.
  feat=read.table("features.txt")
  names(feat)=c("FeatureLabel","FeatureName")

# Test Data

#subject who performed the activity for each window sample. 
 
  subjTest=read.table("./test/subject_test.txt")
  names(subjTest)=c("SubjectLabel")

# Training Label.
  yTest=read.table("./test/y_test.txt")
  names(yTest)=c("ActivityLabel")

# Training set.
  xTest=read.table("./test/X_test.txt")
  names(xTest)=feat[,2]

  xmeanTest=xTest[,grepl("mean()",names(xTest),fixed=TRUE)]
  xstdTest=xTest[,grepl("std()",names(xTest),fixed=TRUE)]

# Merge Test Data
  Testdata=cbind(subjTest,yTest,xmeanTest,xstdTest)

# Train Data
#subject who performed the activity for each window sample. 

  subjTrain=read.table("./train/subject_train.txt")
  names(subjTrain)=c("SubjectLabel")

# Training Label.
  yTrain=read.table("./train/y_train.txt")
  names(yTrain)=c("ActivityLabel")

# Training set.
  xTrain=read.table("./train/X_train.txt")
  names(xTrain)=feat[,2]

  xmeanTrain=xTrain[,grepl("mean()",names(xTrain),fixed=TRUE)]
  xstdTrain=xTrain[,grepl("std()",names(xTrain),fixed=TRUE)]

# Merge Train Data
  Traindata=cbind(subjTrain,yTrain,xmeanTrain,xstdTrain)

# FullDataSet
  actdatacode=rbind(Testdata,Traindata)

#Add Activity Names
  actdata=join(actlab,actdatacode,by="ActivityLabel")

  actdata$SubjectLabel=as.factor(actdata$SubjectLabel)

# Tidy Data set with Avg

  actDT <- data.table(actdata)
  Avgvariables <- tail( names(actDT), -3)
  actDTSummary=actDT[, lapply(.SD, function(x) mean(x)), .SDcols=Avgvariables, by=list(SubjectLabel, ActivityName)]

  DescVarNames=sapply(tail( names(actDTSummary), -2),function(x) paste("AverageOf",x))
  DescVarNames=as.character(DescVarNames)
  DescVarNames=c("SubjectLabel","ActivityName",DescVarNames)


  setnames(actDTSummary,names(actDTSummary),DescVarNames)

# writing as txt to working directory
  write.table(actDTSummary, file = "./ActivityDataSet.txt")
            
}




